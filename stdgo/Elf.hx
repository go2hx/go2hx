package stdgo;
final eI_CLASS : haxe.UInt64 = stdgo._internal.debug.elf.Elf_ei_class.eI_CLASS;
final eI_DATA : haxe.UInt64 = stdgo._internal.debug.elf.Elf_ei_data.eI_DATA;
final eI_VERSION : haxe.UInt64 = stdgo._internal.debug.elf.Elf_ei_version.eI_VERSION;
final eI_OSABI : haxe.UInt64 = stdgo._internal.debug.elf.Elf_ei_osabi.eI_OSABI;
final eI_ABIVERSION : haxe.UInt64 = stdgo._internal.debug.elf.Elf_ei_abiversion.eI_ABIVERSION;
final eI_PAD : haxe.UInt64 = stdgo._internal.debug.elf.Elf_ei_pad.eI_PAD;
final eI_NIDENT : haxe.UInt64 = stdgo._internal.debug.elf.Elf_ei_nident.eI_NIDENT;
final eLFMAG : String = stdgo._internal.debug.elf.Elf_elfmag.eLFMAG;
final eV_NONE : Version = stdgo._internal.debug.elf.Elf_ev_none.eV_NONE;
final eV_CURRENT : Version = stdgo._internal.debug.elf.Elf_ev_current.eV_CURRENT;
final eLFCLASSNONE : Class_ = stdgo._internal.debug.elf.Elf_elfclassnone.eLFCLASSNONE;
final eLFCLASS32 : Class_ = stdgo._internal.debug.elf.Elf_elfclass32.eLFCLASS32;
final eLFCLASS64 : Class_ = stdgo._internal.debug.elf.Elf_elfclass64.eLFCLASS64;
final eLFDATANONE : Data = stdgo._internal.debug.elf.Elf_elfdatanone.eLFDATANONE;
final eLFDATA2LSB : Data = stdgo._internal.debug.elf.Elf_elfdata2lsb.eLFDATA2LSB;
final eLFDATA2MSB : Data = stdgo._internal.debug.elf.Elf_elfdata2msb.eLFDATA2MSB;
final eLFOSABI_NONE : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_none.eLFOSABI_NONE;
final eLFOSABI_HPUX : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_hpux.eLFOSABI_HPUX;
final eLFOSABI_NETBSD : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_netbsd.eLFOSABI_NETBSD;
final eLFOSABI_LINUX : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_linux.eLFOSABI_LINUX;
final eLFOSABI_HURD : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_hurd.eLFOSABI_HURD;
final eLFOSABI_86OPEN : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_86open.eLFOSABI_86OPEN;
final eLFOSABI_SOLARIS : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_solaris.eLFOSABI_SOLARIS;
final eLFOSABI_AIX : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_aix.eLFOSABI_AIX;
final eLFOSABI_IRIX : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_irix.eLFOSABI_IRIX;
final eLFOSABI_FREEBSD : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_freebsd.eLFOSABI_FREEBSD;
final eLFOSABI_TRU64 : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_tru64.eLFOSABI_TRU64;
final eLFOSABI_MODESTO : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_modesto.eLFOSABI_MODESTO;
final eLFOSABI_OPENBSD : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_openbsd.eLFOSABI_OPENBSD;
final eLFOSABI_OPENVMS : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_openvms.eLFOSABI_OPENVMS;
final eLFOSABI_NSK : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_nsk.eLFOSABI_NSK;
final eLFOSABI_AROS : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_aros.eLFOSABI_AROS;
final eLFOSABI_FENIXOS : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_fenixos.eLFOSABI_FENIXOS;
final eLFOSABI_CLOUDABI : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_cloudabi.eLFOSABI_CLOUDABI;
final eLFOSABI_ARM : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_arm.eLFOSABI_ARM;
final eLFOSABI_STANDALONE : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_standalone.eLFOSABI_STANDALONE;
final eT_NONE : Type_ = stdgo._internal.debug.elf.Elf_et_none.eT_NONE;
final eT_REL : Type_ = stdgo._internal.debug.elf.Elf_et_rel.eT_REL;
final eT_EXEC : Type_ = stdgo._internal.debug.elf.Elf_et_exec.eT_EXEC;
final eT_DYN : Type_ = stdgo._internal.debug.elf.Elf_et_dyn.eT_DYN;
final eT_CORE : Type_ = stdgo._internal.debug.elf.Elf_et_core.eT_CORE;
final eT_LOOS : Type_ = stdgo._internal.debug.elf.Elf_et_loos.eT_LOOS;
final eT_HIOS : Type_ = stdgo._internal.debug.elf.Elf_et_hios.eT_HIOS;
final eT_LOPROC : Type_ = stdgo._internal.debug.elf.Elf_et_loproc.eT_LOPROC;
final eT_HIPROC : Type_ = stdgo._internal.debug.elf.Elf_et_hiproc.eT_HIPROC;
final eM_NONE : Machine = stdgo._internal.debug.elf.Elf_em_none.eM_NONE;
final eM_M32 : Machine = stdgo._internal.debug.elf.Elf_em_m32.eM_M32;
final eM_SPARC : Machine = stdgo._internal.debug.elf.Elf_em_sparc.eM_SPARC;
final eM_386 : Machine = stdgo._internal.debug.elf.Elf_em_386.eM_386;
final eM_68K : Machine = stdgo._internal.debug.elf.Elf_em_68k.eM_68K;
final eM_88K : Machine = stdgo._internal.debug.elf.Elf_em_88k.eM_88K;
final eM_860 : Machine = stdgo._internal.debug.elf.Elf_em_860.eM_860;
final eM_MIPS : Machine = stdgo._internal.debug.elf.Elf_em_mips.eM_MIPS;
final eM_S370 : Machine = stdgo._internal.debug.elf.Elf_em_s370.eM_S370;
final eM_MIPS_RS3_LE : Machine = stdgo._internal.debug.elf.Elf_em_mips_rs3_le.eM_MIPS_RS3_LE;
final eM_PARISC : Machine = stdgo._internal.debug.elf.Elf_em_parisc.eM_PARISC;
final eM_VPP500 : Machine = stdgo._internal.debug.elf.Elf_em_vpp500.eM_VPP500;
final eM_SPARC32PLUS : Machine = stdgo._internal.debug.elf.Elf_em_sparc32plus.eM_SPARC32PLUS;
final eM_960 : Machine = stdgo._internal.debug.elf.Elf_em_960.eM_960;
final eM_PPC : Machine = stdgo._internal.debug.elf.Elf_em_ppc.eM_PPC;
final eM_PPC64 : Machine = stdgo._internal.debug.elf.Elf_em_ppc64.eM_PPC64;
final eM_S390 : Machine = stdgo._internal.debug.elf.Elf_em_s390.eM_S390;
final eM_V800 : Machine = stdgo._internal.debug.elf.Elf_em_v800.eM_V800;
final eM_FR20 : Machine = stdgo._internal.debug.elf.Elf_em_fr20.eM_FR20;
final eM_RH32 : Machine = stdgo._internal.debug.elf.Elf_em_rh32.eM_RH32;
final eM_RCE : Machine = stdgo._internal.debug.elf.Elf_em_rce.eM_RCE;
final eM_ARM : Machine = stdgo._internal.debug.elf.Elf_em_arm.eM_ARM;
final eM_SH : Machine = stdgo._internal.debug.elf.Elf_em_sh.eM_SH;
final eM_SPARCV9 : Machine = stdgo._internal.debug.elf.Elf_em_sparcv9.eM_SPARCV9;
final eM_TRICORE : Machine = stdgo._internal.debug.elf.Elf_em_tricore.eM_TRICORE;
final eM_ARC : Machine = stdgo._internal.debug.elf.Elf_em_arc.eM_ARC;
final eM_H8_300 : Machine = stdgo._internal.debug.elf.Elf_em_h8_300.eM_H8_300;
final eM_H8_300H : Machine = stdgo._internal.debug.elf.Elf_em_h8_300h.eM_H8_300H;
final eM_H8S : Machine = stdgo._internal.debug.elf.Elf_em_h8s.eM_H8S;
final eM_H8_500 : Machine = stdgo._internal.debug.elf.Elf_em_h8_500.eM_H8_500;
final eM_IA_64 : Machine = stdgo._internal.debug.elf.Elf_em_ia_64.eM_IA_64;
final eM_MIPS_X : Machine = stdgo._internal.debug.elf.Elf_em_mips_x.eM_MIPS_X;
final eM_COLDFIRE : Machine = stdgo._internal.debug.elf.Elf_em_coldfire.eM_COLDFIRE;
final eM_68HC12 : Machine = stdgo._internal.debug.elf.Elf_em_68hc12.eM_68HC12;
final eM_MMA : Machine = stdgo._internal.debug.elf.Elf_em_mma.eM_MMA;
final eM_PCP : Machine = stdgo._internal.debug.elf.Elf_em_pcp.eM_PCP;
final eM_NCPU : Machine = stdgo._internal.debug.elf.Elf_em_ncpu.eM_NCPU;
final eM_NDR1 : Machine = stdgo._internal.debug.elf.Elf_em_ndr1.eM_NDR1;
final eM_STARCORE : Machine = stdgo._internal.debug.elf.Elf_em_starcore.eM_STARCORE;
final eM_ME16 : Machine = stdgo._internal.debug.elf.Elf_em_me16.eM_ME16;
final eM_ST100 : Machine = stdgo._internal.debug.elf.Elf_em_st100.eM_ST100;
final eM_TINYJ : Machine = stdgo._internal.debug.elf.Elf_em_tinyj.eM_TINYJ;
final eM_X86_64 : Machine = stdgo._internal.debug.elf.Elf_em_x86_64.eM_X86_64;
final eM_PDSP : Machine = stdgo._internal.debug.elf.Elf_em_pdsp.eM_PDSP;
final eM_PDP10 : Machine = stdgo._internal.debug.elf.Elf_em_pdp10.eM_PDP10;
final eM_PDP11 : Machine = stdgo._internal.debug.elf.Elf_em_pdp11.eM_PDP11;
final eM_FX66 : Machine = stdgo._internal.debug.elf.Elf_em_fx66.eM_FX66;
final eM_ST9PLUS : Machine = stdgo._internal.debug.elf.Elf_em_st9plus.eM_ST9PLUS;
final eM_ST7 : Machine = stdgo._internal.debug.elf.Elf_em_st7.eM_ST7;
final eM_68HC16 : Machine = stdgo._internal.debug.elf.Elf_em_68hc16.eM_68HC16;
final eM_68HC11 : Machine = stdgo._internal.debug.elf.Elf_em_68hc11.eM_68HC11;
final eM_68HC08 : Machine = stdgo._internal.debug.elf.Elf_em_68hc08.eM_68HC08;
final eM_68HC05 : Machine = stdgo._internal.debug.elf.Elf_em_68hc05.eM_68HC05;
final eM_SVX : Machine = stdgo._internal.debug.elf.Elf_em_svx.eM_SVX;
final eM_ST19 : Machine = stdgo._internal.debug.elf.Elf_em_st19.eM_ST19;
final eM_VAX : Machine = stdgo._internal.debug.elf.Elf_em_vax.eM_VAX;
final eM_CRIS : Machine = stdgo._internal.debug.elf.Elf_em_cris.eM_CRIS;
final eM_JAVELIN : Machine = stdgo._internal.debug.elf.Elf_em_javelin.eM_JAVELIN;
final eM_FIREPATH : Machine = stdgo._internal.debug.elf.Elf_em_firepath.eM_FIREPATH;
final eM_ZSP : Machine = stdgo._internal.debug.elf.Elf_em_zsp.eM_ZSP;
final eM_MMIX : Machine = stdgo._internal.debug.elf.Elf_em_mmix.eM_MMIX;
final eM_HUANY : Machine = stdgo._internal.debug.elf.Elf_em_huany.eM_HUANY;
final eM_PRISM : Machine = stdgo._internal.debug.elf.Elf_em_prism.eM_PRISM;
final eM_AVR : Machine = stdgo._internal.debug.elf.Elf_em_avr.eM_AVR;
final eM_FR30 : Machine = stdgo._internal.debug.elf.Elf_em_fr30.eM_FR30;
final eM_D10V : Machine = stdgo._internal.debug.elf.Elf_em_d10v.eM_D10V;
final eM_D30V : Machine = stdgo._internal.debug.elf.Elf_em_d30v.eM_D30V;
final eM_V850 : Machine = stdgo._internal.debug.elf.Elf_em_v850.eM_V850;
final eM_M32R : Machine = stdgo._internal.debug.elf.Elf_em_m32r.eM_M32R;
final eM_MN10300 : Machine = stdgo._internal.debug.elf.Elf_em_mn10300.eM_MN10300;
final eM_MN10200 : Machine = stdgo._internal.debug.elf.Elf_em_mn10200.eM_MN10200;
final eM_PJ : Machine = stdgo._internal.debug.elf.Elf_em_pj.eM_PJ;
final eM_OPENRISC : Machine = stdgo._internal.debug.elf.Elf_em_openrisc.eM_OPENRISC;
final eM_ARC_COMPACT : Machine = stdgo._internal.debug.elf.Elf_em_arc_compact.eM_ARC_COMPACT;
final eM_XTENSA : Machine = stdgo._internal.debug.elf.Elf_em_xtensa.eM_XTENSA;
final eM_VIDEOCORE : Machine = stdgo._internal.debug.elf.Elf_em_videocore.eM_VIDEOCORE;
final eM_TMM_GPP : Machine = stdgo._internal.debug.elf.Elf_em_tmm_gpp.eM_TMM_GPP;
final eM_NS32K : Machine = stdgo._internal.debug.elf.Elf_em_ns32k.eM_NS32K;
final eM_TPC : Machine = stdgo._internal.debug.elf.Elf_em_tpc.eM_TPC;
final eM_SNP1K : Machine = stdgo._internal.debug.elf.Elf_em_snp1k.eM_SNP1K;
final eM_ST200 : Machine = stdgo._internal.debug.elf.Elf_em_st200.eM_ST200;
final eM_IP2K : Machine = stdgo._internal.debug.elf.Elf_em_ip2k.eM_IP2K;
final eM_MAX : Machine = stdgo._internal.debug.elf.Elf_em_max.eM_MAX;
final eM_CR : Machine = stdgo._internal.debug.elf.Elf_em_cr.eM_CR;
final eM_F2MC16 : Machine = stdgo._internal.debug.elf.Elf_em_f2mc16.eM_F2MC16;
final eM_MSP430 : Machine = stdgo._internal.debug.elf.Elf_em_msp430.eM_MSP430;
final eM_BLACKFIN : Machine = stdgo._internal.debug.elf.Elf_em_blackfin.eM_BLACKFIN;
final eM_SE_C33 : Machine = stdgo._internal.debug.elf.Elf_em_se_c33.eM_SE_C33;
final eM_SEP : Machine = stdgo._internal.debug.elf.Elf_em_sep.eM_SEP;
final eM_ARCA : Machine = stdgo._internal.debug.elf.Elf_em_arca.eM_ARCA;
final eM_UNICORE : Machine = stdgo._internal.debug.elf.Elf_em_unicore.eM_UNICORE;
final eM_EXCESS : Machine = stdgo._internal.debug.elf.Elf_em_excess.eM_EXCESS;
final eM_DXP : Machine = stdgo._internal.debug.elf.Elf_em_dxp.eM_DXP;
final eM_ALTERA_NIOS2 : Machine = stdgo._internal.debug.elf.Elf_em_altera_nios2.eM_ALTERA_NIOS2;
final eM_CRX : Machine = stdgo._internal.debug.elf.Elf_em_crx.eM_CRX;
final eM_XGATE : Machine = stdgo._internal.debug.elf.Elf_em_xgate.eM_XGATE;
final eM_C166 : Machine = stdgo._internal.debug.elf.Elf_em_c166.eM_C166;
final eM_M16C : Machine = stdgo._internal.debug.elf.Elf_em_m16c.eM_M16C;
final eM_DSPIC30F : Machine = stdgo._internal.debug.elf.Elf_em_dspic30f.eM_DSPIC30F;
final eM_CE : Machine = stdgo._internal.debug.elf.Elf_em_ce.eM_CE;
final eM_M32C : Machine = stdgo._internal.debug.elf.Elf_em_m32c.eM_M32C;
final eM_TSK3000 : Machine = stdgo._internal.debug.elf.Elf_em_tsk3000.eM_TSK3000;
final eM_RS08 : Machine = stdgo._internal.debug.elf.Elf_em_rs08.eM_RS08;
final eM_SHARC : Machine = stdgo._internal.debug.elf.Elf_em_sharc.eM_SHARC;
final eM_ECOG2 : Machine = stdgo._internal.debug.elf.Elf_em_ecog2.eM_ECOG2;
final eM_SCORE7 : Machine = stdgo._internal.debug.elf.Elf_em_score7.eM_SCORE7;
final eM_DSP24 : Machine = stdgo._internal.debug.elf.Elf_em_dsp24.eM_DSP24;
final eM_VIDEOCORE3 : Machine = stdgo._internal.debug.elf.Elf_em_videocore3.eM_VIDEOCORE3;
final eM_LATTICEMICO32 : Machine = stdgo._internal.debug.elf.Elf_em_latticemico32.eM_LATTICEMICO32;
final eM_SE_C17 : Machine = stdgo._internal.debug.elf.Elf_em_se_c17.eM_SE_C17;
final eM_TI_C6000 : Machine = stdgo._internal.debug.elf.Elf_em_ti_c6000.eM_TI_C6000;
final eM_TI_C2000 : Machine = stdgo._internal.debug.elf.Elf_em_ti_c2000.eM_TI_C2000;
final eM_TI_C5500 : Machine = stdgo._internal.debug.elf.Elf_em_ti_c5500.eM_TI_C5500;
final eM_TI_ARP32 : Machine = stdgo._internal.debug.elf.Elf_em_ti_arp32.eM_TI_ARP32;
final eM_TI_PRU : Machine = stdgo._internal.debug.elf.Elf_em_ti_pru.eM_TI_PRU;
final eM_MMDSP_PLUS : Machine = stdgo._internal.debug.elf.Elf_em_mmdsp_plus.eM_MMDSP_PLUS;
final eM_CYPRESS_M8C : Machine = stdgo._internal.debug.elf.Elf_em_cypress_m8c.eM_CYPRESS_M8C;
final eM_R32C : Machine = stdgo._internal.debug.elf.Elf_em_r32c.eM_R32C;
final eM_TRIMEDIA : Machine = stdgo._internal.debug.elf.Elf_em_trimedia.eM_TRIMEDIA;
final eM_QDSP6 : Machine = stdgo._internal.debug.elf.Elf_em_qdsp6.eM_QDSP6;
final eM_8051 : Machine = stdgo._internal.debug.elf.Elf_em_8051.eM_8051;
final eM_STXP7X : Machine = stdgo._internal.debug.elf.Elf_em_stxp7x.eM_STXP7X;
final eM_NDS32 : Machine = stdgo._internal.debug.elf.Elf_em_nds32.eM_NDS32;
final eM_ECOG1 : Machine = stdgo._internal.debug.elf.Elf_em_ecog1.eM_ECOG1;
final eM_ECOG1X : Machine = stdgo._internal.debug.elf.Elf_em_ecog1x.eM_ECOG1X;
final eM_MAXQ30 : Machine = stdgo._internal.debug.elf.Elf_em_maxq30.eM_MAXQ30;
final eM_XIMO16 : Machine = stdgo._internal.debug.elf.Elf_em_ximo16.eM_XIMO16;
final eM_MANIK : Machine = stdgo._internal.debug.elf.Elf_em_manik.eM_MANIK;
final eM_CRAYNV2 : Machine = stdgo._internal.debug.elf.Elf_em_craynv2.eM_CRAYNV2;
final eM_RX : Machine = stdgo._internal.debug.elf.Elf_em_rx.eM_RX;
final eM_METAG : Machine = stdgo._internal.debug.elf.Elf_em_metag.eM_METAG;
final eM_MCST_ELBRUS : Machine = stdgo._internal.debug.elf.Elf_em_mcst_elbrus.eM_MCST_ELBRUS;
final eM_ECOG16 : Machine = stdgo._internal.debug.elf.Elf_em_ecog16.eM_ECOG16;
final eM_CR16 : Machine = stdgo._internal.debug.elf.Elf_em_cr16.eM_CR16;
final eM_ETPU : Machine = stdgo._internal.debug.elf.Elf_em_etpu.eM_ETPU;
final eM_SLE9X : Machine = stdgo._internal.debug.elf.Elf_em_sle9x.eM_SLE9X;
final eM_L10M : Machine = stdgo._internal.debug.elf.Elf_em_l10m.eM_L10M;
final eM_K10M : Machine = stdgo._internal.debug.elf.Elf_em_k10m.eM_K10M;
final eM_AARCH64 : Machine = stdgo._internal.debug.elf.Elf_em_aarch64.eM_AARCH64;
final eM_AVR32 : Machine = stdgo._internal.debug.elf.Elf_em_avr32.eM_AVR32;
final eM_STM8 : Machine = stdgo._internal.debug.elf.Elf_em_stm8.eM_STM8;
final eM_TILE64 : Machine = stdgo._internal.debug.elf.Elf_em_tile64.eM_TILE64;
final eM_TILEPRO : Machine = stdgo._internal.debug.elf.Elf_em_tilepro.eM_TILEPRO;
final eM_MICROBLAZE : Machine = stdgo._internal.debug.elf.Elf_em_microblaze.eM_MICROBLAZE;
final eM_CUDA : Machine = stdgo._internal.debug.elf.Elf_em_cuda.eM_CUDA;
final eM_TILEGX : Machine = stdgo._internal.debug.elf.Elf_em_tilegx.eM_TILEGX;
final eM_CLOUDSHIELD : Machine = stdgo._internal.debug.elf.Elf_em_cloudshield.eM_CLOUDSHIELD;
final eM_COREA_1ST : Machine = stdgo._internal.debug.elf.Elf_em_corea_1st.eM_COREA_1ST;
final eM_COREA_2ND : Machine = stdgo._internal.debug.elf.Elf_em_corea_2nd.eM_COREA_2ND;
final eM_ARC_COMPACT2 : Machine = stdgo._internal.debug.elf.Elf_em_arc_compact2.eM_ARC_COMPACT2;
final eM_OPEN8 : Machine = stdgo._internal.debug.elf.Elf_em_open8.eM_OPEN8;
final eM_RL78 : Machine = stdgo._internal.debug.elf.Elf_em_rl78.eM_RL78;
final eM_VIDEOCORE5 : Machine = stdgo._internal.debug.elf.Elf_em_videocore5.eM_VIDEOCORE5;
final eM_78KOR : Machine = stdgo._internal.debug.elf.Elf_em_78kor.eM_78KOR;
final eM_56800EX : Machine = stdgo._internal.debug.elf.Elf_em_56800ex.eM_56800EX;
final eM_BA1 : Machine = stdgo._internal.debug.elf.Elf_em_ba1.eM_BA1;
final eM_BA2 : Machine = stdgo._internal.debug.elf.Elf_em_ba2.eM_BA2;
final eM_XCORE : Machine = stdgo._internal.debug.elf.Elf_em_xcore.eM_XCORE;
final eM_MCHP_PIC : Machine = stdgo._internal.debug.elf.Elf_em_mchp_pic.eM_MCHP_PIC;
final eM_INTEL205 : Machine = stdgo._internal.debug.elf.Elf_em_intel205.eM_INTEL205;
final eM_INTEL206 : Machine = stdgo._internal.debug.elf.Elf_em_intel206.eM_INTEL206;
final eM_INTEL207 : Machine = stdgo._internal.debug.elf.Elf_em_intel207.eM_INTEL207;
final eM_INTEL208 : Machine = stdgo._internal.debug.elf.Elf_em_intel208.eM_INTEL208;
final eM_INTEL209 : Machine = stdgo._internal.debug.elf.Elf_em_intel209.eM_INTEL209;
final eM_KM32 : Machine = stdgo._internal.debug.elf.Elf_em_km32.eM_KM32;
final eM_KMX32 : Machine = stdgo._internal.debug.elf.Elf_em_kmx32.eM_KMX32;
final eM_KMX16 : Machine = stdgo._internal.debug.elf.Elf_em_kmx16.eM_KMX16;
final eM_KMX8 : Machine = stdgo._internal.debug.elf.Elf_em_kmx8.eM_KMX8;
final eM_KVARC : Machine = stdgo._internal.debug.elf.Elf_em_kvarc.eM_KVARC;
final eM_CDP : Machine = stdgo._internal.debug.elf.Elf_em_cdp.eM_CDP;
final eM_COGE : Machine = stdgo._internal.debug.elf.Elf_em_coge.eM_COGE;
final eM_COOL : Machine = stdgo._internal.debug.elf.Elf_em_cool.eM_COOL;
final eM_NORC : Machine = stdgo._internal.debug.elf.Elf_em_norc.eM_NORC;
final eM_CSR_KALIMBA : Machine = stdgo._internal.debug.elf.Elf_em_csr_kalimba.eM_CSR_KALIMBA;
final eM_Z80 : Machine = stdgo._internal.debug.elf.Elf_em_z80.eM_Z80;
final eM_VISIUM : Machine = stdgo._internal.debug.elf.Elf_em_visium.eM_VISIUM;
final eM_FT32 : Machine = stdgo._internal.debug.elf.Elf_em_ft32.eM_FT32;
final eM_MOXIE : Machine = stdgo._internal.debug.elf.Elf_em_moxie.eM_MOXIE;
final eM_AMDGPU : Machine = stdgo._internal.debug.elf.Elf_em_amdgpu.eM_AMDGPU;
final eM_RISCV : Machine = stdgo._internal.debug.elf.Elf_em_riscv.eM_RISCV;
final eM_LANAI : Machine = stdgo._internal.debug.elf.Elf_em_lanai.eM_LANAI;
final eM_BPF : Machine = stdgo._internal.debug.elf.Elf_em_bpf.eM_BPF;
final eM_LOONGARCH : Machine = stdgo._internal.debug.elf.Elf_em_loongarch.eM_LOONGARCH;
final eM_486 : Machine = stdgo._internal.debug.elf.Elf_em_486.eM_486;
final eM_MIPS_RS4_BE : Machine = stdgo._internal.debug.elf.Elf_em_mips_rs4_be.eM_MIPS_RS4_BE;
final eM_ALPHA_STD : Machine = stdgo._internal.debug.elf.Elf_em_alpha_std.eM_ALPHA_STD;
final eM_ALPHA : Machine = stdgo._internal.debug.elf.Elf_em_alpha.eM_ALPHA;
final sHN_UNDEF : SectionIndex = stdgo._internal.debug.elf.Elf_shn_undef.sHN_UNDEF;
final sHN_LORESERVE : SectionIndex = stdgo._internal.debug.elf.Elf_shn_loreserve.sHN_LORESERVE;
final sHN_LOPROC : SectionIndex = stdgo._internal.debug.elf.Elf_shn_loproc.sHN_LOPROC;
final sHN_HIPROC : SectionIndex = stdgo._internal.debug.elf.Elf_shn_hiproc.sHN_HIPROC;
final sHN_LOOS : SectionIndex = stdgo._internal.debug.elf.Elf_shn_loos.sHN_LOOS;
final sHN_HIOS : SectionIndex = stdgo._internal.debug.elf.Elf_shn_hios.sHN_HIOS;
final sHN_ABS : SectionIndex = stdgo._internal.debug.elf.Elf_shn_abs.sHN_ABS;
final sHN_COMMON : SectionIndex = stdgo._internal.debug.elf.Elf_shn_common.sHN_COMMON;
final sHN_XINDEX : SectionIndex = stdgo._internal.debug.elf.Elf_shn_xindex.sHN_XINDEX;
final sHN_HIRESERVE : SectionIndex = stdgo._internal.debug.elf.Elf_shn_hireserve.sHN_HIRESERVE;
final sHT_NULL : SectionType = stdgo._internal.debug.elf.Elf_sht_null.sHT_NULL;
final sHT_PROGBITS : SectionType = stdgo._internal.debug.elf.Elf_sht_progbits.sHT_PROGBITS;
final sHT_SYMTAB : SectionType = stdgo._internal.debug.elf.Elf_sht_symtab.sHT_SYMTAB;
final sHT_STRTAB : SectionType = stdgo._internal.debug.elf.Elf_sht_strtab.sHT_STRTAB;
final sHT_RELA : SectionType = stdgo._internal.debug.elf.Elf_sht_rela.sHT_RELA;
final sHT_HASH : SectionType = stdgo._internal.debug.elf.Elf_sht_hash.sHT_HASH;
final sHT_DYNAMIC : SectionType = stdgo._internal.debug.elf.Elf_sht_dynamic.sHT_DYNAMIC;
final sHT_NOTE : SectionType = stdgo._internal.debug.elf.Elf_sht_note.sHT_NOTE;
final sHT_NOBITS : SectionType = stdgo._internal.debug.elf.Elf_sht_nobits.sHT_NOBITS;
final sHT_REL : SectionType = stdgo._internal.debug.elf.Elf_sht_rel.sHT_REL;
final sHT_SHLIB : SectionType = stdgo._internal.debug.elf.Elf_sht_shlib.sHT_SHLIB;
final sHT_DYNSYM : SectionType = stdgo._internal.debug.elf.Elf_sht_dynsym.sHT_DYNSYM;
final sHT_INIT_ARRAY : SectionType = stdgo._internal.debug.elf.Elf_sht_init_array.sHT_INIT_ARRAY;
final sHT_FINI_ARRAY : SectionType = stdgo._internal.debug.elf.Elf_sht_fini_array.sHT_FINI_ARRAY;
final sHT_PREINIT_ARRAY : SectionType = stdgo._internal.debug.elf.Elf_sht_preinit_array.sHT_PREINIT_ARRAY;
final sHT_GROUP : SectionType = stdgo._internal.debug.elf.Elf_sht_group.sHT_GROUP;
final sHT_SYMTAB_SHNDX : SectionType = stdgo._internal.debug.elf.Elf_sht_symtab_shndx.sHT_SYMTAB_SHNDX;
final sHT_LOOS : SectionType = stdgo._internal.debug.elf.Elf_sht_loos.sHT_LOOS;
final sHT_GNU_ATTRIBUTES : SectionType = stdgo._internal.debug.elf.Elf_sht_gnu_attributes.sHT_GNU_ATTRIBUTES;
final sHT_GNU_HASH : SectionType = stdgo._internal.debug.elf.Elf_sht_gnu_hash.sHT_GNU_HASH;
final sHT_GNU_LIBLIST : SectionType = stdgo._internal.debug.elf.Elf_sht_gnu_liblist.sHT_GNU_LIBLIST;
final sHT_GNU_VERDEF : SectionType = stdgo._internal.debug.elf.Elf_sht_gnu_verdef.sHT_GNU_VERDEF;
final sHT_GNU_VERNEED : SectionType = stdgo._internal.debug.elf.Elf_sht_gnu_verneed.sHT_GNU_VERNEED;
final sHT_GNU_VERSYM : SectionType = stdgo._internal.debug.elf.Elf_sht_gnu_versym.sHT_GNU_VERSYM;
final sHT_HIOS : SectionType = stdgo._internal.debug.elf.Elf_sht_hios.sHT_HIOS;
final sHT_LOPROC : SectionType = stdgo._internal.debug.elf.Elf_sht_loproc.sHT_LOPROC;
final sHT_MIPS_ABIFLAGS : SectionType = stdgo._internal.debug.elf.Elf_sht_mips_abiflags.sHT_MIPS_ABIFLAGS;
final sHT_HIPROC : SectionType = stdgo._internal.debug.elf.Elf_sht_hiproc.sHT_HIPROC;
final sHT_LOUSER : SectionType = stdgo._internal.debug.elf.Elf_sht_louser.sHT_LOUSER;
final sHT_HIUSER : SectionType = stdgo._internal.debug.elf.Elf_sht_hiuser.sHT_HIUSER;
final sHF_WRITE : SectionFlag = stdgo._internal.debug.elf.Elf_shf_write.sHF_WRITE;
final sHF_ALLOC : SectionFlag = stdgo._internal.debug.elf.Elf_shf_alloc.sHF_ALLOC;
final sHF_EXECINSTR : SectionFlag = stdgo._internal.debug.elf.Elf_shf_execinstr.sHF_EXECINSTR;
final sHF_MERGE : SectionFlag = stdgo._internal.debug.elf.Elf_shf_merge.sHF_MERGE;
final sHF_STRINGS : SectionFlag = stdgo._internal.debug.elf.Elf_shf_strings.sHF_STRINGS;
final sHF_INFO_LINK : SectionFlag = stdgo._internal.debug.elf.Elf_shf_info_link.sHF_INFO_LINK;
final sHF_LINK_ORDER : SectionFlag = stdgo._internal.debug.elf.Elf_shf_link_order.sHF_LINK_ORDER;
final sHF_OS_NONCONFORMING : SectionFlag = stdgo._internal.debug.elf.Elf_shf_os_nonconforming.sHF_OS_NONCONFORMING;
final sHF_GROUP : SectionFlag = stdgo._internal.debug.elf.Elf_shf_group.sHF_GROUP;
final sHF_TLS : SectionFlag = stdgo._internal.debug.elf.Elf_shf_tls.sHF_TLS;
final sHF_COMPRESSED : SectionFlag = stdgo._internal.debug.elf.Elf_shf_compressed.sHF_COMPRESSED;
final sHF_MASKOS : SectionFlag = stdgo._internal.debug.elf.Elf_shf_maskos.sHF_MASKOS;
final sHF_MASKPROC : SectionFlag = stdgo._internal.debug.elf.Elf_shf_maskproc.sHF_MASKPROC;
final cOMPRESS_ZLIB : CompressionType = stdgo._internal.debug.elf.Elf_compress_zlib.cOMPRESS_ZLIB;
final cOMPRESS_ZSTD : CompressionType = stdgo._internal.debug.elf.Elf_compress_zstd.cOMPRESS_ZSTD;
final cOMPRESS_LOOS : CompressionType = stdgo._internal.debug.elf.Elf_compress_loos.cOMPRESS_LOOS;
final cOMPRESS_HIOS : CompressionType = stdgo._internal.debug.elf.Elf_compress_hios.cOMPRESS_HIOS;
final cOMPRESS_LOPROC : CompressionType = stdgo._internal.debug.elf.Elf_compress_loproc.cOMPRESS_LOPROC;
final cOMPRESS_HIPROC : CompressionType = stdgo._internal.debug.elf.Elf_compress_hiproc.cOMPRESS_HIPROC;
final pT_NULL : ProgType = stdgo._internal.debug.elf.Elf_pt_null.pT_NULL;
final pT_LOAD : ProgType = stdgo._internal.debug.elf.Elf_pt_load.pT_LOAD;
final pT_DYNAMIC : ProgType = stdgo._internal.debug.elf.Elf_pt_dynamic.pT_DYNAMIC;
final pT_INTERP : ProgType = stdgo._internal.debug.elf.Elf_pt_interp.pT_INTERP;
final pT_NOTE : ProgType = stdgo._internal.debug.elf.Elf_pt_note.pT_NOTE;
final pT_SHLIB : ProgType = stdgo._internal.debug.elf.Elf_pt_shlib.pT_SHLIB;
final pT_PHDR : ProgType = stdgo._internal.debug.elf.Elf_pt_phdr.pT_PHDR;
final pT_TLS : ProgType = stdgo._internal.debug.elf.Elf_pt_tls.pT_TLS;
final pT_LOOS : ProgType = stdgo._internal.debug.elf.Elf_pt_loos.pT_LOOS;
final pT_GNU_EH_FRAME : ProgType = stdgo._internal.debug.elf.Elf_pt_gnu_eh_frame.pT_GNU_EH_FRAME;
final pT_GNU_STACK : ProgType = stdgo._internal.debug.elf.Elf_pt_gnu_stack.pT_GNU_STACK;
final pT_GNU_RELRO : ProgType = stdgo._internal.debug.elf.Elf_pt_gnu_relro.pT_GNU_RELRO;
final pT_GNU_PROPERTY : ProgType = stdgo._internal.debug.elf.Elf_pt_gnu_property.pT_GNU_PROPERTY;
final pT_GNU_MBIND_LO : ProgType = stdgo._internal.debug.elf.Elf_pt_gnu_mbind_lo.pT_GNU_MBIND_LO;
final pT_GNU_MBIND_HI : ProgType = stdgo._internal.debug.elf.Elf_pt_gnu_mbind_hi.pT_GNU_MBIND_HI;
final pT_PAX_FLAGS : ProgType = stdgo._internal.debug.elf.Elf_pt_pax_flags.pT_PAX_FLAGS;
final pT_OPENBSD_RANDOMIZE : ProgType = stdgo._internal.debug.elf.Elf_pt_openbsd_randomize.pT_OPENBSD_RANDOMIZE;
final pT_OPENBSD_WXNEEDED : ProgType = stdgo._internal.debug.elf.Elf_pt_openbsd_wxneeded.pT_OPENBSD_WXNEEDED;
final pT_OPENBSD_BOOTDATA : ProgType = stdgo._internal.debug.elf.Elf_pt_openbsd_bootdata.pT_OPENBSD_BOOTDATA;
final pT_SUNW_EH_FRAME : ProgType = stdgo._internal.debug.elf.Elf_pt_sunw_eh_frame.pT_SUNW_EH_FRAME;
final pT_SUNWSTACK : ProgType = stdgo._internal.debug.elf.Elf_pt_sunwstack.pT_SUNWSTACK;
final pT_HIOS : ProgType = stdgo._internal.debug.elf.Elf_pt_hios.pT_HIOS;
final pT_LOPROC : ProgType = stdgo._internal.debug.elf.Elf_pt_loproc.pT_LOPROC;
final pT_ARM_ARCHEXT : ProgType = stdgo._internal.debug.elf.Elf_pt_arm_archext.pT_ARM_ARCHEXT;
final pT_ARM_EXIDX : ProgType = stdgo._internal.debug.elf.Elf_pt_arm_exidx.pT_ARM_EXIDX;
final pT_AARCH64_ARCHEXT : ProgType = stdgo._internal.debug.elf.Elf_pt_aarch64_archext.pT_AARCH64_ARCHEXT;
final pT_AARCH64_UNWIND : ProgType = stdgo._internal.debug.elf.Elf_pt_aarch64_unwind.pT_AARCH64_UNWIND;
final pT_MIPS_REGINFO : ProgType = stdgo._internal.debug.elf.Elf_pt_mips_reginfo.pT_MIPS_REGINFO;
final pT_MIPS_RTPROC : ProgType = stdgo._internal.debug.elf.Elf_pt_mips_rtproc.pT_MIPS_RTPROC;
final pT_MIPS_OPTIONS : ProgType = stdgo._internal.debug.elf.Elf_pt_mips_options.pT_MIPS_OPTIONS;
final pT_MIPS_ABIFLAGS : ProgType = stdgo._internal.debug.elf.Elf_pt_mips_abiflags.pT_MIPS_ABIFLAGS;
final pT_S390_PGSTE : ProgType = stdgo._internal.debug.elf.Elf_pt_s390_pgste.pT_S390_PGSTE;
final pT_HIPROC : ProgType = stdgo._internal.debug.elf.Elf_pt_hiproc.pT_HIPROC;
final pF_X : ProgFlag = stdgo._internal.debug.elf.Elf_pf_x.pF_X;
final pF_W : ProgFlag = stdgo._internal.debug.elf.Elf_pf_w.pF_W;
final pF_R : ProgFlag = stdgo._internal.debug.elf.Elf_pf_r.pF_R;
final pF_MASKOS : ProgFlag = stdgo._internal.debug.elf.Elf_pf_maskos.pF_MASKOS;
final pF_MASKPROC : ProgFlag = stdgo._internal.debug.elf.Elf_pf_maskproc.pF_MASKPROC;
final dT_NULL : DynTag = stdgo._internal.debug.elf.Elf_dt_null.dT_NULL;
final dT_NEEDED : DynTag = stdgo._internal.debug.elf.Elf_dt_needed.dT_NEEDED;
final dT_PLTRELSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_pltrelsz.dT_PLTRELSZ;
final dT_PLTGOT : DynTag = stdgo._internal.debug.elf.Elf_dt_pltgot.dT_PLTGOT;
final dT_HASH : DynTag = stdgo._internal.debug.elf.Elf_dt_hash.dT_HASH;
final dT_STRTAB : DynTag = stdgo._internal.debug.elf.Elf_dt_strtab.dT_STRTAB;
final dT_SYMTAB : DynTag = stdgo._internal.debug.elf.Elf_dt_symtab.dT_SYMTAB;
final dT_RELA : DynTag = stdgo._internal.debug.elf.Elf_dt_rela.dT_RELA;
final dT_RELASZ : DynTag = stdgo._internal.debug.elf.Elf_dt_relasz.dT_RELASZ;
final dT_RELAENT : DynTag = stdgo._internal.debug.elf.Elf_dt_relaent.dT_RELAENT;
final dT_STRSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_strsz.dT_STRSZ;
final dT_SYMENT : DynTag = stdgo._internal.debug.elf.Elf_dt_syment.dT_SYMENT;
final dT_INIT : DynTag = stdgo._internal.debug.elf.Elf_dt_init.dT_INIT;
final dT_FINI : DynTag = stdgo._internal.debug.elf.Elf_dt_fini.dT_FINI;
final dT_SONAME : DynTag = stdgo._internal.debug.elf.Elf_dt_soname.dT_SONAME;
final dT_RPATH : DynTag = stdgo._internal.debug.elf.Elf_dt_rpath.dT_RPATH;
final dT_SYMBOLIC : DynTag = stdgo._internal.debug.elf.Elf_dt_symbolic.dT_SYMBOLIC;
final dT_REL : DynTag = stdgo._internal.debug.elf.Elf_dt_rel.dT_REL;
final dT_RELSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_relsz.dT_RELSZ;
final dT_RELENT : DynTag = stdgo._internal.debug.elf.Elf_dt_relent.dT_RELENT;
final dT_PLTREL : DynTag = stdgo._internal.debug.elf.Elf_dt_pltrel.dT_PLTREL;
final dT_DEBUG : DynTag = stdgo._internal.debug.elf.Elf_dt_debug.dT_DEBUG;
final dT_TEXTREL : DynTag = stdgo._internal.debug.elf.Elf_dt_textrel.dT_TEXTREL;
final dT_JMPREL : DynTag = stdgo._internal.debug.elf.Elf_dt_jmprel.dT_JMPREL;
final dT_BIND_NOW : DynTag = stdgo._internal.debug.elf.Elf_dt_bind_now.dT_BIND_NOW;
final dT_INIT_ARRAY : DynTag = stdgo._internal.debug.elf.Elf_dt_init_array.dT_INIT_ARRAY;
final dT_FINI_ARRAY : DynTag = stdgo._internal.debug.elf.Elf_dt_fini_array.dT_FINI_ARRAY;
final dT_INIT_ARRAYSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_init_arraysz.dT_INIT_ARRAYSZ;
final dT_FINI_ARRAYSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_fini_arraysz.dT_FINI_ARRAYSZ;
final dT_RUNPATH : DynTag = stdgo._internal.debug.elf.Elf_dt_runpath.dT_RUNPATH;
final dT_FLAGS : DynTag = stdgo._internal.debug.elf.Elf_dt_flags.dT_FLAGS;
final dT_ENCODING : DynTag = stdgo._internal.debug.elf.Elf_dt_encoding.dT_ENCODING;
final dT_PREINIT_ARRAY : DynTag = stdgo._internal.debug.elf.Elf_dt_preinit_array.dT_PREINIT_ARRAY;
final dT_PREINIT_ARRAYSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_preinit_arraysz.dT_PREINIT_ARRAYSZ;
final dT_SYMTAB_SHNDX : DynTag = stdgo._internal.debug.elf.Elf_dt_symtab_shndx.dT_SYMTAB_SHNDX;
final dT_LOOS : DynTag = stdgo._internal.debug.elf.Elf_dt_loos.dT_LOOS;
final dT_HIOS : DynTag = stdgo._internal.debug.elf.Elf_dt_hios.dT_HIOS;
final dT_VALRNGLO : DynTag = stdgo._internal.debug.elf.Elf_dt_valrnglo.dT_VALRNGLO;
final dT_GNU_PRELINKED : DynTag = stdgo._internal.debug.elf.Elf_dt_gnu_prelinked.dT_GNU_PRELINKED;
final dT_GNU_CONFLICTSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_gnu_conflictsz.dT_GNU_CONFLICTSZ;
final dT_GNU_LIBLISTSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_gnu_liblistsz.dT_GNU_LIBLISTSZ;
final dT_CHECKSUM : DynTag = stdgo._internal.debug.elf.Elf_dt_checksum.dT_CHECKSUM;
final dT_PLTPADSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_pltpadsz.dT_PLTPADSZ;
final dT_MOVEENT : DynTag = stdgo._internal.debug.elf.Elf_dt_moveent.dT_MOVEENT;
final dT_MOVESZ : DynTag = stdgo._internal.debug.elf.Elf_dt_movesz.dT_MOVESZ;
final dT_FEATURE : DynTag = stdgo._internal.debug.elf.Elf_dt_feature.dT_FEATURE;
final dT_POSFLAG_1 : DynTag = stdgo._internal.debug.elf.Elf_dt_posflag_1.dT_POSFLAG_1;
final dT_SYMINSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_syminsz.dT_SYMINSZ;
final dT_SYMINENT : DynTag = stdgo._internal.debug.elf.Elf_dt_syminent.dT_SYMINENT;
final dT_VALRNGHI : DynTag = stdgo._internal.debug.elf.Elf_dt_valrnghi.dT_VALRNGHI;
final dT_ADDRRNGLO : DynTag = stdgo._internal.debug.elf.Elf_dt_addrrnglo.dT_ADDRRNGLO;
final dT_GNU_HASH : DynTag = stdgo._internal.debug.elf.Elf_dt_gnu_hash.dT_GNU_HASH;
final dT_TLSDESC_PLT : DynTag = stdgo._internal.debug.elf.Elf_dt_tlsdesc_plt.dT_TLSDESC_PLT;
final dT_TLSDESC_GOT : DynTag = stdgo._internal.debug.elf.Elf_dt_tlsdesc_got.dT_TLSDESC_GOT;
final dT_GNU_CONFLICT : DynTag = stdgo._internal.debug.elf.Elf_dt_gnu_conflict.dT_GNU_CONFLICT;
final dT_GNU_LIBLIST : DynTag = stdgo._internal.debug.elf.Elf_dt_gnu_liblist.dT_GNU_LIBLIST;
final dT_CONFIG : DynTag = stdgo._internal.debug.elf.Elf_dt_config.dT_CONFIG;
final dT_DEPAUDIT : DynTag = stdgo._internal.debug.elf.Elf_dt_depaudit.dT_DEPAUDIT;
final dT_AUDIT : DynTag = stdgo._internal.debug.elf.Elf_dt_audit.dT_AUDIT;
final dT_PLTPAD : DynTag = stdgo._internal.debug.elf.Elf_dt_pltpad.dT_PLTPAD;
final dT_MOVETAB : DynTag = stdgo._internal.debug.elf.Elf_dt_movetab.dT_MOVETAB;
final dT_SYMINFO : DynTag = stdgo._internal.debug.elf.Elf_dt_syminfo.dT_SYMINFO;
final dT_ADDRRNGHI : DynTag = stdgo._internal.debug.elf.Elf_dt_addrrnghi.dT_ADDRRNGHI;
final dT_VERSYM : DynTag = stdgo._internal.debug.elf.Elf_dt_versym.dT_VERSYM;
final dT_RELACOUNT : DynTag = stdgo._internal.debug.elf.Elf_dt_relacount.dT_RELACOUNT;
final dT_RELCOUNT : DynTag = stdgo._internal.debug.elf.Elf_dt_relcount.dT_RELCOUNT;
final dT_FLAGS_1 : DynTag = stdgo._internal.debug.elf.Elf_dt_flags_1.dT_FLAGS_1;
final dT_VERDEF : DynTag = stdgo._internal.debug.elf.Elf_dt_verdef.dT_VERDEF;
final dT_VERDEFNUM : DynTag = stdgo._internal.debug.elf.Elf_dt_verdefnum.dT_VERDEFNUM;
final dT_VERNEED : DynTag = stdgo._internal.debug.elf.Elf_dt_verneed.dT_VERNEED;
final dT_VERNEEDNUM : DynTag = stdgo._internal.debug.elf.Elf_dt_verneednum.dT_VERNEEDNUM;
final dT_LOPROC : DynTag = stdgo._internal.debug.elf.Elf_dt_loproc.dT_LOPROC;
final dT_MIPS_RLD_VERSION : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_rld_version.dT_MIPS_RLD_VERSION;
final dT_MIPS_TIME_STAMP : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_time_stamp.dT_MIPS_TIME_STAMP;
final dT_MIPS_ICHECKSUM : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_ichecksum.dT_MIPS_ICHECKSUM;
final dT_MIPS_IVERSION : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_iversion.dT_MIPS_IVERSION;
final dT_MIPS_FLAGS : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_flags.dT_MIPS_FLAGS;
final dT_MIPS_BASE_ADDRESS : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_base_address.dT_MIPS_BASE_ADDRESS;
final dT_MIPS_MSYM : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_msym.dT_MIPS_MSYM;
final dT_MIPS_CONFLICT : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_conflict.dT_MIPS_CONFLICT;
final dT_MIPS_LIBLIST : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_liblist.dT_MIPS_LIBLIST;
final dT_MIPS_LOCAL_GOTNO : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_local_gotno.dT_MIPS_LOCAL_GOTNO;
final dT_MIPS_CONFLICTNO : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_conflictno.dT_MIPS_CONFLICTNO;
final dT_MIPS_LIBLISTNO : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_liblistno.dT_MIPS_LIBLISTNO;
final dT_MIPS_SYMTABNO : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_symtabno.dT_MIPS_SYMTABNO;
final dT_MIPS_UNREFEXTNO : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_unrefextno.dT_MIPS_UNREFEXTNO;
final dT_MIPS_GOTSYM : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_gotsym.dT_MIPS_GOTSYM;
final dT_MIPS_HIPAGENO : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_hipageno.dT_MIPS_HIPAGENO;
final dT_MIPS_RLD_MAP : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_rld_map.dT_MIPS_RLD_MAP;
final dT_MIPS_DELTA_CLASS : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_delta_class.dT_MIPS_DELTA_CLASS;
final dT_MIPS_DELTA_CLASS_NO : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_delta_class_no.dT_MIPS_DELTA_CLASS_NO;
final dT_MIPS_DELTA_INSTANCE : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_delta_instance.dT_MIPS_DELTA_INSTANCE;
final dT_MIPS_DELTA_INSTANCE_NO : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_delta_instance_no.dT_MIPS_DELTA_INSTANCE_NO;
final dT_MIPS_DELTA_RELOC : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_delta_reloc.dT_MIPS_DELTA_RELOC;
final dT_MIPS_DELTA_RELOC_NO : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_delta_reloc_no.dT_MIPS_DELTA_RELOC_NO;
final dT_MIPS_DELTA_SYM : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_delta_sym.dT_MIPS_DELTA_SYM;
final dT_MIPS_DELTA_SYM_NO : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_delta_sym_no.dT_MIPS_DELTA_SYM_NO;
final dT_MIPS_DELTA_CLASSSYM : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_delta_classsym.dT_MIPS_DELTA_CLASSSYM;
final dT_MIPS_DELTA_CLASSSYM_NO : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_delta_classsym_no.dT_MIPS_DELTA_CLASSSYM_NO;
final dT_MIPS_CXX_FLAGS : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_cxx_flags.dT_MIPS_CXX_FLAGS;
final dT_MIPS_PIXIE_INIT : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_pixie_init.dT_MIPS_PIXIE_INIT;
final dT_MIPS_SYMBOL_LIB : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_symbol_lib.dT_MIPS_SYMBOL_LIB;
final dT_MIPS_LOCALPAGE_GOTIDX : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_localpage_gotidx.dT_MIPS_LOCALPAGE_GOTIDX;
final dT_MIPS_LOCAL_GOTIDX : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_local_gotidx.dT_MIPS_LOCAL_GOTIDX;
final dT_MIPS_HIDDEN_GOTIDX : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_hidden_gotidx.dT_MIPS_HIDDEN_GOTIDX;
final dT_MIPS_PROTECTED_GOTIDX : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_protected_gotidx.dT_MIPS_PROTECTED_GOTIDX;
final dT_MIPS_OPTIONS : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_options.dT_MIPS_OPTIONS;
final dT_MIPS_INTERFACE : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_interface.dT_MIPS_INTERFACE;
final dT_MIPS_DYNSTR_ALIGN : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_dynstr_align.dT_MIPS_DYNSTR_ALIGN;
final dT_MIPS_INTERFACE_SIZE : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_interface_size.dT_MIPS_INTERFACE_SIZE;
final dT_MIPS_RLD_TEXT_RESOLVE_ADDR : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_rld_text_resolve_addr.dT_MIPS_RLD_TEXT_RESOLVE_ADDR;
final dT_MIPS_PERF_SUFFIX : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_perf_suffix.dT_MIPS_PERF_SUFFIX;
final dT_MIPS_COMPACT_SIZE : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_compact_size.dT_MIPS_COMPACT_SIZE;
final dT_MIPS_GP_VALUE : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_gp_value.dT_MIPS_GP_VALUE;
final dT_MIPS_AUX_DYNAMIC : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_aux_dynamic.dT_MIPS_AUX_DYNAMIC;
final dT_MIPS_PLTGOT : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_pltgot.dT_MIPS_PLTGOT;
final dT_MIPS_RWPLT : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_rwplt.dT_MIPS_RWPLT;
final dT_MIPS_RLD_MAP_REL : DynTag = stdgo._internal.debug.elf.Elf_dt_mips_rld_map_rel.dT_MIPS_RLD_MAP_REL;
final dT_PPC_GOT : DynTag = stdgo._internal.debug.elf.Elf_dt_ppc_got.dT_PPC_GOT;
final dT_PPC_OPT : DynTag = stdgo._internal.debug.elf.Elf_dt_ppc_opt.dT_PPC_OPT;
final dT_PPC64_GLINK : DynTag = stdgo._internal.debug.elf.Elf_dt_ppc64_glink.dT_PPC64_GLINK;
final dT_PPC64_OPD : DynTag = stdgo._internal.debug.elf.Elf_dt_ppc64_opd.dT_PPC64_OPD;
final dT_PPC64_OPDSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_ppc64_opdsz.dT_PPC64_OPDSZ;
final dT_PPC64_OPT : DynTag = stdgo._internal.debug.elf.Elf_dt_ppc64_opt.dT_PPC64_OPT;
final dT_SPARC_REGISTER : DynTag = stdgo._internal.debug.elf.Elf_dt_sparc_register.dT_SPARC_REGISTER;
final dT_AUXILIARY : DynTag = stdgo._internal.debug.elf.Elf_dt_auxiliary.dT_AUXILIARY;
final dT_USED : DynTag = stdgo._internal.debug.elf.Elf_dt_used.dT_USED;
final dT_FILTER : DynTag = stdgo._internal.debug.elf.Elf_dt_filter.dT_FILTER;
final dT_HIPROC : DynTag = stdgo._internal.debug.elf.Elf_dt_hiproc.dT_HIPROC;
final dF_ORIGIN : DynFlag = stdgo._internal.debug.elf.Elf_df_origin.dF_ORIGIN;
final dF_SYMBOLIC : DynFlag = stdgo._internal.debug.elf.Elf_df_symbolic.dF_SYMBOLIC;
final dF_TEXTREL : DynFlag = stdgo._internal.debug.elf.Elf_df_textrel.dF_TEXTREL;
final dF_BIND_NOW : DynFlag = stdgo._internal.debug.elf.Elf_df_bind_now.dF_BIND_NOW;
final dF_STATIC_TLS : DynFlag = stdgo._internal.debug.elf.Elf_df_static_tls.dF_STATIC_TLS;
final dF_1_NOW : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_now.dF_1_NOW;
final dF_1_GLOBAL : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_global.dF_1_GLOBAL;
final dF_1_GROUP : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_group.dF_1_GROUP;
final dF_1_NODELETE : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_nodelete.dF_1_NODELETE;
final dF_1_LOADFLTR : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_loadfltr.dF_1_LOADFLTR;
final dF_1_INITFIRST : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_initfirst.dF_1_INITFIRST;
final dF_1_NOOPEN : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_noopen.dF_1_NOOPEN;
final dF_1_ORIGIN : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_origin.dF_1_ORIGIN;
final dF_1_DIRECT : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_direct.dF_1_DIRECT;
final dF_1_TRANS : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_trans.dF_1_TRANS;
final dF_1_INTERPOSE : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_interpose.dF_1_INTERPOSE;
final dF_1_NODEFLIB : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_nodeflib.dF_1_NODEFLIB;
final dF_1_NODUMP : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_nodump.dF_1_NODUMP;
final dF_1_CONFALT : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_confalt.dF_1_CONFALT;
final dF_1_ENDFILTEE : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_endfiltee.dF_1_ENDFILTEE;
final dF_1_DISPRELDNE : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_dispreldne.dF_1_DISPRELDNE;
final dF_1_DISPRELPND : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_disprelpnd.dF_1_DISPRELPND;
final dF_1_NODIRECT : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_nodirect.dF_1_NODIRECT;
final dF_1_IGNMULDEF : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_ignmuldef.dF_1_IGNMULDEF;
final dF_1_NOKSYMS : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_noksyms.dF_1_NOKSYMS;
final dF_1_NOHDR : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_nohdr.dF_1_NOHDR;
final dF_1_EDITED : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_edited.dF_1_EDITED;
final dF_1_NORELOC : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_noreloc.dF_1_NORELOC;
final dF_1_SYMINTPOSE : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_symintpose.dF_1_SYMINTPOSE;
final dF_1_GLOBAUDIT : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_globaudit.dF_1_GLOBAUDIT;
final dF_1_SINGLETON : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_singleton.dF_1_SINGLETON;
final dF_1_STUB : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_stub.dF_1_STUB;
final dF_1_PIE : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_pie.dF_1_PIE;
final dF_1_KMOD : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_kmod.dF_1_KMOD;
final dF_1_WEAKFILTER : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_weakfilter.dF_1_WEAKFILTER;
final dF_1_NOCOMMON : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_nocommon.dF_1_NOCOMMON;
final nT_PRSTATUS : NType = stdgo._internal.debug.elf.Elf_nt_prstatus.nT_PRSTATUS;
final nT_FPREGSET : NType = stdgo._internal.debug.elf.Elf_nt_fpregset.nT_FPREGSET;
final nT_PRPSINFO : NType = stdgo._internal.debug.elf.Elf_nt_prpsinfo.nT_PRPSINFO;
final sTB_LOCAL : SymBind = stdgo._internal.debug.elf.Elf_stb_local.sTB_LOCAL;
final sTB_GLOBAL : SymBind = stdgo._internal.debug.elf.Elf_stb_global.sTB_GLOBAL;
final sTB_WEAK : SymBind = stdgo._internal.debug.elf.Elf_stb_weak.sTB_WEAK;
final sTB_LOOS : SymBind = stdgo._internal.debug.elf.Elf_stb_loos.sTB_LOOS;
final sTB_HIOS : SymBind = stdgo._internal.debug.elf.Elf_stb_hios.sTB_HIOS;
final sTB_LOPROC : SymBind = stdgo._internal.debug.elf.Elf_stb_loproc.sTB_LOPROC;
final sTB_HIPROC : SymBind = stdgo._internal.debug.elf.Elf_stb_hiproc.sTB_HIPROC;
final sTT_NOTYPE : SymType = stdgo._internal.debug.elf.Elf_stt_notype.sTT_NOTYPE;
final sTT_OBJECT : SymType = stdgo._internal.debug.elf.Elf_stt_object.sTT_OBJECT;
final sTT_FUNC : SymType = stdgo._internal.debug.elf.Elf_stt_func.sTT_FUNC;
final sTT_SECTION : SymType = stdgo._internal.debug.elf.Elf_stt_section.sTT_SECTION;
final sTT_FILE : SymType = stdgo._internal.debug.elf.Elf_stt_file.sTT_FILE;
final sTT_COMMON : SymType = stdgo._internal.debug.elf.Elf_stt_common.sTT_COMMON;
final sTT_TLS : SymType = stdgo._internal.debug.elf.Elf_stt_tls.sTT_TLS;
final sTT_LOOS : SymType = stdgo._internal.debug.elf.Elf_stt_loos.sTT_LOOS;
final sTT_HIOS : SymType = stdgo._internal.debug.elf.Elf_stt_hios.sTT_HIOS;
final sTT_LOPROC : SymType = stdgo._internal.debug.elf.Elf_stt_loproc.sTT_LOPROC;
final sTT_HIPROC : SymType = stdgo._internal.debug.elf.Elf_stt_hiproc.sTT_HIPROC;
final sTV_DEFAULT : SymVis = stdgo._internal.debug.elf.Elf_stv_default.sTV_DEFAULT;
final sTV_INTERNAL : SymVis = stdgo._internal.debug.elf.Elf_stv_internal.sTV_INTERNAL;
final sTV_HIDDEN : SymVis = stdgo._internal.debug.elf.Elf_stv_hidden.sTV_HIDDEN;
final sTV_PROTECTED : SymVis = stdgo._internal.debug.elf.Elf_stv_protected.sTV_PROTECTED;
final r_X86_64_NONE : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_none.r_X86_64_NONE;
final r_X86_64_64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_64.r_X86_64_64;
final r_X86_64_PC32 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_pc32.r_X86_64_PC32;
final r_X86_64_GOT32 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_got32.r_X86_64_GOT32;
final r_X86_64_PLT32 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_plt32.r_X86_64_PLT32;
final r_X86_64_COPY : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_copy.r_X86_64_COPY;
final r_X86_64_GLOB_DAT : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_glob_dat.r_X86_64_GLOB_DAT;
final r_X86_64_JMP_SLOT : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_jmp_slot.r_X86_64_JMP_SLOT;
final r_X86_64_RELATIVE : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_relative.r_X86_64_RELATIVE;
final r_X86_64_GOTPCREL : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_gotpcrel.r_X86_64_GOTPCREL;
final r_X86_64_32 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_32.r_X86_64_32;
final r_X86_64_32S : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_32s.r_X86_64_32S;
final r_X86_64_16 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_16.r_X86_64_16;
final r_X86_64_PC16 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_pc16.r_X86_64_PC16;
final r_X86_64_8 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_8.r_X86_64_8;
final r_X86_64_PC8 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_pc8.r_X86_64_PC8;
final r_X86_64_DTPMOD64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_dtpmod64.r_X86_64_DTPMOD64;
final r_X86_64_DTPOFF64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_dtpoff64.r_X86_64_DTPOFF64;
final r_X86_64_TPOFF64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_tpoff64.r_X86_64_TPOFF64;
final r_X86_64_TLSGD : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_tlsgd.r_X86_64_TLSGD;
final r_X86_64_TLSLD : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_tlsld.r_X86_64_TLSLD;
final r_X86_64_DTPOFF32 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_dtpoff32.r_X86_64_DTPOFF32;
final r_X86_64_GOTTPOFF : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_gottpoff.r_X86_64_GOTTPOFF;
final r_X86_64_TPOFF32 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_tpoff32.r_X86_64_TPOFF32;
final r_X86_64_PC64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_pc64.r_X86_64_PC64;
final r_X86_64_GOTOFF64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_gotoff64.r_X86_64_GOTOFF64;
final r_X86_64_GOTPC32 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_gotpc32.r_X86_64_GOTPC32;
final r_X86_64_GOT64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_got64.r_X86_64_GOT64;
final r_X86_64_GOTPCREL64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_gotpcrel64.r_X86_64_GOTPCREL64;
final r_X86_64_GOTPC64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_gotpc64.r_X86_64_GOTPC64;
final r_X86_64_GOTPLT64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_gotplt64.r_X86_64_GOTPLT64;
final r_X86_64_PLTOFF64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_pltoff64.r_X86_64_PLTOFF64;
final r_X86_64_SIZE32 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_size32.r_X86_64_SIZE32;
final r_X86_64_SIZE64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_size64.r_X86_64_SIZE64;
final r_X86_64_GOTPC32_TLSDESC : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_gotpc32_tlsdesc.r_X86_64_GOTPC32_TLSDESC;
final r_X86_64_TLSDESC_CALL : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_tlsdesc_call.r_X86_64_TLSDESC_CALL;
final r_X86_64_TLSDESC : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_tlsdesc.r_X86_64_TLSDESC;
final r_X86_64_IRELATIVE : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_irelative.r_X86_64_IRELATIVE;
final r_X86_64_RELATIVE64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_relative64.r_X86_64_RELATIVE64;
final r_X86_64_PC32_BND : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_pc32_bnd.r_X86_64_PC32_BND;
final r_X86_64_PLT32_BND : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_plt32_bnd.r_X86_64_PLT32_BND;
final r_X86_64_GOTPCRELX : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_gotpcrelx.r_X86_64_GOTPCRELX;
final r_X86_64_REX_GOTPCRELX : R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64_rex_gotpcrelx.r_X86_64_REX_GOTPCRELX;
final r_AARCH64_NONE : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_none.r_AARCH64_NONE;
final r_AARCH64_P32_ABS32 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_abs32.r_AARCH64_P32_ABS32;
final r_AARCH64_P32_ABS16 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_abs16.r_AARCH64_P32_ABS16;
final r_AARCH64_P32_PREL32 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_prel32.r_AARCH64_P32_PREL32;
final r_AARCH64_P32_PREL16 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_prel16.r_AARCH64_P32_PREL16;
final r_AARCH64_P32_MOVW_UABS_G0 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_movw_uabs_g0.r_AARCH64_P32_MOVW_UABS_G0;
final r_AARCH64_P32_MOVW_UABS_G0_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_movw_uabs_g0_nc.r_AARCH64_P32_MOVW_UABS_G0_NC;
final r_AARCH64_P32_MOVW_UABS_G1 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_movw_uabs_g1.r_AARCH64_P32_MOVW_UABS_G1;
final r_AARCH64_P32_MOVW_SABS_G0 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_movw_sabs_g0.r_AARCH64_P32_MOVW_SABS_G0;
final r_AARCH64_P32_LD_PREL_LO19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_ld_prel_lo19.r_AARCH64_P32_LD_PREL_LO19;
final r_AARCH64_P32_ADR_PREL_LO21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_adr_prel_lo21.r_AARCH64_P32_ADR_PREL_LO21;
final r_AARCH64_P32_ADR_PREL_PG_HI21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_adr_prel_pg_hi21.r_AARCH64_P32_ADR_PREL_PG_HI21;
final r_AARCH64_P32_ADD_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_add_abs_lo12_nc.r_AARCH64_P32_ADD_ABS_LO12_NC;
final r_AARCH64_P32_LDST8_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_ldst8_abs_lo12_nc.r_AARCH64_P32_LDST8_ABS_LO12_NC;
final r_AARCH64_P32_LDST16_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_ldst16_abs_lo12_nc.r_AARCH64_P32_LDST16_ABS_LO12_NC;
final r_AARCH64_P32_LDST32_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_ldst32_abs_lo12_nc.r_AARCH64_P32_LDST32_ABS_LO12_NC;
final r_AARCH64_P32_LDST64_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_ldst64_abs_lo12_nc.r_AARCH64_P32_LDST64_ABS_LO12_NC;
final r_AARCH64_P32_LDST128_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_ldst128_abs_lo12_nc.r_AARCH64_P32_LDST128_ABS_LO12_NC;
final r_AARCH64_P32_TSTBR14 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tstbr14.r_AARCH64_P32_TSTBR14;
final r_AARCH64_P32_CONDBR19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_condbr19.r_AARCH64_P32_CONDBR19;
final r_AARCH64_P32_JUMP26 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_jump26.r_AARCH64_P32_JUMP26;
final r_AARCH64_P32_CALL26 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_call26.r_AARCH64_P32_CALL26;
final r_AARCH64_P32_GOT_LD_PREL19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_got_ld_prel19.r_AARCH64_P32_GOT_LD_PREL19;
final r_AARCH64_P32_ADR_GOT_PAGE : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_adr_got_page.r_AARCH64_P32_ADR_GOT_PAGE;
final r_AARCH64_P32_LD32_GOT_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_ld32_got_lo12_nc.r_AARCH64_P32_LD32_GOT_LO12_NC;
final r_AARCH64_P32_TLSGD_ADR_PAGE21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsgd_adr_page21.r_AARCH64_P32_TLSGD_ADR_PAGE21;
final r_AARCH64_P32_TLSGD_ADD_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsgd_add_lo12_nc.r_AARCH64_P32_TLSGD_ADD_LO12_NC;
final r_AARCH64_P32_TLSIE_ADR_GOTTPREL_PAGE21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsie_adr_gottprel_page21.r_AARCH64_P32_TLSIE_ADR_GOTTPREL_PAGE21;
final r_AARCH64_P32_TLSIE_LD32_GOTTPREL_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsie_ld32_gottprel_lo12_nc.r_AARCH64_P32_TLSIE_LD32_GOTTPREL_LO12_NC;
final r_AARCH64_P32_TLSIE_LD_GOTTPREL_PREL19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsie_ld_gottprel_prel19.r_AARCH64_P32_TLSIE_LD_GOTTPREL_PREL19;
final r_AARCH64_P32_TLSLE_MOVW_TPREL_G1 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsle_movw_tprel_g1.r_AARCH64_P32_TLSLE_MOVW_TPREL_G1;
final r_AARCH64_P32_TLSLE_MOVW_TPREL_G0 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsle_movw_tprel_g0.r_AARCH64_P32_TLSLE_MOVW_TPREL_G0;
final r_AARCH64_P32_TLSLE_MOVW_TPREL_G0_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsle_movw_tprel_g0_nc.r_AARCH64_P32_TLSLE_MOVW_TPREL_G0_NC;
final r_AARCH64_P32_TLSLE_ADD_TPREL_HI12 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsle_add_tprel_hi12.r_AARCH64_P32_TLSLE_ADD_TPREL_HI12;
final r_AARCH64_P32_TLSLE_ADD_TPREL_LO12 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsle_add_tprel_lo12.r_AARCH64_P32_TLSLE_ADD_TPREL_LO12;
final r_AARCH64_P32_TLSLE_ADD_TPREL_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsle_add_tprel_lo12_nc.r_AARCH64_P32_TLSLE_ADD_TPREL_LO12_NC;
final r_AARCH64_P32_TLSDESC_LD_PREL19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsdesc_ld_prel19.r_AARCH64_P32_TLSDESC_LD_PREL19;
final r_AARCH64_P32_TLSDESC_ADR_PREL21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsdesc_adr_prel21.r_AARCH64_P32_TLSDESC_ADR_PREL21;
final r_AARCH64_P32_TLSDESC_ADR_PAGE21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsdesc_adr_page21.r_AARCH64_P32_TLSDESC_ADR_PAGE21;
final r_AARCH64_P32_TLSDESC_LD32_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsdesc_ld32_lo12_nc.r_AARCH64_P32_TLSDESC_LD32_LO12_NC;
final r_AARCH64_P32_TLSDESC_ADD_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsdesc_add_lo12_nc.r_AARCH64_P32_TLSDESC_ADD_LO12_NC;
final r_AARCH64_P32_TLSDESC_CALL : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsdesc_call.r_AARCH64_P32_TLSDESC_CALL;
final r_AARCH64_P32_COPY : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_copy.r_AARCH64_P32_COPY;
final r_AARCH64_P32_GLOB_DAT : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_glob_dat.r_AARCH64_P32_GLOB_DAT;
final r_AARCH64_P32_JUMP_SLOT : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_jump_slot.r_AARCH64_P32_JUMP_SLOT;
final r_AARCH64_P32_RELATIVE : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_relative.r_AARCH64_P32_RELATIVE;
final r_AARCH64_P32_TLS_DTPMOD : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tls_dtpmod.r_AARCH64_P32_TLS_DTPMOD;
final r_AARCH64_P32_TLS_DTPREL : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tls_dtprel.r_AARCH64_P32_TLS_DTPREL;
final r_AARCH64_P32_TLS_TPREL : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tls_tprel.r_AARCH64_P32_TLS_TPREL;
final r_AARCH64_P32_TLSDESC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_tlsdesc.r_AARCH64_P32_TLSDESC;
final r_AARCH64_P32_IRELATIVE : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_p32_irelative.r_AARCH64_P32_IRELATIVE;
final r_AARCH64_NULL : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_null.r_AARCH64_NULL;
final r_AARCH64_ABS64 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_abs64.r_AARCH64_ABS64;
final r_AARCH64_ABS32 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_abs32.r_AARCH64_ABS32;
final r_AARCH64_ABS16 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_abs16.r_AARCH64_ABS16;
final r_AARCH64_PREL64 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_prel64.r_AARCH64_PREL64;
final r_AARCH64_PREL32 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_prel32.r_AARCH64_PREL32;
final r_AARCH64_PREL16 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_prel16.r_AARCH64_PREL16;
final r_AARCH64_MOVW_UABS_G0 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_movw_uabs_g0.r_AARCH64_MOVW_UABS_G0;
final r_AARCH64_MOVW_UABS_G0_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_movw_uabs_g0_nc.r_AARCH64_MOVW_UABS_G0_NC;
final r_AARCH64_MOVW_UABS_G1 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_movw_uabs_g1.r_AARCH64_MOVW_UABS_G1;
final r_AARCH64_MOVW_UABS_G1_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_movw_uabs_g1_nc.r_AARCH64_MOVW_UABS_G1_NC;
final r_AARCH64_MOVW_UABS_G2 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_movw_uabs_g2.r_AARCH64_MOVW_UABS_G2;
final r_AARCH64_MOVW_UABS_G2_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_movw_uabs_g2_nc.r_AARCH64_MOVW_UABS_G2_NC;
final r_AARCH64_MOVW_UABS_G3 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_movw_uabs_g3.r_AARCH64_MOVW_UABS_G3;
final r_AARCH64_MOVW_SABS_G0 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_movw_sabs_g0.r_AARCH64_MOVW_SABS_G0;
final r_AARCH64_MOVW_SABS_G1 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_movw_sabs_g1.r_AARCH64_MOVW_SABS_G1;
final r_AARCH64_MOVW_SABS_G2 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_movw_sabs_g2.r_AARCH64_MOVW_SABS_G2;
final r_AARCH64_LD_PREL_LO19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_ld_prel_lo19.r_AARCH64_LD_PREL_LO19;
final r_AARCH64_ADR_PREL_LO21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_adr_prel_lo21.r_AARCH64_ADR_PREL_LO21;
final r_AARCH64_ADR_PREL_PG_HI21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_adr_prel_pg_hi21.r_AARCH64_ADR_PREL_PG_HI21;
final r_AARCH64_ADR_PREL_PG_HI21_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_adr_prel_pg_hi21_nc.r_AARCH64_ADR_PREL_PG_HI21_NC;
final r_AARCH64_ADD_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_add_abs_lo12_nc.r_AARCH64_ADD_ABS_LO12_NC;
final r_AARCH64_LDST8_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_ldst8_abs_lo12_nc.r_AARCH64_LDST8_ABS_LO12_NC;
final r_AARCH64_TSTBR14 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tstbr14.r_AARCH64_TSTBR14;
final r_AARCH64_CONDBR19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_condbr19.r_AARCH64_CONDBR19;
final r_AARCH64_JUMP26 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_jump26.r_AARCH64_JUMP26;
final r_AARCH64_CALL26 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_call26.r_AARCH64_CALL26;
final r_AARCH64_LDST16_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_ldst16_abs_lo12_nc.r_AARCH64_LDST16_ABS_LO12_NC;
final r_AARCH64_LDST32_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_ldst32_abs_lo12_nc.r_AARCH64_LDST32_ABS_LO12_NC;
final r_AARCH64_LDST64_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_ldst64_abs_lo12_nc.r_AARCH64_LDST64_ABS_LO12_NC;
final r_AARCH64_LDST128_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_ldst128_abs_lo12_nc.r_AARCH64_LDST128_ABS_LO12_NC;
final r_AARCH64_GOT_LD_PREL19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_got_ld_prel19.r_AARCH64_GOT_LD_PREL19;
final r_AARCH64_LD64_GOTOFF_LO15 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_ld64_gotoff_lo15.r_AARCH64_LD64_GOTOFF_LO15;
final r_AARCH64_ADR_GOT_PAGE : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_adr_got_page.r_AARCH64_ADR_GOT_PAGE;
final r_AARCH64_LD64_GOT_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_ld64_got_lo12_nc.r_AARCH64_LD64_GOT_LO12_NC;
final r_AARCH64_LD64_GOTPAGE_LO15 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_ld64_gotpage_lo15.r_AARCH64_LD64_GOTPAGE_LO15;
final r_AARCH64_TLSGD_ADR_PREL21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsgd_adr_prel21.r_AARCH64_TLSGD_ADR_PREL21;
final r_AARCH64_TLSGD_ADR_PAGE21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsgd_adr_page21.r_AARCH64_TLSGD_ADR_PAGE21;
final r_AARCH64_TLSGD_ADD_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsgd_add_lo12_nc.r_AARCH64_TLSGD_ADD_LO12_NC;
final r_AARCH64_TLSGD_MOVW_G1 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsgd_movw_g1.r_AARCH64_TLSGD_MOVW_G1;
final r_AARCH64_TLSGD_MOVW_G0_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsgd_movw_g0_nc.r_AARCH64_TLSGD_MOVW_G0_NC;
final r_AARCH64_TLSLD_ADR_PREL21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsld_adr_prel21.r_AARCH64_TLSLD_ADR_PREL21;
final r_AARCH64_TLSLD_ADR_PAGE21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsld_adr_page21.r_AARCH64_TLSLD_ADR_PAGE21;
final r_AARCH64_TLSIE_MOVW_GOTTPREL_G1 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsie_movw_gottprel_g1.r_AARCH64_TLSIE_MOVW_GOTTPREL_G1;
final r_AARCH64_TLSIE_MOVW_GOTTPREL_G0_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsie_movw_gottprel_g0_nc.r_AARCH64_TLSIE_MOVW_GOTTPREL_G0_NC;
final r_AARCH64_TLSIE_ADR_GOTTPREL_PAGE21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsie_adr_gottprel_page21.r_AARCH64_TLSIE_ADR_GOTTPREL_PAGE21;
final r_AARCH64_TLSIE_LD64_GOTTPREL_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsie_ld64_gottprel_lo12_nc.r_AARCH64_TLSIE_LD64_GOTTPREL_LO12_NC;
final r_AARCH64_TLSIE_LD_GOTTPREL_PREL19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsie_ld_gottprel_prel19.r_AARCH64_TLSIE_LD_GOTTPREL_PREL19;
final r_AARCH64_TLSLE_MOVW_TPREL_G2 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsle_movw_tprel_g2.r_AARCH64_TLSLE_MOVW_TPREL_G2;
final r_AARCH64_TLSLE_MOVW_TPREL_G1 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsle_movw_tprel_g1.r_AARCH64_TLSLE_MOVW_TPREL_G1;
final r_AARCH64_TLSLE_MOVW_TPREL_G1_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsle_movw_tprel_g1_nc.r_AARCH64_TLSLE_MOVW_TPREL_G1_NC;
final r_AARCH64_TLSLE_MOVW_TPREL_G0 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsle_movw_tprel_g0.r_AARCH64_TLSLE_MOVW_TPREL_G0;
final r_AARCH64_TLSLE_MOVW_TPREL_G0_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsle_movw_tprel_g0_nc.r_AARCH64_TLSLE_MOVW_TPREL_G0_NC;
final r_AARCH64_TLSLE_ADD_TPREL_HI12 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsle_add_tprel_hi12.r_AARCH64_TLSLE_ADD_TPREL_HI12;
final r_AARCH64_TLSLE_ADD_TPREL_LO12 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsle_add_tprel_lo12.r_AARCH64_TLSLE_ADD_TPREL_LO12;
final r_AARCH64_TLSLE_ADD_TPREL_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsle_add_tprel_lo12_nc.r_AARCH64_TLSLE_ADD_TPREL_LO12_NC;
final r_AARCH64_TLSDESC_LD_PREL19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsdesc_ld_prel19.r_AARCH64_TLSDESC_LD_PREL19;
final r_AARCH64_TLSDESC_ADR_PREL21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsdesc_adr_prel21.r_AARCH64_TLSDESC_ADR_PREL21;
final r_AARCH64_TLSDESC_ADR_PAGE21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsdesc_adr_page21.r_AARCH64_TLSDESC_ADR_PAGE21;
final r_AARCH64_TLSDESC_LD64_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsdesc_ld64_lo12_nc.r_AARCH64_TLSDESC_LD64_LO12_NC;
final r_AARCH64_TLSDESC_ADD_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsdesc_add_lo12_nc.r_AARCH64_TLSDESC_ADD_LO12_NC;
final r_AARCH64_TLSDESC_OFF_G1 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsdesc_off_g1.r_AARCH64_TLSDESC_OFF_G1;
final r_AARCH64_TLSDESC_OFF_G0_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsdesc_off_g0_nc.r_AARCH64_TLSDESC_OFF_G0_NC;
final r_AARCH64_TLSDESC_LDR : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsdesc_ldr.r_AARCH64_TLSDESC_LDR;
final r_AARCH64_TLSDESC_ADD : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsdesc_add.r_AARCH64_TLSDESC_ADD;
final r_AARCH64_TLSDESC_CALL : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsdesc_call.r_AARCH64_TLSDESC_CALL;
final r_AARCH64_TLSLE_LDST128_TPREL_LO12 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsle_ldst128_tprel_lo12.r_AARCH64_TLSLE_LDST128_TPREL_LO12;
final r_AARCH64_TLSLE_LDST128_TPREL_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsle_ldst128_tprel_lo12_nc.r_AARCH64_TLSLE_LDST128_TPREL_LO12_NC;
final r_AARCH64_TLSLD_LDST128_DTPREL_LO12 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsld_ldst128_dtprel_lo12.r_AARCH64_TLSLD_LDST128_DTPREL_LO12;
final r_AARCH64_TLSLD_LDST128_DTPREL_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsld_ldst128_dtprel_lo12_nc.r_AARCH64_TLSLD_LDST128_DTPREL_LO12_NC;
final r_AARCH64_COPY : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_copy.r_AARCH64_COPY;
final r_AARCH64_GLOB_DAT : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_glob_dat.r_AARCH64_GLOB_DAT;
final r_AARCH64_JUMP_SLOT : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_jump_slot.r_AARCH64_JUMP_SLOT;
final r_AARCH64_RELATIVE : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_relative.r_AARCH64_RELATIVE;
final r_AARCH64_TLS_DTPMOD64 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tls_dtpmod64.r_AARCH64_TLS_DTPMOD64;
final r_AARCH64_TLS_DTPREL64 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tls_dtprel64.r_AARCH64_TLS_DTPREL64;
final r_AARCH64_TLS_TPREL64 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tls_tprel64.r_AARCH64_TLS_TPREL64;
final r_AARCH64_TLSDESC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_tlsdesc.r_AARCH64_TLSDESC;
final r_AARCH64_IRELATIVE : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64_irelative.r_AARCH64_IRELATIVE;
final r_ALPHA_NONE : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_none.r_ALPHA_NONE;
final r_ALPHA_REFLONG : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_reflong.r_ALPHA_REFLONG;
final r_ALPHA_REFQUAD : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_refquad.r_ALPHA_REFQUAD;
final r_ALPHA_GPREL32 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_gprel32.r_ALPHA_GPREL32;
final r_ALPHA_LITERAL : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_literal.r_ALPHA_LITERAL;
final r_ALPHA_LITUSE : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_lituse.r_ALPHA_LITUSE;
final r_ALPHA_GPDISP : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_gpdisp.r_ALPHA_GPDISP;
final r_ALPHA_BRADDR : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_braddr.r_ALPHA_BRADDR;
final r_ALPHA_HINT : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_hint.r_ALPHA_HINT;
final r_ALPHA_SREL16 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_srel16.r_ALPHA_SREL16;
final r_ALPHA_SREL32 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_srel32.r_ALPHA_SREL32;
final r_ALPHA_SREL64 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_srel64.r_ALPHA_SREL64;
final r_ALPHA_OP_PUSH : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_op_push.r_ALPHA_OP_PUSH;
final r_ALPHA_OP_STORE : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_op_store.r_ALPHA_OP_STORE;
final r_ALPHA_OP_PSUB : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_op_psub.r_ALPHA_OP_PSUB;
final r_ALPHA_OP_PRSHIFT : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_op_prshift.r_ALPHA_OP_PRSHIFT;
final r_ALPHA_GPVALUE : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_gpvalue.r_ALPHA_GPVALUE;
final r_ALPHA_GPRELHIGH : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_gprelhigh.r_ALPHA_GPRELHIGH;
final r_ALPHA_GPRELLOW : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_gprellow.r_ALPHA_GPRELLOW;
final r_ALPHA_IMMED_GP_16 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_immed_gp_16.r_ALPHA_IMMED_GP_16;
final r_ALPHA_IMMED_GP_HI32 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_immed_gp_hi32.r_ALPHA_IMMED_GP_HI32;
final r_ALPHA_IMMED_SCN_HI32 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_immed_scn_hi32.r_ALPHA_IMMED_SCN_HI32;
final r_ALPHA_IMMED_BR_HI32 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_immed_br_hi32.r_ALPHA_IMMED_BR_HI32;
final r_ALPHA_IMMED_LO32 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_immed_lo32.r_ALPHA_IMMED_LO32;
final r_ALPHA_COPY : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_copy.r_ALPHA_COPY;
final r_ALPHA_GLOB_DAT : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_glob_dat.r_ALPHA_GLOB_DAT;
final r_ALPHA_JMP_SLOT : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_jmp_slot.r_ALPHA_JMP_SLOT;
final r_ALPHA_RELATIVE : R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha_relative.r_ALPHA_RELATIVE;
final r_ARM_NONE : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_none.r_ARM_NONE;
final r_ARM_PC24 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_pc24.r_ARM_PC24;
final r_ARM_ABS32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_abs32.r_ARM_ABS32;
final r_ARM_REL32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_rel32.r_ARM_REL32;
final r_ARM_PC13 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_pc13.r_ARM_PC13;
final r_ARM_ABS16 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_abs16.r_ARM_ABS16;
final r_ARM_ABS12 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_abs12.r_ARM_ABS12;
final r_ARM_THM_ABS5 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_abs5.r_ARM_THM_ABS5;
final r_ARM_ABS8 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_abs8.r_ARM_ABS8;
final r_ARM_SBREL32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_sbrel32.r_ARM_SBREL32;
final r_ARM_THM_PC22 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_pc22.r_ARM_THM_PC22;
final r_ARM_THM_PC8 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_pc8.r_ARM_THM_PC8;
final r_ARM_AMP_VCALL9 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_amp_vcall9.r_ARM_AMP_VCALL9;
final r_ARM_SWI24 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_swi24.r_ARM_SWI24;
final r_ARM_THM_SWI8 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_swi8.r_ARM_THM_SWI8;
final r_ARM_XPC25 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_xpc25.r_ARM_XPC25;
final r_ARM_THM_XPC22 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_xpc22.r_ARM_THM_XPC22;
final r_ARM_TLS_DTPMOD32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_tls_dtpmod32.r_ARM_TLS_DTPMOD32;
final r_ARM_TLS_DTPOFF32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_tls_dtpoff32.r_ARM_TLS_DTPOFF32;
final r_ARM_TLS_TPOFF32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_tls_tpoff32.r_ARM_TLS_TPOFF32;
final r_ARM_COPY : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_copy.r_ARM_COPY;
final r_ARM_GLOB_DAT : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_glob_dat.r_ARM_GLOB_DAT;
final r_ARM_JUMP_SLOT : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_jump_slot.r_ARM_JUMP_SLOT;
final r_ARM_RELATIVE : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_relative.r_ARM_RELATIVE;
final r_ARM_GOTOFF : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_gotoff.r_ARM_GOTOFF;
final r_ARM_GOTPC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_gotpc.r_ARM_GOTPC;
final r_ARM_GOT32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_got32.r_ARM_GOT32;
final r_ARM_PLT32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_plt32.r_ARM_PLT32;
final r_ARM_CALL : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_call.r_ARM_CALL;
final r_ARM_JUMP24 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_jump24.r_ARM_JUMP24;
final r_ARM_THM_JUMP24 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_jump24.r_ARM_THM_JUMP24;
final r_ARM_BASE_ABS : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_base_abs.r_ARM_BASE_ABS;
final r_ARM_ALU_PCREL_7_0 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_alu_pcrel_7_0.r_ARM_ALU_PCREL_7_0;
final r_ARM_ALU_PCREL_15_8 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_alu_pcrel_15_8.r_ARM_ALU_PCREL_15_8;
final r_ARM_ALU_PCREL_23_15 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_alu_pcrel_23_15.r_ARM_ALU_PCREL_23_15;
final r_ARM_LDR_SBREL_11_10_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldr_sbrel_11_10_nc.r_ARM_LDR_SBREL_11_10_NC;
final r_ARM_ALU_SBREL_19_12_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_alu_sbrel_19_12_nc.r_ARM_ALU_SBREL_19_12_NC;
final r_ARM_ALU_SBREL_27_20_CK : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_alu_sbrel_27_20_ck.r_ARM_ALU_SBREL_27_20_CK;
final r_ARM_TARGET1 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_target1.r_ARM_TARGET1;
final r_ARM_SBREL31 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_sbrel31.r_ARM_SBREL31;
final r_ARM_V4BX : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_v4bx.r_ARM_V4BX;
final r_ARM_TARGET2 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_target2.r_ARM_TARGET2;
final r_ARM_PREL31 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_prel31.r_ARM_PREL31;
final r_ARM_MOVW_ABS_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_movw_abs_nc.r_ARM_MOVW_ABS_NC;
final r_ARM_MOVT_ABS : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_movt_abs.r_ARM_MOVT_ABS;
final r_ARM_MOVW_PREL_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_movw_prel_nc.r_ARM_MOVW_PREL_NC;
final r_ARM_MOVT_PREL : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_movt_prel.r_ARM_MOVT_PREL;
final r_ARM_THM_MOVW_ABS_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_movw_abs_nc.r_ARM_THM_MOVW_ABS_NC;
final r_ARM_THM_MOVT_ABS : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_movt_abs.r_ARM_THM_MOVT_ABS;
final r_ARM_THM_MOVW_PREL_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_movw_prel_nc.r_ARM_THM_MOVW_PREL_NC;
final r_ARM_THM_MOVT_PREL : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_movt_prel.r_ARM_THM_MOVT_PREL;
final r_ARM_THM_JUMP19 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_jump19.r_ARM_THM_JUMP19;
final r_ARM_THM_JUMP6 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_jump6.r_ARM_THM_JUMP6;
final r_ARM_THM_ALU_PREL_11_0 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_alu_prel_11_0.r_ARM_THM_ALU_PREL_11_0;
final r_ARM_THM_PC12 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_pc12.r_ARM_THM_PC12;
final r_ARM_ABS32_NOI : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_abs32_noi.r_ARM_ABS32_NOI;
final r_ARM_REL32_NOI : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_rel32_noi.r_ARM_REL32_NOI;
final r_ARM_ALU_PC_G0_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_alu_pc_g0_nc.r_ARM_ALU_PC_G0_NC;
final r_ARM_ALU_PC_G0 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_alu_pc_g0.r_ARM_ALU_PC_G0;
final r_ARM_ALU_PC_G1_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_alu_pc_g1_nc.r_ARM_ALU_PC_G1_NC;
final r_ARM_ALU_PC_G1 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_alu_pc_g1.r_ARM_ALU_PC_G1;
final r_ARM_ALU_PC_G2 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_alu_pc_g2.r_ARM_ALU_PC_G2;
final r_ARM_LDR_PC_G1 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldr_pc_g1.r_ARM_LDR_PC_G1;
final r_ARM_LDR_PC_G2 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldr_pc_g2.r_ARM_LDR_PC_G2;
final r_ARM_LDRS_PC_G0 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldrs_pc_g0.r_ARM_LDRS_PC_G0;
final r_ARM_LDRS_PC_G1 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldrs_pc_g1.r_ARM_LDRS_PC_G1;
final r_ARM_LDRS_PC_G2 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldrs_pc_g2.r_ARM_LDRS_PC_G2;
final r_ARM_LDC_PC_G0 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldc_pc_g0.r_ARM_LDC_PC_G0;
final r_ARM_LDC_PC_G1 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldc_pc_g1.r_ARM_LDC_PC_G1;
final r_ARM_LDC_PC_G2 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldc_pc_g2.r_ARM_LDC_PC_G2;
final r_ARM_ALU_SB_G0_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_alu_sb_g0_nc.r_ARM_ALU_SB_G0_NC;
final r_ARM_ALU_SB_G0 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_alu_sb_g0.r_ARM_ALU_SB_G0;
final r_ARM_ALU_SB_G1_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_alu_sb_g1_nc.r_ARM_ALU_SB_G1_NC;
final r_ARM_ALU_SB_G1 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_alu_sb_g1.r_ARM_ALU_SB_G1;
final r_ARM_ALU_SB_G2 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_alu_sb_g2.r_ARM_ALU_SB_G2;
final r_ARM_LDR_SB_G0 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldr_sb_g0.r_ARM_LDR_SB_G0;
final r_ARM_LDR_SB_G1 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldr_sb_g1.r_ARM_LDR_SB_G1;
final r_ARM_LDR_SB_G2 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldr_sb_g2.r_ARM_LDR_SB_G2;
final r_ARM_LDRS_SB_G0 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldrs_sb_g0.r_ARM_LDRS_SB_G0;
final r_ARM_LDRS_SB_G1 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldrs_sb_g1.r_ARM_LDRS_SB_G1;
final r_ARM_LDRS_SB_G2 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldrs_sb_g2.r_ARM_LDRS_SB_G2;
final r_ARM_LDC_SB_G0 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldc_sb_g0.r_ARM_LDC_SB_G0;
final r_ARM_LDC_SB_G1 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldc_sb_g1.r_ARM_LDC_SB_G1;
final r_ARM_LDC_SB_G2 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_ldc_sb_g2.r_ARM_LDC_SB_G2;
final r_ARM_MOVW_BREL_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_movw_brel_nc.r_ARM_MOVW_BREL_NC;
final r_ARM_MOVT_BREL : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_movt_brel.r_ARM_MOVT_BREL;
final r_ARM_MOVW_BREL : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_movw_brel.r_ARM_MOVW_BREL;
final r_ARM_THM_MOVW_BREL_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_movw_brel_nc.r_ARM_THM_MOVW_BREL_NC;
final r_ARM_THM_MOVT_BREL : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_movt_brel.r_ARM_THM_MOVT_BREL;
final r_ARM_THM_MOVW_BREL : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_movw_brel.r_ARM_THM_MOVW_BREL;
final r_ARM_TLS_GOTDESC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_tls_gotdesc.r_ARM_TLS_GOTDESC;
final r_ARM_TLS_CALL : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_tls_call.r_ARM_TLS_CALL;
final r_ARM_TLS_DESCSEQ : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_tls_descseq.r_ARM_TLS_DESCSEQ;
final r_ARM_THM_TLS_CALL : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_tls_call.r_ARM_THM_TLS_CALL;
final r_ARM_PLT32_ABS : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_plt32_abs.r_ARM_PLT32_ABS;
final r_ARM_GOT_ABS : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_got_abs.r_ARM_GOT_ABS;
final r_ARM_GOT_PREL : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_got_prel.r_ARM_GOT_PREL;
final r_ARM_GOT_BREL12 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_got_brel12.r_ARM_GOT_BREL12;
final r_ARM_GOTOFF12 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_gotoff12.r_ARM_GOTOFF12;
final r_ARM_GOTRELAX : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_gotrelax.r_ARM_GOTRELAX;
final r_ARM_GNU_VTENTRY : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_gnu_vtentry.r_ARM_GNU_VTENTRY;
final r_ARM_GNU_VTINHERIT : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_gnu_vtinherit.r_ARM_GNU_VTINHERIT;
final r_ARM_THM_JUMP11 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_jump11.r_ARM_THM_JUMP11;
final r_ARM_THM_JUMP8 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_jump8.r_ARM_THM_JUMP8;
final r_ARM_TLS_GD32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_tls_gd32.r_ARM_TLS_GD32;
final r_ARM_TLS_LDM32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_tls_ldm32.r_ARM_TLS_LDM32;
final r_ARM_TLS_LDO32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_tls_ldo32.r_ARM_TLS_LDO32;
final r_ARM_TLS_IE32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_tls_ie32.r_ARM_TLS_IE32;
final r_ARM_TLS_LE32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_tls_le32.r_ARM_TLS_LE32;
final r_ARM_TLS_LDO12 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_tls_ldo12.r_ARM_TLS_LDO12;
final r_ARM_TLS_LE12 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_tls_le12.r_ARM_TLS_LE12;
final r_ARM_TLS_IE12GP : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_tls_ie12gp.r_ARM_TLS_IE12GP;
final r_ARM_PRIVATE_0 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_private_0.r_ARM_PRIVATE_0;
final r_ARM_PRIVATE_1 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_private_1.r_ARM_PRIVATE_1;
final r_ARM_PRIVATE_2 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_private_2.r_ARM_PRIVATE_2;
final r_ARM_PRIVATE_3 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_private_3.r_ARM_PRIVATE_3;
final r_ARM_PRIVATE_4 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_private_4.r_ARM_PRIVATE_4;
final r_ARM_PRIVATE_5 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_private_5.r_ARM_PRIVATE_5;
final r_ARM_PRIVATE_6 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_private_6.r_ARM_PRIVATE_6;
final r_ARM_PRIVATE_7 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_private_7.r_ARM_PRIVATE_7;
final r_ARM_PRIVATE_8 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_private_8.r_ARM_PRIVATE_8;
final r_ARM_PRIVATE_9 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_private_9.r_ARM_PRIVATE_9;
final r_ARM_PRIVATE_10 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_private_10.r_ARM_PRIVATE_10;
final r_ARM_PRIVATE_11 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_private_11.r_ARM_PRIVATE_11;
final r_ARM_PRIVATE_12 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_private_12.r_ARM_PRIVATE_12;
final r_ARM_PRIVATE_13 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_private_13.r_ARM_PRIVATE_13;
final r_ARM_PRIVATE_14 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_private_14.r_ARM_PRIVATE_14;
final r_ARM_PRIVATE_15 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_private_15.r_ARM_PRIVATE_15;
final r_ARM_ME_TOO : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_me_too.r_ARM_ME_TOO;
final r_ARM_THM_TLS_DESCSEQ16 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_tls_descseq16.r_ARM_THM_TLS_DESCSEQ16;
final r_ARM_THM_TLS_DESCSEQ32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_tls_descseq32.r_ARM_THM_TLS_DESCSEQ32;
final r_ARM_THM_GOT_BREL12 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_got_brel12.r_ARM_THM_GOT_BREL12;
final r_ARM_THM_ALU_ABS_G0_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_alu_abs_g0_nc.r_ARM_THM_ALU_ABS_G0_NC;
final r_ARM_THM_ALU_ABS_G1_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_alu_abs_g1_nc.r_ARM_THM_ALU_ABS_G1_NC;
final r_ARM_THM_ALU_ABS_G2_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_alu_abs_g2_nc.r_ARM_THM_ALU_ABS_G2_NC;
final r_ARM_THM_ALU_ABS_G3 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_alu_abs_g3.r_ARM_THM_ALU_ABS_G3;
final r_ARM_IRELATIVE : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_irelative.r_ARM_IRELATIVE;
final r_ARM_RXPC25 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_rxpc25.r_ARM_RXPC25;
final r_ARM_RSBREL32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_rsbrel32.r_ARM_RSBREL32;
final r_ARM_THM_RPC22 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_thm_rpc22.r_ARM_THM_RPC22;
final r_ARM_RREL32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_rrel32.r_ARM_RREL32;
final r_ARM_RABS32 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_rabs32.r_ARM_RABS32;
final r_ARM_RPC24 : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_rpc24.r_ARM_RPC24;
final r_ARM_RBASE : R_ARM = stdgo._internal.debug.elf.Elf_r_arm_rbase.r_ARM_RBASE;
final r_386_NONE : R_386 = stdgo._internal.debug.elf.Elf_r_386_none.r_386_NONE;
final r_386_32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_32.r_386_32;
final r_386_PC32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_pc32.r_386_PC32;
final r_386_GOT32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_got32.r_386_GOT32;
final r_386_PLT32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_plt32.r_386_PLT32;
final r_386_COPY : R_386 = stdgo._internal.debug.elf.Elf_r_386_copy.r_386_COPY;
final r_386_GLOB_DAT : R_386 = stdgo._internal.debug.elf.Elf_r_386_glob_dat.r_386_GLOB_DAT;
final r_386_JMP_SLOT : R_386 = stdgo._internal.debug.elf.Elf_r_386_jmp_slot.r_386_JMP_SLOT;
final r_386_RELATIVE : R_386 = stdgo._internal.debug.elf.Elf_r_386_relative.r_386_RELATIVE;
final r_386_GOTOFF : R_386 = stdgo._internal.debug.elf.Elf_r_386_gotoff.r_386_GOTOFF;
final r_386_GOTPC : R_386 = stdgo._internal.debug.elf.Elf_r_386_gotpc.r_386_GOTPC;
final r_386_32PLT : R_386 = stdgo._internal.debug.elf.Elf_r_386_32plt.r_386_32PLT;
final r_386_TLS_TPOFF : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_tpoff.r_386_TLS_TPOFF;
final r_386_TLS_IE : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_ie.r_386_TLS_IE;
final r_386_TLS_GOTIE : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_gotie.r_386_TLS_GOTIE;
final r_386_TLS_LE : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_le.r_386_TLS_LE;
final r_386_TLS_GD : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_gd.r_386_TLS_GD;
final r_386_TLS_LDM : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_ldm.r_386_TLS_LDM;
final r_386_16 : R_386 = stdgo._internal.debug.elf.Elf_r_386_16.r_386_16;
final r_386_PC16 : R_386 = stdgo._internal.debug.elf.Elf_r_386_pc16.r_386_PC16;
final r_386_8 : R_386 = stdgo._internal.debug.elf.Elf_r_386_8.r_386_8;
final r_386_PC8 : R_386 = stdgo._internal.debug.elf.Elf_r_386_pc8.r_386_PC8;
final r_386_TLS_GD_32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_gd_32.r_386_TLS_GD_32;
final r_386_TLS_GD_PUSH : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_gd_push.r_386_TLS_GD_PUSH;
final r_386_TLS_GD_CALL : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_gd_call.r_386_TLS_GD_CALL;
final r_386_TLS_GD_POP : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_gd_pop.r_386_TLS_GD_POP;
final r_386_TLS_LDM_32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_ldm_32.r_386_TLS_LDM_32;
final r_386_TLS_LDM_PUSH : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_ldm_push.r_386_TLS_LDM_PUSH;
final r_386_TLS_LDM_CALL : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_ldm_call.r_386_TLS_LDM_CALL;
final r_386_TLS_LDM_POP : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_ldm_pop.r_386_TLS_LDM_POP;
final r_386_TLS_LDO_32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_ldo_32.r_386_TLS_LDO_32;
final r_386_TLS_IE_32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_ie_32.r_386_TLS_IE_32;
final r_386_TLS_LE_32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_le_32.r_386_TLS_LE_32;
final r_386_TLS_DTPMOD32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_dtpmod32.r_386_TLS_DTPMOD32;
final r_386_TLS_DTPOFF32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_dtpoff32.r_386_TLS_DTPOFF32;
final r_386_TLS_TPOFF32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_tpoff32.r_386_TLS_TPOFF32;
final r_386_SIZE32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_size32.r_386_SIZE32;
final r_386_TLS_GOTDESC : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_gotdesc.r_386_TLS_GOTDESC;
final r_386_TLS_DESC_CALL : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_desc_call.r_386_TLS_DESC_CALL;
final r_386_TLS_DESC : R_386 = stdgo._internal.debug.elf.Elf_r_386_tls_desc.r_386_TLS_DESC;
final r_386_IRELATIVE : R_386 = stdgo._internal.debug.elf.Elf_r_386_irelative.r_386_IRELATIVE;
final r_386_GOT32X : R_386 = stdgo._internal.debug.elf.Elf_r_386_got32x.r_386_GOT32X;
final r_MIPS_NONE : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_none.r_MIPS_NONE;
final r_MIPS_16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_16.r_MIPS_16;
final r_MIPS_32 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_32.r_MIPS_32;
final r_MIPS_REL32 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_rel32.r_MIPS_REL32;
final r_MIPS_26 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_26.r_MIPS_26;
final r_MIPS_HI16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_hi16.r_MIPS_HI16;
final r_MIPS_LO16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_lo16.r_MIPS_LO16;
final r_MIPS_GPREL16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_gprel16.r_MIPS_GPREL16;
final r_MIPS_LITERAL : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_literal.r_MIPS_LITERAL;
final r_MIPS_GOT16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_got16.r_MIPS_GOT16;
final r_MIPS_PC16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_pc16.r_MIPS_PC16;
final r_MIPS_CALL16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_call16.r_MIPS_CALL16;
final r_MIPS_GPREL32 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_gprel32.r_MIPS_GPREL32;
final r_MIPS_SHIFT5 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_shift5.r_MIPS_SHIFT5;
final r_MIPS_SHIFT6 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_shift6.r_MIPS_SHIFT6;
final r_MIPS_64 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_64.r_MIPS_64;
final r_MIPS_GOT_DISP : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_got_disp.r_MIPS_GOT_DISP;
final r_MIPS_GOT_PAGE : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_got_page.r_MIPS_GOT_PAGE;
final r_MIPS_GOT_OFST : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_got_ofst.r_MIPS_GOT_OFST;
final r_MIPS_GOT_HI16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_got_hi16.r_MIPS_GOT_HI16;
final r_MIPS_GOT_LO16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_got_lo16.r_MIPS_GOT_LO16;
final r_MIPS_SUB : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_sub.r_MIPS_SUB;
final r_MIPS_INSERT_A : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_insert_a.r_MIPS_INSERT_A;
final r_MIPS_INSERT_B : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_insert_b.r_MIPS_INSERT_B;
final r_MIPS_DELETE : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_delete.r_MIPS_DELETE;
final r_MIPS_HIGHER : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_higher.r_MIPS_HIGHER;
final r_MIPS_HIGHEST : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_highest.r_MIPS_HIGHEST;
final r_MIPS_CALL_HI16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_call_hi16.r_MIPS_CALL_HI16;
final r_MIPS_CALL_LO16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_call_lo16.r_MIPS_CALL_LO16;
final r_MIPS_SCN_DISP : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_scn_disp.r_MIPS_SCN_DISP;
final r_MIPS_REL16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_rel16.r_MIPS_REL16;
final r_MIPS_ADD_IMMEDIATE : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_add_immediate.r_MIPS_ADD_IMMEDIATE;
final r_MIPS_PJUMP : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_pjump.r_MIPS_PJUMP;
final r_MIPS_RELGOT : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_relgot.r_MIPS_RELGOT;
final r_MIPS_JALR : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_jalr.r_MIPS_JALR;
final r_MIPS_TLS_DTPMOD32 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_tls_dtpmod32.r_MIPS_TLS_DTPMOD32;
final r_MIPS_TLS_DTPREL32 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_tls_dtprel32.r_MIPS_TLS_DTPREL32;
final r_MIPS_TLS_DTPMOD64 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_tls_dtpmod64.r_MIPS_TLS_DTPMOD64;
final r_MIPS_TLS_DTPREL64 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_tls_dtprel64.r_MIPS_TLS_DTPREL64;
final r_MIPS_TLS_GD : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_tls_gd.r_MIPS_TLS_GD;
final r_MIPS_TLS_LDM : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_tls_ldm.r_MIPS_TLS_LDM;
final r_MIPS_TLS_DTPREL_HI16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_tls_dtprel_hi16.r_MIPS_TLS_DTPREL_HI16;
final r_MIPS_TLS_DTPREL_LO16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_tls_dtprel_lo16.r_MIPS_TLS_DTPREL_LO16;
final r_MIPS_TLS_GOTTPREL : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_tls_gottprel.r_MIPS_TLS_GOTTPREL;
final r_MIPS_TLS_TPREL32 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_tls_tprel32.r_MIPS_TLS_TPREL32;
final r_MIPS_TLS_TPREL64 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_tls_tprel64.r_MIPS_TLS_TPREL64;
final r_MIPS_TLS_TPREL_HI16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_tls_tprel_hi16.r_MIPS_TLS_TPREL_HI16;
final r_MIPS_TLS_TPREL_LO16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_mips_tls_tprel_lo16.r_MIPS_TLS_TPREL_LO16;
final r_LARCH_NONE : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_none.r_LARCH_NONE;
final r_LARCH_32 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_32.r_LARCH_32;
final r_LARCH_64 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_64.r_LARCH_64;
final r_LARCH_RELATIVE : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_relative.r_LARCH_RELATIVE;
final r_LARCH_COPY : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_copy.r_LARCH_COPY;
final r_LARCH_JUMP_SLOT : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_jump_slot.r_LARCH_JUMP_SLOT;
final r_LARCH_TLS_DTPMOD32 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_dtpmod32.r_LARCH_TLS_DTPMOD32;
final r_LARCH_TLS_DTPMOD64 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_dtpmod64.r_LARCH_TLS_DTPMOD64;
final r_LARCH_TLS_DTPREL32 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_dtprel32.r_LARCH_TLS_DTPREL32;
final r_LARCH_TLS_DTPREL64 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_dtprel64.r_LARCH_TLS_DTPREL64;
final r_LARCH_TLS_TPREL32 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_tprel32.r_LARCH_TLS_TPREL32;
final r_LARCH_TLS_TPREL64 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_tprel64.r_LARCH_TLS_TPREL64;
final r_LARCH_IRELATIVE : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_irelative.r_LARCH_IRELATIVE;
final r_LARCH_MARK_LA : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_mark_la.r_LARCH_MARK_LA;
final r_LARCH_MARK_PCREL : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_mark_pcrel.r_LARCH_MARK_PCREL;
final r_LARCH_SOP_PUSH_PCREL : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_push_pcrel.r_LARCH_SOP_PUSH_PCREL;
final r_LARCH_SOP_PUSH_ABSOLUTE : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_push_absolute.r_LARCH_SOP_PUSH_ABSOLUTE;
final r_LARCH_SOP_PUSH_DUP : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_push_dup.r_LARCH_SOP_PUSH_DUP;
final r_LARCH_SOP_PUSH_GPREL : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_push_gprel.r_LARCH_SOP_PUSH_GPREL;
final r_LARCH_SOP_PUSH_TLS_TPREL : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_push_tls_tprel.r_LARCH_SOP_PUSH_TLS_TPREL;
final r_LARCH_SOP_PUSH_TLS_GOT : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_push_tls_got.r_LARCH_SOP_PUSH_TLS_GOT;
final r_LARCH_SOP_PUSH_TLS_GD : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_push_tls_gd.r_LARCH_SOP_PUSH_TLS_GD;
final r_LARCH_SOP_PUSH_PLT_PCREL : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_push_plt_pcrel.r_LARCH_SOP_PUSH_PLT_PCREL;
final r_LARCH_SOP_ASSERT : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_assert.r_LARCH_SOP_ASSERT;
final r_LARCH_SOP_NOT : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_not.r_LARCH_SOP_NOT;
final r_LARCH_SOP_SUB : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_sub.r_LARCH_SOP_SUB;
final r_LARCH_SOP_SL : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_sl.r_LARCH_SOP_SL;
final r_LARCH_SOP_SR : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_sr.r_LARCH_SOP_SR;
final r_LARCH_SOP_ADD : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_add.r_LARCH_SOP_ADD;
final r_LARCH_SOP_AND : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_and.r_LARCH_SOP_AND;
final r_LARCH_SOP_IF_ELSE : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_if_else.r_LARCH_SOP_IF_ELSE;
final r_LARCH_SOP_POP_32_S_10_5 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_pop_32_s_10_5.r_LARCH_SOP_POP_32_S_10_5;
final r_LARCH_SOP_POP_32_U_10_12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_pop_32_u_10_12.r_LARCH_SOP_POP_32_U_10_12;
final r_LARCH_SOP_POP_32_S_10_12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_pop_32_s_10_12.r_LARCH_SOP_POP_32_S_10_12;
final r_LARCH_SOP_POP_32_S_10_16 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_pop_32_s_10_16.r_LARCH_SOP_POP_32_S_10_16;
final r_LARCH_SOP_POP_32_S_10_16_S2 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_pop_32_s_10_16_s2.r_LARCH_SOP_POP_32_S_10_16_S2;
final r_LARCH_SOP_POP_32_S_5_20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_pop_32_s_5_20.r_LARCH_SOP_POP_32_S_5_20;
final r_LARCH_SOP_POP_32_S_0_5_10_16_S2 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_pop_32_s_0_5_10_16_s2.r_LARCH_SOP_POP_32_S_0_5_10_16_S2;
final r_LARCH_SOP_POP_32_S_0_10_10_16_S2 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_pop_32_s_0_10_10_16_s2.r_LARCH_SOP_POP_32_S_0_10_10_16_S2;
final r_LARCH_SOP_POP_32_U : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sop_pop_32_u.r_LARCH_SOP_POP_32_U;
final r_LARCH_ADD8 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_add8.r_LARCH_ADD8;
final r_LARCH_ADD16 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_add16.r_LARCH_ADD16;
final r_LARCH_ADD24 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_add24.r_LARCH_ADD24;
final r_LARCH_ADD32 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_add32.r_LARCH_ADD32;
final r_LARCH_ADD64 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_add64.r_LARCH_ADD64;
final r_LARCH_SUB8 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sub8.r_LARCH_SUB8;
final r_LARCH_SUB16 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sub16.r_LARCH_SUB16;
final r_LARCH_SUB24 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sub24.r_LARCH_SUB24;
final r_LARCH_SUB32 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sub32.r_LARCH_SUB32;
final r_LARCH_SUB64 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_sub64.r_LARCH_SUB64;
final r_LARCH_GNU_VTINHERIT : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_gnu_vtinherit.r_LARCH_GNU_VTINHERIT;
final r_LARCH_GNU_VTENTRY : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_gnu_vtentry.r_LARCH_GNU_VTENTRY;
final r_LARCH_B16 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_b16.r_LARCH_B16;
final r_LARCH_B21 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_b21.r_LARCH_B21;
final r_LARCH_B26 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_b26.r_LARCH_B26;
final r_LARCH_ABS_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_abs_hi20.r_LARCH_ABS_HI20;
final r_LARCH_ABS_LO12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_abs_lo12.r_LARCH_ABS_LO12;
final r_LARCH_ABS64_LO20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_abs64_lo20.r_LARCH_ABS64_LO20;
final r_LARCH_ABS64_HI12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_abs64_hi12.r_LARCH_ABS64_HI12;
final r_LARCH_PCALA_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_pcala_hi20.r_LARCH_PCALA_HI20;
final r_LARCH_PCALA_LO12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_pcala_lo12.r_LARCH_PCALA_LO12;
final r_LARCH_PCALA64_LO20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_pcala64_lo20.r_LARCH_PCALA64_LO20;
final r_LARCH_PCALA64_HI12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_pcala64_hi12.r_LARCH_PCALA64_HI12;
final r_LARCH_GOT_PC_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_got_pc_hi20.r_LARCH_GOT_PC_HI20;
final r_LARCH_GOT_PC_LO12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_got_pc_lo12.r_LARCH_GOT_PC_LO12;
final r_LARCH_GOT64_PC_LO20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_got64_pc_lo20.r_LARCH_GOT64_PC_LO20;
final r_LARCH_GOT64_PC_HI12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_got64_pc_hi12.r_LARCH_GOT64_PC_HI12;
final r_LARCH_GOT_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_got_hi20.r_LARCH_GOT_HI20;
final r_LARCH_GOT_LO12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_got_lo12.r_LARCH_GOT_LO12;
final r_LARCH_GOT64_LO20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_got64_lo20.r_LARCH_GOT64_LO20;
final r_LARCH_GOT64_HI12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_got64_hi12.r_LARCH_GOT64_HI12;
final r_LARCH_TLS_LE_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_le_hi20.r_LARCH_TLS_LE_HI20;
final r_LARCH_TLS_LE_LO12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_le_lo12.r_LARCH_TLS_LE_LO12;
final r_LARCH_TLS_LE64_LO20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_le64_lo20.r_LARCH_TLS_LE64_LO20;
final r_LARCH_TLS_LE64_HI12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_le64_hi12.r_LARCH_TLS_LE64_HI12;
final r_LARCH_TLS_IE_PC_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_ie_pc_hi20.r_LARCH_TLS_IE_PC_HI20;
final r_LARCH_TLS_IE_PC_LO12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_ie_pc_lo12.r_LARCH_TLS_IE_PC_LO12;
final r_LARCH_TLS_IE64_PC_LO20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_ie64_pc_lo20.r_LARCH_TLS_IE64_PC_LO20;
final r_LARCH_TLS_IE64_PC_HI12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_ie64_pc_hi12.r_LARCH_TLS_IE64_PC_HI12;
final r_LARCH_TLS_IE_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_ie_hi20.r_LARCH_TLS_IE_HI20;
final r_LARCH_TLS_IE_LO12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_ie_lo12.r_LARCH_TLS_IE_LO12;
final r_LARCH_TLS_IE64_LO20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_ie64_lo20.r_LARCH_TLS_IE64_LO20;
final r_LARCH_TLS_IE64_HI12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_ie64_hi12.r_LARCH_TLS_IE64_HI12;
final r_LARCH_TLS_LD_PC_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_ld_pc_hi20.r_LARCH_TLS_LD_PC_HI20;
final r_LARCH_TLS_LD_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_ld_hi20.r_LARCH_TLS_LD_HI20;
final r_LARCH_TLS_GD_PC_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_gd_pc_hi20.r_LARCH_TLS_GD_PC_HI20;
final r_LARCH_TLS_GD_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_tls_gd_hi20.r_LARCH_TLS_GD_HI20;
final r_LARCH_32_PCREL : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_32_pcrel.r_LARCH_32_PCREL;
final r_LARCH_RELAX : R_LARCH = stdgo._internal.debug.elf.Elf_r_larch_relax.r_LARCH_RELAX;
final r_PPC_NONE : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_none.r_PPC_NONE;
final r_PPC_ADDR32 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_addr32.r_PPC_ADDR32;
final r_PPC_ADDR24 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_addr24.r_PPC_ADDR24;
final r_PPC_ADDR16 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_addr16.r_PPC_ADDR16;
final r_PPC_ADDR16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_addr16_lo.r_PPC_ADDR16_LO;
final r_PPC_ADDR16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_addr16_hi.r_PPC_ADDR16_HI;
final r_PPC_ADDR16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_addr16_ha.r_PPC_ADDR16_HA;
final r_PPC_ADDR14 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_addr14.r_PPC_ADDR14;
final r_PPC_ADDR14_BRTAKEN : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_addr14_brtaken.r_PPC_ADDR14_BRTAKEN;
final r_PPC_ADDR14_BRNTAKEN : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_addr14_brntaken.r_PPC_ADDR14_BRNTAKEN;
final r_PPC_REL24 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_rel24.r_PPC_REL24;
final r_PPC_REL14 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_rel14.r_PPC_REL14;
final r_PPC_REL14_BRTAKEN : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_rel14_brtaken.r_PPC_REL14_BRTAKEN;
final r_PPC_REL14_BRNTAKEN : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_rel14_brntaken.r_PPC_REL14_BRNTAKEN;
final r_PPC_GOT16 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_got16.r_PPC_GOT16;
final r_PPC_GOT16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_got16_lo.r_PPC_GOT16_LO;
final r_PPC_GOT16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_got16_hi.r_PPC_GOT16_HI;
final r_PPC_GOT16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_got16_ha.r_PPC_GOT16_HA;
final r_PPC_PLTREL24 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_pltrel24.r_PPC_PLTREL24;
final r_PPC_COPY : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_copy.r_PPC_COPY;
final r_PPC_GLOB_DAT : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_glob_dat.r_PPC_GLOB_DAT;
final r_PPC_JMP_SLOT : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_jmp_slot.r_PPC_JMP_SLOT;
final r_PPC_RELATIVE : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_relative.r_PPC_RELATIVE;
final r_PPC_LOCAL24PC : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_local24pc.r_PPC_LOCAL24PC;
final r_PPC_UADDR32 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_uaddr32.r_PPC_UADDR32;
final r_PPC_UADDR16 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_uaddr16.r_PPC_UADDR16;
final r_PPC_REL32 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_rel32.r_PPC_REL32;
final r_PPC_PLT32 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_plt32.r_PPC_PLT32;
final r_PPC_PLTREL32 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_pltrel32.r_PPC_PLTREL32;
final r_PPC_PLT16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_plt16_lo.r_PPC_PLT16_LO;
final r_PPC_PLT16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_plt16_hi.r_PPC_PLT16_HI;
final r_PPC_PLT16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_plt16_ha.r_PPC_PLT16_HA;
final r_PPC_SDAREL16 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_sdarel16.r_PPC_SDAREL16;
final r_PPC_SECTOFF : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_sectoff.r_PPC_SECTOFF;
final r_PPC_SECTOFF_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_sectoff_lo.r_PPC_SECTOFF_LO;
final r_PPC_SECTOFF_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_sectoff_hi.r_PPC_SECTOFF_HI;
final r_PPC_SECTOFF_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_sectoff_ha.r_PPC_SECTOFF_HA;
final r_PPC_TLS : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_tls.r_PPC_TLS;
final r_PPC_DTPMOD32 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_dtpmod32.r_PPC_DTPMOD32;
final r_PPC_TPREL16 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_tprel16.r_PPC_TPREL16;
final r_PPC_TPREL16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_tprel16_lo.r_PPC_TPREL16_LO;
final r_PPC_TPREL16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_tprel16_hi.r_PPC_TPREL16_HI;
final r_PPC_TPREL16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_tprel16_ha.r_PPC_TPREL16_HA;
final r_PPC_TPREL32 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_tprel32.r_PPC_TPREL32;
final r_PPC_DTPREL16 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_dtprel16.r_PPC_DTPREL16;
final r_PPC_DTPREL16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_dtprel16_lo.r_PPC_DTPREL16_LO;
final r_PPC_DTPREL16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_dtprel16_hi.r_PPC_DTPREL16_HI;
final r_PPC_DTPREL16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_dtprel16_ha.r_PPC_DTPREL16_HA;
final r_PPC_DTPREL32 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_dtprel32.r_PPC_DTPREL32;
final r_PPC_GOT_TLSGD16 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_got_tlsgd16.r_PPC_GOT_TLSGD16;
final r_PPC_GOT_TLSGD16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_got_tlsgd16_lo.r_PPC_GOT_TLSGD16_LO;
final r_PPC_GOT_TLSGD16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_got_tlsgd16_hi.r_PPC_GOT_TLSGD16_HI;
final r_PPC_GOT_TLSGD16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_got_tlsgd16_ha.r_PPC_GOT_TLSGD16_HA;
final r_PPC_GOT_TLSLD16 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_got_tlsld16.r_PPC_GOT_TLSLD16;
final r_PPC_GOT_TLSLD16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_got_tlsld16_lo.r_PPC_GOT_TLSLD16_LO;
final r_PPC_GOT_TLSLD16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_got_tlsld16_hi.r_PPC_GOT_TLSLD16_HI;
final r_PPC_GOT_TLSLD16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_got_tlsld16_ha.r_PPC_GOT_TLSLD16_HA;
final r_PPC_GOT_TPREL16 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_got_tprel16.r_PPC_GOT_TPREL16;
final r_PPC_GOT_TPREL16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_got_tprel16_lo.r_PPC_GOT_TPREL16_LO;
final r_PPC_GOT_TPREL16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_got_tprel16_hi.r_PPC_GOT_TPREL16_HI;
final r_PPC_GOT_TPREL16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_got_tprel16_ha.r_PPC_GOT_TPREL16_HA;
final r_PPC_EMB_NADDR32 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_emb_naddr32.r_PPC_EMB_NADDR32;
final r_PPC_EMB_NADDR16 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_emb_naddr16.r_PPC_EMB_NADDR16;
final r_PPC_EMB_NADDR16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_emb_naddr16_lo.r_PPC_EMB_NADDR16_LO;
final r_PPC_EMB_NADDR16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_emb_naddr16_hi.r_PPC_EMB_NADDR16_HI;
final r_PPC_EMB_NADDR16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_emb_naddr16_ha.r_PPC_EMB_NADDR16_HA;
final r_PPC_EMB_SDAI16 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_emb_sdai16.r_PPC_EMB_SDAI16;
final r_PPC_EMB_SDA2I16 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_emb_sda2i16.r_PPC_EMB_SDA2I16;
final r_PPC_EMB_SDA2REL : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_emb_sda2rel.r_PPC_EMB_SDA2REL;
final r_PPC_EMB_SDA21 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_emb_sda21.r_PPC_EMB_SDA21;
final r_PPC_EMB_MRKREF : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_emb_mrkref.r_PPC_EMB_MRKREF;
final r_PPC_EMB_RELSEC16 : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_emb_relsec16.r_PPC_EMB_RELSEC16;
final r_PPC_EMB_RELST_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_emb_relst_lo.r_PPC_EMB_RELST_LO;
final r_PPC_EMB_RELST_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_emb_relst_hi.r_PPC_EMB_RELST_HI;
final r_PPC_EMB_RELST_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_emb_relst_ha.r_PPC_EMB_RELST_HA;
final r_PPC_EMB_BIT_FLD : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_emb_bit_fld.r_PPC_EMB_BIT_FLD;
final r_PPC_EMB_RELSDA : R_PPC = stdgo._internal.debug.elf.Elf_r_ppc_emb_relsda.r_PPC_EMB_RELSDA;
final r_PPC64_NONE : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_none.r_PPC64_NONE;
final r_PPC64_ADDR32 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr32.r_PPC64_ADDR32;
final r_PPC64_ADDR24 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr24.r_PPC64_ADDR24;
final r_PPC64_ADDR16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr16.r_PPC64_ADDR16;
final r_PPC64_ADDR16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr16_lo.r_PPC64_ADDR16_LO;
final r_PPC64_ADDR16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr16_hi.r_PPC64_ADDR16_HI;
final r_PPC64_ADDR16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr16_ha.r_PPC64_ADDR16_HA;
final r_PPC64_ADDR14 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr14.r_PPC64_ADDR14;
final r_PPC64_ADDR14_BRTAKEN : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr14_brtaken.r_PPC64_ADDR14_BRTAKEN;
final r_PPC64_ADDR14_BRNTAKEN : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr14_brntaken.r_PPC64_ADDR14_BRNTAKEN;
final r_PPC64_REL24 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel24.r_PPC64_REL24;
final r_PPC64_REL14 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel14.r_PPC64_REL14;
final r_PPC64_REL14_BRTAKEN : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel14_brtaken.r_PPC64_REL14_BRTAKEN;
final r_PPC64_REL14_BRNTAKEN : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel14_brntaken.r_PPC64_REL14_BRNTAKEN;
final r_PPC64_GOT16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got16.r_PPC64_GOT16;
final r_PPC64_GOT16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got16_lo.r_PPC64_GOT16_LO;
final r_PPC64_GOT16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got16_hi.r_PPC64_GOT16_HI;
final r_PPC64_GOT16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got16_ha.r_PPC64_GOT16_HA;
final r_PPC64_COPY : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_copy.r_PPC64_COPY;
final r_PPC64_GLOB_DAT : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_glob_dat.r_PPC64_GLOB_DAT;
final r_PPC64_JMP_SLOT : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_jmp_slot.r_PPC64_JMP_SLOT;
final r_PPC64_RELATIVE : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_relative.r_PPC64_RELATIVE;
final r_PPC64_UADDR32 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_uaddr32.r_PPC64_UADDR32;
final r_PPC64_UADDR16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_uaddr16.r_PPC64_UADDR16;
final r_PPC64_REL32 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel32.r_PPC64_REL32;
final r_PPC64_PLT32 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_plt32.r_PPC64_PLT32;
final r_PPC64_PLTREL32 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_pltrel32.r_PPC64_PLTREL32;
final r_PPC64_PLT16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_plt16_lo.r_PPC64_PLT16_LO;
final r_PPC64_PLT16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_plt16_hi.r_PPC64_PLT16_HI;
final r_PPC64_PLT16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_plt16_ha.r_PPC64_PLT16_HA;
final r_PPC64_SECTOFF : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_sectoff.r_PPC64_SECTOFF;
final r_PPC64_SECTOFF_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_sectoff_lo.r_PPC64_SECTOFF_LO;
final r_PPC64_SECTOFF_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_sectoff_hi.r_PPC64_SECTOFF_HI;
final r_PPC64_SECTOFF_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_sectoff_ha.r_PPC64_SECTOFF_HA;
final r_PPC64_REL30 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel30.r_PPC64_REL30;
final r_PPC64_ADDR64 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr64.r_PPC64_ADDR64;
final r_PPC64_ADDR16_HIGHER : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr16_higher.r_PPC64_ADDR16_HIGHER;
final r_PPC64_ADDR16_HIGHERA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr16_highera.r_PPC64_ADDR16_HIGHERA;
final r_PPC64_ADDR16_HIGHEST : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr16_highest.r_PPC64_ADDR16_HIGHEST;
final r_PPC64_ADDR16_HIGHESTA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr16_highesta.r_PPC64_ADDR16_HIGHESTA;
final r_PPC64_UADDR64 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_uaddr64.r_PPC64_UADDR64;
final r_PPC64_REL64 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel64.r_PPC64_REL64;
final r_PPC64_PLT64 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_plt64.r_PPC64_PLT64;
final r_PPC64_PLTREL64 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_pltrel64.r_PPC64_PLTREL64;
final r_PPC64_TOC16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_toc16.r_PPC64_TOC16;
final r_PPC64_TOC16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_toc16_lo.r_PPC64_TOC16_LO;
final r_PPC64_TOC16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_toc16_hi.r_PPC64_TOC16_HI;
final r_PPC64_TOC16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_toc16_ha.r_PPC64_TOC16_HA;
final r_PPC64_TOC : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_toc.r_PPC64_TOC;
final r_PPC64_PLTGOT16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_pltgot16.r_PPC64_PLTGOT16;
final r_PPC64_PLTGOT16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_pltgot16_lo.r_PPC64_PLTGOT16_LO;
final r_PPC64_PLTGOT16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_pltgot16_hi.r_PPC64_PLTGOT16_HI;
final r_PPC64_PLTGOT16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_pltgot16_ha.r_PPC64_PLTGOT16_HA;
final r_PPC64_ADDR16_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr16_ds.r_PPC64_ADDR16_DS;
final r_PPC64_ADDR16_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr16_lo_ds.r_PPC64_ADDR16_LO_DS;
final r_PPC64_GOT16_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got16_ds.r_PPC64_GOT16_DS;
final r_PPC64_GOT16_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got16_lo_ds.r_PPC64_GOT16_LO_DS;
final r_PPC64_PLT16_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_plt16_lo_ds.r_PPC64_PLT16_LO_DS;
final r_PPC64_SECTOFF_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_sectoff_ds.r_PPC64_SECTOFF_DS;
final r_PPC64_SECTOFF_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_sectoff_lo_ds.r_PPC64_SECTOFF_LO_DS;
final r_PPC64_TOC16_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_toc16_ds.r_PPC64_TOC16_DS;
final r_PPC64_TOC16_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_toc16_lo_ds.r_PPC64_TOC16_LO_DS;
final r_PPC64_PLTGOT16_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_pltgot16_ds.r_PPC64_PLTGOT16_DS;
final r_PPC64_PLTGOT_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_pltgot_lo_ds.r_PPC64_PLTGOT_LO_DS;
final r_PPC64_TLS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tls.r_PPC64_TLS;
final r_PPC64_DTPMOD64 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_dtpmod64.r_PPC64_DTPMOD64;
final r_PPC64_TPREL16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tprel16.r_PPC64_TPREL16;
final r_PPC64_TPREL16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tprel16_lo.r_PPC64_TPREL16_LO;
final r_PPC64_TPREL16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tprel16_hi.r_PPC64_TPREL16_HI;
final r_PPC64_TPREL16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tprel16_ha.r_PPC64_TPREL16_HA;
final r_PPC64_TPREL64 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tprel64.r_PPC64_TPREL64;
final r_PPC64_DTPREL16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_dtprel16.r_PPC64_DTPREL16;
final r_PPC64_DTPREL16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_dtprel16_lo.r_PPC64_DTPREL16_LO;
final r_PPC64_DTPREL16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_dtprel16_hi.r_PPC64_DTPREL16_HI;
final r_PPC64_DTPREL16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_dtprel16_ha.r_PPC64_DTPREL16_HA;
final r_PPC64_DTPREL64 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_dtprel64.r_PPC64_DTPREL64;
final r_PPC64_GOT_TLSGD16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_tlsgd16.r_PPC64_GOT_TLSGD16;
final r_PPC64_GOT_TLSGD16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_tlsgd16_lo.r_PPC64_GOT_TLSGD16_LO;
final r_PPC64_GOT_TLSGD16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_tlsgd16_hi.r_PPC64_GOT_TLSGD16_HI;
final r_PPC64_GOT_TLSGD16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_tlsgd16_ha.r_PPC64_GOT_TLSGD16_HA;
final r_PPC64_GOT_TLSLD16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_tlsld16.r_PPC64_GOT_TLSLD16;
final r_PPC64_GOT_TLSLD16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_tlsld16_lo.r_PPC64_GOT_TLSLD16_LO;
final r_PPC64_GOT_TLSLD16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_tlsld16_hi.r_PPC64_GOT_TLSLD16_HI;
final r_PPC64_GOT_TLSLD16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_tlsld16_ha.r_PPC64_GOT_TLSLD16_HA;
final r_PPC64_GOT_TPREL16_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_tprel16_ds.r_PPC64_GOT_TPREL16_DS;
final r_PPC64_GOT_TPREL16_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_tprel16_lo_ds.r_PPC64_GOT_TPREL16_LO_DS;
final r_PPC64_GOT_TPREL16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_tprel16_hi.r_PPC64_GOT_TPREL16_HI;
final r_PPC64_GOT_TPREL16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_tprel16_ha.r_PPC64_GOT_TPREL16_HA;
final r_PPC64_GOT_DTPREL16_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_dtprel16_ds.r_PPC64_GOT_DTPREL16_DS;
final r_PPC64_GOT_DTPREL16_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_dtprel16_lo_ds.r_PPC64_GOT_DTPREL16_LO_DS;
final r_PPC64_GOT_DTPREL16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_dtprel16_hi.r_PPC64_GOT_DTPREL16_HI;
final r_PPC64_GOT_DTPREL16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_dtprel16_ha.r_PPC64_GOT_DTPREL16_HA;
final r_PPC64_TPREL16_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tprel16_ds.r_PPC64_TPREL16_DS;
final r_PPC64_TPREL16_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tprel16_lo_ds.r_PPC64_TPREL16_LO_DS;
final r_PPC64_TPREL16_HIGHER : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tprel16_higher.r_PPC64_TPREL16_HIGHER;
final r_PPC64_TPREL16_HIGHERA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tprel16_highera.r_PPC64_TPREL16_HIGHERA;
final r_PPC64_TPREL16_HIGHEST : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tprel16_highest.r_PPC64_TPREL16_HIGHEST;
final r_PPC64_TPREL16_HIGHESTA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tprel16_highesta.r_PPC64_TPREL16_HIGHESTA;
final r_PPC64_DTPREL16_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_dtprel16_ds.r_PPC64_DTPREL16_DS;
final r_PPC64_DTPREL16_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_dtprel16_lo_ds.r_PPC64_DTPREL16_LO_DS;
final r_PPC64_DTPREL16_HIGHER : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_dtprel16_higher.r_PPC64_DTPREL16_HIGHER;
final r_PPC64_DTPREL16_HIGHERA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_dtprel16_highera.r_PPC64_DTPREL16_HIGHERA;
final r_PPC64_DTPREL16_HIGHEST : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_dtprel16_highest.r_PPC64_DTPREL16_HIGHEST;
final r_PPC64_DTPREL16_HIGHESTA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_dtprel16_highesta.r_PPC64_DTPREL16_HIGHESTA;
final r_PPC64_TLSGD : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tlsgd.r_PPC64_TLSGD;
final r_PPC64_TLSLD : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tlsld.r_PPC64_TLSLD;
final r_PPC64_TOCSAVE : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tocsave.r_PPC64_TOCSAVE;
final r_PPC64_ADDR16_HIGH : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr16_high.r_PPC64_ADDR16_HIGH;
final r_PPC64_ADDR16_HIGHA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr16_higha.r_PPC64_ADDR16_HIGHA;
final r_PPC64_TPREL16_HIGH : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tprel16_high.r_PPC64_TPREL16_HIGH;
final r_PPC64_TPREL16_HIGHA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tprel16_higha.r_PPC64_TPREL16_HIGHA;
final r_PPC64_DTPREL16_HIGH : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_dtprel16_high.r_PPC64_DTPREL16_HIGH;
final r_PPC64_DTPREL16_HIGHA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_dtprel16_higha.r_PPC64_DTPREL16_HIGHA;
final r_PPC64_REL24_NOTOC : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel24_notoc.r_PPC64_REL24_NOTOC;
final r_PPC64_ADDR64_LOCAL : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr64_local.r_PPC64_ADDR64_LOCAL;
final r_PPC64_ENTRY : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_entry.r_PPC64_ENTRY;
final r_PPC64_PLTSEQ : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_pltseq.r_PPC64_PLTSEQ;
final r_PPC64_PLTCALL : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_pltcall.r_PPC64_PLTCALL;
final r_PPC64_PLTSEQ_NOTOC : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_pltseq_notoc.r_PPC64_PLTSEQ_NOTOC;
final r_PPC64_PLTCALL_NOTOC : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_pltcall_notoc.r_PPC64_PLTCALL_NOTOC;
final r_PPC64_PCREL_OPT : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_pcrel_opt.r_PPC64_PCREL_OPT;
final r_PPC64_REL24_P9NOTOC : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel24_p9notoc.r_PPC64_REL24_P9NOTOC;
final r_PPC64_D34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_d34.r_PPC64_D34;
final r_PPC64_D34_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_d34_lo.r_PPC64_D34_LO;
final r_PPC64_D34_HI30 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_d34_hi30.r_PPC64_D34_HI30;
final r_PPC64_D34_HA30 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_d34_ha30.r_PPC64_D34_HA30;
final r_PPC64_PCREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_pcrel34.r_PPC64_PCREL34;
final r_PPC64_GOT_PCREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_pcrel34.r_PPC64_GOT_PCREL34;
final r_PPC64_PLT_PCREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_plt_pcrel34.r_PPC64_PLT_PCREL34;
final r_PPC64_PLT_PCREL34_NOTOC : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_plt_pcrel34_notoc.r_PPC64_PLT_PCREL34_NOTOC;
final r_PPC64_ADDR16_HIGHER34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr16_higher34.r_PPC64_ADDR16_HIGHER34;
final r_PPC64_ADDR16_HIGHERA34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr16_highera34.r_PPC64_ADDR16_HIGHERA34;
final r_PPC64_ADDR16_HIGHEST34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr16_highest34.r_PPC64_ADDR16_HIGHEST34;
final r_PPC64_ADDR16_HIGHESTA34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_addr16_highesta34.r_PPC64_ADDR16_HIGHESTA34;
final r_PPC64_REL16_HIGHER34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel16_higher34.r_PPC64_REL16_HIGHER34;
final r_PPC64_REL16_HIGHERA34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel16_highera34.r_PPC64_REL16_HIGHERA34;
final r_PPC64_REL16_HIGHEST34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel16_highest34.r_PPC64_REL16_HIGHEST34;
final r_PPC64_REL16_HIGHESTA34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel16_highesta34.r_PPC64_REL16_HIGHESTA34;
final r_PPC64_D28 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_d28.r_PPC64_D28;
final r_PPC64_PCREL28 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_pcrel28.r_PPC64_PCREL28;
final r_PPC64_TPREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_tprel34.r_PPC64_TPREL34;
final r_PPC64_DTPREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_dtprel34.r_PPC64_DTPREL34;
final r_PPC64_GOT_TLSGD_PCREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_tlsgd_pcrel34.r_PPC64_GOT_TLSGD_PCREL34;
final r_PPC64_GOT_TLSLD_PCREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_tlsld_pcrel34.r_PPC64_GOT_TLSLD_PCREL34;
final r_PPC64_GOT_TPREL_PCREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_tprel_pcrel34.r_PPC64_GOT_TPREL_PCREL34;
final r_PPC64_GOT_DTPREL_PCREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_got_dtprel_pcrel34.r_PPC64_GOT_DTPREL_PCREL34;
final r_PPC64_REL16_HIGH : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel16_high.r_PPC64_REL16_HIGH;
final r_PPC64_REL16_HIGHA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel16_higha.r_PPC64_REL16_HIGHA;
final r_PPC64_REL16_HIGHER : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel16_higher.r_PPC64_REL16_HIGHER;
final r_PPC64_REL16_HIGHERA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel16_highera.r_PPC64_REL16_HIGHERA;
final r_PPC64_REL16_HIGHEST : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel16_highest.r_PPC64_REL16_HIGHEST;
final r_PPC64_REL16_HIGHESTA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel16_highesta.r_PPC64_REL16_HIGHESTA;
final r_PPC64_REL16DX_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel16dx_ha.r_PPC64_REL16DX_HA;
final r_PPC64_JMP_IREL : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_jmp_irel.r_PPC64_JMP_IREL;
final r_PPC64_IRELATIVE : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_irelative.r_PPC64_IRELATIVE;
final r_PPC64_REL16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel16.r_PPC64_REL16;
final r_PPC64_REL16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel16_lo.r_PPC64_REL16_LO;
final r_PPC64_REL16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel16_hi.r_PPC64_REL16_HI;
final r_PPC64_REL16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_rel16_ha.r_PPC64_REL16_HA;
final r_PPC64_GNU_VTINHERIT : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_gnu_vtinherit.r_PPC64_GNU_VTINHERIT;
final r_PPC64_GNU_VTENTRY : R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64_gnu_vtentry.r_PPC64_GNU_VTENTRY;
final r_RISCV_NONE : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_none.r_RISCV_NONE;
final r_RISCV_32 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_32.r_RISCV_32;
final r_RISCV_64 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_64.r_RISCV_64;
final r_RISCV_RELATIVE : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_relative.r_RISCV_RELATIVE;
final r_RISCV_COPY : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_copy.r_RISCV_COPY;
final r_RISCV_JUMP_SLOT : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_jump_slot.r_RISCV_JUMP_SLOT;
final r_RISCV_TLS_DTPMOD32 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_tls_dtpmod32.r_RISCV_TLS_DTPMOD32;
final r_RISCV_TLS_DTPMOD64 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_tls_dtpmod64.r_RISCV_TLS_DTPMOD64;
final r_RISCV_TLS_DTPREL32 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_tls_dtprel32.r_RISCV_TLS_DTPREL32;
final r_RISCV_TLS_DTPREL64 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_tls_dtprel64.r_RISCV_TLS_DTPREL64;
final r_RISCV_TLS_TPREL32 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_tls_tprel32.r_RISCV_TLS_TPREL32;
final r_RISCV_TLS_TPREL64 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_tls_tprel64.r_RISCV_TLS_TPREL64;
final r_RISCV_BRANCH : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_branch.r_RISCV_BRANCH;
final r_RISCV_JAL : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_jal.r_RISCV_JAL;
final r_RISCV_CALL : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_call.r_RISCV_CALL;
final r_RISCV_CALL_PLT : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_call_plt.r_RISCV_CALL_PLT;
final r_RISCV_GOT_HI20 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_got_hi20.r_RISCV_GOT_HI20;
final r_RISCV_TLS_GOT_HI20 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_tls_got_hi20.r_RISCV_TLS_GOT_HI20;
final r_RISCV_TLS_GD_HI20 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_tls_gd_hi20.r_RISCV_TLS_GD_HI20;
final r_RISCV_PCREL_HI20 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_pcrel_hi20.r_RISCV_PCREL_HI20;
final r_RISCV_PCREL_LO12_I : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_pcrel_lo12_i.r_RISCV_PCREL_LO12_I;
final r_RISCV_PCREL_LO12_S : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_pcrel_lo12_s.r_RISCV_PCREL_LO12_S;
final r_RISCV_HI20 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_hi20.r_RISCV_HI20;
final r_RISCV_LO12_I : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_lo12_i.r_RISCV_LO12_I;
final r_RISCV_LO12_S : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_lo12_s.r_RISCV_LO12_S;
final r_RISCV_TPREL_HI20 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_tprel_hi20.r_RISCV_TPREL_HI20;
final r_RISCV_TPREL_LO12_I : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_tprel_lo12_i.r_RISCV_TPREL_LO12_I;
final r_RISCV_TPREL_LO12_S : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_tprel_lo12_s.r_RISCV_TPREL_LO12_S;
final r_RISCV_TPREL_ADD : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_tprel_add.r_RISCV_TPREL_ADD;
final r_RISCV_ADD8 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_add8.r_RISCV_ADD8;
final r_RISCV_ADD16 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_add16.r_RISCV_ADD16;
final r_RISCV_ADD32 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_add32.r_RISCV_ADD32;
final r_RISCV_ADD64 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_add64.r_RISCV_ADD64;
final r_RISCV_SUB8 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_sub8.r_RISCV_SUB8;
final r_RISCV_SUB16 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_sub16.r_RISCV_SUB16;
final r_RISCV_SUB32 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_sub32.r_RISCV_SUB32;
final r_RISCV_SUB64 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_sub64.r_RISCV_SUB64;
final r_RISCV_GNU_VTINHERIT : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_gnu_vtinherit.r_RISCV_GNU_VTINHERIT;
final r_RISCV_GNU_VTENTRY : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_gnu_vtentry.r_RISCV_GNU_VTENTRY;
final r_RISCV_ALIGN : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_align.r_RISCV_ALIGN;
final r_RISCV_RVC_BRANCH : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_rvc_branch.r_RISCV_RVC_BRANCH;
final r_RISCV_RVC_JUMP : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_rvc_jump.r_RISCV_RVC_JUMP;
final r_RISCV_RVC_LUI : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_rvc_lui.r_RISCV_RVC_LUI;
final r_RISCV_GPREL_I : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_gprel_i.r_RISCV_GPREL_I;
final r_RISCV_GPREL_S : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_gprel_s.r_RISCV_GPREL_S;
final r_RISCV_TPREL_I : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_tprel_i.r_RISCV_TPREL_I;
final r_RISCV_TPREL_S : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_tprel_s.r_RISCV_TPREL_S;
final r_RISCV_RELAX : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_relax.r_RISCV_RELAX;
final r_RISCV_SUB6 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_sub6.r_RISCV_SUB6;
final r_RISCV_SET6 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_set6.r_RISCV_SET6;
final r_RISCV_SET8 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_set8.r_RISCV_SET8;
final r_RISCV_SET16 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_set16.r_RISCV_SET16;
final r_RISCV_SET32 : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_set32.r_RISCV_SET32;
final r_RISCV_32_PCREL : R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv_32_pcrel.r_RISCV_32_PCREL;
final r_390_NONE : R_390 = stdgo._internal.debug.elf.Elf_r_390_none.r_390_NONE;
final r_390_8 : R_390 = stdgo._internal.debug.elf.Elf_r_390_8.r_390_8;
final r_390_12 : R_390 = stdgo._internal.debug.elf.Elf_r_390_12.r_390_12;
final r_390_16 : R_390 = stdgo._internal.debug.elf.Elf_r_390_16.r_390_16;
final r_390_32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_32.r_390_32;
final r_390_PC32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_pc32.r_390_PC32;
final r_390_GOT12 : R_390 = stdgo._internal.debug.elf.Elf_r_390_got12.r_390_GOT12;
final r_390_GOT32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_got32.r_390_GOT32;
final r_390_PLT32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_plt32.r_390_PLT32;
final r_390_COPY : R_390 = stdgo._internal.debug.elf.Elf_r_390_copy.r_390_COPY;
final r_390_GLOB_DAT : R_390 = stdgo._internal.debug.elf.Elf_r_390_glob_dat.r_390_GLOB_DAT;
final r_390_JMP_SLOT : R_390 = stdgo._internal.debug.elf.Elf_r_390_jmp_slot.r_390_JMP_SLOT;
final r_390_RELATIVE : R_390 = stdgo._internal.debug.elf.Elf_r_390_relative.r_390_RELATIVE;
final r_390_GOTOFF : R_390 = stdgo._internal.debug.elf.Elf_r_390_gotoff.r_390_GOTOFF;
final r_390_GOTPC : R_390 = stdgo._internal.debug.elf.Elf_r_390_gotpc.r_390_GOTPC;
final r_390_GOT16 : R_390 = stdgo._internal.debug.elf.Elf_r_390_got16.r_390_GOT16;
final r_390_PC16 : R_390 = stdgo._internal.debug.elf.Elf_r_390_pc16.r_390_PC16;
final r_390_PC16DBL : R_390 = stdgo._internal.debug.elf.Elf_r_390_pc16dbl.r_390_PC16DBL;
final r_390_PLT16DBL : R_390 = stdgo._internal.debug.elf.Elf_r_390_plt16dbl.r_390_PLT16DBL;
final r_390_PC32DBL : R_390 = stdgo._internal.debug.elf.Elf_r_390_pc32dbl.r_390_PC32DBL;
final r_390_PLT32DBL : R_390 = stdgo._internal.debug.elf.Elf_r_390_plt32dbl.r_390_PLT32DBL;
final r_390_GOTPCDBL : R_390 = stdgo._internal.debug.elf.Elf_r_390_gotpcdbl.r_390_GOTPCDBL;
final r_390_64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_64.r_390_64;
final r_390_PC64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_pc64.r_390_PC64;
final r_390_GOT64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_got64.r_390_GOT64;
final r_390_PLT64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_plt64.r_390_PLT64;
final r_390_GOTENT : R_390 = stdgo._internal.debug.elf.Elf_r_390_gotent.r_390_GOTENT;
final r_390_GOTOFF16 : R_390 = stdgo._internal.debug.elf.Elf_r_390_gotoff16.r_390_GOTOFF16;
final r_390_GOTOFF64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_gotoff64.r_390_GOTOFF64;
final r_390_GOTPLT12 : R_390 = stdgo._internal.debug.elf.Elf_r_390_gotplt12.r_390_GOTPLT12;
final r_390_GOTPLT16 : R_390 = stdgo._internal.debug.elf.Elf_r_390_gotplt16.r_390_GOTPLT16;
final r_390_GOTPLT32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_gotplt32.r_390_GOTPLT32;
final r_390_GOTPLT64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_gotplt64.r_390_GOTPLT64;
final r_390_GOTPLTENT : R_390 = stdgo._internal.debug.elf.Elf_r_390_gotpltent.r_390_GOTPLTENT;
final r_390_GOTPLTOFF16 : R_390 = stdgo._internal.debug.elf.Elf_r_390_gotpltoff16.r_390_GOTPLTOFF16;
final r_390_GOTPLTOFF32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_gotpltoff32.r_390_GOTPLTOFF32;
final r_390_GOTPLTOFF64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_gotpltoff64.r_390_GOTPLTOFF64;
final r_390_TLS_LOAD : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_load.r_390_TLS_LOAD;
final r_390_TLS_GDCALL : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_gdcall.r_390_TLS_GDCALL;
final r_390_TLS_LDCALL : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_ldcall.r_390_TLS_LDCALL;
final r_390_TLS_GD32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_gd32.r_390_TLS_GD32;
final r_390_TLS_GD64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_gd64.r_390_TLS_GD64;
final r_390_TLS_GOTIE12 : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_gotie12.r_390_TLS_GOTIE12;
final r_390_TLS_GOTIE32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_gotie32.r_390_TLS_GOTIE32;
final r_390_TLS_GOTIE64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_gotie64.r_390_TLS_GOTIE64;
final r_390_TLS_LDM32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_ldm32.r_390_TLS_LDM32;
final r_390_TLS_LDM64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_ldm64.r_390_TLS_LDM64;
final r_390_TLS_IE32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_ie32.r_390_TLS_IE32;
final r_390_TLS_IE64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_ie64.r_390_TLS_IE64;
final r_390_TLS_IEENT : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_ieent.r_390_TLS_IEENT;
final r_390_TLS_LE32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_le32.r_390_TLS_LE32;
final r_390_TLS_LE64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_le64.r_390_TLS_LE64;
final r_390_TLS_LDO32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_ldo32.r_390_TLS_LDO32;
final r_390_TLS_LDO64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_ldo64.r_390_TLS_LDO64;
final r_390_TLS_DTPMOD : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_dtpmod.r_390_TLS_DTPMOD;
final r_390_TLS_DTPOFF : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_dtpoff.r_390_TLS_DTPOFF;
final r_390_TLS_TPOFF : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_tpoff.r_390_TLS_TPOFF;
final r_390_20 : R_390 = stdgo._internal.debug.elf.Elf_r_390_20.r_390_20;
final r_390_GOT20 : R_390 = stdgo._internal.debug.elf.Elf_r_390_got20.r_390_GOT20;
final r_390_GOTPLT20 : R_390 = stdgo._internal.debug.elf.Elf_r_390_gotplt20.r_390_GOTPLT20;
final r_390_TLS_GOTIE20 : R_390 = stdgo._internal.debug.elf.Elf_r_390_tls_gotie20.r_390_TLS_GOTIE20;
final r_SPARC_NONE : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_none.r_SPARC_NONE;
final r_SPARC_8 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_8.r_SPARC_8;
final r_SPARC_16 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_16.r_SPARC_16;
final r_SPARC_32 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_32.r_SPARC_32;
final r_SPARC_DISP8 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_disp8.r_SPARC_DISP8;
final r_SPARC_DISP16 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_disp16.r_SPARC_DISP16;
final r_SPARC_DISP32 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_disp32.r_SPARC_DISP32;
final r_SPARC_WDISP30 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_wdisp30.r_SPARC_WDISP30;
final r_SPARC_WDISP22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_wdisp22.r_SPARC_WDISP22;
final r_SPARC_HI22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_hi22.r_SPARC_HI22;
final r_SPARC_22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_22.r_SPARC_22;
final r_SPARC_13 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_13.r_SPARC_13;
final r_SPARC_LO10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_lo10.r_SPARC_LO10;
final r_SPARC_GOT10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_got10.r_SPARC_GOT10;
final r_SPARC_GOT13 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_got13.r_SPARC_GOT13;
final r_SPARC_GOT22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_got22.r_SPARC_GOT22;
final r_SPARC_PC10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_pc10.r_SPARC_PC10;
final r_SPARC_PC22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_pc22.r_SPARC_PC22;
final r_SPARC_WPLT30 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_wplt30.r_SPARC_WPLT30;
final r_SPARC_COPY : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_copy.r_SPARC_COPY;
final r_SPARC_GLOB_DAT : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_glob_dat.r_SPARC_GLOB_DAT;
final r_SPARC_JMP_SLOT : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_jmp_slot.r_SPARC_JMP_SLOT;
final r_SPARC_RELATIVE : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_relative.r_SPARC_RELATIVE;
final r_SPARC_UA32 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_ua32.r_SPARC_UA32;
final r_SPARC_PLT32 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_plt32.r_SPARC_PLT32;
final r_SPARC_HIPLT22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_hiplt22.r_SPARC_HIPLT22;
final r_SPARC_LOPLT10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_loplt10.r_SPARC_LOPLT10;
final r_SPARC_PCPLT32 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_pcplt32.r_SPARC_PCPLT32;
final r_SPARC_PCPLT22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_pcplt22.r_SPARC_PCPLT22;
final r_SPARC_PCPLT10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_pcplt10.r_SPARC_PCPLT10;
final r_SPARC_10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_10.r_SPARC_10;
final r_SPARC_11 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_11.r_SPARC_11;
final r_SPARC_64 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_64.r_SPARC_64;
final r_SPARC_OLO10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_olo10.r_SPARC_OLO10;
final r_SPARC_HH22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_hh22.r_SPARC_HH22;
final r_SPARC_HM10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_hm10.r_SPARC_HM10;
final r_SPARC_LM22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_lm22.r_SPARC_LM22;
final r_SPARC_PC_HH22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_pc_hh22.r_SPARC_PC_HH22;
final r_SPARC_PC_HM10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_pc_hm10.r_SPARC_PC_HM10;
final r_SPARC_PC_LM22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_pc_lm22.r_SPARC_PC_LM22;
final r_SPARC_WDISP16 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_wdisp16.r_SPARC_WDISP16;
final r_SPARC_WDISP19 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_wdisp19.r_SPARC_WDISP19;
final r_SPARC_GLOB_JMP : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_glob_jmp.r_SPARC_GLOB_JMP;
final r_SPARC_7 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_7.r_SPARC_7;
final r_SPARC_5 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_5.r_SPARC_5;
final r_SPARC_6 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_6.r_SPARC_6;
final r_SPARC_DISP64 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_disp64.r_SPARC_DISP64;
final r_SPARC_PLT64 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_plt64.r_SPARC_PLT64;
final r_SPARC_HIX22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_hix22.r_SPARC_HIX22;
final r_SPARC_LOX10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_lox10.r_SPARC_LOX10;
final r_SPARC_H44 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_h44.r_SPARC_H44;
final r_SPARC_M44 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_m44.r_SPARC_M44;
final r_SPARC_L44 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_l44.r_SPARC_L44;
final r_SPARC_REGISTER : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_register.r_SPARC_REGISTER;
final r_SPARC_UA64 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_ua64.r_SPARC_UA64;
final r_SPARC_UA16 : R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc_ua16.r_SPARC_UA16;
final aRM_MAGIC_TRAMP_NUMBER : haxe.UInt64 = stdgo._internal.debug.elf.Elf_arm_magic_tramp_number.aRM_MAGIC_TRAMP_NUMBER;
final sym32Size : haxe.UInt64 = stdgo._internal.debug.elf.Elf_sym32size.sym32Size;
final sym64Size : haxe.UInt64 = stdgo._internal.debug.elf.Elf_sym64size.sym64Size;
var errNoSymbols(get, set) : stdgo.Error;
private function get_errNoSymbols():stdgo.Error return stdgo._internal.debug.elf.Elf_errnosymbols.errNoSymbols;
private function set_errNoSymbols(v:stdgo.Error):stdgo.Error {
        stdgo._internal.debug.elf.Elf_errnosymbols.errNoSymbols = (v : stdgo.Error);
        return v;
    }
