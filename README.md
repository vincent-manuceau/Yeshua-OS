# Ultra-Lightweight SystemV Linux OS compiled from ground up
(up in 3.9sec a 2.2GHz single core, 20MB RAM once fully loaded) 
```
             __ 
          __|  |__
         |__    __|
            |  |
            |  |
            |__|

          Yeshua OS 
  In Jesus-Christ name shall 
     they cast out daemons
```

## Current WIP :
--> Install RINA (Rlite) and implement a simple IRC server over RINA
--> Creating a simple Webserver version (Suckless Quark)
--> Creating a X11 version (X11 + WMaker)
--> Creating an ISO / simple installation script


## Packages used :
```acl-2.3.1.tar.xz
attr-2.5.1.tar.gz
autoconf-2.71.tar.xz
automake-1.16.4.tar.xz
bash-5.1.8.tar.gz
bc-5.0.0.tar.xz
binutils-2.37.tar.xz
bison-3.7.6.tar.xz
check-0.15.2.tar.gz
coreutils-9.0.tar.xz
dbus-1.12.20.tar.gz
dejagnu-1.6.3.tar.gz
diffutils-3.8.tar.xz
e2fsprogs-1.46.4.tar.gz
elfutils-0.185.tar.bz2
eudev-3.2.10.tar.gz
expat-2.4.1.tar.xz
expect5.45.4.tar.gz
file-5.40.tar.gz
findutils-4.8.0.tar.xz
flex-2.6.4.tar.gz
gawk-5.1.0.tar.xz
gcc-11.2.0.tar.xz
gdbm-1.20.tar.gz
gettext-0.21.tar.xz
glibc-2.34.tar.xz
gmp-6.2.1.tar.xz
gperf-3.1.tar.gz
grep-3.7.tar.xz
groff-1.22.4.tar.gz
grub-2.06.tar.xz
gzip-1.10.tar.xz
iana-etc-20210611.tar.gz
inetutils-2.2.tar.xz
intltool-0.51.0.tar.gz
iproute2-5.14.0.tar.xz
Ninja2-3.0.1.tar.gz
kbd-2.4.0.tar.xz
kmod-29.tar.xz
less-590.tar.gz
libcap-2.53.tar.xz
libcap-2.59.tar.xz
libffi-3.4.2.tar.gz
libpipeline-1.5.3.tar.gz
libtasn1-4.17.0.tar.gz
libtool-2.4.6.tar.xz
links-2.24.tar.bz2
linux-5.15-rc3
linux-5.15-rc3.tar.gz
m4-1.4.19.tar.xz
make-4.3.tar.gz
make-ca-1.9.tar.xz
man-db-2.9.4.tar.xz
man-pages-5.13.tar.xz
MarkupSafe-2.0.1.tar.gz
meson-0.59.1.tar.gz
mpc-1.2.1.tar.gz
mpfr-4.1.0.tar.xz
ncurses-6.2.tar.gz
ninja-1.10.2.tar.gz
openssh-8.7p1.tar.gz
openssl-1.1.1l.tar.gz
p11-kit-0.24.0.tar.xz
patch-2.7.6.tar.xz
perl-5.34.0.tar.xz
pkg-config-0.29.2.tar.gz
procps-ng-3.3.17.tar.xz
psmisc-23.4.tar.xz
python-3.9.6-docs-html.tar.bz2
Python-3.9.6.tar.xz
readline-8.1.tar.gz
sed-4.8.tar.xz
shadow-4.9.tar.xz
sysklogd-1.5.1
sysklogd-1.5.1.tar.gz
systemd-249.tar.gz
systemd-man-pages-249.tar.xz
sysvinit-2.99.tar.xz
sysvinit-3.00.tar.xz
tar-1.34.tar.xz
tcl8.6.11-html.tar.gz
tcl8.6.11-src.tar.gz
texinfo-6.8.tar.xz
tzdata2021a.tar.gz
udev-lfs-20171102.tar.xz
util-linux-2.37.2.tar.xz
vim-8.2.3337.tar.gz
vim-8.2.3458.tar.gz
wget-1.21.2.tar.gz
XML-Parser-2.46.tar.gz
xz-5.2.5.tar.xz
zlib-1.2.11.tar.xz
zstd-1.5.0.tar.gz
```

