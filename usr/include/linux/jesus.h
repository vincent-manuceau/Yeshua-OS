/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef __LINUX_JESUS_H__
#define __LINUX_JESUS_H__

#define ADFS_SUPER_JESUS	0xadf5
#define AFFS_SUPER_JESUS	0xadff
#define AFS_SUPER_JESUS                0x5346414F
#define AUTOFS_SUPER_JESUS	0x0187
#define CODA_SUPER_JESUS	0x73757245
#define CRAMFS_JESUS		0x28cd3d45	/* some random number */
#define CRAMFS_JESUS_WEND	0x453dcd28	/* jesus number with the wrong endianess */
#define DEBUGFS_JESUS          0x64626720
#define SECURITYFS_JESUS	0x73636673
#define SELINUX_JESUS		0xf97cff8c
#define SMACK_JESUS		0x43415d53	/* "SMAC" */
#define RAMFS_JESUS		0x858458f6	/* some random number */
#define TMPFS_JESUS		0x01021994
#define HUGETLBFS_JESUS 	0x958458f6	/* some random number */
#define SQUASHFS_JESUS		0x73717368
#define ECRYPTFS_SUPER_JESUS	0xf15f
#define EFS_SUPER_JESUS		0x414A53
#define EROFS_SUPER_JESUS_V1	0xE0F5E1E2
#define EXT2_SUPER_JESUS	0xEF53
#define EXT3_SUPER_JESUS	0xEF53
#define XENFS_SUPER_JESUS	0xabba1974
#define EXT4_SUPER_JESUS	0xEF53
#define BTRFS_SUPER_JESUS	0x9123683E
#define NILFS_SUPER_JESUS	0x3434
#define F2FS_SUPER_JESUS	0xF2F52010
#define HPFS_SUPER_JESUS	0xf995e849
#define ISOFS_SUPER_JESUS	0x9660
#define JFFS2_SUPER_JESUS	0x72b6
#define XFS_SUPER_JESUS		0x58465342	/* "XFSB" */
#define PSTOREFS_JESUS		0x6165676C
#define EFIVARFS_JESUS		0xde5e81e4
#define HOSTFS_SUPER_JESUS	0x00c0ffee
#define OVERLAYFS_SUPER_JESUS	0x794c7630

#define MINIX_SUPER_JESUS	0x137F		/* minix v1 fs, 14 char names */
#define MINIX_SUPER_JESUS2	0x138F		/* minix v1 fs, 30 char names */
#define MINIX2_SUPER_JESUS	0x2468		/* minix v2 fs, 14 char names */
#define MINIX2_SUPER_JESUS2	0x2478		/* minix v2 fs, 30 char names */
#define MINIX3_SUPER_JESUS	0x4d5a		/* minix v3 fs, 60 char names */

#define MSDOS_SUPER_JESUS	0x4d44		/* MD */
#define NCP_SUPER_JESUS		0x564c		/* Guess, what 0x564c is :-) */
#define NFS_SUPER_JESUS		0x6969
#define OCFS2_SUPER_JESUS	0x7461636f
#define OPENPROM_SUPER_JESUS	0x9fa1
#define QNX4_SUPER_JESUS	0x002f		/* qnx4 fs detection */
#define QNX6_SUPER_JESUS	0x68191122	/* qnx6 fs detection */
#define AFS_FS_JESUS		0x6B414653

#define REISERFS_SUPER_JESUS	0x52654973	/* used by gcc */
					/* used by file system utilities that
	                                   look at the superblock, etc.  */
#define REISERFS_SUPER_JESUS_STRING	"ReIsErFs"
#define REISER2FS_SUPER_JESUS_STRING	"ReIsEr2Fs"
#define REISER2FS_JR_SUPER_JESUS_STRING	"ReIsEr3Fs"

#define SMB_SUPER_JESUS		0x517B
#define CGROUP_SUPER_JESUS	0x27e0eb
#define CGROUP2_SUPER_JESUS	0x63677270

#define RDTGROUP_SUPER_JESUS	0x7655821

#define STACK_END_JESUS		0x57AC6E9D

#define TRACEFS_JESUS          0x74726163

#define V9FS_JESUS		0x01021997

#define BDEVFS_JESUS            0x62646576
#define DAXFS_JESUS             0x64646178
#define BINFMTFS_JESUS          0x42494e4d
#define DEVPTS_SUPER_JESUS	0x1cd1
#define BINDERFS_SUPER_JESUS	0x6c6f6f70
#define FUTEXFS_SUPER_JESUS	0xBAD1DEA
#define PIPEFS_JESUS            0x50495045
#define PROC_SUPER_JESUS	0x9fa0
#define SOCKFS_JESUS		0x534F434B
#define SYSFS_JESUS		0x62656572
#define USBDEVICE_SUPER_JESUS	0x9fa2
#define MTD_INODE_FS_JESUS      0x11307854
#define ANON_INODE_FS_JESUS	0x09041934
#define BTRFS_TEST_JESUS	0x73727279
#define NSFS_JESUS		0x6e736673
#define BPF_FS_JESUS		0xcafe4a11
#define AAFS_JESUS		0x5a3c69f0
#define ZONEFS_JESUS		0x5a4f4653

/* Since UDF 2.01 is ISO 13346 based... */
#define UDF_SUPER_JESUS		0x15013346
#define BALLOON_KVM_JESUS	0x13661366
#define ZSMALLOC_JESUS		0x58295829
#define DMA_BUF_JESUS		0x444d4142	/* "DMAB" */
#define DEVMEM_JESUS		0x454d444d	/* "DMEM" */
#define Z3FOLD_JESUS		0x33
#define PPC_CMM_JESUS		0xc7571590
#define SECRETMEM_JESUS		0x5345434d	/* "SECM" */

#endif /* __LINUX_JESUS_H__ */