@:structInit @:using(stdgo.debug.elf.Elf.Header32_static_extension) abstract Header32(stdgo._internal.debug.elf.Elf_header32.Header32) from stdgo._internal.debug.elf.Elf_header32.Header32 to stdgo._internal.debug.elf.Elf_header32.Header32 {
    public var ident(get, set) : haxe.ds.Vector<std.UInt>;
    function get_ident():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.ident) i]);
    function set_ident(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.ident = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt16);
        return v;
    }
    public var machine(get, set) : std.UInt;
    function get_machine():std.UInt return this.machine;
    function set_machine(v:std.UInt):std.UInt {
        this.machine = (v : stdgo.GoUInt16);
        return v;
    }
    public var version(get, set) : std.UInt;
    function get_version():std.UInt return this.version;
    function set_version(v:std.UInt):std.UInt {
        this.version = (v : stdgo.GoUInt32);
        return v;
    }
    public var entry(get, set) : std.UInt;
    function get_entry():std.UInt return this.entry;
    function set_entry(v:std.UInt):std.UInt {
        this.entry = (v : stdgo.GoUInt32);
        return v;
    }
    public var phoff(get, set) : std.UInt;
    function get_phoff():std.UInt return this.phoff;
    function set_phoff(v:std.UInt):std.UInt {
        this.phoff = (v : stdgo.GoUInt32);
        return v;
    }
    public var shoff(get, set) : std.UInt;
    function get_shoff():std.UInt return this.shoff;
    function set_shoff(v:std.UInt):std.UInt {
        this.shoff = (v : stdgo.GoUInt32);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public var ehsize(get, set) : std.UInt;
    function get_ehsize():std.UInt return this.ehsize;
    function set_ehsize(v:std.UInt):std.UInt {
        this.ehsize = (v : stdgo.GoUInt16);
        return v;
    }
    public var phentsize(get, set) : std.UInt;
    function get_phentsize():std.UInt return this.phentsize;
    function set_phentsize(v:std.UInt):std.UInt {
        this.phentsize = (v : stdgo.GoUInt16);
        return v;
    }
    public var phnum(get, set) : std.UInt;
    function get_phnum():std.UInt return this.phnum;
    function set_phnum(v:std.UInt):std.UInt {
        this.phnum = (v : stdgo.GoUInt16);
        return v;
    }
    public var shentsize(get, set) : std.UInt;
    function get_shentsize():std.UInt return this.shentsize;
    function set_shentsize(v:std.UInt):std.UInt {
        this.shentsize = (v : stdgo.GoUInt16);
        return v;
    }
    public var shnum(get, set) : std.UInt;
    function get_shnum():std.UInt return this.shnum;
    function set_shnum(v:std.UInt):std.UInt {
        this.shnum = (v : stdgo.GoUInt16);
        return v;
    }
    public var shstrndx(get, set) : std.UInt;
    function get_shstrndx():std.UInt return this.shstrndx;
    function set_shstrndx(v:std.UInt):std.UInt {
        this.shstrndx = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?ident:haxe.ds.Vector<std.UInt>, ?type:std.UInt, ?machine:std.UInt, ?version:std.UInt, ?entry:std.UInt, ?phoff:std.UInt, ?shoff:std.UInt, ?flags:std.UInt, ?ehsize:std.UInt, ?phentsize:std.UInt, ?phnum:std.UInt, ?shentsize:std.UInt, ?shnum:std.UInt, ?shstrndx:std.UInt) this = new stdgo._internal.debug.elf.Elf_header32.Header32(
([for (i in ident) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(type : stdgo.GoUInt16),
(machine : stdgo.GoUInt16),
(version : stdgo.GoUInt32),
(entry : stdgo.GoUInt32),
(phoff : stdgo.GoUInt32),
(shoff : stdgo.GoUInt32),
(flags : stdgo.GoUInt32),
(ehsize : stdgo.GoUInt16),
(phentsize : stdgo.GoUInt16),
(phnum : stdgo.GoUInt16),
(shentsize : stdgo.GoUInt16),
(shnum : stdgo.GoUInt16),
(shstrndx : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Section32_static_extension) abstract Section32(stdgo._internal.debug.elf.Elf_section32.Section32) from stdgo._internal.debug.elf.Elf_section32.Section32 to stdgo._internal.debug.elf.Elf_section32.Section32 {
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = (v : stdgo.GoUInt32);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt32);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public var addr(get, set) : std.UInt;
    function get_addr():std.UInt return this.addr;
    function set_addr(v:std.UInt):std.UInt {
        this.addr = (v : stdgo.GoUInt32);
        return v;
    }
    public var off(get, set) : std.UInt;
    function get_off():std.UInt return this.off;
    function set_off(v:std.UInt):std.UInt {
        this.off = (v : stdgo.GoUInt32);
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = (v : stdgo.GoUInt32);
        return v;
    }
    public var link(get, set) : std.UInt;
    function get_link():std.UInt return this.link;
    function set_link(v:std.UInt):std.UInt {
        this.link = (v : stdgo.GoUInt32);
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = (v : stdgo.GoUInt32);
        return v;
    }
    public var addralign(get, set) : std.UInt;
    function get_addralign():std.UInt return this.addralign;
    function set_addralign(v:std.UInt):std.UInt {
        this.addralign = (v : stdgo.GoUInt32);
        return v;
    }
    public var entsize(get, set) : std.UInt;
    function get_entsize():std.UInt return this.entsize;
    function set_entsize(v:std.UInt):std.UInt {
        this.entsize = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?name:std.UInt, ?type:std.UInt, ?flags:std.UInt, ?addr:std.UInt, ?off:std.UInt, ?size:std.UInt, ?link:std.UInt, ?info:std.UInt, ?addralign:std.UInt, ?entsize:std.UInt) this = new stdgo._internal.debug.elf.Elf_section32.Section32((name : stdgo.GoUInt32), (type : stdgo.GoUInt32), (flags : stdgo.GoUInt32), (addr : stdgo.GoUInt32), (off : stdgo.GoUInt32), (size : stdgo.GoUInt32), (link : stdgo.GoUInt32), (info : stdgo.GoUInt32), (addralign : stdgo.GoUInt32), (entsize : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Prog32_static_extension) abstract Prog32(stdgo._internal.debug.elf.Elf_prog32.Prog32) from stdgo._internal.debug.elf.Elf_prog32.Prog32 to stdgo._internal.debug.elf.Elf_prog32.Prog32 {
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt32);
        return v;
    }
    public var off(get, set) : std.UInt;
    function get_off():std.UInt return this.off;
    function set_off(v:std.UInt):std.UInt {
        this.off = (v : stdgo.GoUInt32);
        return v;
    }
    public var vaddr(get, set) : std.UInt;
    function get_vaddr():std.UInt return this.vaddr;
    function set_vaddr(v:std.UInt):std.UInt {
        this.vaddr = (v : stdgo.GoUInt32);
        return v;
    }
    public var paddr(get, set) : std.UInt;
    function get_paddr():std.UInt return this.paddr;
    function set_paddr(v:std.UInt):std.UInt {
        this.paddr = (v : stdgo.GoUInt32);
        return v;
    }
    public var filesz(get, set) : std.UInt;
    function get_filesz():std.UInt return this.filesz;
    function set_filesz(v:std.UInt):std.UInt {
        this.filesz = (v : stdgo.GoUInt32);
        return v;
    }
    public var memsz(get, set) : std.UInt;
    function get_memsz():std.UInt return this.memsz;
    function set_memsz(v:std.UInt):std.UInt {
        this.memsz = (v : stdgo.GoUInt32);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public var align(get, set) : std.UInt;
    function get_align():std.UInt return this.align;
    function set_align(v:std.UInt):std.UInt {
        this.align = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?type:std.UInt, ?off:std.UInt, ?vaddr:std.UInt, ?paddr:std.UInt, ?filesz:std.UInt, ?memsz:std.UInt, ?flags:std.UInt, ?align:std.UInt) this = new stdgo._internal.debug.elf.Elf_prog32.Prog32((type : stdgo.GoUInt32), (off : stdgo.GoUInt32), (vaddr : stdgo.GoUInt32), (paddr : stdgo.GoUInt32), (filesz : stdgo.GoUInt32), (memsz : stdgo.GoUInt32), (flags : stdgo.GoUInt32), (align : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Dyn32_static_extension) abstract Dyn32(stdgo._internal.debug.elf.Elf_dyn32.Dyn32) from stdgo._internal.debug.elf.Elf_dyn32.Dyn32 to stdgo._internal.debug.elf.Elf_dyn32.Dyn32 {
    public var tag(get, set) : StdTypes.Int;
    function get_tag():StdTypes.Int return this.tag;
    function set_tag(v:StdTypes.Int):StdTypes.Int {
        this.tag = (v : stdgo.GoInt32);
        return v;
    }
    public var val(get, set) : std.UInt;
    function get_val():std.UInt return this.val;
    function set_val(v:std.UInt):std.UInt {
        this.val = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?tag:StdTypes.Int, ?val:std.UInt) this = new stdgo._internal.debug.elf.Elf_dyn32.Dyn32((tag : stdgo.GoInt32), (val : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Chdr32_static_extension) abstract Chdr32(stdgo._internal.debug.elf.Elf_chdr32.Chdr32) from stdgo._internal.debug.elf.Elf_chdr32.Chdr32 to stdgo._internal.debug.elf.Elf_chdr32.Chdr32 {
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt32);
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = (v : stdgo.GoUInt32);
        return v;
    }
    public var addralign(get, set) : std.UInt;
    function get_addralign():std.UInt return this.addralign;
    function set_addralign(v:std.UInt):std.UInt {
        this.addralign = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?type:std.UInt, ?size:std.UInt, ?addralign:std.UInt) this = new stdgo._internal.debug.elf.Elf_chdr32.Chdr32((type : stdgo.GoUInt32), (size : stdgo.GoUInt32), (addralign : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Rel32_static_extension) abstract Rel32(stdgo._internal.debug.elf.Elf_rel32.Rel32) from stdgo._internal.debug.elf.Elf_rel32.Rel32 to stdgo._internal.debug.elf.Elf_rel32.Rel32 {
    public var off(get, set) : std.UInt;
    function get_off():std.UInt return this.off;
    function set_off(v:std.UInt):std.UInt {
        this.off = (v : stdgo.GoUInt32);
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?off:std.UInt, ?info:std.UInt) this = new stdgo._internal.debug.elf.Elf_rel32.Rel32((off : stdgo.GoUInt32), (info : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Rela32_static_extension) abstract Rela32(stdgo._internal.debug.elf.Elf_rela32.Rela32) from stdgo._internal.debug.elf.Elf_rela32.Rela32 to stdgo._internal.debug.elf.Elf_rela32.Rela32 {
    public var off(get, set) : std.UInt;
    function get_off():std.UInt return this.off;
    function set_off(v:std.UInt):std.UInt {
        this.off = (v : stdgo.GoUInt32);
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = (v : stdgo.GoUInt32);
        return v;
    }
    public var addend(get, set) : StdTypes.Int;
    function get_addend():StdTypes.Int return this.addend;
    function set_addend(v:StdTypes.Int):StdTypes.Int {
        this.addend = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?off:std.UInt, ?info:std.UInt, ?addend:StdTypes.Int) this = new stdgo._internal.debug.elf.Elf_rela32.Rela32((off : stdgo.GoUInt32), (info : stdgo.GoUInt32), (addend : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Sym32_static_extension) abstract Sym32(stdgo._internal.debug.elf.Elf_sym32.Sym32) from stdgo._internal.debug.elf.Elf_sym32.Sym32 to stdgo._internal.debug.elf.Elf_sym32.Sym32 {
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = (v : stdgo.GoUInt32);
        return v;
    }
    public var value(get, set) : std.UInt;
    function get_value():std.UInt return this.value;
    function set_value(v:std.UInt):std.UInt {
        this.value = (v : stdgo.GoUInt32);
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = (v : stdgo.GoUInt32);
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = (v : stdgo.GoUInt8);
        return v;
    }
    public var other(get, set) : std.UInt;
    function get_other():std.UInt return this.other;
    function set_other(v:std.UInt):std.UInt {
        this.other = (v : stdgo.GoUInt8);
        return v;
    }
    public var shndx(get, set) : std.UInt;
    function get_shndx():std.UInt return this.shndx;
    function set_shndx(v:std.UInt):std.UInt {
        this.shndx = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?name:std.UInt, ?value:std.UInt, ?size:std.UInt, ?info:std.UInt, ?other:std.UInt, ?shndx:std.UInt) this = new stdgo._internal.debug.elf.Elf_sym32.Sym32((name : stdgo.GoUInt32), (value : stdgo.GoUInt32), (size : stdgo.GoUInt32), (info : stdgo.GoUInt8), (other : stdgo.GoUInt8), (shndx : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Header64_static_extension) abstract Header64(stdgo._internal.debug.elf.Elf_header64.Header64) from stdgo._internal.debug.elf.Elf_header64.Header64 to stdgo._internal.debug.elf.Elf_header64.Header64 {
    public var ident(get, set) : haxe.ds.Vector<std.UInt>;
    function get_ident():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.ident) i]);
    function set_ident(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.ident = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt16);
        return v;
    }
    public var machine(get, set) : std.UInt;
    function get_machine():std.UInt return this.machine;
    function set_machine(v:std.UInt):std.UInt {
        this.machine = (v : stdgo.GoUInt16);
        return v;
    }
    public var version(get, set) : std.UInt;
    function get_version():std.UInt return this.version;
    function set_version(v:std.UInt):std.UInt {
        this.version = (v : stdgo.GoUInt32);
        return v;
    }
    public var entry(get, set) : haxe.UInt64;
    function get_entry():haxe.UInt64 return this.entry;
    function set_entry(v:haxe.UInt64):haxe.UInt64 {
        this.entry = (v : stdgo.GoUInt64);
        return v;
    }
    public var phoff(get, set) : haxe.UInt64;
    function get_phoff():haxe.UInt64 return this.phoff;
    function set_phoff(v:haxe.UInt64):haxe.UInt64 {
        this.phoff = (v : stdgo.GoUInt64);
        return v;
    }
    public var shoff(get, set) : haxe.UInt64;
    function get_shoff():haxe.UInt64 return this.shoff;
    function set_shoff(v:haxe.UInt64):haxe.UInt64 {
        this.shoff = (v : stdgo.GoUInt64);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public var ehsize(get, set) : std.UInt;
    function get_ehsize():std.UInt return this.ehsize;
    function set_ehsize(v:std.UInt):std.UInt {
        this.ehsize = (v : stdgo.GoUInt16);
        return v;
    }
    public var phentsize(get, set) : std.UInt;
    function get_phentsize():std.UInt return this.phentsize;
    function set_phentsize(v:std.UInt):std.UInt {
        this.phentsize = (v : stdgo.GoUInt16);
        return v;
    }
    public var phnum(get, set) : std.UInt;
    function get_phnum():std.UInt return this.phnum;
    function set_phnum(v:std.UInt):std.UInt {
        this.phnum = (v : stdgo.GoUInt16);
        return v;
    }
    public var shentsize(get, set) : std.UInt;
    function get_shentsize():std.UInt return this.shentsize;
    function set_shentsize(v:std.UInt):std.UInt {
        this.shentsize = (v : stdgo.GoUInt16);
        return v;
    }
    public var shnum(get, set) : std.UInt;
    function get_shnum():std.UInt return this.shnum;
    function set_shnum(v:std.UInt):std.UInt {
        this.shnum = (v : stdgo.GoUInt16);
        return v;
    }
    public var shstrndx(get, set) : std.UInt;
    function get_shstrndx():std.UInt return this.shstrndx;
    function set_shstrndx(v:std.UInt):std.UInt {
        this.shstrndx = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?ident:haxe.ds.Vector<std.UInt>, ?type:std.UInt, ?machine:std.UInt, ?version:std.UInt, ?entry:haxe.UInt64, ?phoff:haxe.UInt64, ?shoff:haxe.UInt64, ?flags:std.UInt, ?ehsize:std.UInt, ?phentsize:std.UInt, ?phnum:std.UInt, ?shentsize:std.UInt, ?shnum:std.UInt, ?shstrndx:std.UInt) this = new stdgo._internal.debug.elf.Elf_header64.Header64(
([for (i in ident) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(type : stdgo.GoUInt16),
(machine : stdgo.GoUInt16),
(version : stdgo.GoUInt32),
(entry : stdgo.GoUInt64),
(phoff : stdgo.GoUInt64),
(shoff : stdgo.GoUInt64),
(flags : stdgo.GoUInt32),
(ehsize : stdgo.GoUInt16),
(phentsize : stdgo.GoUInt16),
(phnum : stdgo.GoUInt16),
(shentsize : stdgo.GoUInt16),
(shnum : stdgo.GoUInt16),
(shstrndx : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Section64_static_extension) abstract Section64(stdgo._internal.debug.elf.Elf_section64.Section64) from stdgo._internal.debug.elf.Elf_section64.Section64 to stdgo._internal.debug.elf.Elf_section64.Section64 {
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = (v : stdgo.GoUInt32);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt32);
        return v;
    }
    public var flags(get, set) : haxe.UInt64;
    function get_flags():haxe.UInt64 return this.flags;
    function set_flags(v:haxe.UInt64):haxe.UInt64 {
        this.flags = (v : stdgo.GoUInt64);
        return v;
    }
    public var addr(get, set) : haxe.UInt64;
    function get_addr():haxe.UInt64 return this.addr;
    function set_addr(v:haxe.UInt64):haxe.UInt64 {
        this.addr = (v : stdgo.GoUInt64);
        return v;
    }
    public var off(get, set) : haxe.UInt64;
    function get_off():haxe.UInt64 return this.off;
    function set_off(v:haxe.UInt64):haxe.UInt64 {
        this.off = (v : stdgo.GoUInt64);
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = (v : stdgo.GoUInt64);
        return v;
    }
    public var link(get, set) : std.UInt;
    function get_link():std.UInt return this.link;
    function set_link(v:std.UInt):std.UInt {
        this.link = (v : stdgo.GoUInt32);
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = (v : stdgo.GoUInt32);
        return v;
    }
    public var addralign(get, set) : haxe.UInt64;
    function get_addralign():haxe.UInt64 return this.addralign;
    function set_addralign(v:haxe.UInt64):haxe.UInt64 {
        this.addralign = (v : stdgo.GoUInt64);
        return v;
    }
    public var entsize(get, set) : haxe.UInt64;
    function get_entsize():haxe.UInt64 return this.entsize;
    function set_entsize(v:haxe.UInt64):haxe.UInt64 {
        this.entsize = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?name:std.UInt, ?type:std.UInt, ?flags:haxe.UInt64, ?addr:haxe.UInt64, ?off:haxe.UInt64, ?size:haxe.UInt64, ?link:std.UInt, ?info:std.UInt, ?addralign:haxe.UInt64, ?entsize:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_section64.Section64((name : stdgo.GoUInt32), (type : stdgo.GoUInt32), (flags : stdgo.GoUInt64), (addr : stdgo.GoUInt64), (off : stdgo.GoUInt64), (size : stdgo.GoUInt64), (link : stdgo.GoUInt32), (info : stdgo.GoUInt32), (addralign : stdgo.GoUInt64), (entsize : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Prog64_static_extension) abstract Prog64(stdgo._internal.debug.elf.Elf_prog64.Prog64) from stdgo._internal.debug.elf.Elf_prog64.Prog64 to stdgo._internal.debug.elf.Elf_prog64.Prog64 {
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt32);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public var off(get, set) : haxe.UInt64;
    function get_off():haxe.UInt64 return this.off;
    function set_off(v:haxe.UInt64):haxe.UInt64 {
        this.off = (v : stdgo.GoUInt64);
        return v;
    }
    public var vaddr(get, set) : haxe.UInt64;
    function get_vaddr():haxe.UInt64 return this.vaddr;
    function set_vaddr(v:haxe.UInt64):haxe.UInt64 {
        this.vaddr = (v : stdgo.GoUInt64);
        return v;
    }
    public var paddr(get, set) : haxe.UInt64;
    function get_paddr():haxe.UInt64 return this.paddr;
    function set_paddr(v:haxe.UInt64):haxe.UInt64 {
        this.paddr = (v : stdgo.GoUInt64);
        return v;
    }
    public var filesz(get, set) : haxe.UInt64;
    function get_filesz():haxe.UInt64 return this.filesz;
    function set_filesz(v:haxe.UInt64):haxe.UInt64 {
        this.filesz = (v : stdgo.GoUInt64);
        return v;
    }
    public var memsz(get, set) : haxe.UInt64;
    function get_memsz():haxe.UInt64 return this.memsz;
    function set_memsz(v:haxe.UInt64):haxe.UInt64 {
        this.memsz = (v : stdgo.GoUInt64);
        return v;
    }
    public var align(get, set) : haxe.UInt64;
    function get_align():haxe.UInt64 return this.align;
    function set_align(v:haxe.UInt64):haxe.UInt64 {
        this.align = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?type:std.UInt, ?flags:std.UInt, ?off:haxe.UInt64, ?vaddr:haxe.UInt64, ?paddr:haxe.UInt64, ?filesz:haxe.UInt64, ?memsz:haxe.UInt64, ?align:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_prog64.Prog64((type : stdgo.GoUInt32), (flags : stdgo.GoUInt32), (off : stdgo.GoUInt64), (vaddr : stdgo.GoUInt64), (paddr : stdgo.GoUInt64), (filesz : stdgo.GoUInt64), (memsz : stdgo.GoUInt64), (align : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Dyn64_static_extension) abstract Dyn64(stdgo._internal.debug.elf.Elf_dyn64.Dyn64) from stdgo._internal.debug.elf.Elf_dyn64.Dyn64 to stdgo._internal.debug.elf.Elf_dyn64.Dyn64 {
    public var tag(get, set) : haxe.Int64;
    function get_tag():haxe.Int64 return this.tag;
    function set_tag(v:haxe.Int64):haxe.Int64 {
        this.tag = (v : stdgo.GoInt64);
        return v;
    }
    public var val(get, set) : haxe.UInt64;
    function get_val():haxe.UInt64 return this.val;
    function set_val(v:haxe.UInt64):haxe.UInt64 {
        this.val = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?tag:haxe.Int64, ?val:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_dyn64.Dyn64((tag : stdgo.GoInt64), (val : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Chdr64_static_extension) abstract Chdr64(stdgo._internal.debug.elf.Elf_chdr64.Chdr64) from stdgo._internal.debug.elf.Elf_chdr64.Chdr64 to stdgo._internal.debug.elf.Elf_chdr64.Chdr64 {
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt32);
        return v;
    }
    public var __1(get, set) : std.UInt;
    function get___1():std.UInt return this.__1;
    function set___1(v:std.UInt):std.UInt {
        this.__1 = (v : stdgo.GoUInt32);
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = (v : stdgo.GoUInt64);
        return v;
    }
    public var addralign(get, set) : haxe.UInt64;
    function get_addralign():haxe.UInt64 return this.addralign;
    function set_addralign(v:haxe.UInt64):haxe.UInt64 {
        this.addralign = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?type:std.UInt, ?__1:std.UInt, ?size:haxe.UInt64, ?addralign:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_chdr64.Chdr64((type : stdgo.GoUInt32), (__1 : stdgo.GoUInt32), (size : stdgo.GoUInt64), (addralign : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Rel64_static_extension) abstract Rel64(stdgo._internal.debug.elf.Elf_rel64.Rel64) from stdgo._internal.debug.elf.Elf_rel64.Rel64 to stdgo._internal.debug.elf.Elf_rel64.Rel64 {
    public var off(get, set) : haxe.UInt64;
    function get_off():haxe.UInt64 return this.off;
    function set_off(v:haxe.UInt64):haxe.UInt64 {
        this.off = (v : stdgo.GoUInt64);
        return v;
    }
    public var info(get, set) : haxe.UInt64;
    function get_info():haxe.UInt64 return this.info;
    function set_info(v:haxe.UInt64):haxe.UInt64 {
        this.info = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?off:haxe.UInt64, ?info:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_rel64.Rel64((off : stdgo.GoUInt64), (info : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Rela64_static_extension) abstract Rela64(stdgo._internal.debug.elf.Elf_rela64.Rela64) from stdgo._internal.debug.elf.Elf_rela64.Rela64 to stdgo._internal.debug.elf.Elf_rela64.Rela64 {
    public var off(get, set) : haxe.UInt64;
    function get_off():haxe.UInt64 return this.off;
    function set_off(v:haxe.UInt64):haxe.UInt64 {
        this.off = (v : stdgo.GoUInt64);
        return v;
    }
    public var info(get, set) : haxe.UInt64;
    function get_info():haxe.UInt64 return this.info;
    function set_info(v:haxe.UInt64):haxe.UInt64 {
        this.info = (v : stdgo.GoUInt64);
        return v;
    }
    public var addend(get, set) : haxe.Int64;
    function get_addend():haxe.Int64 return this.addend;
    function set_addend(v:haxe.Int64):haxe.Int64 {
        this.addend = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?off:haxe.UInt64, ?info:haxe.UInt64, ?addend:haxe.Int64) this = new stdgo._internal.debug.elf.Elf_rela64.Rela64((off : stdgo.GoUInt64), (info : stdgo.GoUInt64), (addend : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Sym64_static_extension) abstract Sym64(stdgo._internal.debug.elf.Elf_sym64.Sym64) from stdgo._internal.debug.elf.Elf_sym64.Sym64 to stdgo._internal.debug.elf.Elf_sym64.Sym64 {
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = (v : stdgo.GoUInt32);
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = (v : stdgo.GoUInt8);
        return v;
    }
    public var other(get, set) : std.UInt;
    function get_other():std.UInt return this.other;
    function set_other(v:std.UInt):std.UInt {
        this.other = (v : stdgo.GoUInt8);
        return v;
    }
    public var shndx(get, set) : std.UInt;
    function get_shndx():std.UInt return this.shndx;
    function set_shndx(v:std.UInt):std.UInt {
        this.shndx = (v : stdgo.GoUInt16);
        return v;
    }
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = (v : stdgo.GoUInt64);
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?name:std.UInt, ?info:std.UInt, ?other:std.UInt, ?shndx:std.UInt, ?value:haxe.UInt64, ?size:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_sym64.Sym64((name : stdgo.GoUInt32), (info : stdgo.GoUInt8), (other : stdgo.GoUInt8), (shndx : stdgo.GoUInt16), (value : stdgo.GoUInt64), (size : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.T_intName_static_extension) @:dox(hide) abstract T_intName(stdgo._internal.debug.elf.Elf_t_intname.T_intName) from stdgo._internal.debug.elf.Elf_t_intname.T_intName to stdgo._internal.debug.elf.Elf_t_intname.T_intName {
    public var _i(get, set) : std.UInt;
    function get__i():std.UInt return this._i;
    function set__i(v:std.UInt):std.UInt {
        this._i = (v : stdgo.GoUInt32);
        return v;
    }
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = (v : stdgo.GoString);
        return v;
    }
    public function new(?_i:std.UInt, ?_s:String) this = new stdgo._internal.debug.elf.Elf_t_intname.T_intName((_i : stdgo.GoUInt32), (_s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.FileHeader_static_extension) abstract FileHeader(stdgo._internal.debug.elf.Elf_fileheader.FileHeader) from stdgo._internal.debug.elf.Elf_fileheader.FileHeader to stdgo._internal.debug.elf.Elf_fileheader.FileHeader {
    public var class_(get, set) : Class_;
    function get_class_():Class_ return this.class_;
    function set_class_(v:Class_):Class_ {
        this.class_ = v;
        return v;
    }
    public var data(get, set) : Data;
    function get_data():Data return this.data;
    function set_data(v:Data):Data {
        this.data = v;
        return v;
    }
    public var version(get, set) : Version;
    function get_version():Version return this.version;
    function set_version(v:Version):Version {
        this.version = v;
        return v;
    }
    public var oSABI(get, set) : OSABI;
    function get_oSABI():OSABI return this.oSABI;
    function set_oSABI(v:OSABI):OSABI {
        this.oSABI = v;
        return v;
    }
    public var aBIVersion(get, set) : std.UInt;
    function get_aBIVersion():std.UInt return this.aBIVersion;
    function set_aBIVersion(v:std.UInt):std.UInt {
        this.aBIVersion = (v : stdgo.GoUInt8);
        return v;
    }
    public var byteOrder(get, set) : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder;
    function get_byteOrder():stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder return this.byteOrder;
    function set_byteOrder(v:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder):stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder {
        this.byteOrder = v;
        return v;
    }
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var machine(get, set) : Machine;
    function get_machine():Machine return this.machine;
    function set_machine(v:Machine):Machine {
        this.machine = v;
        return v;
    }
    public var entry(get, set) : haxe.UInt64;
    function get_entry():haxe.UInt64 return this.entry;
    function set_entry(v:haxe.UInt64):haxe.UInt64 {
        this.entry = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?class_:Class_, ?data:Data, ?version:Version, ?oSABI:OSABI, ?aBIVersion:std.UInt, ?byteOrder:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, ?type:Type_, ?machine:Machine, ?entry:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_fileheader.FileHeader(class_, data, version, oSABI, (aBIVersion : stdgo.GoUInt8), byteOrder, type, machine, (entry : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.File_static_extension) abstract File(stdgo._internal.debug.elf.Elf_file.File) from stdgo._internal.debug.elf.Elf_file.File to stdgo._internal.debug.elf.Elf_file.File {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = v;
        return v;
    }
    public var sections(get, set) : Array<Section>;
    function get_sections():Array<Section> return [for (i in this.sections) i];
    function set_sections(v:Array<Section>):Array<Section> {
        this.sections = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>>);
        return v;
    }
    public var progs(get, set) : Array<Prog>;
    function get_progs():Array<Prog> return [for (i in this.progs) i];
    function set_progs(v:Array<Prog>):Array<Prog> {
        this.progs = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.elf.Elf_prog.Prog>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_prog.Prog>>);
        return v;
    }
    public var _closer(get, set) : stdgo._internal.io.Io_closer.Closer;
    function get__closer():stdgo._internal.io.Io_closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_closer.Closer):stdgo._internal.io.Io_closer.Closer {
        this._closer = v;
        return v;
    }
    public var _gnuNeed(get, set) : Array<T_verneed>;
    function get__gnuNeed():Array<T_verneed> return [for (i in this._gnuNeed) i];
    function set__gnuNeed(v:Array<T_verneed>):Array<T_verneed> {
        this._gnuNeed = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.elf.Elf_t_verneed.T_verneed>);
        return v;
    }
    public var _gnuVersym(get, set) : Array<std.UInt>;
    function get__gnuVersym():Array<std.UInt> return [for (i in this._gnuVersym) i];
    function set__gnuVersym(v:Array<std.UInt>):Array<std.UInt> {
        this._gnuVersym = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?fileHeader:FileHeader, ?sections:Array<Section>, ?progs:Array<Prog>, ?_closer:stdgo._internal.io.Io_closer.Closer, ?_gnuNeed:Array<T_verneed>, ?_gnuVersym:Array<std.UInt>) this = new stdgo._internal.debug.elf.Elf_file.File(fileHeader, ([for (i in sections) (i : stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>>), ([for (i in progs) (i : stdgo.Ref<stdgo._internal.debug.elf.Elf_prog.Prog>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_prog.Prog>>), _closer, ([for (i in _gnuNeed) i] : stdgo.Slice<stdgo._internal.debug.elf.Elf_t_verneed.T_verneed>), ([for (i in _gnuVersym) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.SectionHeader_static_extension) abstract SectionHeader(stdgo._internal.debug.elf.Elf_sectionheader.SectionHeader) from stdgo._internal.debug.elf.Elf_sectionheader.SectionHeader to stdgo._internal.debug.elf.Elf_sectionheader.SectionHeader {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var type(get, set) : SectionType;
    function get_type():SectionType return this.type;
    function set_type(v:SectionType):SectionType {
        this.type = v;
        return v;
    }
    public var flags(get, set) : SectionFlag;
    function get_flags():SectionFlag return this.flags;
    function set_flags(v:SectionFlag):SectionFlag {
        this.flags = v;
        return v;
    }
    public var addr(get, set) : haxe.UInt64;
    function get_addr():haxe.UInt64 return this.addr;
    function set_addr(v:haxe.UInt64):haxe.UInt64 {
        this.addr = (v : stdgo.GoUInt64);
        return v;
    }
    public var offset(get, set) : haxe.UInt64;
    function get_offset():haxe.UInt64 return this.offset;
    function set_offset(v:haxe.UInt64):haxe.UInt64 {
        this.offset = (v : stdgo.GoUInt64);
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = (v : stdgo.GoUInt64);
        return v;
    }
    public var link(get, set) : std.UInt;
    function get_link():std.UInt return this.link;
    function set_link(v:std.UInt):std.UInt {
        this.link = (v : stdgo.GoUInt32);
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = (v : stdgo.GoUInt32);
        return v;
    }
    public var addralign(get, set) : haxe.UInt64;
    function get_addralign():haxe.UInt64 return this.addralign;
    function set_addralign(v:haxe.UInt64):haxe.UInt64 {
        this.addralign = (v : stdgo.GoUInt64);
        return v;
    }
    public var entsize(get, set) : haxe.UInt64;
    function get_entsize():haxe.UInt64 return this.entsize;
    function set_entsize(v:haxe.UInt64):haxe.UInt64 {
        this.entsize = (v : stdgo.GoUInt64);
        return v;
    }
    public var fileSize(get, set) : haxe.UInt64;
    function get_fileSize():haxe.UInt64 return this.fileSize;
    function set_fileSize(v:haxe.UInt64):haxe.UInt64 {
        this.fileSize = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?name:String, ?type:SectionType, ?flags:SectionFlag, ?addr:haxe.UInt64, ?offset:haxe.UInt64, ?size:haxe.UInt64, ?link:std.UInt, ?info:std.UInt, ?addralign:haxe.UInt64, ?entsize:haxe.UInt64, ?fileSize:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_sectionheader.SectionHeader(
(name : stdgo.GoString),
type,
flags,
(addr : stdgo.GoUInt64),
(offset : stdgo.GoUInt64),
(size : stdgo.GoUInt64),
(link : stdgo.GoUInt32),
(info : stdgo.GoUInt32),
(addralign : stdgo.GoUInt64),
(entsize : stdgo.GoUInt64),
(fileSize : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Section_static_extension) abstract Section(stdgo._internal.debug.elf.Elf_section.Section) from stdgo._internal.debug.elf.Elf_section.Section to stdgo._internal.debug.elf.Elf_section.Section {
    public var sectionHeader(get, set) : SectionHeader;
    function get_sectionHeader():SectionHeader return this.sectionHeader;
    function set_sectionHeader(v:SectionHeader):SectionHeader {
        this.sectionHeader = v;
        return v;
    }
    public var readerAt(get, set) : stdgo._internal.io.Io_readerat.ReaderAt;
    function get_readerAt():stdgo._internal.io.Io_readerat.ReaderAt return this.readerAt;
    function set_readerAt(v:stdgo._internal.io.Io_readerat.ReaderAt):stdgo._internal.io.Io_readerat.ReaderAt {
        this.readerAt = v;
        return v;
    }
    public var _sr(get, set) : stdgo._internal.io.Io_sectionreader.SectionReader;
    function get__sr():stdgo._internal.io.Io_sectionreader.SectionReader return this._sr;
    function set__sr(v:stdgo._internal.io.Io_sectionreader.SectionReader):stdgo._internal.io.Io_sectionreader.SectionReader {
        this._sr = (v : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
        return v;
    }
    public var _compressionType(get, set) : CompressionType;
    function get__compressionType():CompressionType return this._compressionType;
    function set__compressionType(v:CompressionType):CompressionType {
        this._compressionType = v;
        return v;
    }
    public var _compressionOffset(get, set) : haxe.Int64;
    function get__compressionOffset():haxe.Int64 return this._compressionOffset;
    function set__compressionOffset(v:haxe.Int64):haxe.Int64 {
        this._compressionOffset = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?sectionHeader:SectionHeader, ?readerAt:stdgo._internal.io.Io_readerat.ReaderAt, ?_sr:stdgo._internal.io.Io_sectionreader.SectionReader, ?_compressionType:CompressionType, ?_compressionOffset:haxe.Int64) this = new stdgo._internal.debug.elf.Elf_section.Section(sectionHeader, readerAt, (_sr : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>), _compressionType, (_compressionOffset : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.ProgHeader_static_extension) abstract ProgHeader(stdgo._internal.debug.elf.Elf_progheader.ProgHeader) from stdgo._internal.debug.elf.Elf_progheader.ProgHeader to stdgo._internal.debug.elf.Elf_progheader.ProgHeader {
    public var type(get, set) : ProgType;
    function get_type():ProgType return this.type;
    function set_type(v:ProgType):ProgType {
        this.type = v;
        return v;
    }
    public var flags(get, set) : ProgFlag;
    function get_flags():ProgFlag return this.flags;
    function set_flags(v:ProgFlag):ProgFlag {
        this.flags = v;
        return v;
    }
    public var off(get, set) : haxe.UInt64;
    function get_off():haxe.UInt64 return this.off;
    function set_off(v:haxe.UInt64):haxe.UInt64 {
        this.off = (v : stdgo.GoUInt64);
        return v;
    }
    public var vaddr(get, set) : haxe.UInt64;
    function get_vaddr():haxe.UInt64 return this.vaddr;
    function set_vaddr(v:haxe.UInt64):haxe.UInt64 {
        this.vaddr = (v : stdgo.GoUInt64);
        return v;
    }
    public var paddr(get, set) : haxe.UInt64;
    function get_paddr():haxe.UInt64 return this.paddr;
    function set_paddr(v:haxe.UInt64):haxe.UInt64 {
        this.paddr = (v : stdgo.GoUInt64);
        return v;
    }
    public var filesz(get, set) : haxe.UInt64;
    function get_filesz():haxe.UInt64 return this.filesz;
    function set_filesz(v:haxe.UInt64):haxe.UInt64 {
        this.filesz = (v : stdgo.GoUInt64);
        return v;
    }
    public var memsz(get, set) : haxe.UInt64;
    function get_memsz():haxe.UInt64 return this.memsz;
    function set_memsz(v:haxe.UInt64):haxe.UInt64 {
        this.memsz = (v : stdgo.GoUInt64);
        return v;
    }
    public var align(get, set) : haxe.UInt64;
    function get_align():haxe.UInt64 return this.align;
    function set_align(v:haxe.UInt64):haxe.UInt64 {
        this.align = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?type:ProgType, ?flags:ProgFlag, ?off:haxe.UInt64, ?vaddr:haxe.UInt64, ?paddr:haxe.UInt64, ?filesz:haxe.UInt64, ?memsz:haxe.UInt64, ?align:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_progheader.ProgHeader(type, flags, (off : stdgo.GoUInt64), (vaddr : stdgo.GoUInt64), (paddr : stdgo.GoUInt64), (filesz : stdgo.GoUInt64), (memsz : stdgo.GoUInt64), (align : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Prog_static_extension) abstract Prog(stdgo._internal.debug.elf.Elf_prog.Prog) from stdgo._internal.debug.elf.Elf_prog.Prog to stdgo._internal.debug.elf.Elf_prog.Prog {
    public var progHeader(get, set) : ProgHeader;
    function get_progHeader():ProgHeader return this.progHeader;
    function set_progHeader(v:ProgHeader):ProgHeader {
        this.progHeader = v;
        return v;
    }
    public var readerAt(get, set) : stdgo._internal.io.Io_readerat.ReaderAt;
    function get_readerAt():stdgo._internal.io.Io_readerat.ReaderAt return this.readerAt;
    function set_readerAt(v:stdgo._internal.io.Io_readerat.ReaderAt):stdgo._internal.io.Io_readerat.ReaderAt {
        this.readerAt = v;
        return v;
    }
    public var _sr(get, set) : stdgo._internal.io.Io_sectionreader.SectionReader;
    function get__sr():stdgo._internal.io.Io_sectionreader.SectionReader return this._sr;
    function set__sr(v:stdgo._internal.io.Io_sectionreader.SectionReader):stdgo._internal.io.Io_sectionreader.SectionReader {
        this._sr = (v : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
        return v;
    }
    public function new(?progHeader:ProgHeader, ?readerAt:stdgo._internal.io.Io_readerat.ReaderAt, ?_sr:stdgo._internal.io.Io_sectionreader.SectionReader) this = new stdgo._internal.debug.elf.Elf_prog.Prog(progHeader, readerAt, (_sr : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Symbol_static_extension) abstract Symbol(stdgo._internal.debug.elf.Elf_symbol.Symbol) from stdgo._internal.debug.elf.Elf_symbol.Symbol to stdgo._internal.debug.elf.Elf_symbol.Symbol {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = (v : stdgo.GoUInt8);
        return v;
    }
    public var other(get, set) : std.UInt;
    function get_other():std.UInt return this.other;
    function set_other(v:std.UInt):std.UInt {
        this.other = (v : stdgo.GoUInt8);
        return v;
    }
    public var section(get, set) : SectionIndex;
    function get_section():SectionIndex return this.section;
    function set_section(v:SectionIndex):SectionIndex {
        this.section = v;
        return v;
    }
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = (v : stdgo.GoUInt64);
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = (v : stdgo.GoUInt64);
        return v;
    }
    public var version(get, set) : String;
    function get_version():String return this.version;
    function set_version(v:String):String {
        this.version = (v : stdgo.GoString);
        return v;
    }
    public var library(get, set) : String;
    function get_library():String return this.library;
    function set_library(v:String):String {
        this.library = (v : stdgo.GoString);
        return v;
    }
    public function new(?name:String, ?info:std.UInt, ?other:std.UInt, ?section:SectionIndex, ?value:haxe.UInt64, ?size:haxe.UInt64, ?version:String, ?library:String) this = new stdgo._internal.debug.elf.Elf_symbol.Symbol((name : stdgo.GoString), (info : stdgo.GoUInt8), (other : stdgo.GoUInt8), section, (value : stdgo.GoUInt64), (size : stdgo.GoUInt64), (version : stdgo.GoString), (library : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.FormatError_static_extension) abstract FormatError(stdgo._internal.debug.elf.Elf_formaterror.FormatError) from stdgo._internal.debug.elf.Elf_formaterror.FormatError to stdgo._internal.debug.elf.Elf_formaterror.FormatError {
    public var _off(get, set) : haxe.Int64;
    function get__off():haxe.Int64 return this._off;
    function set__off(v:haxe.Int64):haxe.Int64 {
        this._off = (v : stdgo.GoInt64);
        return v;
    }
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = (v : stdgo.GoString);
        return v;
    }
    public var _val(get, set) : stdgo.AnyInterface;
    function get__val():stdgo.AnyInterface return this._val;
    function set__val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._val = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_off:haxe.Int64, ?_msg:String, ?_val:stdgo.AnyInterface) this = new stdgo._internal.debug.elf.Elf_formaterror.FormatError((_off : stdgo.GoInt64), (_msg : stdgo.GoString), (_val : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.ImportedSymbol_static_extension) abstract ImportedSymbol(stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol) from stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol to stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var version(get, set) : String;
    function get_version():String return this.version;
    function set_version(v:String):String {
        this.version = (v : stdgo.GoString);
        return v;
    }
    public var library(get, set) : String;
    function get_library():String return this.library;
    function set_library(v:String):String {
        this.library = (v : stdgo.GoString);
        return v;
    }
    public function new(?name:String, ?version:String, ?library:String) this = new stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol((name : stdgo.GoString), (version : stdgo.GoString), (library : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.T_verneed_static_extension) @:dox(hide) abstract T_verneed(stdgo._internal.debug.elf.Elf_t_verneed.T_verneed) from stdgo._internal.debug.elf.Elf_t_verneed.T_verneed to stdgo._internal.debug.elf.Elf_t_verneed.T_verneed {
    public var file(get, set) : String;
    function get_file():String return this.file;
    function set_file(v:String):String {
        this.file = (v : stdgo.GoString);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?file:String, ?name:String) this = new stdgo._internal.debug.elf.Elf_t_verneed.T_verneed((file : stdgo.GoString), (name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.T_nobitsSectionReader_static_extension) @:dox(hide) abstract T_nobitsSectionReader(stdgo._internal.debug.elf.Elf_t_nobitssectionreader.T_nobitsSectionReader) from stdgo._internal.debug.elf.Elf_t_nobitssectionreader.T_nobitsSectionReader to stdgo._internal.debug.elf.Elf_t_nobitssectionreader.T_nobitsSectionReader {
    public function new() this = new stdgo._internal.debug.elf.Elf_t_nobitssectionreader.T_nobitsSectionReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.T_errorReader_static_extension) @:dox(hide) abstract T_errorReader(stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader) from stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader to stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader {
    public var _error(get, set) : stdgo.Error;
    function get__error():stdgo.Error return this._error;
    function set__error(v:stdgo.Error):stdgo.Error {
        this._error = (v : stdgo.Error);
        return v;
    }
    public function new(?_error:stdgo.Error) this = new stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader((_error : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.T_readSeekerFromReader_static_extension) @:dox(hide) abstract T_readSeekerFromReader(stdgo._internal.debug.elf.Elf_t_readseekerfromreader.T_readSeekerFromReader) from stdgo._internal.debug.elf.Elf_t_readseekerfromreader.T_readSeekerFromReader to stdgo._internal.debug.elf.Elf_t_readseekerfromreader.T_readSeekerFromReader {
    public var _reset(get, set) : () -> stdgo.Tuple<stdgo._internal.io.Io_reader.Reader, stdgo.Error>;
    function get__reset():() -> stdgo.Tuple<stdgo._internal.io.Io_reader.Reader, stdgo.Error> return () -> this._reset();
    function set__reset(v:() -> stdgo.Tuple<stdgo._internal.io.Io_reader.Reader, stdgo.Error>):() -> stdgo.Tuple<stdgo._internal.io.Io_reader.Reader, stdgo.Error> {
        this._reset = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
        return v;
    }
    public var _size(get, set) : haxe.Int64;
    function get__size():haxe.Int64 return this._size;
    function set__size(v:haxe.Int64):haxe.Int64 {
        this._size = (v : stdgo.GoInt64);
        return v;
    }
    public var _offset(get, set) : haxe.Int64;
    function get__offset():haxe.Int64 return this._offset;
    function set__offset(v:haxe.Int64):haxe.Int64 {
        this._offset = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_reset:() -> stdgo.Tuple<stdgo._internal.io.Io_reader.Reader, stdgo.Error>, ?_r:stdgo._internal.io.Io_reader.Reader, ?_size:haxe.Int64, ?_offset:haxe.Int64) this = new stdgo._internal.debug.elf.Elf_t_readseekerfromreader.T_readSeekerFromReader(_reset, _r, (_size : stdgo.GoInt64), (_offset : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Version = stdgo._internal.debug.elf.Elf_version.Version;
typedef Class_ = stdgo._internal.debug.elf.Elf_class_.Class_;
typedef Data = stdgo._internal.debug.elf.Elf_data.Data;
typedef OSABI = stdgo._internal.debug.elf.Elf_osabi.OSABI;
typedef Type_ = stdgo._internal.debug.elf.Elf_type_.Type_;
typedef Machine = stdgo._internal.debug.elf.Elf_machine.Machine;
typedef SectionIndex = stdgo._internal.debug.elf.Elf_sectionindex.SectionIndex;
typedef SectionType = stdgo._internal.debug.elf.Elf_sectiontype.SectionType;
typedef SectionFlag = stdgo._internal.debug.elf.Elf_sectionflag.SectionFlag;
typedef CompressionType = stdgo._internal.debug.elf.Elf_compressiontype.CompressionType;
typedef ProgType = stdgo._internal.debug.elf.Elf_progtype.ProgType;
typedef ProgFlag = stdgo._internal.debug.elf.Elf_progflag.ProgFlag;
typedef DynTag = stdgo._internal.debug.elf.Elf_dyntag.DynTag;
typedef DynFlag = stdgo._internal.debug.elf.Elf_dynflag.DynFlag;
typedef DynFlag1 = stdgo._internal.debug.elf.Elf_dynflag1.DynFlag1;
typedef NType = stdgo._internal.debug.elf.Elf_ntype.NType;
typedef SymBind = stdgo._internal.debug.elf.Elf_symbind.SymBind;
typedef SymType = stdgo._internal.debug.elf.Elf_symtype.SymType;
typedef SymVis = stdgo._internal.debug.elf.Elf_symvis.SymVis;
typedef R_X86_64 = stdgo._internal.debug.elf.Elf_r_x86_64.R_X86_64;
typedef R_AARCH64 = stdgo._internal.debug.elf.Elf_r_aarch64.R_AARCH64;
typedef R_ALPHA = stdgo._internal.debug.elf.Elf_r_alpha.R_ALPHA;
typedef R_ARM = stdgo._internal.debug.elf.Elf_r_arm.R_ARM;
typedef R_386 = stdgo._internal.debug.elf.Elf_r_386.R_386;
typedef R_MIPS = stdgo._internal.debug.elf.Elf_r_mips.R_MIPS;
typedef R_LARCH = stdgo._internal.debug.elf.Elf_r_larch.R_LARCH;
typedef R_PPC = stdgo._internal.debug.elf.Elf_r_ppc.R_PPC;
typedef R_PPC64 = stdgo._internal.debug.elf.Elf_r_ppc64.R_PPC64;
typedef R_RISCV = stdgo._internal.debug.elf.Elf_r_riscv.R_RISCV;
typedef R_390 = stdgo._internal.debug.elf.Elf_r_390.R_390;
typedef R_SPARC = stdgo._internal.debug.elf.Elf_r_sparc.R_SPARC;
typedef Header32Pointer = stdgo._internal.debug.elf.Elf_header32pointer.Header32Pointer;
class Header32_static_extension {

}
typedef Section32Pointer = stdgo._internal.debug.elf.Elf_section32pointer.Section32Pointer;
class Section32_static_extension {

}
typedef Prog32Pointer = stdgo._internal.debug.elf.Elf_prog32pointer.Prog32Pointer;
class Prog32_static_extension {

}
typedef Dyn32Pointer = stdgo._internal.debug.elf.Elf_dyn32pointer.Dyn32Pointer;
class Dyn32_static_extension {

}
typedef Chdr32Pointer = stdgo._internal.debug.elf.Elf_chdr32pointer.Chdr32Pointer;
class Chdr32_static_extension {

}
typedef Rel32Pointer = stdgo._internal.debug.elf.Elf_rel32pointer.Rel32Pointer;
class Rel32_static_extension {

}
typedef Rela32Pointer = stdgo._internal.debug.elf.Elf_rela32pointer.Rela32Pointer;
class Rela32_static_extension {

}
typedef Sym32Pointer = stdgo._internal.debug.elf.Elf_sym32pointer.Sym32Pointer;
class Sym32_static_extension {

}
typedef Header64Pointer = stdgo._internal.debug.elf.Elf_header64pointer.Header64Pointer;
class Header64_static_extension {

}
typedef Section64Pointer = stdgo._internal.debug.elf.Elf_section64pointer.Section64Pointer;
class Section64_static_extension {

}
typedef Prog64Pointer = stdgo._internal.debug.elf.Elf_prog64pointer.Prog64Pointer;
class Prog64_static_extension {

}
typedef Dyn64Pointer = stdgo._internal.debug.elf.Elf_dyn64pointer.Dyn64Pointer;
class Dyn64_static_extension {

}
typedef Chdr64Pointer = stdgo._internal.debug.elf.Elf_chdr64pointer.Chdr64Pointer;
class Chdr64_static_extension {

}
typedef Rel64Pointer = stdgo._internal.debug.elf.Elf_rel64pointer.Rel64Pointer;
class Rel64_static_extension {

}
typedef Rela64Pointer = stdgo._internal.debug.elf.Elf_rela64pointer.Rela64Pointer;
class Rela64_static_extension {

}
typedef Sym64Pointer = stdgo._internal.debug.elf.Elf_sym64pointer.Sym64Pointer;
class Sym64_static_extension {

}
@:dox(hide) typedef T_intNamePointer = stdgo._internal.debug.elf.Elf_t_intnamepointer.T_intNamePointer;
@:dox(hide) class T_intName_static_extension {

}
typedef FileHeaderPointer = stdgo._internal.debug.elf.Elf_fileheaderpointer.FileHeaderPointer;
class FileHeader_static_extension {

}
typedef FilePointer = stdgo._internal.debug.elf.Elf_filepointer.FilePointer;
class File_static_extension {
    static public function dynValue(_f:File, _tag:DynTag):stdgo.Tuple<Array<haxe.UInt64>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension.dynValue(_f, _tag);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function dynString(_f:File, _tag:DynTag):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension.dynString(_f, _tag);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function importedLibraries(_f:File):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension.importedLibraries(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _gnuVersion(_f:File, _i:StdTypes.Int):stdgo.Tuple<String, String> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _i = (_i : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._gnuVersion(_f, _i);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _gnuVersionInit(_f:File, _str:Array<std.UInt>):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _str = ([for (i in _str) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._gnuVersionInit(_f, _str);
    }
    static public function importedSymbols(_f:File):stdgo.Tuple<Array<ImportedSymbol>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension.importedSymbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function dynamicSymbols(_f:File):stdgo.Tuple<Array<Symbol>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension.dynamicSymbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function symbols(_f:File):stdgo.Tuple<Array<Symbol>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension.symbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function dWARF(_f:File):stdgo.Tuple<stdgo._internal.debug.dwarf.Dwarf_data.Data, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension.dWARF(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _applyRelocationsSPARC64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._applyRelocationsSPARC64(_f, _dst, _rels);
    }
    static public function _applyRelocationss390x(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._applyRelocationss390x(_f, _dst, _rels);
    }
    static public function _applyRelocationsRISCV64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._applyRelocationsRISCV64(_f, _dst, _rels);
    }
    static public function _applyRelocationsLOONG64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._applyRelocationsLOONG64(_f, _dst, _rels);
    }
    static public function _applyRelocationsMIPS64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._applyRelocationsMIPS64(_f, _dst, _rels);
    }
    static public function _applyRelocationsMIPS(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._applyRelocationsMIPS(_f, _dst, _rels);
    }
    static public function _applyRelocationsPPC64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._applyRelocationsPPC64(_f, _dst, _rels);
    }
    static public function _applyRelocationsPPC(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._applyRelocationsPPC(_f, _dst, _rels);
    }
    static public function _applyRelocationsARM64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._applyRelocationsARM64(_f, _dst, _rels);
    }
    static public function _applyRelocationsARM(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._applyRelocationsARM(_f, _dst, _rels);
    }
    static public function _applyRelocations386(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._applyRelocations386(_f, _dst, _rels);
    }
    static public function _applyRelocationsAMD64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._applyRelocationsAMD64(_f, _dst, _rels);
    }
    static public function _applyRelocations(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._applyRelocations(_f, _dst, _rels);
    }
    static public function section(_f:File, _name:String):Section {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension.section(_f, _name);
    }
    static public function _getSymbols64(_f:File, _typ:SectionType):stdgo.Tuple.Tuple3<Array<Symbol>, Array<std.UInt>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._getSymbols64(_f, _typ);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function _getSymbols32(_f:File, _typ:SectionType):stdgo.Tuple.Tuple3<Array<Symbol>, Array<std.UInt>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._getSymbols32(_f, _typ);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function _getSymbols(_f:File, _typ:SectionType):stdgo.Tuple.Tuple3<Array<Symbol>, Array<std.UInt>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._getSymbols(_f, _typ);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function sectionByType(_f:File, _typ:SectionType):Section {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension.sectionByType(_f, _typ);
    }
    static public function close(_f:File):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        return stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension.close(_f);
    }
    static public function _stringTable(_f:File, _link:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        final _link = (_link : stdgo.GoUInt32);
        return {
            final obj = stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension._stringTable(_f, _link);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef SectionHeaderPointer = stdgo._internal.debug.elf.Elf_sectionheaderpointer.SectionHeaderPointer;
class SectionHeader_static_extension {

}
typedef SectionPointer = stdgo._internal.debug.elf.Elf_sectionpointer.SectionPointer;
class Section_static_extension {
    static public function open(_s:Section):stdgo._internal.io.Io_readseeker.ReadSeeker {
        final _s = (_s : stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>);
        return stdgo._internal.debug.elf.Elf_section_static_extension.Section_static_extension.open(_s);
    }
    static public function data(_s:Section):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_section_static_extension.Section_static_extension.data(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readAt(__self__:stdgo._internal.debug.elf.Elf_section.Section, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.debug.elf.Elf_section_static_extension.Section_static_extension.readAt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef ProgHeaderPointer = stdgo._internal.debug.elf.Elf_progheaderpointer.ProgHeaderPointer;
class ProgHeader_static_extension {

}
typedef ProgPointer = stdgo._internal.debug.elf.Elf_progpointer.ProgPointer;
class Prog_static_extension {
    static public function open(_p:Prog):stdgo._internal.io.Io_readseeker.ReadSeeker {
        final _p = (_p : stdgo.Ref<stdgo._internal.debug.elf.Elf_prog.Prog>);
        return stdgo._internal.debug.elf.Elf_prog_static_extension.Prog_static_extension.open(_p);
    }
    public static function readAt(__self__:stdgo._internal.debug.elf.Elf_prog.Prog, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.debug.elf.Elf_prog_static_extension.Prog_static_extension.readAt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef SymbolPointer = stdgo._internal.debug.elf.Elf_symbolpointer.SymbolPointer;
class Symbol_static_extension {

}
typedef FormatErrorPointer = stdgo._internal.debug.elf.Elf_formaterrorpointer.FormatErrorPointer;
class FormatError_static_extension {
    static public function error(_e:FormatError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>);
        return stdgo._internal.debug.elf.Elf_formaterror_static_extension.FormatError_static_extension.error(_e);
    }
}
typedef ImportedSymbolPointer = stdgo._internal.debug.elf.Elf_importedsymbolpointer.ImportedSymbolPointer;
class ImportedSymbol_static_extension {

}
@:dox(hide) typedef T_verneedPointer = stdgo._internal.debug.elf.Elf_t_verneedpointer.T_verneedPointer;
@:dox(hide) class T_verneed_static_extension {

}
@:dox(hide) typedef T_nobitsSectionReaderPointer = stdgo._internal.debug.elf.Elf_t_nobitssectionreaderpointer.T_nobitsSectionReaderPointer;
@:dox(hide) class T_nobitsSectionReader_static_extension {
    static public function readAt(_:T_nobitsSectionReader, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _ = (_ : stdgo.Ref<stdgo._internal.debug.elf.Elf_t_nobitssectionreader.T_nobitsSectionReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.debug.elf.Elf_t_nobitssectionreader_static_extension.T_nobitsSectionReader_static_extension.readAt(_, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_errorReaderPointer = stdgo._internal.debug.elf.Elf_t_errorreaderpointer.T_errorReaderPointer;
@:dox(hide) class T_errorReader_static_extension {
    static public function close(_r:T_errorReader):stdgo.Error {
        return stdgo._internal.debug.elf.Elf_t_errorreader_static_extension.T_errorReader_static_extension.close(_r);
    }
    static public function seek(_r:T_errorReader, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.elf.Elf_t_errorreader_static_extension.T_errorReader_static_extension.seek(_r, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readAt(_r:T_errorReader, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.debug.elf.Elf_t_errorreader_static_extension.T_errorReader_static_extension.readAt(_r, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:T_errorReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_t_errorreader_static_extension.T_errorReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function error(__self__:stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader):String {
        return stdgo._internal.debug.elf.Elf_t_errorreader_static_extension.T_errorReader_static_extension.error(__self__);
    }
}
@:dox(hide) typedef T_readSeekerFromReaderPointer = stdgo._internal.debug.elf.Elf_t_readseekerfromreaderpointer.T_readSeekerFromReaderPointer;
@:dox(hide) class T_readSeekerFromReader_static_extension {
    static public function seek(_r:T_readSeekerFromReader, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.elf.Elf_t_readseekerfromreader.T_readSeekerFromReader>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.elf.Elf_t_readseekerfromreader_static_extension.T_readSeekerFromReader_static_extension.seek(_r, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:T_readSeekerFromReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.elf.Elf_t_readseekerfromreader.T_readSeekerFromReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_t_readseekerfromreader_static_extension.T_readSeekerFromReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _start(_r:T_readSeekerFromReader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.elf.Elf_t_readseekerfromreader.T_readSeekerFromReader>);
        stdgo._internal.debug.elf.Elf_t_readseekerfromreader_static_extension.T_readSeekerFromReader_static_extension._start(_r);
    }
}
typedef VersionPointer = stdgo._internal.debug.elf.Elf_versionpointer.VersionPointer;
class Version_static_extension {
    static public function goString(_i:Version):String {
        return stdgo._internal.debug.elf.Elf_version_static_extension.Version_static_extension.goString(_i);
    }
    static public function string(_i:Version):String {
        return stdgo._internal.debug.elf.Elf_version_static_extension.Version_static_extension.string(_i);
    }
}
typedef Class_Pointer = stdgo._internal.debug.elf.Elf_class_pointer.Class_Pointer;
class Class__static_extension {
    static public function goString(_i:Class_):String {
        return stdgo._internal.debug.elf.Elf_class__static_extension.Class__static_extension.goString(_i);
    }
    static public function string(_i:Class_):String {
        return stdgo._internal.debug.elf.Elf_class__static_extension.Class__static_extension.string(_i);
    }
}
typedef DataPointer = stdgo._internal.debug.elf.Elf_datapointer.DataPointer;
class Data_static_extension {
    static public function goString(_i:Data):String {
        return stdgo._internal.debug.elf.Elf_data_static_extension.Data_static_extension.goString(_i);
    }
    static public function string(_i:Data):String {
        return stdgo._internal.debug.elf.Elf_data_static_extension.Data_static_extension.string(_i);
    }
}
typedef OSABIPointer = stdgo._internal.debug.elf.Elf_osabipointer.OSABIPointer;
class OSABI_static_extension {
    static public function goString(_i:OSABI):String {
        return stdgo._internal.debug.elf.Elf_osabi_static_extension.OSABI_static_extension.goString(_i);
    }
    static public function string(_i:OSABI):String {
        return stdgo._internal.debug.elf.Elf_osabi_static_extension.OSABI_static_extension.string(_i);
    }
}
typedef Type_Pointer = stdgo._internal.debug.elf.Elf_type_pointer.Type_Pointer;
class Type__static_extension {
    static public function goString(_i:Type_):String {
        return stdgo._internal.debug.elf.Elf_type__static_extension.Type__static_extension.goString(_i);
    }
    static public function string(_i:Type_):String {
        return stdgo._internal.debug.elf.Elf_type__static_extension.Type__static_extension.string(_i);
    }
}
typedef MachinePointer = stdgo._internal.debug.elf.Elf_machinepointer.MachinePointer;
class Machine_static_extension {
    static public function goString(_i:Machine):String {
        return stdgo._internal.debug.elf.Elf_machine_static_extension.Machine_static_extension.goString(_i);
    }
    static public function string(_i:Machine):String {
        return stdgo._internal.debug.elf.Elf_machine_static_extension.Machine_static_extension.string(_i);
    }
}
typedef SectionIndexPointer = stdgo._internal.debug.elf.Elf_sectionindexpointer.SectionIndexPointer;
class SectionIndex_static_extension {
    static public function goString(_i:SectionIndex):String {
        return stdgo._internal.debug.elf.Elf_sectionindex_static_extension.SectionIndex_static_extension.goString(_i);
    }
    static public function string(_i:SectionIndex):String {
        return stdgo._internal.debug.elf.Elf_sectionindex_static_extension.SectionIndex_static_extension.string(_i);
    }
}
typedef SectionTypePointer = stdgo._internal.debug.elf.Elf_sectiontypepointer.SectionTypePointer;
class SectionType_static_extension {
    static public function goString(_i:SectionType):String {
        return stdgo._internal.debug.elf.Elf_sectiontype_static_extension.SectionType_static_extension.goString(_i);
    }
    static public function string(_i:SectionType):String {
        return stdgo._internal.debug.elf.Elf_sectiontype_static_extension.SectionType_static_extension.string(_i);
    }
}
typedef SectionFlagPointer = stdgo._internal.debug.elf.Elf_sectionflagpointer.SectionFlagPointer;
class SectionFlag_static_extension {
    static public function goString(_i:SectionFlag):String {
        return stdgo._internal.debug.elf.Elf_sectionflag_static_extension.SectionFlag_static_extension.goString(_i);
    }
    static public function string(_i:SectionFlag):String {
        return stdgo._internal.debug.elf.Elf_sectionflag_static_extension.SectionFlag_static_extension.string(_i);
    }
}
typedef CompressionTypePointer = stdgo._internal.debug.elf.Elf_compressiontypepointer.CompressionTypePointer;
class CompressionType_static_extension {
    static public function goString(_i:CompressionType):String {
        return stdgo._internal.debug.elf.Elf_compressiontype_static_extension.CompressionType_static_extension.goString(_i);
    }
    static public function string(_i:CompressionType):String {
        return stdgo._internal.debug.elf.Elf_compressiontype_static_extension.CompressionType_static_extension.string(_i);
    }
}
typedef ProgTypePointer = stdgo._internal.debug.elf.Elf_progtypepointer.ProgTypePointer;
class ProgType_static_extension {
    static public function goString(_i:ProgType):String {
        return stdgo._internal.debug.elf.Elf_progtype_static_extension.ProgType_static_extension.goString(_i);
    }
    static public function string(_i:ProgType):String {
        return stdgo._internal.debug.elf.Elf_progtype_static_extension.ProgType_static_extension.string(_i);
    }
}
typedef ProgFlagPointer = stdgo._internal.debug.elf.Elf_progflagpointer.ProgFlagPointer;
class ProgFlag_static_extension {
    static public function goString(_i:ProgFlag):String {
        return stdgo._internal.debug.elf.Elf_progflag_static_extension.ProgFlag_static_extension.goString(_i);
    }
    static public function string(_i:ProgFlag):String {
        return stdgo._internal.debug.elf.Elf_progflag_static_extension.ProgFlag_static_extension.string(_i);
    }
}
typedef DynTagPointer = stdgo._internal.debug.elf.Elf_dyntagpointer.DynTagPointer;
class DynTag_static_extension {
    static public function goString(_i:DynTag):String {
        return stdgo._internal.debug.elf.Elf_dyntag_static_extension.DynTag_static_extension.goString(_i);
    }
    static public function string(_i:DynTag):String {
        return stdgo._internal.debug.elf.Elf_dyntag_static_extension.DynTag_static_extension.string(_i);
    }
}
typedef DynFlagPointer = stdgo._internal.debug.elf.Elf_dynflagpointer.DynFlagPointer;
class DynFlag_static_extension {
    static public function goString(_i:DynFlag):String {
        return stdgo._internal.debug.elf.Elf_dynflag_static_extension.DynFlag_static_extension.goString(_i);
    }
    static public function string(_i:DynFlag):String {
        return stdgo._internal.debug.elf.Elf_dynflag_static_extension.DynFlag_static_extension.string(_i);
    }
}
typedef DynFlag1Pointer = stdgo._internal.debug.elf.Elf_dynflag1pointer.DynFlag1Pointer;
class DynFlag1_static_extension {
    static public function goString(_i:DynFlag1):String {
        return stdgo._internal.debug.elf.Elf_dynflag1_static_extension.DynFlag1_static_extension.goString(_i);
    }
    static public function string(_i:DynFlag1):String {
        return stdgo._internal.debug.elf.Elf_dynflag1_static_extension.DynFlag1_static_extension.string(_i);
    }
}
typedef NTypePointer = stdgo._internal.debug.elf.Elf_ntypepointer.NTypePointer;
class NType_static_extension {
    static public function goString(_i:NType):String {
        return stdgo._internal.debug.elf.Elf_ntype_static_extension.NType_static_extension.goString(_i);
    }
    static public function string(_i:NType):String {
        return stdgo._internal.debug.elf.Elf_ntype_static_extension.NType_static_extension.string(_i);
    }
}
typedef SymBindPointer = stdgo._internal.debug.elf.Elf_symbindpointer.SymBindPointer;
class SymBind_static_extension {
    static public function goString(_i:SymBind):String {
        return stdgo._internal.debug.elf.Elf_symbind_static_extension.SymBind_static_extension.goString(_i);
    }
    static public function string(_i:SymBind):String {
        return stdgo._internal.debug.elf.Elf_symbind_static_extension.SymBind_static_extension.string(_i);
    }
}
typedef SymTypePointer = stdgo._internal.debug.elf.Elf_symtypepointer.SymTypePointer;
class SymType_static_extension {
    static public function goString(_i:SymType):String {
        return stdgo._internal.debug.elf.Elf_symtype_static_extension.SymType_static_extension.goString(_i);
    }
    static public function string(_i:SymType):String {
        return stdgo._internal.debug.elf.Elf_symtype_static_extension.SymType_static_extension.string(_i);
    }
}
typedef SymVisPointer = stdgo._internal.debug.elf.Elf_symvispointer.SymVisPointer;
class SymVis_static_extension {
    static public function goString(_i:SymVis):String {
        return stdgo._internal.debug.elf.Elf_symvis_static_extension.SymVis_static_extension.goString(_i);
    }
    static public function string(_i:SymVis):String {
        return stdgo._internal.debug.elf.Elf_symvis_static_extension.SymVis_static_extension.string(_i);
    }
}
typedef R_X86_64Pointer = stdgo._internal.debug.elf.Elf_r_x86_64pointer.R_X86_64Pointer;
class R_X86_64_static_extension {
    static public function goString(_i:R_X86_64):String {
        return stdgo._internal.debug.elf.Elf_r_x86_64_static_extension.R_X86_64_static_extension.goString(_i);
    }
    static public function string(_i:R_X86_64):String {
        return stdgo._internal.debug.elf.Elf_r_x86_64_static_extension.R_X86_64_static_extension.string(_i);
    }
}
typedef R_AARCH64Pointer = stdgo._internal.debug.elf.Elf_r_aarch64pointer.R_AARCH64Pointer;
class R_AARCH64_static_extension {
    static public function goString(_i:R_AARCH64):String {
        return stdgo._internal.debug.elf.Elf_r_aarch64_static_extension.R_AARCH64_static_extension.goString(_i);
    }
    static public function string(_i:R_AARCH64):String {
        return stdgo._internal.debug.elf.Elf_r_aarch64_static_extension.R_AARCH64_static_extension.string(_i);
    }
}
typedef R_ALPHAPointer = stdgo._internal.debug.elf.Elf_r_alphapointer.R_ALPHAPointer;
class R_ALPHA_static_extension {
    static public function goString(_i:R_ALPHA):String {
        return stdgo._internal.debug.elf.Elf_r_alpha_static_extension.R_ALPHA_static_extension.goString(_i);
    }
    static public function string(_i:R_ALPHA):String {
        return stdgo._internal.debug.elf.Elf_r_alpha_static_extension.R_ALPHA_static_extension.string(_i);
    }
}
typedef R_ARMPointer = stdgo._internal.debug.elf.Elf_r_armpointer.R_ARMPointer;
class R_ARM_static_extension {
    static public function goString(_i:R_ARM):String {
        return stdgo._internal.debug.elf.Elf_r_arm_static_extension.R_ARM_static_extension.goString(_i);
    }
    static public function string(_i:R_ARM):String {
        return stdgo._internal.debug.elf.Elf_r_arm_static_extension.R_ARM_static_extension.string(_i);
    }
}
typedef R_386Pointer = stdgo._internal.debug.elf.Elf_r_386pointer.R_386Pointer;
class R_386_static_extension {
    static public function goString(_i:R_386):String {
        return stdgo._internal.debug.elf.Elf_r_386_static_extension.R_386_static_extension.goString(_i);
    }
    static public function string(_i:R_386):String {
        return stdgo._internal.debug.elf.Elf_r_386_static_extension.R_386_static_extension.string(_i);
    }
}
typedef R_MIPSPointer = stdgo._internal.debug.elf.Elf_r_mipspointer.R_MIPSPointer;
class R_MIPS_static_extension {
    static public function goString(_i:R_MIPS):String {
        return stdgo._internal.debug.elf.Elf_r_mips_static_extension.R_MIPS_static_extension.goString(_i);
    }
    static public function string(_i:R_MIPS):String {
        return stdgo._internal.debug.elf.Elf_r_mips_static_extension.R_MIPS_static_extension.string(_i);
    }
}
typedef R_LARCHPointer = stdgo._internal.debug.elf.Elf_r_larchpointer.R_LARCHPointer;
class R_LARCH_static_extension {
    static public function goString(_i:R_LARCH):String {
        return stdgo._internal.debug.elf.Elf_r_larch_static_extension.R_LARCH_static_extension.goString(_i);
    }
    static public function string(_i:R_LARCH):String {
        return stdgo._internal.debug.elf.Elf_r_larch_static_extension.R_LARCH_static_extension.string(_i);
    }
}
typedef R_PPCPointer = stdgo._internal.debug.elf.Elf_r_ppcpointer.R_PPCPointer;
class R_PPC_static_extension {
    static public function goString(_i:R_PPC):String {
        return stdgo._internal.debug.elf.Elf_r_ppc_static_extension.R_PPC_static_extension.goString(_i);
    }
    static public function string(_i:R_PPC):String {
        return stdgo._internal.debug.elf.Elf_r_ppc_static_extension.R_PPC_static_extension.string(_i);
    }
}
typedef R_PPC64Pointer = stdgo._internal.debug.elf.Elf_r_ppc64pointer.R_PPC64Pointer;
class R_PPC64_static_extension {
    static public function goString(_i:R_PPC64):String {
        return stdgo._internal.debug.elf.Elf_r_ppc64_static_extension.R_PPC64_static_extension.goString(_i);
    }
    static public function string(_i:R_PPC64):String {
        return stdgo._internal.debug.elf.Elf_r_ppc64_static_extension.R_PPC64_static_extension.string(_i);
    }
}
typedef R_RISCVPointer = stdgo._internal.debug.elf.Elf_r_riscvpointer.R_RISCVPointer;
class R_RISCV_static_extension {
    static public function goString(_i:R_RISCV):String {
        return stdgo._internal.debug.elf.Elf_r_riscv_static_extension.R_RISCV_static_extension.goString(_i);
    }
    static public function string(_i:R_RISCV):String {
        return stdgo._internal.debug.elf.Elf_r_riscv_static_extension.R_RISCV_static_extension.string(_i);
    }
}
typedef R_390Pointer = stdgo._internal.debug.elf.Elf_r_390pointer.R_390Pointer;
class R_390_static_extension {
    static public function goString(_i:R_390):String {
        return stdgo._internal.debug.elf.Elf_r_390_static_extension.R_390_static_extension.goString(_i);
    }
    static public function string(_i:R_390):String {
        return stdgo._internal.debug.elf.Elf_r_390_static_extension.R_390_static_extension.string(_i);
    }
}
typedef R_SPARCPointer = stdgo._internal.debug.elf.Elf_r_sparcpointer.R_SPARCPointer;
class R_SPARC_static_extension {
    static public function goString(_i:R_SPARC):String {
        return stdgo._internal.debug.elf.Elf_r_sparc_static_extension.R_SPARC_static_extension.goString(_i);
    }
    static public function string(_i:R_SPARC):String {
        return stdgo._internal.debug.elf.Elf_r_sparc_static_extension.R_SPARC_static_extension.string(_i);
    }
}
/**
    * 
    * Package elf implements access to ELF object files.
    * 
    * # Security
    * 
    * This package is not designed to be hardened against adversarial inputs, and is
    * outside the scope of https://go.dev/security/policy. In particular, only basic
    * validation is done when parsing object files. As such, care should be taken when
    * parsing untrusted inputs, as parsing malformed files may consume significant
    * resources, or cause panics.
    * 
**/
class Elf {
    static public inline function r_SYM32(_info:std.UInt):std.UInt {
        final _info = (_info : stdgo.GoUInt32);
        return stdgo._internal.debug.elf.Elf_r_sym32.r_SYM32(_info);
    }
    static public inline function r_TYPE32(_info:std.UInt):std.UInt {
        final _info = (_info : stdgo.GoUInt32);
        return stdgo._internal.debug.elf.Elf_r_type32.r_TYPE32(_info);
    }
    static public inline function r_INFO32(_sym:std.UInt, _typ:std.UInt):std.UInt {
        final _sym = (_sym : stdgo.GoUInt32);
        final _typ = (_typ : stdgo.GoUInt32);
        return stdgo._internal.debug.elf.Elf_r_info32.r_INFO32(_sym, _typ);
    }
    static public inline function sT_BIND(_info:std.UInt):SymBind {
        final _info = (_info : stdgo.GoUInt8);
        return stdgo._internal.debug.elf.Elf_st_bind.sT_BIND(_info);
    }
    static public inline function sT_TYPE(_info:std.UInt):SymType {
        final _info = (_info : stdgo.GoUInt8);
        return stdgo._internal.debug.elf.Elf_st_type.sT_TYPE(_info);
    }
    static public inline function sT_INFO(_bind:SymBind, _typ:SymType):std.UInt {
        return stdgo._internal.debug.elf.Elf_st_info.sT_INFO(_bind, _typ);
    }
    static public inline function sT_VISIBILITY(_other:std.UInt):SymVis {
        final _other = (_other : stdgo.GoUInt8);
        return stdgo._internal.debug.elf.Elf_st_visibility.sT_VISIBILITY(_other);
    }
    static public inline function r_SYM64(_info:haxe.UInt64):std.UInt {
        final _info = (_info : stdgo.GoUInt64);
        return stdgo._internal.debug.elf.Elf_r_sym64.r_SYM64(_info);
    }
    static public inline function r_TYPE64(_info:haxe.UInt64):std.UInt {
        final _info = (_info : stdgo.GoUInt64);
        return stdgo._internal.debug.elf.Elf_r_type64.r_TYPE64(_info);
    }
    static public inline function r_INFO(_sym:std.UInt, _typ:std.UInt):haxe.UInt64 {
        final _sym = (_sym : stdgo.GoUInt32);
        final _typ = (_typ : stdgo.GoUInt32);
        return stdgo._internal.debug.elf.Elf_r_info.r_INFO(_sym, _typ);
    }
    /**
        * Open opens the named file using os.Open and prepares it for use as an ELF binary.
    **/
    static public inline function open(_name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.debug.elf.Elf_open.open(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewFile creates a new File for accessing an ELF binary in an underlying reader.
        * The ELF binary is expected to start at position 0 in the ReaderAt.
    **/
    static public inline function newFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_newfile.newFile(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