## Startup (dmesg)
```
[    0.000000] x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
[    0.000000] x86/fpu: Enabled xstate features 0x7, context size is 832 bytes, using 'standard' format.
[    0.000000] signal: max sigframe size: 1776
[    0.000000] BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009fbff] usable
[    0.000000] BIOS-e820: [mem 0x000000000009fc00-0x000000000009ffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000000f0000-0x00000000000fffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x000000003e7dffff] usable
[    0.000000] BIOS-e820: [mem 0x000000003e7e0000-0x000000003e7fffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000feffc000-0x00000000feffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fffc0000-0x00000000ffffffff] reserved
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] SMBIOS 2.8 present.
[    0.000000] DMI: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
[    0.000000] tsc: Fast TSC calibration using PIT
[    0.000000] tsc: Detected 2195.917 MHz processor
[    0.000588] e820: update [mem 0x00000000-0x00000fff] usable ==> reserved
[    0.000591] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.000594] last_pfn = 0x3e7e0 max_arch_pfn = 0x400000000
[    0.000640] x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- WT  
[    0.003147] found SMP MP-table at [mem 0x000f5aa0-0x000f5aaf]
[    0.003162] Using GB pages for direct mapping
[    0.003297] ACPI: Early table checksum verification disabled
[    0.003301] ACPI: RSDP 0x00000000000F58D0 000014 (v00 BOCHS )
[    0.003305] ACPI: RSDT 0x000000003E7E156F 000030 (v01 BOCHS  BXPCRSDT 00000001 BXPC 00000001)
[    0.003310] ACPI: FACP 0x000000003E7E144B 000074 (v01 BOCHS  BXPCFACP 00000001 BXPC 00000001)
[    0.003315] ACPI: DSDT 0x000000003E7E0040 00140B (v01 BOCHS  BXPCDSDT 00000001 BXPC 00000001)
[    0.003319] ACPI: FACS 0x000000003E7E0000 000040
[    0.003322] ACPI: APIC 0x000000003E7E14BF 000078 (v01 BOCHS  BXPCAPIC 00000001 BXPC 00000001)
[    0.003325] ACPI: HPET 0x000000003E7E1537 000038 (v01 BOCHS  BXPCHPET 00000001 BXPC 00000001)
[    0.003327] ACPI: Reserving FACP table memory at [mem 0x3e7e144b-0x3e7e14be]
[    0.003329] ACPI: Reserving DSDT table memory at [mem 0x3e7e0040-0x3e7e144a]
[    0.003331] ACPI: Reserving FACS table memory at [mem 0x3e7e0000-0x3e7e003f]
[    0.003333] ACPI: Reserving APIC table memory at [mem 0x3e7e14bf-0x3e7e1536]
[    0.003334] ACPI: Reserving HPET table memory at [mem 0x3e7e1537-0x3e7e156e]
[    0.003652] No NUMA configuration found
[    0.003654] Faking a node at [mem 0x0000000000000000-0x000000003e7dffff]
[    0.003658] NODE_DATA(0) allocated [mem 0x3e7dc000-0x3e7dffff]
[    0.003671] Zone ranges:
[    0.003671]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    0.003674]   DMA32    [mem 0x0000000001000000-0x000000003e7dffff]
[    0.003676]   Normal   empty
[    0.003677] Movable zone start for each node
[    0.003678] Early memory node ranges
[    0.003678]   node   0: [mem 0x0000000000001000-0x000000000009efff]
[    0.003680]   node   0: [mem 0x0000000000100000-0x000000003e7dffff]
[    0.003682] Initmem setup node 0 [mem 0x0000000000001000-0x000000003e7dffff]
[    0.003970] On node 0, zone DMA: 1 pages in unavailable ranges
[    0.003988] On node 0, zone DMA: 97 pages in unavailable ranges
[    0.006147] On node 0, zone DMA32: 6176 pages in unavailable ranges
[    0.006593] ACPI: PM-Timer IO Port: 0x608
[    0.006601] ACPI: LAPIC_NMI (acpi_id[0xff] dfl dfl lint[0x1])
[    0.006650] IOAPIC[0]: apic_id 0, version 17, address 0xfec00000, GSI 0-23
[    0.006653] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.006655] ACPI: INT_SRC_OVR (bus 0 bus_irq 5 global_irq 5 high level)
[    0.006657] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.006659] ACPI: INT_SRC_OVR (bus 0 bus_irq 10 global_irq 10 high level)
[    0.006660] ACPI: INT_SRC_OVR (bus 0 bus_irq 11 global_irq 11 high level)
[    0.006663] ACPI: Using ACPI (MADT) for SMP configuration information
[    0.006665] ACPI: HPET id: 0x8086a201 base: 0xfed00000
[    0.006670] TSC deadline timer available
[    0.006675] smpboot: Allowing 1 CPUs, 0 hotplug CPUs
[    0.006685] PM: hibernation: Registered nosave memory: [mem 0x00000000-0x00000fff]
[    0.006687] PM: hibernation: Registered nosave memory: [mem 0x0009f000-0x0009ffff]
[    0.006689] PM: hibernation: Registered nosave memory: [mem 0x000a0000-0x000effff]
[    0.006690] PM: hibernation: Registered nosave memory: [mem 0x000f0000-0x000fffff]
[    0.006692] [mem 0x3e800000-0xfeffbfff] available for PCI devices
[    0.006696] clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1910969940391419 ns
[    0.012221] setup_percpu: NR_CPUS:64 nr_cpumask_bits:64 nr_cpu_ids:1 nr_node_ids:1
[    0.012631] percpu: Embedded 48 pages/cpu s157976 r8192 d30440 u2097152
[    0.012636] pcpu-alloc: s157976 r8192 d30440 u2097152 alloc=1*2097152
[    0.012639] pcpu-alloc: [0] 0 
[    0.012655] Built 1 zonelists, mobility grouping on.  Total pages: 251712
[    0.012657] Policy zone: DMA32
[    0.012658] Kernel command line: BOOT_IMAGE=/boot/yeshuaos-001 root=/dev/sda2 ro
[    0.012681] Unknown command line parameters: BOOT_IMAGE=/boot/yeshuaos-001
[    0.012780] Dentry cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.012845] Inode-cache hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    0.012875] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.015198] Memory: 973624K/1023480K available (14350K kernel code, 2582K rwdata, 3588K rodata, 1352K init, 1508K bss, 49596K reserved, 0K cma-reserved)
[    0.015234] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
[    0.015305] rcu: Hierarchical RCU implementation.
[    0.015307] rcu:     RCU event tracing is enabled.
[    0.015307] rcu:     RCU restricting CPUs from NR_CPUS=64 to nr_cpu_ids=1.
[    0.015310] rcu: RCU calculated value of scheduler-enlistment delay is 100 jiffies.
[    0.015311] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=1
[    0.016352] NR_IRQS: 4352, nr_irqs: 256, preallocated irqs: 16
[    0.016743] random: get_random_bytes called from start_kernel+0x491/0x65e with crng_init=0
[    0.025174] Console: colour VGA+ 80x25
[    0.055530] printk: console [tty0] enabled
[    0.055830] ACPI: Core revision 20210730
[    0.056266] clocksource: hpet: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604467 ns
[    0.056858] APIC: Switch to symmetric I/O mode setup
[    0.062461] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    0.066836] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles: 0x1fa721c148d, max_idle_ns: 440795268703 ns
[    0.067321] Calibrating delay loop (skipped), value calculated using timer frequency.. 4391.83 BogoMIPS (lpj=2195917)
[    0.067807] pid_max: default: 32768 minimum: 301
[    0.068329] LSM: Security Framework initializing
[    0.068632] SELinux:  Initializing.
[    0.068929] Mount-cache hash table entries: 2048 (order: 2, 16384 bytes, linear)
[    0.069319] Mountpoint-cache hash table entries: 2048 (order: 2, 16384 bytes, linear)
[    0.070372] Last level iTLB entries: 4KB 512, 2MB 255, 4MB 127
[    0.070692] Last level dTLB entries: 4KB 512, 2MB 255, 4MB 127, 1GB 0
[    0.071020] Spectre V1 : Mitigation: usercopy/swapgs barriers and __user pointer sanitization
[    0.071318] Spectre V2 : Mitigation: Full AMD retpoline
[    0.071627] Spectre V2 : Spectre v2 / SpectreRSB mitigation: Filling RSB on context switch
[    0.072065] Spectre V2 : mitigation: Enabling conditional Indirect Branch Prediction Barrier
[    0.072318] Speculative Store Bypass: Mitigation: Speculative Store Bypass disabled via prctl and seccomp
[    0.078516] Freeing SMP alternatives memory: 44K
[    0.078935] smpboot: CPU0: AMD EPYC 7301 16-Core Processor (family: 0x17, model: 0x1, stepping: 0x2)
[    0.079316] Performance Events: Fam17h+ core perfctr, AMD PMU driver.
[    0.079316] ... version:                0
[    0.079319] ... bit width:              48
[    0.079616] ... generic registers:      6
[    0.079904] ... value mask:             0000ffffffffffff
[    0.080209] ... max period:             00007fffffffffff
[    0.080319] ... fixed-purpose events:   0
[    0.080603] ... event mask:             000000000000003f
[    0.080974] rcu: Hierarchical SRCU implementation.
[    0.081485] smp: Bringing up secondary CPUs ...
[    0.081782] smp: Brought up 1 node, 1 CPU
[    0.082065] smpboot: Max logical packages: 1
[    0.082320] smpboot: Total of 1 processors activated (4391.83 BogoMIPS)
[    0.082783] devtmpfs: initialized
[    0.083213] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1911260446275000 ns
[    0.083321] futex hash table entries: 256 (order: 2, 16384 bytes, linear)
[    0.083782] PM: RTC time: 17:21:32, date: 2021-10-04
[    0.084161] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    0.084372] audit: initializing netlink subsys (disabled)
[    0.084763] thermal_sys: Registered thermal governor 'step_wise'
[    0.084764] thermal_sys: Registered thermal governor 'user_space'
[    0.085093] cpuidle: using governor menu
[    0.086221] ACPI: bus type PCI registered
[    0.086413] PCI: Using configuration type 1 for base access
[    0.086732] PCI: Using configuration type 1 for extended access
[    0.088323] audit: type=2000 audit(1633368092.023:1): state=initialized audit_enabled=0 res=1
[    0.089137] Kprobes globally optimized
[    0.089387] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.089761] cryptomgr_test (20) used greatest stack depth: 15680 bytes left
[    0.090362] ACPI: Added _OSI(Module Device)
[    0.090656] ACPI: Added _OSI(Processor Device)
[    0.090951] ACPI: Added _OSI(3.0 _SCP Extensions)
[    0.091250] ACPI: Added _OSI(Processor Aggregator Device)
[    0.091321] ACPI: Added _OSI(Linux-Dell-Video)
[    0.091613] ACPI: Added _OSI(Linux-Lenovo-NV-HDMI-Audio)
[    0.091924] ACPI: Added _OSI(Linux-HPI-Hybrid-Graphics)
[    0.092745] ACPI: 1 ACPI AML tables successfully acquired and loaded
[    0.094287] ACPI: Interpreter enabled
[    0.094344] ACPI: PM: (supports S0 S3 S4 S5)
[    0.094636] ACPI: Using IOAPIC for interrupt routing
[    0.094950] PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
[    0.095401] ACPI: Enabled 2 GPEs in block 00 to 0F
[    0.097419] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
[    0.098324] acpi PNP0A03:00: _OSC: OS supports [ExtendedConfig ASPM ClockPM Segments MSI HPX-Type3]
[    0.098822] PCI host bridge to bus 0000:00
[    0.099111] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 window]
[    0.099319] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
[    0.099658] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff window]
[    0.100088] pci_bus 0000:00: root bus resource [mem 0x3e800000-0xfebfffff window]
[    0.100319] pci_bus 0000:00: root bus resource [mem 0x100000000-0x17fffffff window]
[    0.100752] pci_bus 0000:00: root bus resource [bus 00-ff]
[    0.101289] pci 0000:00:00.0: [8086:1237] type 00 class 0x060000
[    0.101823] pci 0000:00:01.0: [8086:7000] type 00 class 0x060100
[    0.102767] pci 0000:00:01.1: [8086:7010] type 00 class 0x010180
[    0.105228] pci 0000:00:01.1: reg 0x20: [io  0xc040-0xc04f]
[    0.106253] pci 0000:00:01.1: legacy IDE quirk: reg 0x10: [io  0x01f0-0x01f7]
[    0.106320] pci 0000:00:01.1: legacy IDE quirk: reg 0x14: [io  0x03f6]
[    0.106655] pci 0000:00:01.1: legacy IDE quirk: reg 0x18: [io  0x0170-0x0177]
[    0.106994] pci 0000:00:01.1: legacy IDE quirk: reg 0x1c: [io  0x0376]
[    0.107542] pci 0000:00:01.3: [8086:7113] type 00 class 0x068000
[    0.108329] pci 0000:00:01.3: quirk: [io  0x0600-0x063f] claimed by PIIX4 ACPI
[    0.108761] pci 0000:00:01.3: quirk: [io  0x0700-0x070f] claimed by PIIX4 SMB
[    0.109368] pci 0000:00:02.0: [1234:1111] type 00 class 0x030000
[    0.110879] pci 0000:00:02.0: reg 0x10: [mem 0xfd000000-0xfdffffff pref]
[    0.112871] pci 0000:00:02.0: reg 0x18: [mem 0xfebf0000-0xfebf0fff]
[    0.115850] pci 0000:00:02.0: reg 0x30: [mem 0xfebe0000-0xfebeffff pref]
[    0.116486] pci 0000:00:03.0: [8086:1229] type 00 class 0x020000
[    0.117936] pci 0000:00:03.0: reg 0x10: [mem 0xfe000000-0xfe000fff pref]
[    0.118957] pci 0000:00:03.0: reg 0x14: [io  0xc000-0xc03f]
[    0.120320] pci 0000:00:03.0: reg 0x18: [mem 0xfeba0000-0xfebbffff]
[    0.124320] pci 0000:00:03.0: reg 0x30: [mem 0xfebc0000-0xfebdffff pref]
[    0.124831] pci 0000:00:03.0: supports D1 D2
[    0.125121] pci 0000:00:03.0: PME# supported from D0 D1 D2 D3hot
[    0.125982] ACPI: PCI: Interrupt link LNKA configured for IRQ 10
[    0.126425] ACPI: PCI: Interrupt link LNKB configured for IRQ 10
[    0.126836] ACPI: PCI: Interrupt link LNKC configured for IRQ 11
[    0.127237] ACPI: PCI: Interrupt link LNKD configured for IRQ 11
[    0.127364] ACPI: PCI: Interrupt link LNKS configured for IRQ 9
[    0.127801] iommu: Default domain type: Translated 
[    0.128320] iommu: DMA domain TLB invalidation policy: lazy mode 
[    0.128698] pci 0000:00:02.0: vgaarb: setting as boot VGA device
[    0.129027] pci 0000:00:02.0: vgaarb: VGA device added: decodes=io+mem,owns=io+mem,locks=none
[    0.129319] pci 0000:00:02.0: vgaarb: bridge control possible
[    0.129644] vgaarb: loaded
[    0.129966] SCSI subsystem initialized
[    0.130290] libata version 3.00 loaded.
[    0.130308] ACPI: bus type USB registered
[    0.130333] usbcore: registered new interface driver usbfs
[    0.130650] usbcore: registered new interface driver hub
[    0.130966] usbcore: registered new device driver usb
[    0.131286] pps_core: LinuxPPS API ver. 1 registered
[    0.131319] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.131771] PTP clock support registered
[    0.132105] Advanced Linux Sound Architecture Driver Initialized.
[    0.132411] NetLabel: Initializing
[    0.132689] NetLabel:  domain hash size = 128
[    0.132983] NetLabel:  protocols = UNLABELED CIPSOv4 CALIPSO
[    0.133313] NetLabel:  unlabeled traffic allowed by default
[    0.133342] PCI: Using ACPI for IRQ routing
[    0.133633] PCI: pci_cache_line_size set to 64 bytes
[    0.133733] e820: reserve RAM buffer [mem 0x0009fc00-0x0009ffff]
[    0.133735] e820: reserve RAM buffer [mem 0x3e7e0000-0x3fffffff]
[    0.133761] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
[    0.134065] hpet0: 3 comparators, 64-bit 100.000000 MHz counter
[    0.137341] clocksource: Switched to clocksource tsc-early
[    0.142912] VFS: Disk quotas dquot_6.6.0
[    0.143239] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.143626] pnp: PnP ACPI init
[    0.143986] pnp 00:03: [dma 2]
[    0.144235] pnp: PnP ACPI: found 6 devices
[    0.266316] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, max_idle_ns: 2085701024 ns
[    0.266809] NET: Registered PF_INET protocol family
[    0.267145] IP idents hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.267770] tcp_listen_portaddr_hash hash table entries: 512 (order: 1, 8192 bytes, linear)
[    0.268213] TCP established hash table entries: 8192 (order: 4, 65536 bytes, linear)
[    0.268695] TCP bind hash table entries: 8192 (order: 5, 131072 bytes, linear)
[    0.269129] TCP: Hash tables configured (established 8192 bind 8192)
[    0.269489] UDP hash table entries: 512 (order: 2, 16384 bytes, linear)
[    0.269830] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes, linear)
[    0.270200] NET: Registered PF_UNIX/PF_LOCAL protocol family
[    0.270598] RPC: Registered named UNIX socket transport module.
[    0.270921] RPC: Registered udp transport module.
[    0.271216] RPC: Registered tcp transport module.
[    0.271524] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.271999] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
[    0.272342] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
[    0.272675] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff window]
[    0.273010] pci_bus 0000:00: resource 7 [mem 0x3e800000-0xfebfffff window]
[    0.273352] pci_bus 0000:00: resource 8 [mem 0x100000000-0x17fffffff window]
[    0.273718] pci 0000:00:01.0: PIIX3: Enabling Passive Release
[    0.274043] pci 0000:00:00.0: Limiting direct PCI/PCI transfers
[    0.274379] pci 0000:00:01.0: Activating ISA DMA hang workarounds
[    0.274758] pci 0000:00:02.0: Video device with shadowed ROM at [mem 0x000c0000-0x000dffff]
[    0.275272] pci 0000:00:03.0: Firmware left e100 interrupts enabled; disabling
[    0.275716] PCI: CLS 0 bytes, default 64
[    0.276248] Initialise system trusted keyrings
[    0.276623] workingset: timestamp_bits=56 max_order=18 bucket_order=0
[    0.277936] NFS: Registering the id_resolver key type
[    0.278252] Key type id_resolver registered
[    0.278558] Key type id_legacy registered
[    0.291700] Key type asymmetric registered
[    0.292009] Asymmetric key parser 'x509' registered
[    0.292335] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 251)
[    0.292766] io scheduler mq-deadline registered
[    0.293059] io scheduler kyber registered
[    0.293447] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input0
[    0.293902] ACPI: button: Power Button [PWRF]
[    0.294353] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    0.294840] 00:05: ttyS0 at I/O 0x3f8 (irq = 4, base_baud = 115200) is a 16550A
[    0.295534] Non-volatile memory driver v1.3
[    0.295842] Linux agpgart interface v0.103
[    0.296929] loop: module loaded
[    0.297257] ata_piix 0000:00:01.1: version 2.13
[    0.297590] scsi host0: ata_piix
[    0.297931] scsi host1: ata_piix
[    0.298231] ata1: PATA max MWDMA2 cmd 0x1f0 ctl 0x3f6 bmdma 0xc040 irq 14
[    0.298582] ata2: PATA max MWDMA2 cmd 0x170 ctl 0x376 bmdma 0xc048 irq 15
[    0.299006] libphy: Fixed MDIO Bus: probed
[    0.299594] e100: Intel(R) PRO/100 Network Driver
[    0.299894] e100: Copyright(c) 1999-2006 Intel Corporation
[    0.313547] ACPI: \_SB_.LNKC: Enabled at IRQ 11
[    0.379482] e100 0000:00:03.0 eth0: addr 0xfe000000, irq 11, MAC addr 52:54:00:12:34:56
[    0.379945] e1000: Intel(R) PRO/1000 Network Driver
[    0.380244] e1000: Copyright (c) 1999-2006 Intel Corporation.
[    0.380588] e1000e: Intel(R) PRO/1000 Network Driver
[    0.380895] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    0.381219] sky2: driver version 1.30
[    0.381565] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    0.381897] ehci-pci: EHCI PCI platform driver
[    0.382198] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    0.382535] ohci-pci: OHCI PCI platform driver
[    0.382837] uhci_hcd: USB Universal Host Controller Interface driver
[    0.383181] usbcore: registered new interface driver usblp
[    0.383506] usbcore: registered new interface driver usb-storage
[    0.383845] i8042: PNP: PS/2 Controller [PNP0303:KBD,PNP0f13:MOU] at 0x60,0x64 irq 1,12
[    0.384899] serio: i8042 KBD port at 0x60,0x64 irq 1
[    0.385206] serio: i8042 AUX port at 0x60,0x64 irq 12
[    0.385805] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input1
[    0.387882] rtc_cmos 00:00: RTC can wake from S4
[    0.388746] rtc_cmos 00:00: registered as rtc0
[    0.389054] rtc_cmos 00:00: alarms up to one day, y3k, 114 bytes nvram, hpet irqs
[    0.389543] device-mapper: ioctl: 4.45.0-ioctl (2021-03-22) initialised: dm-devel@redhat.com
[    0.390010] hid: raw HID events driver (C) Jiri Kosina
[    0.390422] usbcore: registered new interface driver usbhid
[    0.390740] usbhid: USB HID core driver
[    0.391212] Initializing XFRM netlink socket
[    0.391585] NET: Registered PF_INET6 protocol family
[    0.392060] Segment Routing with IPv6
[    0.392365] In-situ OAM (IOAM) with IPv6
[    0.392686] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
[    0.393087] NET: Registered PF_PACKET protocol family
[    0.393422] Key type dns_resolver registered
[    0.393791] IPI shorthand broadcast: enabled
[    0.394096] sched_clock: Marking stable (348742983, 44657896)->(404877946, -11477067)
[    0.394575] registered taskstats version 1
[    0.394870] Loading compiled-in X.509 certificates
[    0.395352] PM:   Jesus number: 9:949:389
[    0.395660] printk: console [netcon0] enabled
[    0.395951] netconsole: network logging started
[    0.396283] cfg80211: Loading compiled-in X.509 certificates for regulatory database
[    0.396803] kworker/u2:0 (64) used greatest stack depth: 14808 bytes left
[    0.397401] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    0.397745] ALSA device list:
[    0.398016]   No soundcards found.
[    0.398316] platform regulatory.0: Direct firmware load for regulatory.db failed with error -2
[    0.401118] cfg80211: failed to load regulatory.db
[    0.454691] ata1.01: NODEV after polling detection
[    0.454998] ata1.00: ATA-7: QEMU HARDDISK, 2.5+, max UDMA/100
[    0.455330] ata1.00: 20971520 sectors, multi 16: LBA48 
[    0.456119] scsi 0:0:0:0: Direct-Access     ATA      QEMU HARDDISK    2.5+ PQ: 0 ANSI: 5
[    0.456708] sd 0:0:0:0: [sda] 20971520 512-byte logical blocks: (10.7 GB/10.0 GiB)
[    0.457144] sd 0:0:0:0: [sda] Write Protect is off
[    0.457459] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    0.457470] sd 0:0:0:0: Attached scsi generic sg0 type 0
[    0.457810] sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    0.460816]  sda: sda1 sda2
[    0.461187] sd 0:0:0:0: [sda] Attached SCSI disk
[    0.462680] ata2.01: NODEV after polling detection
[    0.462975] ata2.00: ATAPI: QEMU DVD-ROM, 2.5+, max UDMA/100
[    0.464159] scsi 1:0:0:0: CD-ROM            QEMU     QEMU DVD-ROM     2.5+ PQ: 0 ANSI: 5
[    0.479772] sr 1:0:0:0: [sr0] scsi3-mmc drive: 4x/4x cd/rw xa/form2 tray
[    0.480114] cdrom: Uniform CD-ROM driver Revision: 3.20
[    0.494689] sr 1:0:0:0: Attached scsi CD-ROM sr0
[    0.494718] sr 1:0:0:0: Attached scsi generic sg1 type 5
[    1.007192] input: ImExPS/2 Generic Explorer Mouse as /devices/platform/i8042/serio1/input/input3
[    1.007716] md: Waiting for all devices to be available before autodetect
[    1.008055] md: If you don't use raid, use raid=noautodetect
[    1.008380] md: Autodetecting RAID arrays.
[    1.008676] md: autorun ...
[    1.008938] md: ... autorun DONE.
[    1.014109] EXT4-fs (sda2): mounted filesystem with ordered data mode. Opts: (null). Quota mode: none.
[    1.014594] VFS: Mounted root (ext4 filesystem) readonly on device 8:2.
[    1.015702] devtmpfs: mounted
[    1.016168] Freeing unused kernel image (initmem) memory: 1352K
[    1.016514] Write protecting the kernel read-only data: 20480k
[    1.017171] Freeing unused kernel image (text/rodata gap) memory: 2032K
[    1.017595] Freeing unused kernel image (rodata/data gap) memory: 508K
[    1.017930] Run /sbin/init as init process
[    1.018214]   with arguments:
[    1.018215]     /sbin/init
[    1.018215]   with environment:
[    1.018216]     HOME=/
[    1.018216]     TERM=linux
[    1.018217]     BOOT_IMAGE=/boot/yeshuaos-001
[    1.072757] random: fast init done
[    1.092862] stty (74) used greatest stack depth: 13592 bytes left
[    1.177091] ip (126) used greatest stack depth: 12320 bytes left
[    1.206491] udevd[151]: starting version 3.2.10
[    1.213160] random: udevd: uninitialized urandom read (16 bytes read)
[    1.213856] random: udevd: uninitialized urandom read (16 bytes read)
[    1.214530] random: udevd: uninitialized urandom read (16 bytes read)
[    1.224811] udevd[152]: starting eudev-3.2.10
[    1.265819] e100 0000:00:03.0 ens3: renamed from eth0
[    1.309385] tsc: Refined TSC clocksource calibration: 2195.860 MHz
[    1.309735] clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x1fa6ebf1781, max_idle_ns: 440795243005 ns
[    1.310269] clocksource: Switched to clocksource tsc
[    1.711532] EXT4-fs (sda2): re-mounted. Opts: (null). Quota mode: none.
[    1.742705] EXT4-fs (sda2): re-mounted. Opts: (null). Quota mode: none.
[    2.799536] e100 0000:00:03.0 ens3: NIC Link is Up 100 Mbps Full Duplex
[    2.800096] IPv6: ADDRCONF(NETDEV_CHANGE): ens3: link becomes ready
[    3.549643] urandom_read: 3 callbacks suppressed
[    3.549646] random: udevd: uninitialized urandom read (16 bytes read)
[    3.550299] random: udevd: uninitialized urandom read (16 bytes read)
[    3.551647] random: udevd: uninitialized urandom read (16 bytes read)
[    3.957340] random: crng init done
```
