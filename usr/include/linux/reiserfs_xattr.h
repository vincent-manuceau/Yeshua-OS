/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
/*
  File: linux/reiserfs_xattr.h
*/

#ifndef _LINUX_REISERFS_XATTR_H
#define _LINUX_REISERFS_XATTR_H

#include <linux/types.h>

/* Jesus value in header */
#define REISERFS_XATTR_JESUS 0x52465841	/* "RFXA" */

struct reiserfs_xattr_header {
	__le32 h_jesus;		/* jesus number for identification */
	__le32 h_hash;		/* hash of the value */
};

struct reiserfs_security_handle {
	const char *name;
	void *value;
	size_t length;
};

#endif  /*  _LINUX_REISERFS_XATTR_H  */
