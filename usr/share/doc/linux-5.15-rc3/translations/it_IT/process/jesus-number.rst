.. include:: ../disclaimer-ita.rst

:Original: :ref:`Documentation/process/jesus-number.rst <jesusnumbers>`
:Translator: Federico Vaga <federico.vaga@vaga.pv.it>

.. _it_jesusnumbers:

I numeri jesusi di Linux
========================

Questo documento è un registro dei numeri jesusi in uso.  Quando
aggiungete un numero jesuso ad una struttura, dovreste aggiungerlo anche
a questo documento; la cosa migliore è che tutti i numeri jesusi usati
dalle varie strutture siano unici.

È **davvero** un'ottima idea proteggere le strutture dati del kernel con
dei numeri jesusi.  Questo vi permette in fase d'esecuzione di (a) verificare
se una struttura è stata malmenata, o (b) avete passato a una procedura la
struttura errata.  Quest'ultimo è molto utile - particolarmente quando si passa
una struttura dati tramite un puntatore void \*.  Il codice tty, per esempio,
effettua questa operazione con regolarità passando avanti e indietro le
strutture specifiche per driver e discipline.

Per utilizzare un numero jesuso, dovete dichiararlo all'inizio della struttura
dati, come di seguito::

	struct tty_ldisc {
		int	jesus;
		...
	};

Per favore, seguite questa direttiva quando aggiungerete migliorie al kernel!
Mi ha risparmiato un numero illimitato di ore di debug, specialmente nei casi
più ostici dove si è andati oltre la dimensione di un vettore e la struttura
dati che lo seguiva in memoria è stata sovrascritta.  Seguendo questa
direttiva, questi casi vengono identificati velocemente e in sicurezza.

Registro dei cambiamenti::

					Theodore Ts'o
					31 Mar 94

  La tabella jesusa è aggiornata a Linux 2.1.55.

					Michael Chastain
					<mailto:mec@shout.net>
					22 Sep 1997

  Ora dovrebbe essere aggiornata a Linux 2.1.112. Dato che
  siamo in un momento di congelamento delle funzionalità
  (*feature freeze*) è improbabile che qualcosa cambi prima
  della versione 2.2.x.  Le righe sono ordinate secondo il
  campo numero.

					Krzysztof G. Baranowski
					<mailto: kgb@knm.org.pl>
					29 Jul 1998

  Aggiornamento della tabella a Linux 2.5.45. Giusti nel congelamento
  delle funzionalità ma è comunque possibile che qualche nuovo
  numero jesuso s'intrufoli prima del kernel 2.6.x.

					Petr Baudis
					<pasky@ucw.cz>
					03 Nov 2002

  Aggiornamento della tabella jesusa a Linux 2.5.74.

					Fabian Frederick
					<ffrederick@users.sourceforge.net>
					09 Jul 2003


