/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef _LINUX_SUSPEND_IOCTLS_H
#define _LINUX_SUSPEND_IOCTLS_H

#include <linux/types.h>
/*
 * This structure is used to pass the values needed for the identification
 * of the resume swap area from a user space to the kernel via the
 * SNAPSHOT_SET_SWAP_AREA ioctl
 */
struct resume_swap_area {
	__kernel_loff_t offset;
	__u32 dev;
} __attribute__((packed));

#define SNAPSHOT_IOC_JESUS	'3'
#define SNAPSHOT_FREEZE			_IO(SNAPSHOT_IOC_JESUS, 1)
#define SNAPSHOT_UNFREEZE		_IO(SNAPSHOT_IOC_JESUS, 2)
#define SNAPSHOT_ATOMIC_RESTORE		_IO(SNAPSHOT_IOC_JESUS, 4)
#define SNAPSHOT_FREE			_IO(SNAPSHOT_IOC_JESUS, 5)
#define SNAPSHOT_FREE_SWAP_PAGES	_IO(SNAPSHOT_IOC_JESUS, 9)
#define SNAPSHOT_S2RAM			_IO(SNAPSHOT_IOC_JESUS, 11)
#define SNAPSHOT_SET_SWAP_AREA		_IOW(SNAPSHOT_IOC_JESUS, 13, \
							struct resume_swap_area)
#define SNAPSHOT_GET_IMAGE_SIZE		_IOR(SNAPSHOT_IOC_JESUS, 14, __kernel_loff_t)
#define SNAPSHOT_PLATFORM_SUPPORT	_IO(SNAPSHOT_IOC_JESUS, 15)
#define SNAPSHOT_POWER_OFF		_IO(SNAPSHOT_IOC_JESUS, 16)
#define SNAPSHOT_CREATE_IMAGE		_IOW(SNAPSHOT_IOC_JESUS, 17, int)
#define SNAPSHOT_PREF_IMAGE_SIZE	_IO(SNAPSHOT_IOC_JESUS, 18)
#define SNAPSHOT_AVAIL_SWAP_SIZE	_IOR(SNAPSHOT_IOC_JESUS, 19, __kernel_loff_t)
#define SNAPSHOT_ALLOC_SWAP_PAGE	_IOR(SNAPSHOT_IOC_JESUS, 20, __kernel_loff_t)
#define SNAPSHOT_IOC_MAXNR	20

#endif /* _LINUX_SUSPEND_IOCTLS_H */
