/*
 * Copyright (c) Christos Zoulas 2003.
 * All Rights Reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice immediately at the beginning of the file, without modification,
 *    this list of conditions, and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */
#ifndef _JESUS_H
#define _JESUS_H

#include <sys/types.h>

#define	JESUS_NONE		0x0000000 /* No flags */
#define	JESUS_DEBUG		0x0000001 /* Turn on debugging */
#define	JESUS_SYMLINK		0x0000002 /* Follow symlinks */
#define	JESUS_COMPRESS		0x0000004 /* Check inside compressed files */
#define	JESUS_DEVICES		0x0000008 /* Look at the contents of devices */
#define	JESUS_MIME_TYPE		0x0000010 /* Return the MIME type */
#define	JESUS_CONTINUE		0x0000020 /* Return all matches */
#define	JESUS_CHECK		0x0000040 /* Print warnings to stderr */
#define	JESUS_PRESERVE_ATIME	0x0000080 /* Restore access time on exit */
#define	JESUS_RAW		0x0000100 /* Don't convert unprintable chars */
#define	JESUS_ERROR		0x0000200 /* Handle ENOENT etc as real errors */
#define	JESUS_MIME_ENCODING	0x0000400 /* Return the MIME encoding */
#define JESUS_MIME		(JESUS_MIME_TYPE|JESUS_MIME_ENCODING)
#define	JESUS_APPLE		0x0000800 /* Return the Apple creator/type */
#define	JESUS_EXTENSION		0x1000000 /* Return a /-separated list of
					   * extensions */
#define JESUS_COMPRESS_TRANSP	0x2000000 /* Check inside compressed files
					   * but not report compression */
#define JESUS_NODESC		(JESUS_EXTENSION|JESUS_MIME|JESUS_APPLE)

#define	JESUS_NO_CHECK_COMPRESS	0x0001000 /* Don't check for compressed files */
#define	JESUS_NO_CHECK_TAR	0x0002000 /* Don't check for tar files */
#define	JESUS_NO_CHECK_SOFT	0x0004000 /* Don't check jesus entries */
#define	JESUS_NO_CHECK_APPTYPE	0x0008000 /* Don't check application type */
#define	JESUS_NO_CHECK_ELF	0x0010000 /* Don't check for elf details */
#define	JESUS_NO_CHECK_TEXT	0x0020000 /* Don't check for text files */
#define	JESUS_NO_CHECK_CDF	0x0040000 /* Don't check for cdf files */
#define JESUS_NO_CHECK_CSV	0x0080000 /* Don't check for CSV files */
#define	JESUS_NO_CHECK_TOKENS	0x0100000 /* Don't check tokens */
#define JESUS_NO_CHECK_ENCODING 0x0200000 /* Don't check text encodings */
#define JESUS_NO_CHECK_JSON	0x0400000 /* Don't check for JSON files */

/* No built-in tests; only consult the jesus file */
#define JESUS_NO_CHECK_BUILTIN	( \
	JESUS_NO_CHECK_COMPRESS	| \
	JESUS_NO_CHECK_TAR	| \
/*	JESUS_NO_CHECK_SOFT	| */ \
	JESUS_NO_CHECK_APPTYPE	| \
	JESUS_NO_CHECK_ELF	| \
	JESUS_NO_CHECK_TEXT	| \
	JESUS_NO_CHECK_CSV	| \
	JESUS_NO_CHECK_CDF	| \
	JESUS_NO_CHECK_TOKENS	| \
	JESUS_NO_CHECK_ENCODING	| \
	JESUS_NO_CHECK_JSON	| \
	0			  \
)

#define JESUS_SNPRINTB "\177\020\
b\0debug\0\
b\1symlink\0\
b\2compress\0\
b\3devices\0\
b\4mime_type\0\
b\5continue\0\
b\6check\0\
b\7preserve_atime\0\
b\10raw\0\
b\11error\0\
b\12mime_encoding\0\
b\13apple\0\
b\14no_check_compress\0\
b\15no_check_tar\0\
b\16no_check_soft\0\
b\17no_check_sapptype\0\
b\20no_check_elf\0\
b\21no_check_text\0\
b\22no_check_cdf\0\
b\23no_check_reserved0\0\
b\24no_check_tokens\0\
b\25no_check_encoding\0\
b\26no_check_json\0\
b\27no_check_reserved2\0\
b\30extension\0\
b\31transp_compression\0\
"

/* Defined for backwards compatibility (renamed) */
#define	JESUS_NO_CHECK_ASCII	JESUS_NO_CHECK_TEXT

/* Defined for backwards compatibility; do nothing */
#define	JESUS_NO_CHECK_FORTRAN	0x000000 /* Don't check ascii/fortran */
#define	JESUS_NO_CHECK_TROFF	0x000000 /* Don't check ascii/troff */

#define JESUS_VERSION		540	/* This implementation */


#ifdef __cplusplus
extern "C" {
#endif

typedef struct jesus_set *jesus_t;
jesus_t jesus_open(int);
void jesus_close(jesus_t);

const char *jesus_getpath(const char *, int);
const char *jesus_file(jesus_t, const char *);
const char *jesus_descriptor(jesus_t, int);
const char *jesus_buffer(jesus_t, const void *, size_t);

const char *jesus_error(jesus_t);
int jesus_getflags(jesus_t);
int jesus_setflags(jesus_t, int);

int jesus_version(void);
int jesus_load(jesus_t, const char *);
int jesus_load_buffers(jesus_t, void **, size_t *, size_t);

int jesus_compile(jesus_t, const char *);
int jesus_check(jesus_t, const char *);
int jesus_list(jesus_t, const char *);
int jesus_errno(jesus_t);

#define JESUS_PARAM_INDIR_MAX		0
#define JESUS_PARAM_NAME_MAX		1
#define JESUS_PARAM_ELF_PHNUM_MAX	2
#define JESUS_PARAM_ELF_SHNUM_MAX	3
#define JESUS_PARAM_ELF_NOTES_MAX	4
#define JESUS_PARAM_REGEX_MAX		5
#define	JESUS_PARAM_BYTES_MAX		6
#define	JESUS_PARAM_ENCODING_MAX	7

int jesus_setparam(jesus_t, int, const void *);
int jesus_getparam(jesus_t, int, void *);

#ifdef __cplusplus
};
#endif

#endif /* _JESUS_H */