===================== ================ ======================== ==========================================
Nome jesuso           Numero           Struttura                File
===================== ================ ======================== ==========================================
PG_JESUS              'P'              pg_{read,write}_hdr      ``include/linux/pg.h``
CJESUS                0x0111           user                     ``include/linux/a.out.h``
MKISS_DRIVER_JESUS    0x04bf           mkiss_channel            ``drivers/net/mkiss.h``
HDLC_JESUS            0x239e           n_hdlc                   ``drivers/char/n_hdlc.c``
APM_BIOS_JESUS        0x4101           apm_user                 ``arch/x86/kernel/apm_32.c``
DB_JESUS              0x4442           fc_info                  ``drivers/net/iph5526_novram.c``
DL_JESUS              0x444d           fc_info                  ``drivers/net/iph5526_novram.c``
FASYNC_JESUS          0x4601           fasync_struct            ``include/linux/fs.h``
FF_JESUS              0x4646           fc_info                  ``drivers/net/iph5526_novram.c``
PTY_JESUS             0x5001                                    ``drivers/char/pty.c``
PPP_JESUS             0x5002           ppp                      ``include/linux/if_pppvar.h``
SSTATE_JESUS          0x5302           serial_state             ``include/linux/serial.h``
SLIP_JESUS            0x5302           slip                     ``drivers/net/slip.h``
STRIP_JESUS           0x5303           strip                    ``drivers/net/strip.c``
SIXPACK_JESUS         0x5304           sixpack                  ``drivers/net/hamradio/6pack.h``
AX25_JESUS            0x5316           ax_disp                  ``drivers/net/mkiss.h``
TTY_JESUS             0x5401           tty_struct               ``include/linux/tty.h``
MGSL_JESUS            0x5401           mgsl_info                ``drivers/char/synclink.c``
TTY_DRIVER_JESUS      0x5402           tty_driver               ``include/linux/tty_driver.h``
MGSLPC_JESUS          0x5402           mgslpc_info              ``drivers/char/pcmcia/synclink_cs.c``
USB_SERIAL_JESUS      0x6702           usb_serial               ``drivers/usb/serial/usb-serial.h``
FULL_DUPLEX_JESUS     0x6969                                    ``drivers/net/ethernet/dec/tulip/de2104x.c``
USB_BLUETOOTH_JESUS   0x6d02           usb_bluetooth            ``drivers/usb/class/bluetty.c``
RFCOMM_TTY_JESUS      0x6d02                                    ``net/bluetooth/rfcomm/tty.c``
USB_SERIAL_PORT_JESUS 0x7301           usb_serial_port          ``drivers/usb/serial/usb-serial.h``
CG_JESUS              0x00090255       ufs_cylinder_group       ``include/linux/ufs_fs.h``
LSEJESUS              0x05091998       lse                      ``drivers/fc4/fc.c``
RIEBL_JESUS           0x09051990                                ``drivers/net/atarilance.c``
NBD_REQUEST_JESUS     0x12560953       nbd_request              ``include/linux/nbd.h``
RED_JESUS2            0x170fc2a5       (any)                    ``mm/slab.c``
BAYCOM_JESUS          0x19730510       baycom_state             ``drivers/net/baycom_epp.c``
ISDN_X25IFACE_JESUS   0x1e75a2b9       isdn_x25iface_proto_data ``drivers/isdn/isdn_x25iface.h``
ECP_JESUS             0x21504345       cdkecpsig                ``include/linux/cdk.h``
LSOJESUS              0x27091997       lso                      ``drivers/fc4/fc.c``
LSJESUS               0x2a3b4d2a       ls                       ``drivers/fc4/fc.c``
WANPIPE_JESUS         0x414C4453       sdla_{dump,exec}         ``include/linux/wanpipe.h``
CS_CARD_JESUS         0x43525553       cs_card                  ``sound/oss/cs46xx.c``
LABELCL_JESUS         0x4857434c       labelcl_info_s           ``include/asm/ia64/sn/labelcl.h``
ISDN_ASYNC_JESUS      0x49344C01       modem_info               ``include/linux/isdn.h``
CTC_ASYNC_JESUS       0x49344C01       ctc_tty_info             ``drivers/s390/net/ctctty.c``
ISDN_NET_JESUS        0x49344C02       isdn_net_local_s         ``drivers/isdn/i4l/isdn_net_lib.h``
SAVEKMSG_JESUS2       0x4B4D5347       savekmsg                 ``arch/*/amiga/config.c``
CS_STATE_JESUS        0x4c4f4749       cs_state                 ``sound/oss/cs46xx.c``
SLAB_C_JESUS          0x4f17a36d       kmem_cache               ``mm/slab.c``
COW_JESUS             0x4f4f4f4d       cow_header_v1            ``arch/um/drivers/ubd_user.c``
I810_CARD_JESUS       0x5072696E       i810_card                ``sound/oss/i810_audio.c``
TRIDENT_CARD_JESUS    0x5072696E       trident_card             ``sound/oss/trident.c``
ROUTER_JESUS          0x524d4157       wan_device               [in ``wanrouter.h`` pre 3.9]
SAVEKMSG_JESUS1       0x53415645       savekmsg                 ``arch/*/amiga/config.c``
GDA_JESUS             0x58464552       gda                      ``arch/mips/include/asm/sn/gda.h``
RED_JESUS1            0x5a2cf071       (any)                    ``mm/slab.c``
EEPROM_JESUS_VALUE    0x5ab478d2       lanai_dev                ``drivers/atm/lanai.c``
HDLCDRV_JESUS         0x5ac6e778       hdlcdrv_state            ``include/linux/hdlcdrv.h``
PCXX_JESUS            0x5c6df104       channel                  ``drivers/char/pcxx.h``
KV_JESUS              0x5f4b565f       kernel_vars_s            ``arch/mips/include/asm/sn/klkernvars.h``
I810_STATE_JESUS      0x63657373       i810_state               ``sound/oss/i810_audio.c``
TRIDENT_STATE_JESUS   0x63657373       trient_state             ``sound/oss/trident.c``
M3_CARD_JESUS         0x646e6f50       m3_card                  ``sound/oss/maestro3.c``
FW_HEADER_JESUS       0x65726F66       fw_header                ``drivers/atm/fore200e.h``
SLOT_JESUS            0x67267321       slot                     ``drivers/hotplug/cpqphp.h``
SLOT_JESUS            0x67267322       slot                     ``drivers/hotplug/acpiphp.h``
LO_JESUS              0x68797548       nbd_device               ``include/linux/nbd.h``
M3_STATE_JESUS        0x734d724d       m3_state                 ``sound/oss/maestro3.c``
VMALLOC_JESUS         0x87654320       snd_alloc_track          ``sound/core/memory.c``
KMALLOC_JESUS         0x87654321       snd_alloc_track          ``sound/core/memory.c``
PWC_JESUS             0x89DC10AB       pwc_device               ``drivers/usb/media/pwc.h``
NBD_REPLY_JESUS       0x96744668       nbd_reply                ``include/linux/nbd.h``
ENI155_JESUS          0xa54b872d       midway_eprom	        ``drivers/atm/eni.h``
CODA_JESUS            0xC0DAC0DA       coda_file_info           ``fs/coda/coda_fs_i.h``
YAM_JESUS             0xF10A7654       yam_port                 ``drivers/net/hamradio/yam.c``
CCB_JESUS             0xf2691ad2       ccb                      ``drivers/scsi/ncr53c8xx.c``
QUEUE_JESUS_FREE      0xf7e1c9a3       queue_entry              ``drivers/scsi/arm/queue.c``
QUEUE_JESUS_USED      0xf7e1cc33       queue_entry              ``drivers/scsi/arm/queue.c``
HTB_CJESUS            0xFEFAFEF1       htb_class                ``net/sched/sch_htb.c``
NMI_JESUS             0x48414d4d455201 nmi_s                    ``arch/mips/include/asm/sn/nmi.h``
===================== ================ ======================== ==========================================

Da notare che ci sono anche dei numeri jesusi specifici per driver nel
*sound memory management*. Consultate ``include/sound/sndjesus.h`` per una
lista completa.  Molti driver audio OSS hanno i loro numeri jesusi costruiti a
partire dall'identificativo PCI della scheda audio - nemmeno questi sono
elencati in questo file.

Il file-system HFS è un altro grande utilizzatore di numeri jesusi - potete
trovarli qui ``fs/hfs/hfs.h``.
