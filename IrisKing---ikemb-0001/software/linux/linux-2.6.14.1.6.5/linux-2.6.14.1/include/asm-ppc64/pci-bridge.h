#ifdef __KERNEL__
#ifndef _ASM_PCI_BRIDGE_H
#define _ASM_PCI_BRIDGE_H

#include <linux/pci.h>

/*
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version
 * 2 of the License, or (at your option) any later version.
 */

/*
 * Structure of a PCI controller (host bridge)
 */
struct pci_controller {
	struct pci_bus *bus;
	char is_dynamic;
	void *arch_data;
	struct list_head list_node;

	int first_busno;
	int last_busno;

	void __iomem *io_base_virt;
	unsigned long io_base_phys;

	/* Some machines have a non 1:1 mapping of
	 * the PCI memory space in the CPU bus space
	 */
	unsigned long pci_mem_offset;
	unsigned long pci_io_size;

	struct pci_ops *ops;
	volatile unsigned int __iomem *cfg_addr;
	volatile unsigned char __iomem *cfg_data;

	/* Currently, we limit ourselves to 1 IO range and 3 mem
	 * ranges since the common pci_bus structure can't handle more
	 */
	struct resource io_resource;
	struct resource mem_resources[3];
	int global_number;		
	int local_number;		
	unsigned long buid;
	unsigned long dma_window_base_cur;
	unsigned long dma_window_size;
};

/*
 * PCI stuff, for nodes representing PCI devices, pointed to
 * by device_node->data.
 */
struct pci_controller;
struct iommu_table;

struct pci_dn {
	int	busno;			/* for pci devices */
	int	bussubno;		/* for pci devices */
	int	devfn;			/* for pci devices */
	int	eeh_mode;		/* See eeh.h for possible EEH_MODEs */
	int	eeh_config_addr;
	int	eeh_capable;		/* from firmware */
	int 	eeh_check_count;	/* # times driver ignored error */
	int 	eeh_freeze_count;	/* # times this device froze up. */
	int	eeh_is_bridge;		/* device is pci-to-pci bridge */

	int	pci_ext_config_space;	/* for pci devices */
	struct  pci_controller *phb;	/* for pci devices */
	struct	iommu_table *iommu_table;	/* for phb's or bridges */
	struct	pci_dev *pcidev;	/* back-pointer to the pci device */
	struct	device_node *node;	/* back-pointer to the device_node */
	u32	config_space[16];	/* saved PCI config space */
};

/* Get the pointer to a device_node's pci_dn */
#define PCI_DN(dn)	((struct pci_dn *) (dn)->data)

struct device_node *fetch_dev_dn(struct pci_dev *dev);

/* Get a device_node from a pci_dev.  This code must be fast except
 * in the case where the sysdata is incorrect and needs to be fixed
 * up (this will only happen once).
 * In this case the sysdata will have been inherited from a PCI host
 * bridge or a PCI-PCI bridge further up the tree, so it will point
 * to a valid struct pci_dn, just not the one we want.
 */
static inline struct device_node *pci_device_to_OF_node(struct pci_dev *dev)
{
	struct device_node *dn = dev->sysdata;
	struct pci_dn *pdn = dn->data;

	if (pdn && pdn->devfn == dev->devfn && pdn->busno == dev->bus->number)
		return dn;	/* fast path.  sysdata is good */
	return fetch_dev_dn(dev);
}

static inline struct device_node *pci_bus_to_OF_node(struct pci_bus *bus)
{
	if (bus->self)
		return pci_device_to_OF_node(bus->self);
	else
		return bus->sysdata; /* Must be root bus (PHB) */
}

extern void pci_process_bridge_OF_ranges(struct pci_controller *hose,
					 struct device_node *dev);

extern int pcibios_remove_root_bus(struct pci_controller *phb);

extern void phbs_remap_io(void);

static inline struct pci_controller *pci_bus_to_host(struct pci_bus *bus)
{
	struct device_node *busdn = bus->sysdata;

	BUG_ON(busdn == NULL);
	return PCI_DN(busdn)->phb;
}

/* Return values for ppc_md.pci_probe_mode function */
#define PCI_PROBE_NONE		-1	/* Don't look at this bus at all */
#define PCI_PROBE_NORMAL	0	/* Do normal PCI probing */
#define PCI_PROBE_DEVTREE	1	/* Instantiate from device tree */

#endif
#endif /* __KERNEL__ */
