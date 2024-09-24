package stdgo.debug.elf;
final ei_CLASS : haxe.UInt64 = stdgo._internal.debug.elf.Elf_ei_CLASS.ei_CLASS;
final ei_DATA : haxe.UInt64 = stdgo._internal.debug.elf.Elf_ei_DATA.ei_DATA;
final ei_VERSION : haxe.UInt64 = stdgo._internal.debug.elf.Elf_ei_VERSION.ei_VERSION;
final ei_OSABI : haxe.UInt64 = stdgo._internal.debug.elf.Elf_ei_OSABI.ei_OSABI;
final ei_ABIVERSION : haxe.UInt64 = stdgo._internal.debug.elf.Elf_ei_ABIVERSION.ei_ABIVERSION;
final ei_PAD : haxe.UInt64 = stdgo._internal.debug.elf.Elf_ei_PAD.ei_PAD;
final ei_NIDENT : haxe.UInt64 = stdgo._internal.debug.elf.Elf_ei_NIDENT.ei_NIDENT;
final elfmag : String = stdgo._internal.debug.elf.Elf_elfmag.elfmag;
final ev_NONE : Version = stdgo._internal.debug.elf.Elf_ev_NONE.ev_NONE;
final ev_CURRENT : Version = stdgo._internal.debug.elf.Elf_ev_CURRENT.ev_CURRENT;
final elfclassnone : Class_ = stdgo._internal.debug.elf.Elf_elfclassnone.elfclassnone;
final elfclass32 : Class_ = stdgo._internal.debug.elf.Elf_elfclass32.elfclass32;
final elfclass64 : Class_ = stdgo._internal.debug.elf.Elf_elfclass64.elfclass64;
final elfdatanone : Data = stdgo._internal.debug.elf.Elf_elfdatanone.elfdatanone;
final elfdata2lsb : Data = stdgo._internal.debug.elf.Elf_elfdata2lsb.elfdata2lsb;
final elfdata2msb : Data = stdgo._internal.debug.elf.Elf_elfdata2msb.elfdata2msb;
final elfosabi_NONE : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_NONE.elfosabi_NONE;
final elfosabi_HPUX : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_HPUX.elfosabi_HPUX;
final elfosabi_NETBSD : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_NETBSD.elfosabi_NETBSD;
final elfosabi_LINUX : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_LINUX.elfosabi_LINUX;
final elfosabi_HURD : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_HURD.elfosabi_HURD;
final elfosabi_86OPEN : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_86OPEN.elfosabi_86OPEN;
final elfosabi_SOLARIS : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_SOLARIS.elfosabi_SOLARIS;
final elfosabi_AIX : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_AIX.elfosabi_AIX;
final elfosabi_IRIX : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_IRIX.elfosabi_IRIX;
final elfosabi_FREEBSD : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_FREEBSD.elfosabi_FREEBSD;
final elfosabi_TRU64 : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_TRU64.elfosabi_TRU64;
final elfosabi_MODESTO : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_MODESTO.elfosabi_MODESTO;
final elfosabi_OPENBSD : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_OPENBSD.elfosabi_OPENBSD;
final elfosabi_OPENVMS : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_OPENVMS.elfosabi_OPENVMS;
final elfosabi_NSK : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_NSK.elfosabi_NSK;
final elfosabi_AROS : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_AROS.elfosabi_AROS;
final elfosabi_FENIXOS : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_FENIXOS.elfosabi_FENIXOS;
final elfosabi_CLOUDABI : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_CLOUDABI.elfosabi_CLOUDABI;
final elfosabi_ARM : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_ARM.elfosabi_ARM;
final elfosabi_STANDALONE : OSABI = stdgo._internal.debug.elf.Elf_elfosabi_STANDALONE.elfosabi_STANDALONE;
final et_NONE : Type_ = stdgo._internal.debug.elf.Elf_et_NONE.et_NONE;
final et_REL : Type_ = stdgo._internal.debug.elf.Elf_et_REL.et_REL;
final et_EXEC : Type_ = stdgo._internal.debug.elf.Elf_et_EXEC.et_EXEC;
final et_DYN : Type_ = stdgo._internal.debug.elf.Elf_et_DYN.et_DYN;
final et_CORE : Type_ = stdgo._internal.debug.elf.Elf_et_CORE.et_CORE;
final et_LOOS : Type_ = stdgo._internal.debug.elf.Elf_et_LOOS.et_LOOS;
final et_HIOS : Type_ = stdgo._internal.debug.elf.Elf_et_HIOS.et_HIOS;
final et_LOPROC : Type_ = stdgo._internal.debug.elf.Elf_et_LOPROC.et_LOPROC;
final et_HIPROC : Type_ = stdgo._internal.debug.elf.Elf_et_HIPROC.et_HIPROC;
final em_NONE : Machine = stdgo._internal.debug.elf.Elf_em_NONE.em_NONE;
final em_M32 : Machine = stdgo._internal.debug.elf.Elf_em_M32.em_M32;
final em_SPARC : Machine = stdgo._internal.debug.elf.Elf_em_SPARC.em_SPARC;
final em_386 : Machine = stdgo._internal.debug.elf.Elf_em_386.em_386;
final em_68K : Machine = stdgo._internal.debug.elf.Elf_em_68K.em_68K;
final em_88K : Machine = stdgo._internal.debug.elf.Elf_em_88K.em_88K;
final em_860 : Machine = stdgo._internal.debug.elf.Elf_em_860.em_860;
final em_MIPS : Machine = stdgo._internal.debug.elf.Elf_em_MIPS.em_MIPS;
final em_S370 : Machine = stdgo._internal.debug.elf.Elf_em_S370.em_S370;
final em_MIPS_RS3_LE : Machine = stdgo._internal.debug.elf.Elf_em_MIPS_RS3_LE.em_MIPS_RS3_LE;
final em_PARISC : Machine = stdgo._internal.debug.elf.Elf_em_PARISC.em_PARISC;
final em_VPP500 : Machine = stdgo._internal.debug.elf.Elf_em_VPP500.em_VPP500;
final em_SPARC32PLUS : Machine = stdgo._internal.debug.elf.Elf_em_SPARC32PLUS.em_SPARC32PLUS;
final em_960 : Machine = stdgo._internal.debug.elf.Elf_em_960.em_960;
final em_PPC : Machine = stdgo._internal.debug.elf.Elf_em_PPC.em_PPC;
final em_PPC64 : Machine = stdgo._internal.debug.elf.Elf_em_PPC64.em_PPC64;
final em_S390 : Machine = stdgo._internal.debug.elf.Elf_em_S390.em_S390;
final em_V800 : Machine = stdgo._internal.debug.elf.Elf_em_V800.em_V800;
final em_FR20 : Machine = stdgo._internal.debug.elf.Elf_em_FR20.em_FR20;
final em_RH32 : Machine = stdgo._internal.debug.elf.Elf_em_RH32.em_RH32;
final em_RCE : Machine = stdgo._internal.debug.elf.Elf_em_RCE.em_RCE;
final em_ARM : Machine = stdgo._internal.debug.elf.Elf_em_ARM.em_ARM;
final em_SH : Machine = stdgo._internal.debug.elf.Elf_em_SH.em_SH;
final em_SPARCV9 : Machine = stdgo._internal.debug.elf.Elf_em_SPARCV9.em_SPARCV9;
final em_TRICORE : Machine = stdgo._internal.debug.elf.Elf_em_TRICORE.em_TRICORE;
final em_ARC : Machine = stdgo._internal.debug.elf.Elf_em_ARC.em_ARC;
final em_H8_300 : Machine = stdgo._internal.debug.elf.Elf_em_H8_300.em_H8_300;
final em_H8_300H : Machine = stdgo._internal.debug.elf.Elf_em_H8_300H.em_H8_300H;
final em_H8S : Machine = stdgo._internal.debug.elf.Elf_em_H8S.em_H8S;
final em_H8_500 : Machine = stdgo._internal.debug.elf.Elf_em_H8_500.em_H8_500;
final em_IA_64 : Machine = stdgo._internal.debug.elf.Elf_em_IA_64.em_IA_64;
final em_MIPS_X : Machine = stdgo._internal.debug.elf.Elf_em_MIPS_X.em_MIPS_X;
final em_COLDFIRE : Machine = stdgo._internal.debug.elf.Elf_em_COLDFIRE.em_COLDFIRE;
final em_68HC12 : Machine = stdgo._internal.debug.elf.Elf_em_68HC12.em_68HC12;
final em_MMA : Machine = stdgo._internal.debug.elf.Elf_em_MMA.em_MMA;
final em_PCP : Machine = stdgo._internal.debug.elf.Elf_em_PCP.em_PCP;
final em_NCPU : Machine = stdgo._internal.debug.elf.Elf_em_NCPU.em_NCPU;
final em_NDR1 : Machine = stdgo._internal.debug.elf.Elf_em_NDR1.em_NDR1;
final em_STARCORE : Machine = stdgo._internal.debug.elf.Elf_em_STARCORE.em_STARCORE;
final em_ME16 : Machine = stdgo._internal.debug.elf.Elf_em_ME16.em_ME16;
final em_ST100 : Machine = stdgo._internal.debug.elf.Elf_em_ST100.em_ST100;
final em_TINYJ : Machine = stdgo._internal.debug.elf.Elf_em_TINYJ.em_TINYJ;
final em_X86_64 : Machine = stdgo._internal.debug.elf.Elf_em_X86_64.em_X86_64;
final em_PDSP : Machine = stdgo._internal.debug.elf.Elf_em_PDSP.em_PDSP;
final em_PDP10 : Machine = stdgo._internal.debug.elf.Elf_em_PDP10.em_PDP10;
final em_PDP11 : Machine = stdgo._internal.debug.elf.Elf_em_PDP11.em_PDP11;
final em_FX66 : Machine = stdgo._internal.debug.elf.Elf_em_FX66.em_FX66;
final em_ST9PLUS : Machine = stdgo._internal.debug.elf.Elf_em_ST9PLUS.em_ST9PLUS;
final em_ST7 : Machine = stdgo._internal.debug.elf.Elf_em_ST7.em_ST7;
final em_68HC16 : Machine = stdgo._internal.debug.elf.Elf_em_68HC16.em_68HC16;
final em_68HC11 : Machine = stdgo._internal.debug.elf.Elf_em_68HC11.em_68HC11;
final em_68HC08 : Machine = stdgo._internal.debug.elf.Elf_em_68HC08.em_68HC08;
final em_68HC05 : Machine = stdgo._internal.debug.elf.Elf_em_68HC05.em_68HC05;
final em_SVX : Machine = stdgo._internal.debug.elf.Elf_em_SVX.em_SVX;
final em_ST19 : Machine = stdgo._internal.debug.elf.Elf_em_ST19.em_ST19;
final em_VAX : Machine = stdgo._internal.debug.elf.Elf_em_VAX.em_VAX;
final em_CRIS : Machine = stdgo._internal.debug.elf.Elf_em_CRIS.em_CRIS;
final em_JAVELIN : Machine = stdgo._internal.debug.elf.Elf_em_JAVELIN.em_JAVELIN;
final em_FIREPATH : Machine = stdgo._internal.debug.elf.Elf_em_FIREPATH.em_FIREPATH;
final em_ZSP : Machine = stdgo._internal.debug.elf.Elf_em_ZSP.em_ZSP;
final em_MMIX : Machine = stdgo._internal.debug.elf.Elf_em_MMIX.em_MMIX;
final em_HUANY : Machine = stdgo._internal.debug.elf.Elf_em_HUANY.em_HUANY;
final em_PRISM : Machine = stdgo._internal.debug.elf.Elf_em_PRISM.em_PRISM;
final em_AVR : Machine = stdgo._internal.debug.elf.Elf_em_AVR.em_AVR;
final em_FR30 : Machine = stdgo._internal.debug.elf.Elf_em_FR30.em_FR30;
final em_D10V : Machine = stdgo._internal.debug.elf.Elf_em_D10V.em_D10V;
final em_D30V : Machine = stdgo._internal.debug.elf.Elf_em_D30V.em_D30V;
final em_V850 : Machine = stdgo._internal.debug.elf.Elf_em_V850.em_V850;
final em_M32R : Machine = stdgo._internal.debug.elf.Elf_em_M32R.em_M32R;
final em_MN10300 : Machine = stdgo._internal.debug.elf.Elf_em_MN10300.em_MN10300;
final em_MN10200 : Machine = stdgo._internal.debug.elf.Elf_em_MN10200.em_MN10200;
final em_PJ : Machine = stdgo._internal.debug.elf.Elf_em_PJ.em_PJ;
final em_OPENRISC : Machine = stdgo._internal.debug.elf.Elf_em_OPENRISC.em_OPENRISC;
final em_ARC_COMPACT : Machine = stdgo._internal.debug.elf.Elf_em_ARC_COMPACT.em_ARC_COMPACT;
final em_XTENSA : Machine = stdgo._internal.debug.elf.Elf_em_XTENSA.em_XTENSA;
final em_VIDEOCORE : Machine = stdgo._internal.debug.elf.Elf_em_VIDEOCORE.em_VIDEOCORE;
final em_TMM_GPP : Machine = stdgo._internal.debug.elf.Elf_em_TMM_GPP.em_TMM_GPP;
final em_NS32K : Machine = stdgo._internal.debug.elf.Elf_em_NS32K.em_NS32K;
final em_TPC : Machine = stdgo._internal.debug.elf.Elf_em_TPC.em_TPC;
final em_SNP1K : Machine = stdgo._internal.debug.elf.Elf_em_SNP1K.em_SNP1K;
final em_ST200 : Machine = stdgo._internal.debug.elf.Elf_em_ST200.em_ST200;
final em_IP2K : Machine = stdgo._internal.debug.elf.Elf_em_IP2K.em_IP2K;
final em_MAX : Machine = stdgo._internal.debug.elf.Elf_em_MAX.em_MAX;
final em_CR : Machine = stdgo._internal.debug.elf.Elf_em_CR.em_CR;
final em_F2MC16 : Machine = stdgo._internal.debug.elf.Elf_em_F2MC16.em_F2MC16;
final em_MSP430 : Machine = stdgo._internal.debug.elf.Elf_em_MSP430.em_MSP430;
final em_BLACKFIN : Machine = stdgo._internal.debug.elf.Elf_em_BLACKFIN.em_BLACKFIN;
final em_SE_C33 : Machine = stdgo._internal.debug.elf.Elf_em_SE_C33.em_SE_C33;
final em_SEP : Machine = stdgo._internal.debug.elf.Elf_em_SEP.em_SEP;
final em_ARCA : Machine = stdgo._internal.debug.elf.Elf_em_ARCA.em_ARCA;
final em_UNICORE : Machine = stdgo._internal.debug.elf.Elf_em_UNICORE.em_UNICORE;
final em_EXCESS : Machine = stdgo._internal.debug.elf.Elf_em_EXCESS.em_EXCESS;
final em_DXP : Machine = stdgo._internal.debug.elf.Elf_em_DXP.em_DXP;
final em_ALTERA_NIOS2 : Machine = stdgo._internal.debug.elf.Elf_em_ALTERA_NIOS2.em_ALTERA_NIOS2;
final em_CRX : Machine = stdgo._internal.debug.elf.Elf_em_CRX.em_CRX;
final em_XGATE : Machine = stdgo._internal.debug.elf.Elf_em_XGATE.em_XGATE;
final em_C166 : Machine = stdgo._internal.debug.elf.Elf_em_C166.em_C166;
final em_M16C : Machine = stdgo._internal.debug.elf.Elf_em_M16C.em_M16C;
final em_DSPIC30F : Machine = stdgo._internal.debug.elf.Elf_em_DSPIC30F.em_DSPIC30F;
final em_CE : Machine = stdgo._internal.debug.elf.Elf_em_CE.em_CE;
final em_M32C : Machine = stdgo._internal.debug.elf.Elf_em_M32C.em_M32C;
final em_TSK3000 : Machine = stdgo._internal.debug.elf.Elf_em_TSK3000.em_TSK3000;
final em_RS08 : Machine = stdgo._internal.debug.elf.Elf_em_RS08.em_RS08;
final em_SHARC : Machine = stdgo._internal.debug.elf.Elf_em_SHARC.em_SHARC;
final em_ECOG2 : Machine = stdgo._internal.debug.elf.Elf_em_ECOG2.em_ECOG2;
final em_SCORE7 : Machine = stdgo._internal.debug.elf.Elf_em_SCORE7.em_SCORE7;
final em_DSP24 : Machine = stdgo._internal.debug.elf.Elf_em_DSP24.em_DSP24;
final em_VIDEOCORE3 : Machine = stdgo._internal.debug.elf.Elf_em_VIDEOCORE3.em_VIDEOCORE3;
final em_LATTICEMICO32 : Machine = stdgo._internal.debug.elf.Elf_em_LATTICEMICO32.em_LATTICEMICO32;
final em_SE_C17 : Machine = stdgo._internal.debug.elf.Elf_em_SE_C17.em_SE_C17;
final em_TI_C6000 : Machine = stdgo._internal.debug.elf.Elf_em_TI_C6000.em_TI_C6000;
final em_TI_C2000 : Machine = stdgo._internal.debug.elf.Elf_em_TI_C2000.em_TI_C2000;
final em_TI_C5500 : Machine = stdgo._internal.debug.elf.Elf_em_TI_C5500.em_TI_C5500;
final em_TI_ARP32 : Machine = stdgo._internal.debug.elf.Elf_em_TI_ARP32.em_TI_ARP32;
final em_TI_PRU : Machine = stdgo._internal.debug.elf.Elf_em_TI_PRU.em_TI_PRU;
final em_MMDSP_PLUS : Machine = stdgo._internal.debug.elf.Elf_em_MMDSP_PLUS.em_MMDSP_PLUS;
final em_CYPRESS_M8C : Machine = stdgo._internal.debug.elf.Elf_em_CYPRESS_M8C.em_CYPRESS_M8C;
final em_R32C : Machine = stdgo._internal.debug.elf.Elf_em_R32C.em_R32C;
final em_TRIMEDIA : Machine = stdgo._internal.debug.elf.Elf_em_TRIMEDIA.em_TRIMEDIA;
final em_QDSP6 : Machine = stdgo._internal.debug.elf.Elf_em_QDSP6.em_QDSP6;
final em_8051 : Machine = stdgo._internal.debug.elf.Elf_em_8051.em_8051;
final em_STXP7X : Machine = stdgo._internal.debug.elf.Elf_em_STXP7X.em_STXP7X;
final em_NDS32 : Machine = stdgo._internal.debug.elf.Elf_em_NDS32.em_NDS32;
final em_ECOG1 : Machine = stdgo._internal.debug.elf.Elf_em_ECOG1.em_ECOG1;
final em_ECOG1X : Machine = stdgo._internal.debug.elf.Elf_em_ECOG1X.em_ECOG1X;
final em_MAXQ30 : Machine = stdgo._internal.debug.elf.Elf_em_MAXQ30.em_MAXQ30;
final em_XIMO16 : Machine = stdgo._internal.debug.elf.Elf_em_XIMO16.em_XIMO16;
final em_MANIK : Machine = stdgo._internal.debug.elf.Elf_em_MANIK.em_MANIK;
final em_CRAYNV2 : Machine = stdgo._internal.debug.elf.Elf_em_CRAYNV2.em_CRAYNV2;
final em_RX : Machine = stdgo._internal.debug.elf.Elf_em_RX.em_RX;
final em_METAG : Machine = stdgo._internal.debug.elf.Elf_em_METAG.em_METAG;
final em_MCST_ELBRUS : Machine = stdgo._internal.debug.elf.Elf_em_MCST_ELBRUS.em_MCST_ELBRUS;
final em_ECOG16 : Machine = stdgo._internal.debug.elf.Elf_em_ECOG16.em_ECOG16;
final em_CR16 : Machine = stdgo._internal.debug.elf.Elf_em_CR16.em_CR16;
final em_ETPU : Machine = stdgo._internal.debug.elf.Elf_em_ETPU.em_ETPU;
final em_SLE9X : Machine = stdgo._internal.debug.elf.Elf_em_SLE9X.em_SLE9X;
final em_L10M : Machine = stdgo._internal.debug.elf.Elf_em_L10M.em_L10M;
final em_K10M : Machine = stdgo._internal.debug.elf.Elf_em_K10M.em_K10M;
final em_AARCH64 : Machine = stdgo._internal.debug.elf.Elf_em_AARCH64.em_AARCH64;
final em_AVR32 : Machine = stdgo._internal.debug.elf.Elf_em_AVR32.em_AVR32;
final em_STM8 : Machine = stdgo._internal.debug.elf.Elf_em_STM8.em_STM8;
final em_TILE64 : Machine = stdgo._internal.debug.elf.Elf_em_TILE64.em_TILE64;
final em_TILEPRO : Machine = stdgo._internal.debug.elf.Elf_em_TILEPRO.em_TILEPRO;
final em_MICROBLAZE : Machine = stdgo._internal.debug.elf.Elf_em_MICROBLAZE.em_MICROBLAZE;
final em_CUDA : Machine = stdgo._internal.debug.elf.Elf_em_CUDA.em_CUDA;
final em_TILEGX : Machine = stdgo._internal.debug.elf.Elf_em_TILEGX.em_TILEGX;
final em_CLOUDSHIELD : Machine = stdgo._internal.debug.elf.Elf_em_CLOUDSHIELD.em_CLOUDSHIELD;
final em_COREA_1ST : Machine = stdgo._internal.debug.elf.Elf_em_COREA_1ST.em_COREA_1ST;
final em_COREA_2ND : Machine = stdgo._internal.debug.elf.Elf_em_COREA_2ND.em_COREA_2ND;
final em_ARC_COMPACT2 : Machine = stdgo._internal.debug.elf.Elf_em_ARC_COMPACT2.em_ARC_COMPACT2;
final em_OPEN8 : Machine = stdgo._internal.debug.elf.Elf_em_OPEN8.em_OPEN8;
final em_RL78 : Machine = stdgo._internal.debug.elf.Elf_em_RL78.em_RL78;
final em_VIDEOCORE5 : Machine = stdgo._internal.debug.elf.Elf_em_VIDEOCORE5.em_VIDEOCORE5;
final em_78KOR : Machine = stdgo._internal.debug.elf.Elf_em_78KOR.em_78KOR;
final em_56800EX : Machine = stdgo._internal.debug.elf.Elf_em_56800EX.em_56800EX;
final em_BA1 : Machine = stdgo._internal.debug.elf.Elf_em_BA1.em_BA1;
final em_BA2 : Machine = stdgo._internal.debug.elf.Elf_em_BA2.em_BA2;
final em_XCORE : Machine = stdgo._internal.debug.elf.Elf_em_XCORE.em_XCORE;
final em_MCHP_PIC : Machine = stdgo._internal.debug.elf.Elf_em_MCHP_PIC.em_MCHP_PIC;
final em_INTEL205 : Machine = stdgo._internal.debug.elf.Elf_em_INTEL205.em_INTEL205;
final em_INTEL206 : Machine = stdgo._internal.debug.elf.Elf_em_INTEL206.em_INTEL206;
final em_INTEL207 : Machine = stdgo._internal.debug.elf.Elf_em_INTEL207.em_INTEL207;
final em_INTEL208 : Machine = stdgo._internal.debug.elf.Elf_em_INTEL208.em_INTEL208;
final em_INTEL209 : Machine = stdgo._internal.debug.elf.Elf_em_INTEL209.em_INTEL209;
final em_KM32 : Machine = stdgo._internal.debug.elf.Elf_em_KM32.em_KM32;
final em_KMX32 : Machine = stdgo._internal.debug.elf.Elf_em_KMX32.em_KMX32;
final em_KMX16 : Machine = stdgo._internal.debug.elf.Elf_em_KMX16.em_KMX16;
final em_KMX8 : Machine = stdgo._internal.debug.elf.Elf_em_KMX8.em_KMX8;
final em_KVARC : Machine = stdgo._internal.debug.elf.Elf_em_KVARC.em_KVARC;
final em_CDP : Machine = stdgo._internal.debug.elf.Elf_em_CDP.em_CDP;
final em_COGE : Machine = stdgo._internal.debug.elf.Elf_em_COGE.em_COGE;
final em_COOL : Machine = stdgo._internal.debug.elf.Elf_em_COOL.em_COOL;
final em_NORC : Machine = stdgo._internal.debug.elf.Elf_em_NORC.em_NORC;
final em_CSR_KALIMBA : Machine = stdgo._internal.debug.elf.Elf_em_CSR_KALIMBA.em_CSR_KALIMBA;
final em_Z80 : Machine = stdgo._internal.debug.elf.Elf_em_Z80.em_Z80;
final em_VISIUM : Machine = stdgo._internal.debug.elf.Elf_em_VISIUM.em_VISIUM;
final em_FT32 : Machine = stdgo._internal.debug.elf.Elf_em_FT32.em_FT32;
final em_MOXIE : Machine = stdgo._internal.debug.elf.Elf_em_MOXIE.em_MOXIE;
final em_AMDGPU : Machine = stdgo._internal.debug.elf.Elf_em_AMDGPU.em_AMDGPU;
final em_RISCV : Machine = stdgo._internal.debug.elf.Elf_em_RISCV.em_RISCV;
final em_LANAI : Machine = stdgo._internal.debug.elf.Elf_em_LANAI.em_LANAI;
final em_BPF : Machine = stdgo._internal.debug.elf.Elf_em_BPF.em_BPF;
final em_LOONGARCH : Machine = stdgo._internal.debug.elf.Elf_em_LOONGARCH.em_LOONGARCH;
final em_486 : Machine = stdgo._internal.debug.elf.Elf_em_486.em_486;
final em_MIPS_RS4_BE : Machine = stdgo._internal.debug.elf.Elf_em_MIPS_RS4_BE.em_MIPS_RS4_BE;
final em_ALPHA_STD : Machine = stdgo._internal.debug.elf.Elf_em_ALPHA_STD.em_ALPHA_STD;
final em_ALPHA : Machine = stdgo._internal.debug.elf.Elf_em_ALPHA.em_ALPHA;
final shn_UNDEF : SectionIndex = stdgo._internal.debug.elf.Elf_shn_UNDEF.shn_UNDEF;
final shn_LORESERVE : SectionIndex = stdgo._internal.debug.elf.Elf_shn_LORESERVE.shn_LORESERVE;
final shn_LOPROC : SectionIndex = stdgo._internal.debug.elf.Elf_shn_LOPROC.shn_LOPROC;
final shn_HIPROC : SectionIndex = stdgo._internal.debug.elf.Elf_shn_HIPROC.shn_HIPROC;
final shn_LOOS : SectionIndex = stdgo._internal.debug.elf.Elf_shn_LOOS.shn_LOOS;
final shn_HIOS : SectionIndex = stdgo._internal.debug.elf.Elf_shn_HIOS.shn_HIOS;
final shn_ABS : SectionIndex = stdgo._internal.debug.elf.Elf_shn_ABS.shn_ABS;
final shn_COMMON : SectionIndex = stdgo._internal.debug.elf.Elf_shn_COMMON.shn_COMMON;
final shn_XINDEX : SectionIndex = stdgo._internal.debug.elf.Elf_shn_XINDEX.shn_XINDEX;
final shn_HIRESERVE : SectionIndex = stdgo._internal.debug.elf.Elf_shn_HIRESERVE.shn_HIRESERVE;
final sht_NULL : SectionType = stdgo._internal.debug.elf.Elf_sht_NULL.sht_NULL;
final sht_PROGBITS : SectionType = stdgo._internal.debug.elf.Elf_sht_PROGBITS.sht_PROGBITS;
final sht_SYMTAB : SectionType = stdgo._internal.debug.elf.Elf_sht_SYMTAB.sht_SYMTAB;
final sht_STRTAB : SectionType = stdgo._internal.debug.elf.Elf_sht_STRTAB.sht_STRTAB;
final sht_RELA : SectionType = stdgo._internal.debug.elf.Elf_sht_RELA.sht_RELA;
final sht_HASH : SectionType = stdgo._internal.debug.elf.Elf_sht_HASH.sht_HASH;
final sht_DYNAMIC : SectionType = stdgo._internal.debug.elf.Elf_sht_DYNAMIC.sht_DYNAMIC;
final sht_NOTE : SectionType = stdgo._internal.debug.elf.Elf_sht_NOTE.sht_NOTE;
final sht_NOBITS : SectionType = stdgo._internal.debug.elf.Elf_sht_NOBITS.sht_NOBITS;
final sht_REL : SectionType = stdgo._internal.debug.elf.Elf_sht_REL.sht_REL;
final sht_SHLIB : SectionType = stdgo._internal.debug.elf.Elf_sht_SHLIB.sht_SHLIB;
final sht_DYNSYM : SectionType = stdgo._internal.debug.elf.Elf_sht_DYNSYM.sht_DYNSYM;
final sht_INIT_ARRAY : SectionType = stdgo._internal.debug.elf.Elf_sht_INIT_ARRAY.sht_INIT_ARRAY;
final sht_FINI_ARRAY : SectionType = stdgo._internal.debug.elf.Elf_sht_FINI_ARRAY.sht_FINI_ARRAY;
final sht_PREINIT_ARRAY : SectionType = stdgo._internal.debug.elf.Elf_sht_PREINIT_ARRAY.sht_PREINIT_ARRAY;
final sht_GROUP : SectionType = stdgo._internal.debug.elf.Elf_sht_GROUP.sht_GROUP;
final sht_SYMTAB_SHNDX : SectionType = stdgo._internal.debug.elf.Elf_sht_SYMTAB_SHNDX.sht_SYMTAB_SHNDX;
final sht_LOOS : SectionType = stdgo._internal.debug.elf.Elf_sht_LOOS.sht_LOOS;
final sht_GNU_ATTRIBUTES : SectionType = stdgo._internal.debug.elf.Elf_sht_GNU_ATTRIBUTES.sht_GNU_ATTRIBUTES;
final sht_GNU_HASH : SectionType = stdgo._internal.debug.elf.Elf_sht_GNU_HASH.sht_GNU_HASH;
final sht_GNU_LIBLIST : SectionType = stdgo._internal.debug.elf.Elf_sht_GNU_LIBLIST.sht_GNU_LIBLIST;
final sht_GNU_VERDEF : SectionType = stdgo._internal.debug.elf.Elf_sht_GNU_VERDEF.sht_GNU_VERDEF;
final sht_GNU_VERNEED : SectionType = stdgo._internal.debug.elf.Elf_sht_GNU_VERNEED.sht_GNU_VERNEED;
final sht_GNU_VERSYM : SectionType = stdgo._internal.debug.elf.Elf_sht_GNU_VERSYM.sht_GNU_VERSYM;
final sht_HIOS : SectionType = stdgo._internal.debug.elf.Elf_sht_HIOS.sht_HIOS;
final sht_LOPROC : SectionType = stdgo._internal.debug.elf.Elf_sht_LOPROC.sht_LOPROC;
final sht_MIPS_ABIFLAGS : SectionType = stdgo._internal.debug.elf.Elf_sht_MIPS_ABIFLAGS.sht_MIPS_ABIFLAGS;
final sht_HIPROC : SectionType = stdgo._internal.debug.elf.Elf_sht_HIPROC.sht_HIPROC;
final sht_LOUSER : SectionType = stdgo._internal.debug.elf.Elf_sht_LOUSER.sht_LOUSER;
final sht_HIUSER : SectionType = stdgo._internal.debug.elf.Elf_sht_HIUSER.sht_HIUSER;
final shf_WRITE : SectionFlag = stdgo._internal.debug.elf.Elf_shf_WRITE.shf_WRITE;
final shf_ALLOC : SectionFlag = stdgo._internal.debug.elf.Elf_shf_ALLOC.shf_ALLOC;
final shf_EXECINSTR : SectionFlag = stdgo._internal.debug.elf.Elf_shf_EXECINSTR.shf_EXECINSTR;
final shf_MERGE : SectionFlag = stdgo._internal.debug.elf.Elf_shf_MERGE.shf_MERGE;
final shf_STRINGS : SectionFlag = stdgo._internal.debug.elf.Elf_shf_STRINGS.shf_STRINGS;
final shf_INFO_LINK : SectionFlag = stdgo._internal.debug.elf.Elf_shf_INFO_LINK.shf_INFO_LINK;
final shf_LINK_ORDER : SectionFlag = stdgo._internal.debug.elf.Elf_shf_LINK_ORDER.shf_LINK_ORDER;
final shf_OS_NONCONFORMING : SectionFlag = stdgo._internal.debug.elf.Elf_shf_OS_NONCONFORMING.shf_OS_NONCONFORMING;
final shf_GROUP : SectionFlag = stdgo._internal.debug.elf.Elf_shf_GROUP.shf_GROUP;
final shf_TLS : SectionFlag = stdgo._internal.debug.elf.Elf_shf_TLS.shf_TLS;
final shf_COMPRESSED : SectionFlag = stdgo._internal.debug.elf.Elf_shf_COMPRESSED.shf_COMPRESSED;
final shf_MASKOS : SectionFlag = stdgo._internal.debug.elf.Elf_shf_MASKOS.shf_MASKOS;
final shf_MASKPROC : SectionFlag = stdgo._internal.debug.elf.Elf_shf_MASKPROC.shf_MASKPROC;
final compress_ZLIB : CompressionType = stdgo._internal.debug.elf.Elf_compress_ZLIB.compress_ZLIB;
final compress_ZSTD : CompressionType = stdgo._internal.debug.elf.Elf_compress_ZSTD.compress_ZSTD;
final compress_LOOS : CompressionType = stdgo._internal.debug.elf.Elf_compress_LOOS.compress_LOOS;
final compress_HIOS : CompressionType = stdgo._internal.debug.elf.Elf_compress_HIOS.compress_HIOS;
final compress_LOPROC : CompressionType = stdgo._internal.debug.elf.Elf_compress_LOPROC.compress_LOPROC;
final compress_HIPROC : CompressionType = stdgo._internal.debug.elf.Elf_compress_HIPROC.compress_HIPROC;
final pt_NULL : ProgType = stdgo._internal.debug.elf.Elf_pt_NULL.pt_NULL;
final pt_LOAD : ProgType = stdgo._internal.debug.elf.Elf_pt_LOAD.pt_LOAD;
final pt_DYNAMIC : ProgType = stdgo._internal.debug.elf.Elf_pt_DYNAMIC.pt_DYNAMIC;
final pt_INTERP : ProgType = stdgo._internal.debug.elf.Elf_pt_INTERP.pt_INTERP;
final pt_NOTE : ProgType = stdgo._internal.debug.elf.Elf_pt_NOTE.pt_NOTE;
final pt_SHLIB : ProgType = stdgo._internal.debug.elf.Elf_pt_SHLIB.pt_SHLIB;
final pt_PHDR : ProgType = stdgo._internal.debug.elf.Elf_pt_PHDR.pt_PHDR;
final pt_TLS : ProgType = stdgo._internal.debug.elf.Elf_pt_TLS.pt_TLS;
final pt_LOOS : ProgType = stdgo._internal.debug.elf.Elf_pt_LOOS.pt_LOOS;
final pt_GNU_EH_FRAME : ProgType = stdgo._internal.debug.elf.Elf_pt_GNU_EH_FRAME.pt_GNU_EH_FRAME;
final pt_GNU_STACK : ProgType = stdgo._internal.debug.elf.Elf_pt_GNU_STACK.pt_GNU_STACK;
final pt_GNU_RELRO : ProgType = stdgo._internal.debug.elf.Elf_pt_GNU_RELRO.pt_GNU_RELRO;
final pt_GNU_PROPERTY : ProgType = stdgo._internal.debug.elf.Elf_pt_GNU_PROPERTY.pt_GNU_PROPERTY;
final pt_GNU_MBIND_LO : ProgType = stdgo._internal.debug.elf.Elf_pt_GNU_MBIND_LO.pt_GNU_MBIND_LO;
final pt_GNU_MBIND_HI : ProgType = stdgo._internal.debug.elf.Elf_pt_GNU_MBIND_HI.pt_GNU_MBIND_HI;
final pt_PAX_FLAGS : ProgType = stdgo._internal.debug.elf.Elf_pt_PAX_FLAGS.pt_PAX_FLAGS;
final pt_OPENBSD_RANDOMIZE : ProgType = stdgo._internal.debug.elf.Elf_pt_OPENBSD_RANDOMIZE.pt_OPENBSD_RANDOMIZE;
final pt_OPENBSD_WXNEEDED : ProgType = stdgo._internal.debug.elf.Elf_pt_OPENBSD_WXNEEDED.pt_OPENBSD_WXNEEDED;
final pt_OPENBSD_BOOTDATA : ProgType = stdgo._internal.debug.elf.Elf_pt_OPENBSD_BOOTDATA.pt_OPENBSD_BOOTDATA;
final pt_SUNW_EH_FRAME : ProgType = stdgo._internal.debug.elf.Elf_pt_SUNW_EH_FRAME.pt_SUNW_EH_FRAME;
final pt_SUNWSTACK : ProgType = stdgo._internal.debug.elf.Elf_pt_SUNWSTACK.pt_SUNWSTACK;
final pt_HIOS : ProgType = stdgo._internal.debug.elf.Elf_pt_HIOS.pt_HIOS;
final pt_LOPROC : ProgType = stdgo._internal.debug.elf.Elf_pt_LOPROC.pt_LOPROC;
final pt_ARM_ARCHEXT : ProgType = stdgo._internal.debug.elf.Elf_pt_ARM_ARCHEXT.pt_ARM_ARCHEXT;
final pt_ARM_EXIDX : ProgType = stdgo._internal.debug.elf.Elf_pt_ARM_EXIDX.pt_ARM_EXIDX;
final pt_AARCH64_ARCHEXT : ProgType = stdgo._internal.debug.elf.Elf_pt_AARCH64_ARCHEXT.pt_AARCH64_ARCHEXT;
final pt_AARCH64_UNWIND : ProgType = stdgo._internal.debug.elf.Elf_pt_AARCH64_UNWIND.pt_AARCH64_UNWIND;
final pt_MIPS_REGINFO : ProgType = stdgo._internal.debug.elf.Elf_pt_MIPS_REGINFO.pt_MIPS_REGINFO;
final pt_MIPS_RTPROC : ProgType = stdgo._internal.debug.elf.Elf_pt_MIPS_RTPROC.pt_MIPS_RTPROC;
final pt_MIPS_OPTIONS : ProgType = stdgo._internal.debug.elf.Elf_pt_MIPS_OPTIONS.pt_MIPS_OPTIONS;
final pt_MIPS_ABIFLAGS : ProgType = stdgo._internal.debug.elf.Elf_pt_MIPS_ABIFLAGS.pt_MIPS_ABIFLAGS;
final pt_S390_PGSTE : ProgType = stdgo._internal.debug.elf.Elf_pt_S390_PGSTE.pt_S390_PGSTE;
final pt_HIPROC : ProgType = stdgo._internal.debug.elf.Elf_pt_HIPROC.pt_HIPROC;
final pf_X : ProgFlag = stdgo._internal.debug.elf.Elf_pf_X.pf_X;
final pf_W : ProgFlag = stdgo._internal.debug.elf.Elf_pf_W.pf_W;
final pf_R : ProgFlag = stdgo._internal.debug.elf.Elf_pf_R.pf_R;
final pf_MASKOS : ProgFlag = stdgo._internal.debug.elf.Elf_pf_MASKOS.pf_MASKOS;
final pf_MASKPROC : ProgFlag = stdgo._internal.debug.elf.Elf_pf_MASKPROC.pf_MASKPROC;
final dt_NULL : DynTag = stdgo._internal.debug.elf.Elf_dt_NULL.dt_NULL;
final dt_NEEDED : DynTag = stdgo._internal.debug.elf.Elf_dt_NEEDED.dt_NEEDED;
final dt_PLTRELSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_PLTRELSZ.dt_PLTRELSZ;
final dt_PLTGOT : DynTag = stdgo._internal.debug.elf.Elf_dt_PLTGOT.dt_PLTGOT;
final dt_HASH : DynTag = stdgo._internal.debug.elf.Elf_dt_HASH.dt_HASH;
final dt_STRTAB : DynTag = stdgo._internal.debug.elf.Elf_dt_STRTAB.dt_STRTAB;
final dt_SYMTAB : DynTag = stdgo._internal.debug.elf.Elf_dt_SYMTAB.dt_SYMTAB;
final dt_RELA : DynTag = stdgo._internal.debug.elf.Elf_dt_RELA.dt_RELA;
final dt_RELASZ : DynTag = stdgo._internal.debug.elf.Elf_dt_RELASZ.dt_RELASZ;
final dt_RELAENT : DynTag = stdgo._internal.debug.elf.Elf_dt_RELAENT.dt_RELAENT;
final dt_STRSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_STRSZ.dt_STRSZ;
final dt_SYMENT : DynTag = stdgo._internal.debug.elf.Elf_dt_SYMENT.dt_SYMENT;
final dt_INIT : DynTag = stdgo._internal.debug.elf.Elf_dt_INIT.dt_INIT;
final dt_FINI : DynTag = stdgo._internal.debug.elf.Elf_dt_FINI.dt_FINI;
final dt_SONAME : DynTag = stdgo._internal.debug.elf.Elf_dt_SONAME.dt_SONAME;
final dt_RPATH : DynTag = stdgo._internal.debug.elf.Elf_dt_RPATH.dt_RPATH;
final dt_SYMBOLIC : DynTag = stdgo._internal.debug.elf.Elf_dt_SYMBOLIC.dt_SYMBOLIC;
final dt_REL : DynTag = stdgo._internal.debug.elf.Elf_dt_REL.dt_REL;
final dt_RELSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_RELSZ.dt_RELSZ;
final dt_RELENT : DynTag = stdgo._internal.debug.elf.Elf_dt_RELENT.dt_RELENT;
final dt_PLTREL : DynTag = stdgo._internal.debug.elf.Elf_dt_PLTREL.dt_PLTREL;
final dt_DEBUG : DynTag = stdgo._internal.debug.elf.Elf_dt_DEBUG.dt_DEBUG;
final dt_TEXTREL : DynTag = stdgo._internal.debug.elf.Elf_dt_TEXTREL.dt_TEXTREL;
final dt_JMPREL : DynTag = stdgo._internal.debug.elf.Elf_dt_JMPREL.dt_JMPREL;
final dt_BIND_NOW : DynTag = stdgo._internal.debug.elf.Elf_dt_BIND_NOW.dt_BIND_NOW;
final dt_INIT_ARRAY : DynTag = stdgo._internal.debug.elf.Elf_dt_INIT_ARRAY.dt_INIT_ARRAY;
final dt_FINI_ARRAY : DynTag = stdgo._internal.debug.elf.Elf_dt_FINI_ARRAY.dt_FINI_ARRAY;
final dt_INIT_ARRAYSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_INIT_ARRAYSZ.dt_INIT_ARRAYSZ;
final dt_FINI_ARRAYSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_FINI_ARRAYSZ.dt_FINI_ARRAYSZ;
final dt_RUNPATH : DynTag = stdgo._internal.debug.elf.Elf_dt_RUNPATH.dt_RUNPATH;
final dt_FLAGS : DynTag = stdgo._internal.debug.elf.Elf_dt_FLAGS.dt_FLAGS;
final dt_ENCODING : DynTag = stdgo._internal.debug.elf.Elf_dt_ENCODING.dt_ENCODING;
final dt_PREINIT_ARRAY : DynTag = stdgo._internal.debug.elf.Elf_dt_PREINIT_ARRAY.dt_PREINIT_ARRAY;
final dt_PREINIT_ARRAYSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_PREINIT_ARRAYSZ.dt_PREINIT_ARRAYSZ;
final dt_SYMTAB_SHNDX : DynTag = stdgo._internal.debug.elf.Elf_dt_SYMTAB_SHNDX.dt_SYMTAB_SHNDX;
final dt_LOOS : DynTag = stdgo._internal.debug.elf.Elf_dt_LOOS.dt_LOOS;
final dt_HIOS : DynTag = stdgo._internal.debug.elf.Elf_dt_HIOS.dt_HIOS;
final dt_VALRNGLO : DynTag = stdgo._internal.debug.elf.Elf_dt_VALRNGLO.dt_VALRNGLO;
final dt_GNU_PRELINKED : DynTag = stdgo._internal.debug.elf.Elf_dt_GNU_PRELINKED.dt_GNU_PRELINKED;
final dt_GNU_CONFLICTSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_GNU_CONFLICTSZ.dt_GNU_CONFLICTSZ;
final dt_GNU_LIBLISTSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_GNU_LIBLISTSZ.dt_GNU_LIBLISTSZ;
final dt_CHECKSUM : DynTag = stdgo._internal.debug.elf.Elf_dt_CHECKSUM.dt_CHECKSUM;
final dt_PLTPADSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_PLTPADSZ.dt_PLTPADSZ;
final dt_MOVEENT : DynTag = stdgo._internal.debug.elf.Elf_dt_MOVEENT.dt_MOVEENT;
final dt_MOVESZ : DynTag = stdgo._internal.debug.elf.Elf_dt_MOVESZ.dt_MOVESZ;
final dt_FEATURE : DynTag = stdgo._internal.debug.elf.Elf_dt_FEATURE.dt_FEATURE;
final dt_POSFLAG_1 : DynTag = stdgo._internal.debug.elf.Elf_dt_POSFLAG_1.dt_POSFLAG_1;
final dt_SYMINSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_SYMINSZ.dt_SYMINSZ;
final dt_SYMINENT : DynTag = stdgo._internal.debug.elf.Elf_dt_SYMINENT.dt_SYMINENT;
final dt_VALRNGHI : DynTag = stdgo._internal.debug.elf.Elf_dt_VALRNGHI.dt_VALRNGHI;
final dt_ADDRRNGLO : DynTag = stdgo._internal.debug.elf.Elf_dt_ADDRRNGLO.dt_ADDRRNGLO;
final dt_GNU_HASH : DynTag = stdgo._internal.debug.elf.Elf_dt_GNU_HASH.dt_GNU_HASH;
final dt_TLSDESC_PLT : DynTag = stdgo._internal.debug.elf.Elf_dt_TLSDESC_PLT.dt_TLSDESC_PLT;
final dt_TLSDESC_GOT : DynTag = stdgo._internal.debug.elf.Elf_dt_TLSDESC_GOT.dt_TLSDESC_GOT;
final dt_GNU_CONFLICT : DynTag = stdgo._internal.debug.elf.Elf_dt_GNU_CONFLICT.dt_GNU_CONFLICT;
final dt_GNU_LIBLIST : DynTag = stdgo._internal.debug.elf.Elf_dt_GNU_LIBLIST.dt_GNU_LIBLIST;
final dt_CONFIG : DynTag = stdgo._internal.debug.elf.Elf_dt_CONFIG.dt_CONFIG;
final dt_DEPAUDIT : DynTag = stdgo._internal.debug.elf.Elf_dt_DEPAUDIT.dt_DEPAUDIT;
final dt_AUDIT : DynTag = stdgo._internal.debug.elf.Elf_dt_AUDIT.dt_AUDIT;
final dt_PLTPAD : DynTag = stdgo._internal.debug.elf.Elf_dt_PLTPAD.dt_PLTPAD;
final dt_MOVETAB : DynTag = stdgo._internal.debug.elf.Elf_dt_MOVETAB.dt_MOVETAB;
final dt_SYMINFO : DynTag = stdgo._internal.debug.elf.Elf_dt_SYMINFO.dt_SYMINFO;
final dt_ADDRRNGHI : DynTag = stdgo._internal.debug.elf.Elf_dt_ADDRRNGHI.dt_ADDRRNGHI;
final dt_VERSYM : DynTag = stdgo._internal.debug.elf.Elf_dt_VERSYM.dt_VERSYM;
final dt_RELACOUNT : DynTag = stdgo._internal.debug.elf.Elf_dt_RELACOUNT.dt_RELACOUNT;
final dt_RELCOUNT : DynTag = stdgo._internal.debug.elf.Elf_dt_RELCOUNT.dt_RELCOUNT;
final dt_FLAGS_1 : DynTag = stdgo._internal.debug.elf.Elf_dt_FLAGS_1.dt_FLAGS_1;
final dt_VERDEF : DynTag = stdgo._internal.debug.elf.Elf_dt_VERDEF.dt_VERDEF;
final dt_VERDEFNUM : DynTag = stdgo._internal.debug.elf.Elf_dt_VERDEFNUM.dt_VERDEFNUM;
final dt_VERNEED : DynTag = stdgo._internal.debug.elf.Elf_dt_VERNEED.dt_VERNEED;
final dt_VERNEEDNUM : DynTag = stdgo._internal.debug.elf.Elf_dt_VERNEEDNUM.dt_VERNEEDNUM;
final dt_LOPROC : DynTag = stdgo._internal.debug.elf.Elf_dt_LOPROC.dt_LOPROC;
final dt_MIPS_RLD_VERSION : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_RLD_VERSION.dt_MIPS_RLD_VERSION;
final dt_MIPS_TIME_STAMP : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_TIME_STAMP.dt_MIPS_TIME_STAMP;
final dt_MIPS_ICHECKSUM : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_ICHECKSUM.dt_MIPS_ICHECKSUM;
final dt_MIPS_IVERSION : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_IVERSION.dt_MIPS_IVERSION;
final dt_MIPS_FLAGS : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_FLAGS.dt_MIPS_FLAGS;
final dt_MIPS_BASE_ADDRESS : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_BASE_ADDRESS.dt_MIPS_BASE_ADDRESS;
final dt_MIPS_MSYM : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_MSYM.dt_MIPS_MSYM;
final dt_MIPS_CONFLICT : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_CONFLICT.dt_MIPS_CONFLICT;
final dt_MIPS_LIBLIST : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_LIBLIST.dt_MIPS_LIBLIST;
final dt_MIPS_LOCAL_GOTNO : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_LOCAL_GOTNO.dt_MIPS_LOCAL_GOTNO;
final dt_MIPS_CONFLICTNO : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_CONFLICTNO.dt_MIPS_CONFLICTNO;
final dt_MIPS_LIBLISTNO : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_LIBLISTNO.dt_MIPS_LIBLISTNO;
final dt_MIPS_SYMTABNO : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_SYMTABNO.dt_MIPS_SYMTABNO;
final dt_MIPS_UNREFEXTNO : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_UNREFEXTNO.dt_MIPS_UNREFEXTNO;
final dt_MIPS_GOTSYM : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_GOTSYM.dt_MIPS_GOTSYM;
final dt_MIPS_HIPAGENO : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_HIPAGENO.dt_MIPS_HIPAGENO;
final dt_MIPS_RLD_MAP : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_RLD_MAP.dt_MIPS_RLD_MAP;
final dt_MIPS_DELTA_CLASS : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_DELTA_CLASS.dt_MIPS_DELTA_CLASS;
final dt_MIPS_DELTA_CLASS_NO : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_DELTA_CLASS_NO.dt_MIPS_DELTA_CLASS_NO;
final dt_MIPS_DELTA_INSTANCE : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_DELTA_INSTANCE.dt_MIPS_DELTA_INSTANCE;
final dt_MIPS_DELTA_INSTANCE_NO : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_DELTA_INSTANCE_NO.dt_MIPS_DELTA_INSTANCE_NO;
final dt_MIPS_DELTA_RELOC : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_DELTA_RELOC.dt_MIPS_DELTA_RELOC;
final dt_MIPS_DELTA_RELOC_NO : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_DELTA_RELOC_NO.dt_MIPS_DELTA_RELOC_NO;
final dt_MIPS_DELTA_SYM : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_DELTA_SYM.dt_MIPS_DELTA_SYM;
final dt_MIPS_DELTA_SYM_NO : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_DELTA_SYM_NO.dt_MIPS_DELTA_SYM_NO;
final dt_MIPS_DELTA_CLASSSYM : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_DELTA_CLASSSYM.dt_MIPS_DELTA_CLASSSYM;
final dt_MIPS_DELTA_CLASSSYM_NO : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_DELTA_CLASSSYM_NO.dt_MIPS_DELTA_CLASSSYM_NO;
final dt_MIPS_CXX_FLAGS : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_CXX_FLAGS.dt_MIPS_CXX_FLAGS;
final dt_MIPS_PIXIE_INIT : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_PIXIE_INIT.dt_MIPS_PIXIE_INIT;
final dt_MIPS_SYMBOL_LIB : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_SYMBOL_LIB.dt_MIPS_SYMBOL_LIB;
final dt_MIPS_LOCALPAGE_GOTIDX : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_LOCALPAGE_GOTIDX.dt_MIPS_LOCALPAGE_GOTIDX;
final dt_MIPS_LOCAL_GOTIDX : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_LOCAL_GOTIDX.dt_MIPS_LOCAL_GOTIDX;
final dt_MIPS_HIDDEN_GOTIDX : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_HIDDEN_GOTIDX.dt_MIPS_HIDDEN_GOTIDX;
final dt_MIPS_PROTECTED_GOTIDX : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_PROTECTED_GOTIDX.dt_MIPS_PROTECTED_GOTIDX;
final dt_MIPS_OPTIONS : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_OPTIONS.dt_MIPS_OPTIONS;
final dt_MIPS_INTERFACE : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_INTERFACE.dt_MIPS_INTERFACE;
final dt_MIPS_DYNSTR_ALIGN : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_DYNSTR_ALIGN.dt_MIPS_DYNSTR_ALIGN;
final dt_MIPS_INTERFACE_SIZE : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_INTERFACE_SIZE.dt_MIPS_INTERFACE_SIZE;
final dt_MIPS_RLD_TEXT_RESOLVE_ADDR : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_RLD_TEXT_RESOLVE_ADDR.dt_MIPS_RLD_TEXT_RESOLVE_ADDR;
final dt_MIPS_PERF_SUFFIX : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_PERF_SUFFIX.dt_MIPS_PERF_SUFFIX;
final dt_MIPS_COMPACT_SIZE : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_COMPACT_SIZE.dt_MIPS_COMPACT_SIZE;
final dt_MIPS_GP_VALUE : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_GP_VALUE.dt_MIPS_GP_VALUE;
final dt_MIPS_AUX_DYNAMIC : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_AUX_DYNAMIC.dt_MIPS_AUX_DYNAMIC;
final dt_MIPS_PLTGOT : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_PLTGOT.dt_MIPS_PLTGOT;
final dt_MIPS_RWPLT : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_RWPLT.dt_MIPS_RWPLT;
final dt_MIPS_RLD_MAP_REL : DynTag = stdgo._internal.debug.elf.Elf_dt_MIPS_RLD_MAP_REL.dt_MIPS_RLD_MAP_REL;
final dt_PPC_GOT : DynTag = stdgo._internal.debug.elf.Elf_dt_PPC_GOT.dt_PPC_GOT;
final dt_PPC_OPT : DynTag = stdgo._internal.debug.elf.Elf_dt_PPC_OPT.dt_PPC_OPT;
final dt_PPC64_GLINK : DynTag = stdgo._internal.debug.elf.Elf_dt_PPC64_GLINK.dt_PPC64_GLINK;
final dt_PPC64_OPD : DynTag = stdgo._internal.debug.elf.Elf_dt_PPC64_OPD.dt_PPC64_OPD;
final dt_PPC64_OPDSZ : DynTag = stdgo._internal.debug.elf.Elf_dt_PPC64_OPDSZ.dt_PPC64_OPDSZ;
final dt_PPC64_OPT : DynTag = stdgo._internal.debug.elf.Elf_dt_PPC64_OPT.dt_PPC64_OPT;
final dt_SPARC_REGISTER : DynTag = stdgo._internal.debug.elf.Elf_dt_SPARC_REGISTER.dt_SPARC_REGISTER;
final dt_AUXILIARY : DynTag = stdgo._internal.debug.elf.Elf_dt_AUXILIARY.dt_AUXILIARY;
final dt_USED : DynTag = stdgo._internal.debug.elf.Elf_dt_USED.dt_USED;
final dt_FILTER : DynTag = stdgo._internal.debug.elf.Elf_dt_FILTER.dt_FILTER;
final dt_HIPROC : DynTag = stdgo._internal.debug.elf.Elf_dt_HIPROC.dt_HIPROC;
final df_ORIGIN : DynFlag = stdgo._internal.debug.elf.Elf_df_ORIGIN.df_ORIGIN;
final df_SYMBOLIC : DynFlag = stdgo._internal.debug.elf.Elf_df_SYMBOLIC.df_SYMBOLIC;
final df_TEXTREL : DynFlag = stdgo._internal.debug.elf.Elf_df_TEXTREL.df_TEXTREL;
final df_BIND_NOW : DynFlag = stdgo._internal.debug.elf.Elf_df_BIND_NOW.df_BIND_NOW;
final df_STATIC_TLS : DynFlag = stdgo._internal.debug.elf.Elf_df_STATIC_TLS.df_STATIC_TLS;
final df_1_NOW : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_NOW.df_1_NOW;
final df_1_GLOBAL : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_GLOBAL.df_1_GLOBAL;
final df_1_GROUP : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_GROUP.df_1_GROUP;
final df_1_NODELETE : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_NODELETE.df_1_NODELETE;
final df_1_LOADFLTR : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_LOADFLTR.df_1_LOADFLTR;
final df_1_INITFIRST : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_INITFIRST.df_1_INITFIRST;
final df_1_NOOPEN : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_NOOPEN.df_1_NOOPEN;
final df_1_ORIGIN : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_ORIGIN.df_1_ORIGIN;
final df_1_DIRECT : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_DIRECT.df_1_DIRECT;
final df_1_TRANS : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_TRANS.df_1_TRANS;
final df_1_INTERPOSE : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_INTERPOSE.df_1_INTERPOSE;
final df_1_NODEFLIB : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_NODEFLIB.df_1_NODEFLIB;
final df_1_NODUMP : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_NODUMP.df_1_NODUMP;
final df_1_CONFALT : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_CONFALT.df_1_CONFALT;
final df_1_ENDFILTEE : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_ENDFILTEE.df_1_ENDFILTEE;
final df_1_DISPRELDNE : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_DISPRELDNE.df_1_DISPRELDNE;
final df_1_DISPRELPND : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_DISPRELPND.df_1_DISPRELPND;
final df_1_NODIRECT : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_NODIRECT.df_1_NODIRECT;
final df_1_IGNMULDEF : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_IGNMULDEF.df_1_IGNMULDEF;
final df_1_NOKSYMS : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_NOKSYMS.df_1_NOKSYMS;
final df_1_NOHDR : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_NOHDR.df_1_NOHDR;
final df_1_EDITED : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_EDITED.df_1_EDITED;
final df_1_NORELOC : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_NORELOC.df_1_NORELOC;
final df_1_SYMINTPOSE : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_SYMINTPOSE.df_1_SYMINTPOSE;
final df_1_GLOBAUDIT : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_GLOBAUDIT.df_1_GLOBAUDIT;
final df_1_SINGLETON : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_SINGLETON.df_1_SINGLETON;
final df_1_STUB : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_STUB.df_1_STUB;
final df_1_PIE : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_PIE.df_1_PIE;
final df_1_KMOD : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_KMOD.df_1_KMOD;
final df_1_WEAKFILTER : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_WEAKFILTER.df_1_WEAKFILTER;
final df_1_NOCOMMON : DynFlag1 = stdgo._internal.debug.elf.Elf_df_1_NOCOMMON.df_1_NOCOMMON;
final nt_PRSTATUS : NType = stdgo._internal.debug.elf.Elf_nt_PRSTATUS.nt_PRSTATUS;
final nt_FPREGSET : NType = stdgo._internal.debug.elf.Elf_nt_FPREGSET.nt_FPREGSET;
final nt_PRPSINFO : NType = stdgo._internal.debug.elf.Elf_nt_PRPSINFO.nt_PRPSINFO;
final stb_LOCAL : SymBind = stdgo._internal.debug.elf.Elf_stb_LOCAL.stb_LOCAL;
final stb_GLOBAL : SymBind = stdgo._internal.debug.elf.Elf_stb_GLOBAL.stb_GLOBAL;
final stb_WEAK : SymBind = stdgo._internal.debug.elf.Elf_stb_WEAK.stb_WEAK;
final stb_LOOS : SymBind = stdgo._internal.debug.elf.Elf_stb_LOOS.stb_LOOS;
final stb_HIOS : SymBind = stdgo._internal.debug.elf.Elf_stb_HIOS.stb_HIOS;
final stb_LOPROC : SymBind = stdgo._internal.debug.elf.Elf_stb_LOPROC.stb_LOPROC;
final stb_HIPROC : SymBind = stdgo._internal.debug.elf.Elf_stb_HIPROC.stb_HIPROC;
final stt_NOTYPE : SymType = stdgo._internal.debug.elf.Elf_stt_NOTYPE.stt_NOTYPE;
final stt_OBJECT : SymType = stdgo._internal.debug.elf.Elf_stt_OBJECT.stt_OBJECT;
final stt_FUNC : SymType = stdgo._internal.debug.elf.Elf_stt_FUNC.stt_FUNC;
final stt_SECTION : SymType = stdgo._internal.debug.elf.Elf_stt_SECTION.stt_SECTION;
final stt_FILE : SymType = stdgo._internal.debug.elf.Elf_stt_FILE.stt_FILE;
final stt_COMMON : SymType = stdgo._internal.debug.elf.Elf_stt_COMMON.stt_COMMON;
final stt_TLS : SymType = stdgo._internal.debug.elf.Elf_stt_TLS.stt_TLS;
final stt_LOOS : SymType = stdgo._internal.debug.elf.Elf_stt_LOOS.stt_LOOS;
final stt_HIOS : SymType = stdgo._internal.debug.elf.Elf_stt_HIOS.stt_HIOS;
final stt_LOPROC : SymType = stdgo._internal.debug.elf.Elf_stt_LOPROC.stt_LOPROC;
final stt_HIPROC : SymType = stdgo._internal.debug.elf.Elf_stt_HIPROC.stt_HIPROC;
final stv_DEFAULT : SymVis = stdgo._internal.debug.elf.Elf_stv_DEFAULT.stv_DEFAULT;
final stv_INTERNAL : SymVis = stdgo._internal.debug.elf.Elf_stv_INTERNAL.stv_INTERNAL;
final stv_HIDDEN : SymVis = stdgo._internal.debug.elf.Elf_stv_HIDDEN.stv_HIDDEN;
final stv_PROTECTED : SymVis = stdgo._internal.debug.elf.Elf_stv_PROTECTED.stv_PROTECTED;
final r_X86_64_NONE : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_NONE.r_X86_64_NONE;
final r_X86_64_64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_64.r_X86_64_64;
final r_X86_64_PC32 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_PC32.r_X86_64_PC32;
final r_X86_64_GOT32 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_GOT32.r_X86_64_GOT32;
final r_X86_64_PLT32 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_PLT32.r_X86_64_PLT32;
final r_X86_64_COPY : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_COPY.r_X86_64_COPY;
final r_X86_64_GLOB_DAT : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_GLOB_DAT.r_X86_64_GLOB_DAT;
final r_X86_64_JMP_SLOT : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_JMP_SLOT.r_X86_64_JMP_SLOT;
final r_X86_64_RELATIVE : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_RELATIVE.r_X86_64_RELATIVE;
final r_X86_64_GOTPCREL : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_GOTPCREL.r_X86_64_GOTPCREL;
final r_X86_64_32 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_32.r_X86_64_32;
final r_X86_64_32S : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_32S.r_X86_64_32S;
final r_X86_64_16 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_16.r_X86_64_16;
final r_X86_64_PC16 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_PC16.r_X86_64_PC16;
final r_X86_64_8 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_8.r_X86_64_8;
final r_X86_64_PC8 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_PC8.r_X86_64_PC8;
final r_X86_64_DTPMOD64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_DTPMOD64.r_X86_64_DTPMOD64;
final r_X86_64_DTPOFF64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_DTPOFF64.r_X86_64_DTPOFF64;
final r_X86_64_TPOFF64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_TPOFF64.r_X86_64_TPOFF64;
final r_X86_64_TLSGD : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_TLSGD.r_X86_64_TLSGD;
final r_X86_64_TLSLD : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_TLSLD.r_X86_64_TLSLD;
final r_X86_64_DTPOFF32 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_DTPOFF32.r_X86_64_DTPOFF32;
final r_X86_64_GOTTPOFF : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_GOTTPOFF.r_X86_64_GOTTPOFF;
final r_X86_64_TPOFF32 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_TPOFF32.r_X86_64_TPOFF32;
final r_X86_64_PC64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_PC64.r_X86_64_PC64;
final r_X86_64_GOTOFF64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_GOTOFF64.r_X86_64_GOTOFF64;
final r_X86_64_GOTPC32 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_GOTPC32.r_X86_64_GOTPC32;
final r_X86_64_GOT64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_GOT64.r_X86_64_GOT64;
final r_X86_64_GOTPCREL64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_GOTPCREL64.r_X86_64_GOTPCREL64;
final r_X86_64_GOTPC64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_GOTPC64.r_X86_64_GOTPC64;
final r_X86_64_GOTPLT64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_GOTPLT64.r_X86_64_GOTPLT64;
final r_X86_64_PLTOFF64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_PLTOFF64.r_X86_64_PLTOFF64;
final r_X86_64_SIZE32 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_SIZE32.r_X86_64_SIZE32;
final r_X86_64_SIZE64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_SIZE64.r_X86_64_SIZE64;
final r_X86_64_GOTPC32_TLSDESC : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_GOTPC32_TLSDESC.r_X86_64_GOTPC32_TLSDESC;
final r_X86_64_TLSDESC_CALL : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_TLSDESC_CALL.r_X86_64_TLSDESC_CALL;
final r_X86_64_TLSDESC : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_TLSDESC.r_X86_64_TLSDESC;
final r_X86_64_IRELATIVE : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_IRELATIVE.r_X86_64_IRELATIVE;
final r_X86_64_RELATIVE64 : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_RELATIVE64.r_X86_64_RELATIVE64;
final r_X86_64_PC32_BND : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_PC32_BND.r_X86_64_PC32_BND;
final r_X86_64_PLT32_BND : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_PLT32_BND.r_X86_64_PLT32_BND;
final r_X86_64_GOTPCRELX : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_GOTPCRELX.r_X86_64_GOTPCRELX;
final r_X86_64_REX_GOTPCRELX : R_X86_64 = stdgo._internal.debug.elf.Elf_r_X86_64_REX_GOTPCRELX.r_X86_64_REX_GOTPCRELX;
final r_AARCH64_NONE : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_NONE.r_AARCH64_NONE;
final r_AARCH64_P32_ABS32 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_ABS32.r_AARCH64_P32_ABS32;
final r_AARCH64_P32_ABS16 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_ABS16.r_AARCH64_P32_ABS16;
final r_AARCH64_P32_PREL32 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_PREL32.r_AARCH64_P32_PREL32;
final r_AARCH64_P32_PREL16 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_PREL16.r_AARCH64_P32_PREL16;
final r_AARCH64_P32_MOVW_UABS_G0 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_MOVW_UABS_G0.r_AARCH64_P32_MOVW_UABS_G0;
final r_AARCH64_P32_MOVW_UABS_G0_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_MOVW_UABS_G0_NC.r_AARCH64_P32_MOVW_UABS_G0_NC;
final r_AARCH64_P32_MOVW_UABS_G1 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_MOVW_UABS_G1.r_AARCH64_P32_MOVW_UABS_G1;
final r_AARCH64_P32_MOVW_SABS_G0 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_MOVW_SABS_G0.r_AARCH64_P32_MOVW_SABS_G0;
final r_AARCH64_P32_LD_PREL_LO19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_LD_PREL_LO19.r_AARCH64_P32_LD_PREL_LO19;
final r_AARCH64_P32_ADR_PREL_LO21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_ADR_PREL_LO21.r_AARCH64_P32_ADR_PREL_LO21;
final r_AARCH64_P32_ADR_PREL_PG_HI21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_ADR_PREL_PG_HI21.r_AARCH64_P32_ADR_PREL_PG_HI21;
final r_AARCH64_P32_ADD_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_ADD_ABS_LO12_NC.r_AARCH64_P32_ADD_ABS_LO12_NC;
final r_AARCH64_P32_LDST8_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_LDST8_ABS_LO12_NC.r_AARCH64_P32_LDST8_ABS_LO12_NC;
final r_AARCH64_P32_LDST16_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_LDST16_ABS_LO12_NC.r_AARCH64_P32_LDST16_ABS_LO12_NC;
final r_AARCH64_P32_LDST32_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_LDST32_ABS_LO12_NC.r_AARCH64_P32_LDST32_ABS_LO12_NC;
final r_AARCH64_P32_LDST64_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_LDST64_ABS_LO12_NC.r_AARCH64_P32_LDST64_ABS_LO12_NC;
final r_AARCH64_P32_LDST128_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_LDST128_ABS_LO12_NC.r_AARCH64_P32_LDST128_ABS_LO12_NC;
final r_AARCH64_P32_TSTBR14 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TSTBR14.r_AARCH64_P32_TSTBR14;
final r_AARCH64_P32_CONDBR19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_CONDBR19.r_AARCH64_P32_CONDBR19;
final r_AARCH64_P32_JUMP26 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_JUMP26.r_AARCH64_P32_JUMP26;
final r_AARCH64_P32_CALL26 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_CALL26.r_AARCH64_P32_CALL26;
final r_AARCH64_P32_GOT_LD_PREL19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_GOT_LD_PREL19.r_AARCH64_P32_GOT_LD_PREL19;
final r_AARCH64_P32_ADR_GOT_PAGE : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_ADR_GOT_PAGE.r_AARCH64_P32_ADR_GOT_PAGE;
final r_AARCH64_P32_LD32_GOT_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_LD32_GOT_LO12_NC.r_AARCH64_P32_LD32_GOT_LO12_NC;
final r_AARCH64_P32_TLSGD_ADR_PAGE21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSGD_ADR_PAGE21.r_AARCH64_P32_TLSGD_ADR_PAGE21;
final r_AARCH64_P32_TLSGD_ADD_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSGD_ADD_LO12_NC.r_AARCH64_P32_TLSGD_ADD_LO12_NC;
final r_AARCH64_P32_TLSIE_ADR_GOTTPREL_PAGE21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSIE_ADR_GOTTPREL_PAGE21.r_AARCH64_P32_TLSIE_ADR_GOTTPREL_PAGE21;
final r_AARCH64_P32_TLSIE_LD32_GOTTPREL_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSIE_LD32_GOTTPREL_LO12_NC.r_AARCH64_P32_TLSIE_LD32_GOTTPREL_LO12_NC;
final r_AARCH64_P32_TLSIE_LD_GOTTPREL_PREL19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSIE_LD_GOTTPREL_PREL19.r_AARCH64_P32_TLSIE_LD_GOTTPREL_PREL19;
final r_AARCH64_P32_TLSLE_MOVW_TPREL_G1 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSLE_MOVW_TPREL_G1.r_AARCH64_P32_TLSLE_MOVW_TPREL_G1;
final r_AARCH64_P32_TLSLE_MOVW_TPREL_G0 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSLE_MOVW_TPREL_G0.r_AARCH64_P32_TLSLE_MOVW_TPREL_G0;
final r_AARCH64_P32_TLSLE_MOVW_TPREL_G0_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSLE_MOVW_TPREL_G0_NC.r_AARCH64_P32_TLSLE_MOVW_TPREL_G0_NC;
final r_AARCH64_P32_TLSLE_ADD_TPREL_HI12 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSLE_ADD_TPREL_HI12.r_AARCH64_P32_TLSLE_ADD_TPREL_HI12;
final r_AARCH64_P32_TLSLE_ADD_TPREL_LO12 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSLE_ADD_TPREL_LO12.r_AARCH64_P32_TLSLE_ADD_TPREL_LO12;
final r_AARCH64_P32_TLSLE_ADD_TPREL_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSLE_ADD_TPREL_LO12_NC.r_AARCH64_P32_TLSLE_ADD_TPREL_LO12_NC;
final r_AARCH64_P32_TLSDESC_LD_PREL19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSDESC_LD_PREL19.r_AARCH64_P32_TLSDESC_LD_PREL19;
final r_AARCH64_P32_TLSDESC_ADR_PREL21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSDESC_ADR_PREL21.r_AARCH64_P32_TLSDESC_ADR_PREL21;
final r_AARCH64_P32_TLSDESC_ADR_PAGE21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSDESC_ADR_PAGE21.r_AARCH64_P32_TLSDESC_ADR_PAGE21;
final r_AARCH64_P32_TLSDESC_LD32_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSDESC_LD32_LO12_NC.r_AARCH64_P32_TLSDESC_LD32_LO12_NC;
final r_AARCH64_P32_TLSDESC_ADD_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSDESC_ADD_LO12_NC.r_AARCH64_P32_TLSDESC_ADD_LO12_NC;
final r_AARCH64_P32_TLSDESC_CALL : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSDESC_CALL.r_AARCH64_P32_TLSDESC_CALL;
final r_AARCH64_P32_COPY : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_COPY.r_AARCH64_P32_COPY;
final r_AARCH64_P32_GLOB_DAT : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_GLOB_DAT.r_AARCH64_P32_GLOB_DAT;
final r_AARCH64_P32_JUMP_SLOT : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_JUMP_SLOT.r_AARCH64_P32_JUMP_SLOT;
final r_AARCH64_P32_RELATIVE : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_RELATIVE.r_AARCH64_P32_RELATIVE;
final r_AARCH64_P32_TLS_DTPMOD : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLS_DTPMOD.r_AARCH64_P32_TLS_DTPMOD;
final r_AARCH64_P32_TLS_DTPREL : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLS_DTPREL.r_AARCH64_P32_TLS_DTPREL;
final r_AARCH64_P32_TLS_TPREL : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLS_TPREL.r_AARCH64_P32_TLS_TPREL;
final r_AARCH64_P32_TLSDESC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_TLSDESC.r_AARCH64_P32_TLSDESC;
final r_AARCH64_P32_IRELATIVE : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_P32_IRELATIVE.r_AARCH64_P32_IRELATIVE;
final r_AARCH64_NULL : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_NULL.r_AARCH64_NULL;
final r_AARCH64_ABS64 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_ABS64.r_AARCH64_ABS64;
final r_AARCH64_ABS32 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_ABS32.r_AARCH64_ABS32;
final r_AARCH64_ABS16 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_ABS16.r_AARCH64_ABS16;
final r_AARCH64_PREL64 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_PREL64.r_AARCH64_PREL64;
final r_AARCH64_PREL32 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_PREL32.r_AARCH64_PREL32;
final r_AARCH64_PREL16 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_PREL16.r_AARCH64_PREL16;
final r_AARCH64_MOVW_UABS_G0 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_MOVW_UABS_G0.r_AARCH64_MOVW_UABS_G0;
final r_AARCH64_MOVW_UABS_G0_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_MOVW_UABS_G0_NC.r_AARCH64_MOVW_UABS_G0_NC;
final r_AARCH64_MOVW_UABS_G1 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_MOVW_UABS_G1.r_AARCH64_MOVW_UABS_G1;
final r_AARCH64_MOVW_UABS_G1_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_MOVW_UABS_G1_NC.r_AARCH64_MOVW_UABS_G1_NC;
final r_AARCH64_MOVW_UABS_G2 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_MOVW_UABS_G2.r_AARCH64_MOVW_UABS_G2;
final r_AARCH64_MOVW_UABS_G2_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_MOVW_UABS_G2_NC.r_AARCH64_MOVW_UABS_G2_NC;
final r_AARCH64_MOVW_UABS_G3 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_MOVW_UABS_G3.r_AARCH64_MOVW_UABS_G3;
final r_AARCH64_MOVW_SABS_G0 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_MOVW_SABS_G0.r_AARCH64_MOVW_SABS_G0;
final r_AARCH64_MOVW_SABS_G1 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_MOVW_SABS_G1.r_AARCH64_MOVW_SABS_G1;
final r_AARCH64_MOVW_SABS_G2 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_MOVW_SABS_G2.r_AARCH64_MOVW_SABS_G2;
final r_AARCH64_LD_PREL_LO19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_LD_PREL_LO19.r_AARCH64_LD_PREL_LO19;
final r_AARCH64_ADR_PREL_LO21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_ADR_PREL_LO21.r_AARCH64_ADR_PREL_LO21;
final r_AARCH64_ADR_PREL_PG_HI21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_ADR_PREL_PG_HI21.r_AARCH64_ADR_PREL_PG_HI21;
final r_AARCH64_ADR_PREL_PG_HI21_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_ADR_PREL_PG_HI21_NC.r_AARCH64_ADR_PREL_PG_HI21_NC;
final r_AARCH64_ADD_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_ADD_ABS_LO12_NC.r_AARCH64_ADD_ABS_LO12_NC;
final r_AARCH64_LDST8_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_LDST8_ABS_LO12_NC.r_AARCH64_LDST8_ABS_LO12_NC;
final r_AARCH64_TSTBR14 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TSTBR14.r_AARCH64_TSTBR14;
final r_AARCH64_CONDBR19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_CONDBR19.r_AARCH64_CONDBR19;
final r_AARCH64_JUMP26 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_JUMP26.r_AARCH64_JUMP26;
final r_AARCH64_CALL26 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_CALL26.r_AARCH64_CALL26;
final r_AARCH64_LDST16_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_LDST16_ABS_LO12_NC.r_AARCH64_LDST16_ABS_LO12_NC;
final r_AARCH64_LDST32_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_LDST32_ABS_LO12_NC.r_AARCH64_LDST32_ABS_LO12_NC;
final r_AARCH64_LDST64_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_LDST64_ABS_LO12_NC.r_AARCH64_LDST64_ABS_LO12_NC;
final r_AARCH64_LDST128_ABS_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_LDST128_ABS_LO12_NC.r_AARCH64_LDST128_ABS_LO12_NC;
final r_AARCH64_GOT_LD_PREL19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_GOT_LD_PREL19.r_AARCH64_GOT_LD_PREL19;
final r_AARCH64_LD64_GOTOFF_LO15 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_LD64_GOTOFF_LO15.r_AARCH64_LD64_GOTOFF_LO15;
final r_AARCH64_ADR_GOT_PAGE : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_ADR_GOT_PAGE.r_AARCH64_ADR_GOT_PAGE;
final r_AARCH64_LD64_GOT_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_LD64_GOT_LO12_NC.r_AARCH64_LD64_GOT_LO12_NC;
final r_AARCH64_LD64_GOTPAGE_LO15 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_LD64_GOTPAGE_LO15.r_AARCH64_LD64_GOTPAGE_LO15;
final r_AARCH64_TLSGD_ADR_PREL21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSGD_ADR_PREL21.r_AARCH64_TLSGD_ADR_PREL21;
final r_AARCH64_TLSGD_ADR_PAGE21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSGD_ADR_PAGE21.r_AARCH64_TLSGD_ADR_PAGE21;
final r_AARCH64_TLSGD_ADD_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSGD_ADD_LO12_NC.r_AARCH64_TLSGD_ADD_LO12_NC;
final r_AARCH64_TLSGD_MOVW_G1 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSGD_MOVW_G1.r_AARCH64_TLSGD_MOVW_G1;
final r_AARCH64_TLSGD_MOVW_G0_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSGD_MOVW_G0_NC.r_AARCH64_TLSGD_MOVW_G0_NC;
final r_AARCH64_TLSLD_ADR_PREL21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSLD_ADR_PREL21.r_AARCH64_TLSLD_ADR_PREL21;
final r_AARCH64_TLSLD_ADR_PAGE21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSLD_ADR_PAGE21.r_AARCH64_TLSLD_ADR_PAGE21;
final r_AARCH64_TLSIE_MOVW_GOTTPREL_G1 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSIE_MOVW_GOTTPREL_G1.r_AARCH64_TLSIE_MOVW_GOTTPREL_G1;
final r_AARCH64_TLSIE_MOVW_GOTTPREL_G0_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSIE_MOVW_GOTTPREL_G0_NC.r_AARCH64_TLSIE_MOVW_GOTTPREL_G0_NC;
final r_AARCH64_TLSIE_ADR_GOTTPREL_PAGE21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSIE_ADR_GOTTPREL_PAGE21.r_AARCH64_TLSIE_ADR_GOTTPREL_PAGE21;
final r_AARCH64_TLSIE_LD64_GOTTPREL_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSIE_LD64_GOTTPREL_LO12_NC.r_AARCH64_TLSIE_LD64_GOTTPREL_LO12_NC;
final r_AARCH64_TLSIE_LD_GOTTPREL_PREL19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSIE_LD_GOTTPREL_PREL19.r_AARCH64_TLSIE_LD_GOTTPREL_PREL19;
final r_AARCH64_TLSLE_MOVW_TPREL_G2 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSLE_MOVW_TPREL_G2.r_AARCH64_TLSLE_MOVW_TPREL_G2;
final r_AARCH64_TLSLE_MOVW_TPREL_G1 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSLE_MOVW_TPREL_G1.r_AARCH64_TLSLE_MOVW_TPREL_G1;
final r_AARCH64_TLSLE_MOVW_TPREL_G1_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSLE_MOVW_TPREL_G1_NC.r_AARCH64_TLSLE_MOVW_TPREL_G1_NC;
final r_AARCH64_TLSLE_MOVW_TPREL_G0 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSLE_MOVW_TPREL_G0.r_AARCH64_TLSLE_MOVW_TPREL_G0;
final r_AARCH64_TLSLE_MOVW_TPREL_G0_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSLE_MOVW_TPREL_G0_NC.r_AARCH64_TLSLE_MOVW_TPREL_G0_NC;
final r_AARCH64_TLSLE_ADD_TPREL_HI12 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSLE_ADD_TPREL_HI12.r_AARCH64_TLSLE_ADD_TPREL_HI12;
final r_AARCH64_TLSLE_ADD_TPREL_LO12 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSLE_ADD_TPREL_LO12.r_AARCH64_TLSLE_ADD_TPREL_LO12;
final r_AARCH64_TLSLE_ADD_TPREL_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSLE_ADD_TPREL_LO12_NC.r_AARCH64_TLSLE_ADD_TPREL_LO12_NC;
final r_AARCH64_TLSDESC_LD_PREL19 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSDESC_LD_PREL19.r_AARCH64_TLSDESC_LD_PREL19;
final r_AARCH64_TLSDESC_ADR_PREL21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSDESC_ADR_PREL21.r_AARCH64_TLSDESC_ADR_PREL21;
final r_AARCH64_TLSDESC_ADR_PAGE21 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSDESC_ADR_PAGE21.r_AARCH64_TLSDESC_ADR_PAGE21;
final r_AARCH64_TLSDESC_LD64_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSDESC_LD64_LO12_NC.r_AARCH64_TLSDESC_LD64_LO12_NC;
final r_AARCH64_TLSDESC_ADD_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSDESC_ADD_LO12_NC.r_AARCH64_TLSDESC_ADD_LO12_NC;
final r_AARCH64_TLSDESC_OFF_G1 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSDESC_OFF_G1.r_AARCH64_TLSDESC_OFF_G1;
final r_AARCH64_TLSDESC_OFF_G0_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSDESC_OFF_G0_NC.r_AARCH64_TLSDESC_OFF_G0_NC;
final r_AARCH64_TLSDESC_LDR : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSDESC_LDR.r_AARCH64_TLSDESC_LDR;
final r_AARCH64_TLSDESC_ADD : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSDESC_ADD.r_AARCH64_TLSDESC_ADD;
final r_AARCH64_TLSDESC_CALL : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSDESC_CALL.r_AARCH64_TLSDESC_CALL;
final r_AARCH64_TLSLE_LDST128_TPREL_LO12 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSLE_LDST128_TPREL_LO12.r_AARCH64_TLSLE_LDST128_TPREL_LO12;
final r_AARCH64_TLSLE_LDST128_TPREL_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSLE_LDST128_TPREL_LO12_NC.r_AARCH64_TLSLE_LDST128_TPREL_LO12_NC;
final r_AARCH64_TLSLD_LDST128_DTPREL_LO12 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSLD_LDST128_DTPREL_LO12.r_AARCH64_TLSLD_LDST128_DTPREL_LO12;
final r_AARCH64_TLSLD_LDST128_DTPREL_LO12_NC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSLD_LDST128_DTPREL_LO12_NC.r_AARCH64_TLSLD_LDST128_DTPREL_LO12_NC;
final r_AARCH64_COPY : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_COPY.r_AARCH64_COPY;
final r_AARCH64_GLOB_DAT : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_GLOB_DAT.r_AARCH64_GLOB_DAT;
final r_AARCH64_JUMP_SLOT : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_JUMP_SLOT.r_AARCH64_JUMP_SLOT;
final r_AARCH64_RELATIVE : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_RELATIVE.r_AARCH64_RELATIVE;
final r_AARCH64_TLS_DTPMOD64 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLS_DTPMOD64.r_AARCH64_TLS_DTPMOD64;
final r_AARCH64_TLS_DTPREL64 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLS_DTPREL64.r_AARCH64_TLS_DTPREL64;
final r_AARCH64_TLS_TPREL64 : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLS_TPREL64.r_AARCH64_TLS_TPREL64;
final r_AARCH64_TLSDESC : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_TLSDESC.r_AARCH64_TLSDESC;
final r_AARCH64_IRELATIVE : R_AARCH64 = stdgo._internal.debug.elf.Elf_r_AARCH64_IRELATIVE.r_AARCH64_IRELATIVE;
final r_ALPHA_NONE : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_NONE.r_ALPHA_NONE;
final r_ALPHA_REFLONG : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_REFLONG.r_ALPHA_REFLONG;
final r_ALPHA_REFQUAD : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_REFQUAD.r_ALPHA_REFQUAD;
final r_ALPHA_GPREL32 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_GPREL32.r_ALPHA_GPREL32;
final r_ALPHA_LITERAL : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_LITERAL.r_ALPHA_LITERAL;
final r_ALPHA_LITUSE : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_LITUSE.r_ALPHA_LITUSE;
final r_ALPHA_GPDISP : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_GPDISP.r_ALPHA_GPDISP;
final r_ALPHA_BRADDR : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_BRADDR.r_ALPHA_BRADDR;
final r_ALPHA_HINT : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_HINT.r_ALPHA_HINT;
final r_ALPHA_SREL16 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_SREL16.r_ALPHA_SREL16;
final r_ALPHA_SREL32 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_SREL32.r_ALPHA_SREL32;
final r_ALPHA_SREL64 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_SREL64.r_ALPHA_SREL64;
final r_ALPHA_OP_PUSH : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_OP_PUSH.r_ALPHA_OP_PUSH;
final r_ALPHA_OP_STORE : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_OP_STORE.r_ALPHA_OP_STORE;
final r_ALPHA_OP_PSUB : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_OP_PSUB.r_ALPHA_OP_PSUB;
final r_ALPHA_OP_PRSHIFT : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_OP_PRSHIFT.r_ALPHA_OP_PRSHIFT;
final r_ALPHA_GPVALUE : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_GPVALUE.r_ALPHA_GPVALUE;
final r_ALPHA_GPRELHIGH : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_GPRELHIGH.r_ALPHA_GPRELHIGH;
final r_ALPHA_GPRELLOW : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_GPRELLOW.r_ALPHA_GPRELLOW;
final r_ALPHA_IMMED_GP_16 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_IMMED_GP_16.r_ALPHA_IMMED_GP_16;
final r_ALPHA_IMMED_GP_HI32 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_IMMED_GP_HI32.r_ALPHA_IMMED_GP_HI32;
final r_ALPHA_IMMED_SCN_HI32 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_IMMED_SCN_HI32.r_ALPHA_IMMED_SCN_HI32;
final r_ALPHA_IMMED_BR_HI32 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_IMMED_BR_HI32.r_ALPHA_IMMED_BR_HI32;
final r_ALPHA_IMMED_LO32 : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_IMMED_LO32.r_ALPHA_IMMED_LO32;
final r_ALPHA_COPY : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_COPY.r_ALPHA_COPY;
final r_ALPHA_GLOB_DAT : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_GLOB_DAT.r_ALPHA_GLOB_DAT;
final r_ALPHA_JMP_SLOT : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_JMP_SLOT.r_ALPHA_JMP_SLOT;
final r_ALPHA_RELATIVE : R_ALPHA = stdgo._internal.debug.elf.Elf_r_ALPHA_RELATIVE.r_ALPHA_RELATIVE;
final r_ARM_NONE : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_NONE.r_ARM_NONE;
final r_ARM_PC24 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PC24.r_ARM_PC24;
final r_ARM_ABS32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ABS32.r_ARM_ABS32;
final r_ARM_REL32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_REL32.r_ARM_REL32;
final r_ARM_PC13 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PC13.r_ARM_PC13;
final r_ARM_ABS16 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ABS16.r_ARM_ABS16;
final r_ARM_ABS12 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ABS12.r_ARM_ABS12;
final r_ARM_THM_ABS5 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_ABS5.r_ARM_THM_ABS5;
final r_ARM_ABS8 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ABS8.r_ARM_ABS8;
final r_ARM_SBREL32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_SBREL32.r_ARM_SBREL32;
final r_ARM_THM_PC22 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_PC22.r_ARM_THM_PC22;
final r_ARM_THM_PC8 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_PC8.r_ARM_THM_PC8;
final r_ARM_AMP_VCALL9 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_AMP_VCALL9.r_ARM_AMP_VCALL9;
final r_ARM_SWI24 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_SWI24.r_ARM_SWI24;
final r_ARM_THM_SWI8 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_SWI8.r_ARM_THM_SWI8;
final r_ARM_XPC25 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_XPC25.r_ARM_XPC25;
final r_ARM_THM_XPC22 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_XPC22.r_ARM_THM_XPC22;
final r_ARM_TLS_DTPMOD32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_TLS_DTPMOD32.r_ARM_TLS_DTPMOD32;
final r_ARM_TLS_DTPOFF32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_TLS_DTPOFF32.r_ARM_TLS_DTPOFF32;
final r_ARM_TLS_TPOFF32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_TLS_TPOFF32.r_ARM_TLS_TPOFF32;
final r_ARM_COPY : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_COPY.r_ARM_COPY;
final r_ARM_GLOB_DAT : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_GLOB_DAT.r_ARM_GLOB_DAT;
final r_ARM_JUMP_SLOT : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_JUMP_SLOT.r_ARM_JUMP_SLOT;
final r_ARM_RELATIVE : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_RELATIVE.r_ARM_RELATIVE;
final r_ARM_GOTOFF : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_GOTOFF.r_ARM_GOTOFF;
final r_ARM_GOTPC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_GOTPC.r_ARM_GOTPC;
final r_ARM_GOT32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_GOT32.r_ARM_GOT32;
final r_ARM_PLT32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PLT32.r_ARM_PLT32;
final r_ARM_CALL : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_CALL.r_ARM_CALL;
final r_ARM_JUMP24 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_JUMP24.r_ARM_JUMP24;
final r_ARM_THM_JUMP24 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_JUMP24.r_ARM_THM_JUMP24;
final r_ARM_BASE_ABS : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_BASE_ABS.r_ARM_BASE_ABS;
final r_ARM_ALU_PCREL_7_0 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ALU_PCREL_7_0.r_ARM_ALU_PCREL_7_0;
final r_ARM_ALU_PCREL_15_8 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ALU_PCREL_15_8.r_ARM_ALU_PCREL_15_8;
final r_ARM_ALU_PCREL_23_15 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ALU_PCREL_23_15.r_ARM_ALU_PCREL_23_15;
final r_ARM_LDR_SBREL_11_10_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDR_SBREL_11_10_NC.r_ARM_LDR_SBREL_11_10_NC;
final r_ARM_ALU_SBREL_19_12_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ALU_SBREL_19_12_NC.r_ARM_ALU_SBREL_19_12_NC;
final r_ARM_ALU_SBREL_27_20_CK : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ALU_SBREL_27_20_CK.r_ARM_ALU_SBREL_27_20_CK;
final r_ARM_TARGET1 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_TARGET1.r_ARM_TARGET1;
final r_ARM_SBREL31 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_SBREL31.r_ARM_SBREL31;
final r_ARM_V4BX : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_V4BX.r_ARM_V4BX;
final r_ARM_TARGET2 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_TARGET2.r_ARM_TARGET2;
final r_ARM_PREL31 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PREL31.r_ARM_PREL31;
final r_ARM_MOVW_ABS_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_MOVW_ABS_NC.r_ARM_MOVW_ABS_NC;
final r_ARM_MOVT_ABS : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_MOVT_ABS.r_ARM_MOVT_ABS;
final r_ARM_MOVW_PREL_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_MOVW_PREL_NC.r_ARM_MOVW_PREL_NC;
final r_ARM_MOVT_PREL : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_MOVT_PREL.r_ARM_MOVT_PREL;
final r_ARM_THM_MOVW_ABS_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_MOVW_ABS_NC.r_ARM_THM_MOVW_ABS_NC;
final r_ARM_THM_MOVT_ABS : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_MOVT_ABS.r_ARM_THM_MOVT_ABS;
final r_ARM_THM_MOVW_PREL_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_MOVW_PREL_NC.r_ARM_THM_MOVW_PREL_NC;
final r_ARM_THM_MOVT_PREL : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_MOVT_PREL.r_ARM_THM_MOVT_PREL;
final r_ARM_THM_JUMP19 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_JUMP19.r_ARM_THM_JUMP19;
final r_ARM_THM_JUMP6 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_JUMP6.r_ARM_THM_JUMP6;
final r_ARM_THM_ALU_PREL_11_0 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_ALU_PREL_11_0.r_ARM_THM_ALU_PREL_11_0;
final r_ARM_THM_PC12 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_PC12.r_ARM_THM_PC12;
final r_ARM_ABS32_NOI : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ABS32_NOI.r_ARM_ABS32_NOI;
final r_ARM_REL32_NOI : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_REL32_NOI.r_ARM_REL32_NOI;
final r_ARM_ALU_PC_G0_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ALU_PC_G0_NC.r_ARM_ALU_PC_G0_NC;
final r_ARM_ALU_PC_G0 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ALU_PC_G0.r_ARM_ALU_PC_G0;
final r_ARM_ALU_PC_G1_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ALU_PC_G1_NC.r_ARM_ALU_PC_G1_NC;
final r_ARM_ALU_PC_G1 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ALU_PC_G1.r_ARM_ALU_PC_G1;
final r_ARM_ALU_PC_G2 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ALU_PC_G2.r_ARM_ALU_PC_G2;
final r_ARM_LDR_PC_G1 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDR_PC_G1.r_ARM_LDR_PC_G1;
final r_ARM_LDR_PC_G2 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDR_PC_G2.r_ARM_LDR_PC_G2;
final r_ARM_LDRS_PC_G0 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDRS_PC_G0.r_ARM_LDRS_PC_G0;
final r_ARM_LDRS_PC_G1 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDRS_PC_G1.r_ARM_LDRS_PC_G1;
final r_ARM_LDRS_PC_G2 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDRS_PC_G2.r_ARM_LDRS_PC_G2;
final r_ARM_LDC_PC_G0 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDC_PC_G0.r_ARM_LDC_PC_G0;
final r_ARM_LDC_PC_G1 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDC_PC_G1.r_ARM_LDC_PC_G1;
final r_ARM_LDC_PC_G2 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDC_PC_G2.r_ARM_LDC_PC_G2;
final r_ARM_ALU_SB_G0_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ALU_SB_G0_NC.r_ARM_ALU_SB_G0_NC;
final r_ARM_ALU_SB_G0 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ALU_SB_G0.r_ARM_ALU_SB_G0;
final r_ARM_ALU_SB_G1_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ALU_SB_G1_NC.r_ARM_ALU_SB_G1_NC;
final r_ARM_ALU_SB_G1 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ALU_SB_G1.r_ARM_ALU_SB_G1;
final r_ARM_ALU_SB_G2 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ALU_SB_G2.r_ARM_ALU_SB_G2;
final r_ARM_LDR_SB_G0 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDR_SB_G0.r_ARM_LDR_SB_G0;
final r_ARM_LDR_SB_G1 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDR_SB_G1.r_ARM_LDR_SB_G1;
final r_ARM_LDR_SB_G2 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDR_SB_G2.r_ARM_LDR_SB_G2;
final r_ARM_LDRS_SB_G0 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDRS_SB_G0.r_ARM_LDRS_SB_G0;
final r_ARM_LDRS_SB_G1 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDRS_SB_G1.r_ARM_LDRS_SB_G1;
final r_ARM_LDRS_SB_G2 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDRS_SB_G2.r_ARM_LDRS_SB_G2;
final r_ARM_LDC_SB_G0 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDC_SB_G0.r_ARM_LDC_SB_G0;
final r_ARM_LDC_SB_G1 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDC_SB_G1.r_ARM_LDC_SB_G1;
final r_ARM_LDC_SB_G2 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_LDC_SB_G2.r_ARM_LDC_SB_G2;
final r_ARM_MOVW_BREL_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_MOVW_BREL_NC.r_ARM_MOVW_BREL_NC;
final r_ARM_MOVT_BREL : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_MOVT_BREL.r_ARM_MOVT_BREL;
final r_ARM_MOVW_BREL : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_MOVW_BREL.r_ARM_MOVW_BREL;
final r_ARM_THM_MOVW_BREL_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_MOVW_BREL_NC.r_ARM_THM_MOVW_BREL_NC;
final r_ARM_THM_MOVT_BREL : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_MOVT_BREL.r_ARM_THM_MOVT_BREL;
final r_ARM_THM_MOVW_BREL : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_MOVW_BREL.r_ARM_THM_MOVW_BREL;
final r_ARM_TLS_GOTDESC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_TLS_GOTDESC.r_ARM_TLS_GOTDESC;
final r_ARM_TLS_CALL : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_TLS_CALL.r_ARM_TLS_CALL;
final r_ARM_TLS_DESCSEQ : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_TLS_DESCSEQ.r_ARM_TLS_DESCSEQ;
final r_ARM_THM_TLS_CALL : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_TLS_CALL.r_ARM_THM_TLS_CALL;
final r_ARM_PLT32_ABS : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PLT32_ABS.r_ARM_PLT32_ABS;
final r_ARM_GOT_ABS : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_GOT_ABS.r_ARM_GOT_ABS;
final r_ARM_GOT_PREL : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_GOT_PREL.r_ARM_GOT_PREL;
final r_ARM_GOT_BREL12 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_GOT_BREL12.r_ARM_GOT_BREL12;
final r_ARM_GOTOFF12 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_GOTOFF12.r_ARM_GOTOFF12;
final r_ARM_GOTRELAX : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_GOTRELAX.r_ARM_GOTRELAX;
final r_ARM_GNU_VTENTRY : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_GNU_VTENTRY.r_ARM_GNU_VTENTRY;
final r_ARM_GNU_VTINHERIT : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_GNU_VTINHERIT.r_ARM_GNU_VTINHERIT;
final r_ARM_THM_JUMP11 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_JUMP11.r_ARM_THM_JUMP11;
final r_ARM_THM_JUMP8 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_JUMP8.r_ARM_THM_JUMP8;
final r_ARM_TLS_GD32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_TLS_GD32.r_ARM_TLS_GD32;
final r_ARM_TLS_LDM32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_TLS_LDM32.r_ARM_TLS_LDM32;
final r_ARM_TLS_LDO32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_TLS_LDO32.r_ARM_TLS_LDO32;
final r_ARM_TLS_IE32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_TLS_IE32.r_ARM_TLS_IE32;
final r_ARM_TLS_LE32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_TLS_LE32.r_ARM_TLS_LE32;
final r_ARM_TLS_LDO12 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_TLS_LDO12.r_ARM_TLS_LDO12;
final r_ARM_TLS_LE12 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_TLS_LE12.r_ARM_TLS_LE12;
final r_ARM_TLS_IE12GP : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_TLS_IE12GP.r_ARM_TLS_IE12GP;
final r_ARM_PRIVATE_0 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PRIVATE_0.r_ARM_PRIVATE_0;
final r_ARM_PRIVATE_1 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PRIVATE_1.r_ARM_PRIVATE_1;
final r_ARM_PRIVATE_2 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PRIVATE_2.r_ARM_PRIVATE_2;
final r_ARM_PRIVATE_3 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PRIVATE_3.r_ARM_PRIVATE_3;
final r_ARM_PRIVATE_4 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PRIVATE_4.r_ARM_PRIVATE_4;
final r_ARM_PRIVATE_5 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PRIVATE_5.r_ARM_PRIVATE_5;
final r_ARM_PRIVATE_6 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PRIVATE_6.r_ARM_PRIVATE_6;
final r_ARM_PRIVATE_7 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PRIVATE_7.r_ARM_PRIVATE_7;
final r_ARM_PRIVATE_8 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PRIVATE_8.r_ARM_PRIVATE_8;
final r_ARM_PRIVATE_9 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PRIVATE_9.r_ARM_PRIVATE_9;
final r_ARM_PRIVATE_10 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PRIVATE_10.r_ARM_PRIVATE_10;
final r_ARM_PRIVATE_11 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PRIVATE_11.r_ARM_PRIVATE_11;
final r_ARM_PRIVATE_12 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PRIVATE_12.r_ARM_PRIVATE_12;
final r_ARM_PRIVATE_13 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PRIVATE_13.r_ARM_PRIVATE_13;
final r_ARM_PRIVATE_14 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PRIVATE_14.r_ARM_PRIVATE_14;
final r_ARM_PRIVATE_15 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_PRIVATE_15.r_ARM_PRIVATE_15;
final r_ARM_ME_TOO : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_ME_TOO.r_ARM_ME_TOO;
final r_ARM_THM_TLS_DESCSEQ16 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_TLS_DESCSEQ16.r_ARM_THM_TLS_DESCSEQ16;
final r_ARM_THM_TLS_DESCSEQ32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_TLS_DESCSEQ32.r_ARM_THM_TLS_DESCSEQ32;
final r_ARM_THM_GOT_BREL12 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_GOT_BREL12.r_ARM_THM_GOT_BREL12;
final r_ARM_THM_ALU_ABS_G0_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_ALU_ABS_G0_NC.r_ARM_THM_ALU_ABS_G0_NC;
final r_ARM_THM_ALU_ABS_G1_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_ALU_ABS_G1_NC.r_ARM_THM_ALU_ABS_G1_NC;
final r_ARM_THM_ALU_ABS_G2_NC : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_ALU_ABS_G2_NC.r_ARM_THM_ALU_ABS_G2_NC;
final r_ARM_THM_ALU_ABS_G3 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_ALU_ABS_G3.r_ARM_THM_ALU_ABS_G3;
final r_ARM_IRELATIVE : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_IRELATIVE.r_ARM_IRELATIVE;
final r_ARM_RXPC25 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_RXPC25.r_ARM_RXPC25;
final r_ARM_RSBREL32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_RSBREL32.r_ARM_RSBREL32;
final r_ARM_THM_RPC22 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_THM_RPC22.r_ARM_THM_RPC22;
final r_ARM_RREL32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_RREL32.r_ARM_RREL32;
final r_ARM_RABS32 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_RABS32.r_ARM_RABS32;
final r_ARM_RPC24 : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_RPC24.r_ARM_RPC24;
final r_ARM_RBASE : R_ARM = stdgo._internal.debug.elf.Elf_r_ARM_RBASE.r_ARM_RBASE;
final r_386_NONE : R_386 = stdgo._internal.debug.elf.Elf_r_386_NONE.r_386_NONE;
final r_386_32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_32.r_386_32;
final r_386_PC32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_PC32.r_386_PC32;
final r_386_GOT32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_GOT32.r_386_GOT32;
final r_386_PLT32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_PLT32.r_386_PLT32;
final r_386_COPY : R_386 = stdgo._internal.debug.elf.Elf_r_386_COPY.r_386_COPY;
final r_386_GLOB_DAT : R_386 = stdgo._internal.debug.elf.Elf_r_386_GLOB_DAT.r_386_GLOB_DAT;
final r_386_JMP_SLOT : R_386 = stdgo._internal.debug.elf.Elf_r_386_JMP_SLOT.r_386_JMP_SLOT;
final r_386_RELATIVE : R_386 = stdgo._internal.debug.elf.Elf_r_386_RELATIVE.r_386_RELATIVE;
final r_386_GOTOFF : R_386 = stdgo._internal.debug.elf.Elf_r_386_GOTOFF.r_386_GOTOFF;
final r_386_GOTPC : R_386 = stdgo._internal.debug.elf.Elf_r_386_GOTPC.r_386_GOTPC;
final r_386_32PLT : R_386 = stdgo._internal.debug.elf.Elf_r_386_32PLT.r_386_32PLT;
final r_386_TLS_TPOFF : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_TPOFF.r_386_TLS_TPOFF;
final r_386_TLS_IE : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_IE.r_386_TLS_IE;
final r_386_TLS_GOTIE : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_GOTIE.r_386_TLS_GOTIE;
final r_386_TLS_LE : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_LE.r_386_TLS_LE;
final r_386_TLS_GD : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_GD.r_386_TLS_GD;
final r_386_TLS_LDM : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_LDM.r_386_TLS_LDM;
final r_386_16 : R_386 = stdgo._internal.debug.elf.Elf_r_386_16.r_386_16;
final r_386_PC16 : R_386 = stdgo._internal.debug.elf.Elf_r_386_PC16.r_386_PC16;
final r_386_8 : R_386 = stdgo._internal.debug.elf.Elf_r_386_8.r_386_8;
final r_386_PC8 : R_386 = stdgo._internal.debug.elf.Elf_r_386_PC8.r_386_PC8;
final r_386_TLS_GD_32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_GD_32.r_386_TLS_GD_32;
final r_386_TLS_GD_PUSH : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_GD_PUSH.r_386_TLS_GD_PUSH;
final r_386_TLS_GD_CALL : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_GD_CALL.r_386_TLS_GD_CALL;
final r_386_TLS_GD_POP : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_GD_POP.r_386_TLS_GD_POP;
final r_386_TLS_LDM_32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_LDM_32.r_386_TLS_LDM_32;
final r_386_TLS_LDM_PUSH : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_LDM_PUSH.r_386_TLS_LDM_PUSH;
final r_386_TLS_LDM_CALL : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_LDM_CALL.r_386_TLS_LDM_CALL;
final r_386_TLS_LDM_POP : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_LDM_POP.r_386_TLS_LDM_POP;
final r_386_TLS_LDO_32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_LDO_32.r_386_TLS_LDO_32;
final r_386_TLS_IE_32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_IE_32.r_386_TLS_IE_32;
final r_386_TLS_LE_32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_LE_32.r_386_TLS_LE_32;
final r_386_TLS_DTPMOD32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_DTPMOD32.r_386_TLS_DTPMOD32;
final r_386_TLS_DTPOFF32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_DTPOFF32.r_386_TLS_DTPOFF32;
final r_386_TLS_TPOFF32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_TPOFF32.r_386_TLS_TPOFF32;
final r_386_SIZE32 : R_386 = stdgo._internal.debug.elf.Elf_r_386_SIZE32.r_386_SIZE32;
final r_386_TLS_GOTDESC : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_GOTDESC.r_386_TLS_GOTDESC;
final r_386_TLS_DESC_CALL : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_DESC_CALL.r_386_TLS_DESC_CALL;
final r_386_TLS_DESC : R_386 = stdgo._internal.debug.elf.Elf_r_386_TLS_DESC.r_386_TLS_DESC;
final r_386_IRELATIVE : R_386 = stdgo._internal.debug.elf.Elf_r_386_IRELATIVE.r_386_IRELATIVE;
final r_386_GOT32X : R_386 = stdgo._internal.debug.elf.Elf_r_386_GOT32X.r_386_GOT32X;
final r_MIPS_NONE : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_NONE.r_MIPS_NONE;
final r_MIPS_16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_16.r_MIPS_16;
final r_MIPS_32 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_32.r_MIPS_32;
final r_MIPS_REL32 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_REL32.r_MIPS_REL32;
final r_MIPS_26 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_26.r_MIPS_26;
final r_MIPS_HI16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_HI16.r_MIPS_HI16;
final r_MIPS_LO16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_LO16.r_MIPS_LO16;
final r_MIPS_GPREL16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_GPREL16.r_MIPS_GPREL16;
final r_MIPS_LITERAL : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_LITERAL.r_MIPS_LITERAL;
final r_MIPS_GOT16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_GOT16.r_MIPS_GOT16;
final r_MIPS_PC16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_PC16.r_MIPS_PC16;
final r_MIPS_CALL16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_CALL16.r_MIPS_CALL16;
final r_MIPS_GPREL32 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_GPREL32.r_MIPS_GPREL32;
final r_MIPS_SHIFT5 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_SHIFT5.r_MIPS_SHIFT5;
final r_MIPS_SHIFT6 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_SHIFT6.r_MIPS_SHIFT6;
final r_MIPS_64 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_64.r_MIPS_64;
final r_MIPS_GOT_DISP : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_GOT_DISP.r_MIPS_GOT_DISP;
final r_MIPS_GOT_PAGE : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_GOT_PAGE.r_MIPS_GOT_PAGE;
final r_MIPS_GOT_OFST : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_GOT_OFST.r_MIPS_GOT_OFST;
final r_MIPS_GOT_HI16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_GOT_HI16.r_MIPS_GOT_HI16;
final r_MIPS_GOT_LO16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_GOT_LO16.r_MIPS_GOT_LO16;
final r_MIPS_SUB : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_SUB.r_MIPS_SUB;
final r_MIPS_INSERT_A : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_INSERT_A.r_MIPS_INSERT_A;
final r_MIPS_INSERT_B : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_INSERT_B.r_MIPS_INSERT_B;
final r_MIPS_DELETE : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_DELETE.r_MIPS_DELETE;
final r_MIPS_HIGHER : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_HIGHER.r_MIPS_HIGHER;
final r_MIPS_HIGHEST : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_HIGHEST.r_MIPS_HIGHEST;
final r_MIPS_CALL_HI16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_CALL_HI16.r_MIPS_CALL_HI16;
final r_MIPS_CALL_LO16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_CALL_LO16.r_MIPS_CALL_LO16;
final r_MIPS_SCN_DISP : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_SCN_DISP.r_MIPS_SCN_DISP;
final r_MIPS_REL16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_REL16.r_MIPS_REL16;
final r_MIPS_ADD_IMMEDIATE : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_ADD_IMMEDIATE.r_MIPS_ADD_IMMEDIATE;
final r_MIPS_PJUMP : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_PJUMP.r_MIPS_PJUMP;
final r_MIPS_RELGOT : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_RELGOT.r_MIPS_RELGOT;
final r_MIPS_JALR : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_JALR.r_MIPS_JALR;
final r_MIPS_TLS_DTPMOD32 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_TLS_DTPMOD32.r_MIPS_TLS_DTPMOD32;
final r_MIPS_TLS_DTPREL32 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_TLS_DTPREL32.r_MIPS_TLS_DTPREL32;
final r_MIPS_TLS_DTPMOD64 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_TLS_DTPMOD64.r_MIPS_TLS_DTPMOD64;
final r_MIPS_TLS_DTPREL64 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_TLS_DTPREL64.r_MIPS_TLS_DTPREL64;
final r_MIPS_TLS_GD : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_TLS_GD.r_MIPS_TLS_GD;
final r_MIPS_TLS_LDM : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_TLS_LDM.r_MIPS_TLS_LDM;
final r_MIPS_TLS_DTPREL_HI16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_TLS_DTPREL_HI16.r_MIPS_TLS_DTPREL_HI16;
final r_MIPS_TLS_DTPREL_LO16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_TLS_DTPREL_LO16.r_MIPS_TLS_DTPREL_LO16;
final r_MIPS_TLS_GOTTPREL : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_TLS_GOTTPREL.r_MIPS_TLS_GOTTPREL;
final r_MIPS_TLS_TPREL32 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_TLS_TPREL32.r_MIPS_TLS_TPREL32;
final r_MIPS_TLS_TPREL64 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_TLS_TPREL64.r_MIPS_TLS_TPREL64;
final r_MIPS_TLS_TPREL_HI16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_TLS_TPREL_HI16.r_MIPS_TLS_TPREL_HI16;
final r_MIPS_TLS_TPREL_LO16 : R_MIPS = stdgo._internal.debug.elf.Elf_r_MIPS_TLS_TPREL_LO16.r_MIPS_TLS_TPREL_LO16;
final r_LARCH_NONE : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_NONE.r_LARCH_NONE;
final r_LARCH_32 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_32.r_LARCH_32;
final r_LARCH_64 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_64.r_LARCH_64;
final r_LARCH_RELATIVE : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_RELATIVE.r_LARCH_RELATIVE;
final r_LARCH_COPY : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_COPY.r_LARCH_COPY;
final r_LARCH_JUMP_SLOT : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_JUMP_SLOT.r_LARCH_JUMP_SLOT;
final r_LARCH_TLS_DTPMOD32 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_DTPMOD32.r_LARCH_TLS_DTPMOD32;
final r_LARCH_TLS_DTPMOD64 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_DTPMOD64.r_LARCH_TLS_DTPMOD64;
final r_LARCH_TLS_DTPREL32 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_DTPREL32.r_LARCH_TLS_DTPREL32;
final r_LARCH_TLS_DTPREL64 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_DTPREL64.r_LARCH_TLS_DTPREL64;
final r_LARCH_TLS_TPREL32 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_TPREL32.r_LARCH_TLS_TPREL32;
final r_LARCH_TLS_TPREL64 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_TPREL64.r_LARCH_TLS_TPREL64;
final r_LARCH_IRELATIVE : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_IRELATIVE.r_LARCH_IRELATIVE;
final r_LARCH_MARK_LA : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_MARK_LA.r_LARCH_MARK_LA;
final r_LARCH_MARK_PCREL : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_MARK_PCREL.r_LARCH_MARK_PCREL;
final r_LARCH_SOP_PUSH_PCREL : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_PUSH_PCREL.r_LARCH_SOP_PUSH_PCREL;
final r_LARCH_SOP_PUSH_ABSOLUTE : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_PUSH_ABSOLUTE.r_LARCH_SOP_PUSH_ABSOLUTE;
final r_LARCH_SOP_PUSH_DUP : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_PUSH_DUP.r_LARCH_SOP_PUSH_DUP;
final r_LARCH_SOP_PUSH_GPREL : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_PUSH_GPREL.r_LARCH_SOP_PUSH_GPREL;
final r_LARCH_SOP_PUSH_TLS_TPREL : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_PUSH_TLS_TPREL.r_LARCH_SOP_PUSH_TLS_TPREL;
final r_LARCH_SOP_PUSH_TLS_GOT : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_PUSH_TLS_GOT.r_LARCH_SOP_PUSH_TLS_GOT;
final r_LARCH_SOP_PUSH_TLS_GD : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_PUSH_TLS_GD.r_LARCH_SOP_PUSH_TLS_GD;
final r_LARCH_SOP_PUSH_PLT_PCREL : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_PUSH_PLT_PCREL.r_LARCH_SOP_PUSH_PLT_PCREL;
final r_LARCH_SOP_ASSERT : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_ASSERT.r_LARCH_SOP_ASSERT;
final r_LARCH_SOP_NOT : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_NOT.r_LARCH_SOP_NOT;
final r_LARCH_SOP_SUB : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_SUB.r_LARCH_SOP_SUB;
final r_LARCH_SOP_SL : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_SL.r_LARCH_SOP_SL;
final r_LARCH_SOP_SR : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_SR.r_LARCH_SOP_SR;
final r_LARCH_SOP_ADD : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_ADD.r_LARCH_SOP_ADD;
final r_LARCH_SOP_AND : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_AND.r_LARCH_SOP_AND;
final r_LARCH_SOP_IF_ELSE : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_IF_ELSE.r_LARCH_SOP_IF_ELSE;
final r_LARCH_SOP_POP_32_S_10_5 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_POP_32_S_10_5.r_LARCH_SOP_POP_32_S_10_5;
final r_LARCH_SOP_POP_32_U_10_12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_POP_32_U_10_12.r_LARCH_SOP_POP_32_U_10_12;
final r_LARCH_SOP_POP_32_S_10_12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_POP_32_S_10_12.r_LARCH_SOP_POP_32_S_10_12;
final r_LARCH_SOP_POP_32_S_10_16 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_POP_32_S_10_16.r_LARCH_SOP_POP_32_S_10_16;
final r_LARCH_SOP_POP_32_S_10_16_S2 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_POP_32_S_10_16_S2.r_LARCH_SOP_POP_32_S_10_16_S2;
final r_LARCH_SOP_POP_32_S_5_20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_POP_32_S_5_20.r_LARCH_SOP_POP_32_S_5_20;
final r_LARCH_SOP_POP_32_S_0_5_10_16_S2 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_POP_32_S_0_5_10_16_S2.r_LARCH_SOP_POP_32_S_0_5_10_16_S2;
final r_LARCH_SOP_POP_32_S_0_10_10_16_S2 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_POP_32_S_0_10_10_16_S2.r_LARCH_SOP_POP_32_S_0_10_10_16_S2;
final r_LARCH_SOP_POP_32_U : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SOP_POP_32_U.r_LARCH_SOP_POP_32_U;
final r_LARCH_ADD8 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_ADD8.r_LARCH_ADD8;
final r_LARCH_ADD16 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_ADD16.r_LARCH_ADD16;
final r_LARCH_ADD24 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_ADD24.r_LARCH_ADD24;
final r_LARCH_ADD32 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_ADD32.r_LARCH_ADD32;
final r_LARCH_ADD64 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_ADD64.r_LARCH_ADD64;
final r_LARCH_SUB8 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SUB8.r_LARCH_SUB8;
final r_LARCH_SUB16 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SUB16.r_LARCH_SUB16;
final r_LARCH_SUB24 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SUB24.r_LARCH_SUB24;
final r_LARCH_SUB32 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SUB32.r_LARCH_SUB32;
final r_LARCH_SUB64 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_SUB64.r_LARCH_SUB64;
final r_LARCH_GNU_VTINHERIT : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_GNU_VTINHERIT.r_LARCH_GNU_VTINHERIT;
final r_LARCH_GNU_VTENTRY : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_GNU_VTENTRY.r_LARCH_GNU_VTENTRY;
final r_LARCH_B16 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_B16.r_LARCH_B16;
final r_LARCH_B21 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_B21.r_LARCH_B21;
final r_LARCH_B26 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_B26.r_LARCH_B26;
final r_LARCH_ABS_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_ABS_HI20.r_LARCH_ABS_HI20;
final r_LARCH_ABS_LO12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_ABS_LO12.r_LARCH_ABS_LO12;
final r_LARCH_ABS64_LO20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_ABS64_LO20.r_LARCH_ABS64_LO20;
final r_LARCH_ABS64_HI12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_ABS64_HI12.r_LARCH_ABS64_HI12;
final r_LARCH_PCALA_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_PCALA_HI20.r_LARCH_PCALA_HI20;
final r_LARCH_PCALA_LO12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_PCALA_LO12.r_LARCH_PCALA_LO12;
final r_LARCH_PCALA64_LO20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_PCALA64_LO20.r_LARCH_PCALA64_LO20;
final r_LARCH_PCALA64_HI12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_PCALA64_HI12.r_LARCH_PCALA64_HI12;
final r_LARCH_GOT_PC_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_GOT_PC_HI20.r_LARCH_GOT_PC_HI20;
final r_LARCH_GOT_PC_LO12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_GOT_PC_LO12.r_LARCH_GOT_PC_LO12;
final r_LARCH_GOT64_PC_LO20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_GOT64_PC_LO20.r_LARCH_GOT64_PC_LO20;
final r_LARCH_GOT64_PC_HI12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_GOT64_PC_HI12.r_LARCH_GOT64_PC_HI12;
final r_LARCH_GOT_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_GOT_HI20.r_LARCH_GOT_HI20;
final r_LARCH_GOT_LO12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_GOT_LO12.r_LARCH_GOT_LO12;
final r_LARCH_GOT64_LO20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_GOT64_LO20.r_LARCH_GOT64_LO20;
final r_LARCH_GOT64_HI12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_GOT64_HI12.r_LARCH_GOT64_HI12;
final r_LARCH_TLS_LE_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_LE_HI20.r_LARCH_TLS_LE_HI20;
final r_LARCH_TLS_LE_LO12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_LE_LO12.r_LARCH_TLS_LE_LO12;
final r_LARCH_TLS_LE64_LO20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_LE64_LO20.r_LARCH_TLS_LE64_LO20;
final r_LARCH_TLS_LE64_HI12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_LE64_HI12.r_LARCH_TLS_LE64_HI12;
final r_LARCH_TLS_IE_PC_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_IE_PC_HI20.r_LARCH_TLS_IE_PC_HI20;
final r_LARCH_TLS_IE_PC_LO12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_IE_PC_LO12.r_LARCH_TLS_IE_PC_LO12;
final r_LARCH_TLS_IE64_PC_LO20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_IE64_PC_LO20.r_LARCH_TLS_IE64_PC_LO20;
final r_LARCH_TLS_IE64_PC_HI12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_IE64_PC_HI12.r_LARCH_TLS_IE64_PC_HI12;
final r_LARCH_TLS_IE_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_IE_HI20.r_LARCH_TLS_IE_HI20;
final r_LARCH_TLS_IE_LO12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_IE_LO12.r_LARCH_TLS_IE_LO12;
final r_LARCH_TLS_IE64_LO20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_IE64_LO20.r_LARCH_TLS_IE64_LO20;
final r_LARCH_TLS_IE64_HI12 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_IE64_HI12.r_LARCH_TLS_IE64_HI12;
final r_LARCH_TLS_LD_PC_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_LD_PC_HI20.r_LARCH_TLS_LD_PC_HI20;
final r_LARCH_TLS_LD_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_LD_HI20.r_LARCH_TLS_LD_HI20;
final r_LARCH_TLS_GD_PC_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_GD_PC_HI20.r_LARCH_TLS_GD_PC_HI20;
final r_LARCH_TLS_GD_HI20 : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_TLS_GD_HI20.r_LARCH_TLS_GD_HI20;
final r_LARCH_32_PCREL : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_32_PCREL.r_LARCH_32_PCREL;
final r_LARCH_RELAX : R_LARCH = stdgo._internal.debug.elf.Elf_r_LARCH_RELAX.r_LARCH_RELAX;
final r_PPC_NONE : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_NONE.r_PPC_NONE;
final r_PPC_ADDR32 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_ADDR32.r_PPC_ADDR32;
final r_PPC_ADDR24 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_ADDR24.r_PPC_ADDR24;
final r_PPC_ADDR16 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_ADDR16.r_PPC_ADDR16;
final r_PPC_ADDR16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_ADDR16_LO.r_PPC_ADDR16_LO;
final r_PPC_ADDR16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_ADDR16_HI.r_PPC_ADDR16_HI;
final r_PPC_ADDR16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_ADDR16_HA.r_PPC_ADDR16_HA;
final r_PPC_ADDR14 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_ADDR14.r_PPC_ADDR14;
final r_PPC_ADDR14_BRTAKEN : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_ADDR14_BRTAKEN.r_PPC_ADDR14_BRTAKEN;
final r_PPC_ADDR14_BRNTAKEN : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_ADDR14_BRNTAKEN.r_PPC_ADDR14_BRNTAKEN;
final r_PPC_REL24 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_REL24.r_PPC_REL24;
final r_PPC_REL14 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_REL14.r_PPC_REL14;
final r_PPC_REL14_BRTAKEN : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_REL14_BRTAKEN.r_PPC_REL14_BRTAKEN;
final r_PPC_REL14_BRNTAKEN : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_REL14_BRNTAKEN.r_PPC_REL14_BRNTAKEN;
final r_PPC_GOT16 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GOT16.r_PPC_GOT16;
final r_PPC_GOT16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GOT16_LO.r_PPC_GOT16_LO;
final r_PPC_GOT16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GOT16_HI.r_PPC_GOT16_HI;
final r_PPC_GOT16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GOT16_HA.r_PPC_GOT16_HA;
final r_PPC_PLTREL24 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_PLTREL24.r_PPC_PLTREL24;
final r_PPC_COPY : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_COPY.r_PPC_COPY;
final r_PPC_GLOB_DAT : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GLOB_DAT.r_PPC_GLOB_DAT;
final r_PPC_JMP_SLOT : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_JMP_SLOT.r_PPC_JMP_SLOT;
final r_PPC_RELATIVE : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_RELATIVE.r_PPC_RELATIVE;
final r_PPC_LOCAL24PC : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_LOCAL24PC.r_PPC_LOCAL24PC;
final r_PPC_UADDR32 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_UADDR32.r_PPC_UADDR32;
final r_PPC_UADDR16 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_UADDR16.r_PPC_UADDR16;
final r_PPC_REL32 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_REL32.r_PPC_REL32;
final r_PPC_PLT32 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_PLT32.r_PPC_PLT32;
final r_PPC_PLTREL32 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_PLTREL32.r_PPC_PLTREL32;
final r_PPC_PLT16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_PLT16_LO.r_PPC_PLT16_LO;
final r_PPC_PLT16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_PLT16_HI.r_PPC_PLT16_HI;
final r_PPC_PLT16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_PLT16_HA.r_PPC_PLT16_HA;
final r_PPC_SDAREL16 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_SDAREL16.r_PPC_SDAREL16;
final r_PPC_SECTOFF : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_SECTOFF.r_PPC_SECTOFF;
final r_PPC_SECTOFF_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_SECTOFF_LO.r_PPC_SECTOFF_LO;
final r_PPC_SECTOFF_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_SECTOFF_HI.r_PPC_SECTOFF_HI;
final r_PPC_SECTOFF_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_SECTOFF_HA.r_PPC_SECTOFF_HA;
final r_PPC_TLS : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_TLS.r_PPC_TLS;
final r_PPC_DTPMOD32 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_DTPMOD32.r_PPC_DTPMOD32;
final r_PPC_TPREL16 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_TPREL16.r_PPC_TPREL16;
final r_PPC_TPREL16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_TPREL16_LO.r_PPC_TPREL16_LO;
final r_PPC_TPREL16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_TPREL16_HI.r_PPC_TPREL16_HI;
final r_PPC_TPREL16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_TPREL16_HA.r_PPC_TPREL16_HA;
final r_PPC_TPREL32 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_TPREL32.r_PPC_TPREL32;
final r_PPC_DTPREL16 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_DTPREL16.r_PPC_DTPREL16;
final r_PPC_DTPREL16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_DTPREL16_LO.r_PPC_DTPREL16_LO;
final r_PPC_DTPREL16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_DTPREL16_HI.r_PPC_DTPREL16_HI;
final r_PPC_DTPREL16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_DTPREL16_HA.r_PPC_DTPREL16_HA;
final r_PPC_DTPREL32 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_DTPREL32.r_PPC_DTPREL32;
final r_PPC_GOT_TLSGD16 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GOT_TLSGD16.r_PPC_GOT_TLSGD16;
final r_PPC_GOT_TLSGD16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GOT_TLSGD16_LO.r_PPC_GOT_TLSGD16_LO;
final r_PPC_GOT_TLSGD16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GOT_TLSGD16_HI.r_PPC_GOT_TLSGD16_HI;
final r_PPC_GOT_TLSGD16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GOT_TLSGD16_HA.r_PPC_GOT_TLSGD16_HA;
final r_PPC_GOT_TLSLD16 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GOT_TLSLD16.r_PPC_GOT_TLSLD16;
final r_PPC_GOT_TLSLD16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GOT_TLSLD16_LO.r_PPC_GOT_TLSLD16_LO;
final r_PPC_GOT_TLSLD16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GOT_TLSLD16_HI.r_PPC_GOT_TLSLD16_HI;
final r_PPC_GOT_TLSLD16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GOT_TLSLD16_HA.r_PPC_GOT_TLSLD16_HA;
final r_PPC_GOT_TPREL16 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GOT_TPREL16.r_PPC_GOT_TPREL16;
final r_PPC_GOT_TPREL16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GOT_TPREL16_LO.r_PPC_GOT_TPREL16_LO;
final r_PPC_GOT_TPREL16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GOT_TPREL16_HI.r_PPC_GOT_TPREL16_HI;
final r_PPC_GOT_TPREL16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_GOT_TPREL16_HA.r_PPC_GOT_TPREL16_HA;
final r_PPC_EMB_NADDR32 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_EMB_NADDR32.r_PPC_EMB_NADDR32;
final r_PPC_EMB_NADDR16 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_EMB_NADDR16.r_PPC_EMB_NADDR16;
final r_PPC_EMB_NADDR16_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_EMB_NADDR16_LO.r_PPC_EMB_NADDR16_LO;
final r_PPC_EMB_NADDR16_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_EMB_NADDR16_HI.r_PPC_EMB_NADDR16_HI;
final r_PPC_EMB_NADDR16_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_EMB_NADDR16_HA.r_PPC_EMB_NADDR16_HA;
final r_PPC_EMB_SDAI16 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_EMB_SDAI16.r_PPC_EMB_SDAI16;
final r_PPC_EMB_SDA2I16 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_EMB_SDA2I16.r_PPC_EMB_SDA2I16;
final r_PPC_EMB_SDA2REL : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_EMB_SDA2REL.r_PPC_EMB_SDA2REL;
final r_PPC_EMB_SDA21 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_EMB_SDA21.r_PPC_EMB_SDA21;
final r_PPC_EMB_MRKREF : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_EMB_MRKREF.r_PPC_EMB_MRKREF;
final r_PPC_EMB_RELSEC16 : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_EMB_RELSEC16.r_PPC_EMB_RELSEC16;
final r_PPC_EMB_RELST_LO : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_EMB_RELST_LO.r_PPC_EMB_RELST_LO;
final r_PPC_EMB_RELST_HI : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_EMB_RELST_HI.r_PPC_EMB_RELST_HI;
final r_PPC_EMB_RELST_HA : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_EMB_RELST_HA.r_PPC_EMB_RELST_HA;
final r_PPC_EMB_BIT_FLD : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_EMB_BIT_FLD.r_PPC_EMB_BIT_FLD;
final r_PPC_EMB_RELSDA : R_PPC = stdgo._internal.debug.elf.Elf_r_PPC_EMB_RELSDA.r_PPC_EMB_RELSDA;
final r_PPC64_NONE : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_NONE.r_PPC64_NONE;
final r_PPC64_ADDR32 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR32.r_PPC64_ADDR32;
final r_PPC64_ADDR24 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR24.r_PPC64_ADDR24;
final r_PPC64_ADDR16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR16.r_PPC64_ADDR16;
final r_PPC64_ADDR16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR16_LO.r_PPC64_ADDR16_LO;
final r_PPC64_ADDR16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR16_HI.r_PPC64_ADDR16_HI;
final r_PPC64_ADDR16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR16_HA.r_PPC64_ADDR16_HA;
final r_PPC64_ADDR14 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR14.r_PPC64_ADDR14;
final r_PPC64_ADDR14_BRTAKEN : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR14_BRTAKEN.r_PPC64_ADDR14_BRTAKEN;
final r_PPC64_ADDR14_BRNTAKEN : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR14_BRNTAKEN.r_PPC64_ADDR14_BRNTAKEN;
final r_PPC64_REL24 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL24.r_PPC64_REL24;
final r_PPC64_REL14 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL14.r_PPC64_REL14;
final r_PPC64_REL14_BRTAKEN : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL14_BRTAKEN.r_PPC64_REL14_BRTAKEN;
final r_PPC64_REL14_BRNTAKEN : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL14_BRNTAKEN.r_PPC64_REL14_BRNTAKEN;
final r_PPC64_GOT16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT16.r_PPC64_GOT16;
final r_PPC64_GOT16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT16_LO.r_PPC64_GOT16_LO;
final r_PPC64_GOT16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT16_HI.r_PPC64_GOT16_HI;
final r_PPC64_GOT16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT16_HA.r_PPC64_GOT16_HA;
final r_PPC64_COPY : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_COPY.r_PPC64_COPY;
final r_PPC64_GLOB_DAT : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GLOB_DAT.r_PPC64_GLOB_DAT;
final r_PPC64_JMP_SLOT : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_JMP_SLOT.r_PPC64_JMP_SLOT;
final r_PPC64_RELATIVE : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_RELATIVE.r_PPC64_RELATIVE;
final r_PPC64_UADDR32 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_UADDR32.r_PPC64_UADDR32;
final r_PPC64_UADDR16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_UADDR16.r_PPC64_UADDR16;
final r_PPC64_REL32 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL32.r_PPC64_REL32;
final r_PPC64_PLT32 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLT32.r_PPC64_PLT32;
final r_PPC64_PLTREL32 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLTREL32.r_PPC64_PLTREL32;
final r_PPC64_PLT16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLT16_LO.r_PPC64_PLT16_LO;
final r_PPC64_PLT16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLT16_HI.r_PPC64_PLT16_HI;
final r_PPC64_PLT16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLT16_HA.r_PPC64_PLT16_HA;
final r_PPC64_SECTOFF : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_SECTOFF.r_PPC64_SECTOFF;
final r_PPC64_SECTOFF_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_SECTOFF_LO.r_PPC64_SECTOFF_LO;
final r_PPC64_SECTOFF_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_SECTOFF_HI.r_PPC64_SECTOFF_HI;
final r_PPC64_SECTOFF_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_SECTOFF_HA.r_PPC64_SECTOFF_HA;
final r_PPC64_REL30 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL30.r_PPC64_REL30;
final r_PPC64_ADDR64 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR64.r_PPC64_ADDR64;
final r_PPC64_ADDR16_HIGHER : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR16_HIGHER.r_PPC64_ADDR16_HIGHER;
final r_PPC64_ADDR16_HIGHERA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR16_HIGHERA.r_PPC64_ADDR16_HIGHERA;
final r_PPC64_ADDR16_HIGHEST : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR16_HIGHEST.r_PPC64_ADDR16_HIGHEST;
final r_PPC64_ADDR16_HIGHESTA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR16_HIGHESTA.r_PPC64_ADDR16_HIGHESTA;
final r_PPC64_UADDR64 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_UADDR64.r_PPC64_UADDR64;
final r_PPC64_REL64 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL64.r_PPC64_REL64;
final r_PPC64_PLT64 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLT64.r_PPC64_PLT64;
final r_PPC64_PLTREL64 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLTREL64.r_PPC64_PLTREL64;
final r_PPC64_TOC16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TOC16.r_PPC64_TOC16;
final r_PPC64_TOC16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TOC16_LO.r_PPC64_TOC16_LO;
final r_PPC64_TOC16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TOC16_HI.r_PPC64_TOC16_HI;
final r_PPC64_TOC16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TOC16_HA.r_PPC64_TOC16_HA;
final r_PPC64_TOC : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TOC.r_PPC64_TOC;
final r_PPC64_PLTGOT16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLTGOT16.r_PPC64_PLTGOT16;
final r_PPC64_PLTGOT16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLTGOT16_LO.r_PPC64_PLTGOT16_LO;
final r_PPC64_PLTGOT16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLTGOT16_HI.r_PPC64_PLTGOT16_HI;
final r_PPC64_PLTGOT16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLTGOT16_HA.r_PPC64_PLTGOT16_HA;
final r_PPC64_ADDR16_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR16_DS.r_PPC64_ADDR16_DS;
final r_PPC64_ADDR16_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR16_LO_DS.r_PPC64_ADDR16_LO_DS;
final r_PPC64_GOT16_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT16_DS.r_PPC64_GOT16_DS;
final r_PPC64_GOT16_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT16_LO_DS.r_PPC64_GOT16_LO_DS;
final r_PPC64_PLT16_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLT16_LO_DS.r_PPC64_PLT16_LO_DS;
final r_PPC64_SECTOFF_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_SECTOFF_DS.r_PPC64_SECTOFF_DS;
final r_PPC64_SECTOFF_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_SECTOFF_LO_DS.r_PPC64_SECTOFF_LO_DS;
final r_PPC64_TOC16_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TOC16_DS.r_PPC64_TOC16_DS;
final r_PPC64_TOC16_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TOC16_LO_DS.r_PPC64_TOC16_LO_DS;
final r_PPC64_PLTGOT16_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLTGOT16_DS.r_PPC64_PLTGOT16_DS;
final r_PPC64_PLTGOT_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLTGOT_LO_DS.r_PPC64_PLTGOT_LO_DS;
final r_PPC64_TLS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TLS.r_PPC64_TLS;
final r_PPC64_DTPMOD64 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_DTPMOD64.r_PPC64_DTPMOD64;
final r_PPC64_TPREL16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TPREL16.r_PPC64_TPREL16;
final r_PPC64_TPREL16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TPREL16_LO.r_PPC64_TPREL16_LO;
final r_PPC64_TPREL16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TPREL16_HI.r_PPC64_TPREL16_HI;
final r_PPC64_TPREL16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TPREL16_HA.r_PPC64_TPREL16_HA;
final r_PPC64_TPREL64 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TPREL64.r_PPC64_TPREL64;
final r_PPC64_DTPREL16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_DTPREL16.r_PPC64_DTPREL16;
final r_PPC64_DTPREL16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_DTPREL16_LO.r_PPC64_DTPREL16_LO;
final r_PPC64_DTPREL16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_DTPREL16_HI.r_PPC64_DTPREL16_HI;
final r_PPC64_DTPREL16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_DTPREL16_HA.r_PPC64_DTPREL16_HA;
final r_PPC64_DTPREL64 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_DTPREL64.r_PPC64_DTPREL64;
final r_PPC64_GOT_TLSGD16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_TLSGD16.r_PPC64_GOT_TLSGD16;
final r_PPC64_GOT_TLSGD16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_TLSGD16_LO.r_PPC64_GOT_TLSGD16_LO;
final r_PPC64_GOT_TLSGD16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_TLSGD16_HI.r_PPC64_GOT_TLSGD16_HI;
final r_PPC64_GOT_TLSGD16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_TLSGD16_HA.r_PPC64_GOT_TLSGD16_HA;
final r_PPC64_GOT_TLSLD16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_TLSLD16.r_PPC64_GOT_TLSLD16;
final r_PPC64_GOT_TLSLD16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_TLSLD16_LO.r_PPC64_GOT_TLSLD16_LO;
final r_PPC64_GOT_TLSLD16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_TLSLD16_HI.r_PPC64_GOT_TLSLD16_HI;
final r_PPC64_GOT_TLSLD16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_TLSLD16_HA.r_PPC64_GOT_TLSLD16_HA;
final r_PPC64_GOT_TPREL16_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_TPREL16_DS.r_PPC64_GOT_TPREL16_DS;
final r_PPC64_GOT_TPREL16_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_TPREL16_LO_DS.r_PPC64_GOT_TPREL16_LO_DS;
final r_PPC64_GOT_TPREL16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_TPREL16_HI.r_PPC64_GOT_TPREL16_HI;
final r_PPC64_GOT_TPREL16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_TPREL16_HA.r_PPC64_GOT_TPREL16_HA;
final r_PPC64_GOT_DTPREL16_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_DTPREL16_DS.r_PPC64_GOT_DTPREL16_DS;
final r_PPC64_GOT_DTPREL16_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_DTPREL16_LO_DS.r_PPC64_GOT_DTPREL16_LO_DS;
final r_PPC64_GOT_DTPREL16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_DTPREL16_HI.r_PPC64_GOT_DTPREL16_HI;
final r_PPC64_GOT_DTPREL16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_DTPREL16_HA.r_PPC64_GOT_DTPREL16_HA;
final r_PPC64_TPREL16_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TPREL16_DS.r_PPC64_TPREL16_DS;
final r_PPC64_TPREL16_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TPREL16_LO_DS.r_PPC64_TPREL16_LO_DS;
final r_PPC64_TPREL16_HIGHER : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TPREL16_HIGHER.r_PPC64_TPREL16_HIGHER;
final r_PPC64_TPREL16_HIGHERA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TPREL16_HIGHERA.r_PPC64_TPREL16_HIGHERA;
final r_PPC64_TPREL16_HIGHEST : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TPREL16_HIGHEST.r_PPC64_TPREL16_HIGHEST;
final r_PPC64_TPREL16_HIGHESTA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TPREL16_HIGHESTA.r_PPC64_TPREL16_HIGHESTA;
final r_PPC64_DTPREL16_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_DTPREL16_DS.r_PPC64_DTPREL16_DS;
final r_PPC64_DTPREL16_LO_DS : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_DTPREL16_LO_DS.r_PPC64_DTPREL16_LO_DS;
final r_PPC64_DTPREL16_HIGHER : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_DTPREL16_HIGHER.r_PPC64_DTPREL16_HIGHER;
final r_PPC64_DTPREL16_HIGHERA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_DTPREL16_HIGHERA.r_PPC64_DTPREL16_HIGHERA;
final r_PPC64_DTPREL16_HIGHEST : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_DTPREL16_HIGHEST.r_PPC64_DTPREL16_HIGHEST;
final r_PPC64_DTPREL16_HIGHESTA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_DTPREL16_HIGHESTA.r_PPC64_DTPREL16_HIGHESTA;
final r_PPC64_TLSGD : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TLSGD.r_PPC64_TLSGD;
final r_PPC64_TLSLD : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TLSLD.r_PPC64_TLSLD;
final r_PPC64_TOCSAVE : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TOCSAVE.r_PPC64_TOCSAVE;
final r_PPC64_ADDR16_HIGH : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR16_HIGH.r_PPC64_ADDR16_HIGH;
final r_PPC64_ADDR16_HIGHA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR16_HIGHA.r_PPC64_ADDR16_HIGHA;
final r_PPC64_TPREL16_HIGH : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TPREL16_HIGH.r_PPC64_TPREL16_HIGH;
final r_PPC64_TPREL16_HIGHA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TPREL16_HIGHA.r_PPC64_TPREL16_HIGHA;
final r_PPC64_DTPREL16_HIGH : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_DTPREL16_HIGH.r_PPC64_DTPREL16_HIGH;
final r_PPC64_DTPREL16_HIGHA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_DTPREL16_HIGHA.r_PPC64_DTPREL16_HIGHA;
final r_PPC64_REL24_NOTOC : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL24_NOTOC.r_PPC64_REL24_NOTOC;
final r_PPC64_ADDR64_LOCAL : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR64_LOCAL.r_PPC64_ADDR64_LOCAL;
final r_PPC64_ENTRY : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ENTRY.r_PPC64_ENTRY;
final r_PPC64_PLTSEQ : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLTSEQ.r_PPC64_PLTSEQ;
final r_PPC64_PLTCALL : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLTCALL.r_PPC64_PLTCALL;
final r_PPC64_PLTSEQ_NOTOC : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLTSEQ_NOTOC.r_PPC64_PLTSEQ_NOTOC;
final r_PPC64_PLTCALL_NOTOC : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLTCALL_NOTOC.r_PPC64_PLTCALL_NOTOC;
final r_PPC64_PCREL_OPT : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PCREL_OPT.r_PPC64_PCREL_OPT;
final r_PPC64_REL24_P9NOTOC : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL24_P9NOTOC.r_PPC64_REL24_P9NOTOC;
final r_PPC64_D34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_D34.r_PPC64_D34;
final r_PPC64_D34_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_D34_LO.r_PPC64_D34_LO;
final r_PPC64_D34_HI30 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_D34_HI30.r_PPC64_D34_HI30;
final r_PPC64_D34_HA30 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_D34_HA30.r_PPC64_D34_HA30;
final r_PPC64_PCREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PCREL34.r_PPC64_PCREL34;
final r_PPC64_GOT_PCREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_PCREL34.r_PPC64_GOT_PCREL34;
final r_PPC64_PLT_PCREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLT_PCREL34.r_PPC64_PLT_PCREL34;
final r_PPC64_PLT_PCREL34_NOTOC : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PLT_PCREL34_NOTOC.r_PPC64_PLT_PCREL34_NOTOC;
final r_PPC64_ADDR16_HIGHER34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR16_HIGHER34.r_PPC64_ADDR16_HIGHER34;
final r_PPC64_ADDR16_HIGHERA34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR16_HIGHERA34.r_PPC64_ADDR16_HIGHERA34;
final r_PPC64_ADDR16_HIGHEST34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR16_HIGHEST34.r_PPC64_ADDR16_HIGHEST34;
final r_PPC64_ADDR16_HIGHESTA34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_ADDR16_HIGHESTA34.r_PPC64_ADDR16_HIGHESTA34;
final r_PPC64_REL16_HIGHER34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL16_HIGHER34.r_PPC64_REL16_HIGHER34;
final r_PPC64_REL16_HIGHERA34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL16_HIGHERA34.r_PPC64_REL16_HIGHERA34;
final r_PPC64_REL16_HIGHEST34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL16_HIGHEST34.r_PPC64_REL16_HIGHEST34;
final r_PPC64_REL16_HIGHESTA34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL16_HIGHESTA34.r_PPC64_REL16_HIGHESTA34;
final r_PPC64_D28 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_D28.r_PPC64_D28;
final r_PPC64_PCREL28 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_PCREL28.r_PPC64_PCREL28;
final r_PPC64_TPREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_TPREL34.r_PPC64_TPREL34;
final r_PPC64_DTPREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_DTPREL34.r_PPC64_DTPREL34;
final r_PPC64_GOT_TLSGD_PCREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_TLSGD_PCREL34.r_PPC64_GOT_TLSGD_PCREL34;
final r_PPC64_GOT_TLSLD_PCREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_TLSLD_PCREL34.r_PPC64_GOT_TLSLD_PCREL34;
final r_PPC64_GOT_TPREL_PCREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_TPREL_PCREL34.r_PPC64_GOT_TPREL_PCREL34;
final r_PPC64_GOT_DTPREL_PCREL34 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GOT_DTPREL_PCREL34.r_PPC64_GOT_DTPREL_PCREL34;
final r_PPC64_REL16_HIGH : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL16_HIGH.r_PPC64_REL16_HIGH;
final r_PPC64_REL16_HIGHA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL16_HIGHA.r_PPC64_REL16_HIGHA;
final r_PPC64_REL16_HIGHER : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL16_HIGHER.r_PPC64_REL16_HIGHER;
final r_PPC64_REL16_HIGHERA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL16_HIGHERA.r_PPC64_REL16_HIGHERA;
final r_PPC64_REL16_HIGHEST : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL16_HIGHEST.r_PPC64_REL16_HIGHEST;
final r_PPC64_REL16_HIGHESTA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL16_HIGHESTA.r_PPC64_REL16_HIGHESTA;
final r_PPC64_REL16DX_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL16DX_HA.r_PPC64_REL16DX_HA;
final r_PPC64_JMP_IREL : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_JMP_IREL.r_PPC64_JMP_IREL;
final r_PPC64_IRELATIVE : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_IRELATIVE.r_PPC64_IRELATIVE;
final r_PPC64_REL16 : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL16.r_PPC64_REL16;
final r_PPC64_REL16_LO : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL16_LO.r_PPC64_REL16_LO;
final r_PPC64_REL16_HI : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL16_HI.r_PPC64_REL16_HI;
final r_PPC64_REL16_HA : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_REL16_HA.r_PPC64_REL16_HA;
final r_PPC64_GNU_VTINHERIT : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GNU_VTINHERIT.r_PPC64_GNU_VTINHERIT;
final r_PPC64_GNU_VTENTRY : R_PPC64 = stdgo._internal.debug.elf.Elf_r_PPC64_GNU_VTENTRY.r_PPC64_GNU_VTENTRY;
final r_RISCV_NONE : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_NONE.r_RISCV_NONE;
final r_RISCV_32 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_32.r_RISCV_32;
final r_RISCV_64 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_64.r_RISCV_64;
final r_RISCV_RELATIVE : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_RELATIVE.r_RISCV_RELATIVE;
final r_RISCV_COPY : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_COPY.r_RISCV_COPY;
final r_RISCV_JUMP_SLOT : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_JUMP_SLOT.r_RISCV_JUMP_SLOT;
final r_RISCV_TLS_DTPMOD32 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_TLS_DTPMOD32.r_RISCV_TLS_DTPMOD32;
final r_RISCV_TLS_DTPMOD64 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_TLS_DTPMOD64.r_RISCV_TLS_DTPMOD64;
final r_RISCV_TLS_DTPREL32 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_TLS_DTPREL32.r_RISCV_TLS_DTPREL32;
final r_RISCV_TLS_DTPREL64 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_TLS_DTPREL64.r_RISCV_TLS_DTPREL64;
final r_RISCV_TLS_TPREL32 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_TLS_TPREL32.r_RISCV_TLS_TPREL32;
final r_RISCV_TLS_TPREL64 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_TLS_TPREL64.r_RISCV_TLS_TPREL64;
final r_RISCV_BRANCH : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_BRANCH.r_RISCV_BRANCH;
final r_RISCV_JAL : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_JAL.r_RISCV_JAL;
final r_RISCV_CALL : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_CALL.r_RISCV_CALL;
final r_RISCV_CALL_PLT : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_CALL_PLT.r_RISCV_CALL_PLT;
final r_RISCV_GOT_HI20 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_GOT_HI20.r_RISCV_GOT_HI20;
final r_RISCV_TLS_GOT_HI20 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_TLS_GOT_HI20.r_RISCV_TLS_GOT_HI20;
final r_RISCV_TLS_GD_HI20 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_TLS_GD_HI20.r_RISCV_TLS_GD_HI20;
final r_RISCV_PCREL_HI20 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_PCREL_HI20.r_RISCV_PCREL_HI20;
final r_RISCV_PCREL_LO12_I : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_PCREL_LO12_I.r_RISCV_PCREL_LO12_I;
final r_RISCV_PCREL_LO12_S : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_PCREL_LO12_S.r_RISCV_PCREL_LO12_S;
final r_RISCV_HI20 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_HI20.r_RISCV_HI20;
final r_RISCV_LO12_I : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_LO12_I.r_RISCV_LO12_I;
final r_RISCV_LO12_S : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_LO12_S.r_RISCV_LO12_S;
final r_RISCV_TPREL_HI20 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_TPREL_HI20.r_RISCV_TPREL_HI20;
final r_RISCV_TPREL_LO12_I : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_TPREL_LO12_I.r_RISCV_TPREL_LO12_I;
final r_RISCV_TPREL_LO12_S : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_TPREL_LO12_S.r_RISCV_TPREL_LO12_S;
final r_RISCV_TPREL_ADD : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_TPREL_ADD.r_RISCV_TPREL_ADD;
final r_RISCV_ADD8 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_ADD8.r_RISCV_ADD8;
final r_RISCV_ADD16 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_ADD16.r_RISCV_ADD16;
final r_RISCV_ADD32 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_ADD32.r_RISCV_ADD32;
final r_RISCV_ADD64 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_ADD64.r_RISCV_ADD64;
final r_RISCV_SUB8 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_SUB8.r_RISCV_SUB8;
final r_RISCV_SUB16 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_SUB16.r_RISCV_SUB16;
final r_RISCV_SUB32 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_SUB32.r_RISCV_SUB32;
final r_RISCV_SUB64 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_SUB64.r_RISCV_SUB64;
final r_RISCV_GNU_VTINHERIT : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_GNU_VTINHERIT.r_RISCV_GNU_VTINHERIT;
final r_RISCV_GNU_VTENTRY : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_GNU_VTENTRY.r_RISCV_GNU_VTENTRY;
final r_RISCV_ALIGN : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_ALIGN.r_RISCV_ALIGN;
final r_RISCV_RVC_BRANCH : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_RVC_BRANCH.r_RISCV_RVC_BRANCH;
final r_RISCV_RVC_JUMP : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_RVC_JUMP.r_RISCV_RVC_JUMP;
final r_RISCV_RVC_LUI : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_RVC_LUI.r_RISCV_RVC_LUI;
final r_RISCV_GPREL_I : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_GPREL_I.r_RISCV_GPREL_I;
final r_RISCV_GPREL_S : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_GPREL_S.r_RISCV_GPREL_S;
final r_RISCV_TPREL_I : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_TPREL_I.r_RISCV_TPREL_I;
final r_RISCV_TPREL_S : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_TPREL_S.r_RISCV_TPREL_S;
final r_RISCV_RELAX : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_RELAX.r_RISCV_RELAX;
final r_RISCV_SUB6 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_SUB6.r_RISCV_SUB6;
final r_RISCV_SET6 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_SET6.r_RISCV_SET6;
final r_RISCV_SET8 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_SET8.r_RISCV_SET8;
final r_RISCV_SET16 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_SET16.r_RISCV_SET16;
final r_RISCV_SET32 : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_SET32.r_RISCV_SET32;
final r_RISCV_32_PCREL : R_RISCV = stdgo._internal.debug.elf.Elf_r_RISCV_32_PCREL.r_RISCV_32_PCREL;
final r_390_NONE : R_390 = stdgo._internal.debug.elf.Elf_r_390_NONE.r_390_NONE;
final r_390_8 : R_390 = stdgo._internal.debug.elf.Elf_r_390_8.r_390_8;
final r_390_12 : R_390 = stdgo._internal.debug.elf.Elf_r_390_12.r_390_12;
final r_390_16 : R_390 = stdgo._internal.debug.elf.Elf_r_390_16.r_390_16;
final r_390_32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_32.r_390_32;
final r_390_PC32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_PC32.r_390_PC32;
final r_390_GOT12 : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOT12.r_390_GOT12;
final r_390_GOT32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOT32.r_390_GOT32;
final r_390_PLT32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_PLT32.r_390_PLT32;
final r_390_COPY : R_390 = stdgo._internal.debug.elf.Elf_r_390_COPY.r_390_COPY;
final r_390_GLOB_DAT : R_390 = stdgo._internal.debug.elf.Elf_r_390_GLOB_DAT.r_390_GLOB_DAT;
final r_390_JMP_SLOT : R_390 = stdgo._internal.debug.elf.Elf_r_390_JMP_SLOT.r_390_JMP_SLOT;
final r_390_RELATIVE : R_390 = stdgo._internal.debug.elf.Elf_r_390_RELATIVE.r_390_RELATIVE;
final r_390_GOTOFF : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOTOFF.r_390_GOTOFF;
final r_390_GOTPC : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOTPC.r_390_GOTPC;
final r_390_GOT16 : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOT16.r_390_GOT16;
final r_390_PC16 : R_390 = stdgo._internal.debug.elf.Elf_r_390_PC16.r_390_PC16;
final r_390_PC16DBL : R_390 = stdgo._internal.debug.elf.Elf_r_390_PC16DBL.r_390_PC16DBL;
final r_390_PLT16DBL : R_390 = stdgo._internal.debug.elf.Elf_r_390_PLT16DBL.r_390_PLT16DBL;
final r_390_PC32DBL : R_390 = stdgo._internal.debug.elf.Elf_r_390_PC32DBL.r_390_PC32DBL;
final r_390_PLT32DBL : R_390 = stdgo._internal.debug.elf.Elf_r_390_PLT32DBL.r_390_PLT32DBL;
final r_390_GOTPCDBL : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOTPCDBL.r_390_GOTPCDBL;
final r_390_64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_64.r_390_64;
final r_390_PC64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_PC64.r_390_PC64;
final r_390_GOT64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOT64.r_390_GOT64;
final r_390_PLT64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_PLT64.r_390_PLT64;
final r_390_GOTENT : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOTENT.r_390_GOTENT;
final r_390_GOTOFF16 : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOTOFF16.r_390_GOTOFF16;
final r_390_GOTOFF64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOTOFF64.r_390_GOTOFF64;
final r_390_GOTPLT12 : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOTPLT12.r_390_GOTPLT12;
final r_390_GOTPLT16 : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOTPLT16.r_390_GOTPLT16;
final r_390_GOTPLT32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOTPLT32.r_390_GOTPLT32;
final r_390_GOTPLT64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOTPLT64.r_390_GOTPLT64;
final r_390_GOTPLTENT : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOTPLTENT.r_390_GOTPLTENT;
final r_390_GOTPLTOFF16 : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOTPLTOFF16.r_390_GOTPLTOFF16;
final r_390_GOTPLTOFF32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOTPLTOFF32.r_390_GOTPLTOFF32;
final r_390_GOTPLTOFF64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOTPLTOFF64.r_390_GOTPLTOFF64;
final r_390_TLS_LOAD : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_LOAD.r_390_TLS_LOAD;
final r_390_TLS_GDCALL : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_GDCALL.r_390_TLS_GDCALL;
final r_390_TLS_LDCALL : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_LDCALL.r_390_TLS_LDCALL;
final r_390_TLS_GD32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_GD32.r_390_TLS_GD32;
final r_390_TLS_GD64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_GD64.r_390_TLS_GD64;
final r_390_TLS_GOTIE12 : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_GOTIE12.r_390_TLS_GOTIE12;
final r_390_TLS_GOTIE32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_GOTIE32.r_390_TLS_GOTIE32;
final r_390_TLS_GOTIE64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_GOTIE64.r_390_TLS_GOTIE64;
final r_390_TLS_LDM32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_LDM32.r_390_TLS_LDM32;
final r_390_TLS_LDM64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_LDM64.r_390_TLS_LDM64;
final r_390_TLS_IE32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_IE32.r_390_TLS_IE32;
final r_390_TLS_IE64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_IE64.r_390_TLS_IE64;
final r_390_TLS_IEENT : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_IEENT.r_390_TLS_IEENT;
final r_390_TLS_LE32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_LE32.r_390_TLS_LE32;
final r_390_TLS_LE64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_LE64.r_390_TLS_LE64;
final r_390_TLS_LDO32 : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_LDO32.r_390_TLS_LDO32;
final r_390_TLS_LDO64 : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_LDO64.r_390_TLS_LDO64;
final r_390_TLS_DTPMOD : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_DTPMOD.r_390_TLS_DTPMOD;
final r_390_TLS_DTPOFF : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_DTPOFF.r_390_TLS_DTPOFF;
final r_390_TLS_TPOFF : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_TPOFF.r_390_TLS_TPOFF;
final r_390_20 : R_390 = stdgo._internal.debug.elf.Elf_r_390_20.r_390_20;
final r_390_GOT20 : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOT20.r_390_GOT20;
final r_390_GOTPLT20 : R_390 = stdgo._internal.debug.elf.Elf_r_390_GOTPLT20.r_390_GOTPLT20;
final r_390_TLS_GOTIE20 : R_390 = stdgo._internal.debug.elf.Elf_r_390_TLS_GOTIE20.r_390_TLS_GOTIE20;
final r_SPARC_NONE : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_NONE.r_SPARC_NONE;
final r_SPARC_8 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_8.r_SPARC_8;
final r_SPARC_16 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_16.r_SPARC_16;
final r_SPARC_32 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_32.r_SPARC_32;
final r_SPARC_DISP8 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_DISP8.r_SPARC_DISP8;
final r_SPARC_DISP16 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_DISP16.r_SPARC_DISP16;
final r_SPARC_DISP32 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_DISP32.r_SPARC_DISP32;
final r_SPARC_WDISP30 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_WDISP30.r_SPARC_WDISP30;
final r_SPARC_WDISP22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_WDISP22.r_SPARC_WDISP22;
final r_SPARC_HI22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_HI22.r_SPARC_HI22;
final r_SPARC_22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_22.r_SPARC_22;
final r_SPARC_13 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_13.r_SPARC_13;
final r_SPARC_LO10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_LO10.r_SPARC_LO10;
final r_SPARC_GOT10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_GOT10.r_SPARC_GOT10;
final r_SPARC_GOT13 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_GOT13.r_SPARC_GOT13;
final r_SPARC_GOT22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_GOT22.r_SPARC_GOT22;
final r_SPARC_PC10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_PC10.r_SPARC_PC10;
final r_SPARC_PC22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_PC22.r_SPARC_PC22;
final r_SPARC_WPLT30 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_WPLT30.r_SPARC_WPLT30;
final r_SPARC_COPY : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_COPY.r_SPARC_COPY;
final r_SPARC_GLOB_DAT : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_GLOB_DAT.r_SPARC_GLOB_DAT;
final r_SPARC_JMP_SLOT : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_JMP_SLOT.r_SPARC_JMP_SLOT;
final r_SPARC_RELATIVE : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_RELATIVE.r_SPARC_RELATIVE;
final r_SPARC_UA32 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_UA32.r_SPARC_UA32;
final r_SPARC_PLT32 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_PLT32.r_SPARC_PLT32;
final r_SPARC_HIPLT22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_HIPLT22.r_SPARC_HIPLT22;
final r_SPARC_LOPLT10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_LOPLT10.r_SPARC_LOPLT10;
final r_SPARC_PCPLT32 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_PCPLT32.r_SPARC_PCPLT32;
final r_SPARC_PCPLT22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_PCPLT22.r_SPARC_PCPLT22;
final r_SPARC_PCPLT10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_PCPLT10.r_SPARC_PCPLT10;
final r_SPARC_10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_10.r_SPARC_10;
final r_SPARC_11 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_11.r_SPARC_11;
final r_SPARC_64 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_64.r_SPARC_64;
final r_SPARC_OLO10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_OLO10.r_SPARC_OLO10;
final r_SPARC_HH22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_HH22.r_SPARC_HH22;
final r_SPARC_HM10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_HM10.r_SPARC_HM10;
final r_SPARC_LM22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_LM22.r_SPARC_LM22;
final r_SPARC_PC_HH22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_PC_HH22.r_SPARC_PC_HH22;
final r_SPARC_PC_HM10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_PC_HM10.r_SPARC_PC_HM10;
final r_SPARC_PC_LM22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_PC_LM22.r_SPARC_PC_LM22;
final r_SPARC_WDISP16 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_WDISP16.r_SPARC_WDISP16;
final r_SPARC_WDISP19 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_WDISP19.r_SPARC_WDISP19;
final r_SPARC_GLOB_JMP : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_GLOB_JMP.r_SPARC_GLOB_JMP;
final r_SPARC_7 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_7.r_SPARC_7;
final r_SPARC_5 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_5.r_SPARC_5;
final r_SPARC_6 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_6.r_SPARC_6;
final r_SPARC_DISP64 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_DISP64.r_SPARC_DISP64;
final r_SPARC_PLT64 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_PLT64.r_SPARC_PLT64;
final r_SPARC_HIX22 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_HIX22.r_SPARC_HIX22;
final r_SPARC_LOX10 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_LOX10.r_SPARC_LOX10;
final r_SPARC_H44 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_H44.r_SPARC_H44;
final r_SPARC_M44 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_M44.r_SPARC_M44;
final r_SPARC_L44 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_L44.r_SPARC_L44;
final r_SPARC_REGISTER : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_REGISTER.r_SPARC_REGISTER;
final r_SPARC_UA64 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_UA64.r_SPARC_UA64;
final r_SPARC_UA16 : R_SPARC = stdgo._internal.debug.elf.Elf_r_SPARC_UA16.r_SPARC_UA16;
final arm_MAGIC_TRAMP_NUMBER : haxe.UInt64 = stdgo._internal.debug.elf.Elf_arm_MAGIC_TRAMP_NUMBER.arm_MAGIC_TRAMP_NUMBER;
final sym32Size : haxe.UInt64 = stdgo._internal.debug.elf.Elf_sym32Size.sym32Size;
final sym64Size : haxe.UInt64 = stdgo._internal.debug.elf.Elf_sym64Size.sym64Size;
var errNoSymbols(get, set) : stdgo.Error;
private function get_errNoSymbols():stdgo.Error return stdgo._internal.debug.elf.Elf_errNoSymbols.errNoSymbols;
private function set_errNoSymbols(v:stdgo.Error):stdgo.Error {
        stdgo._internal.debug.elf.Elf_errNoSymbols.errNoSymbols = v;
        return v;
    }
@:structInit abstract Header32(stdgo._internal.debug.elf.Elf_Header32.Header32) from stdgo._internal.debug.elf.Elf_Header32.Header32 to stdgo._internal.debug.elf.Elf_Header32.Header32 {
    public var ident(get, set) : haxe.ds.Vector<std.UInt>;
    function get_ident():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.ident) i]);
    function set_ident(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.ident = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = v;
        return v;
    }
    public var machine(get, set) : std.UInt;
    function get_machine():std.UInt return this.machine;
    function set_machine(v:std.UInt):std.UInt {
        this.machine = v;
        return v;
    }
    public var version(get, set) : std.UInt;
    function get_version():std.UInt return this.version;
    function set_version(v:std.UInt):std.UInt {
        this.version = v;
        return v;
    }
    public var entry(get, set) : std.UInt;
    function get_entry():std.UInt return this.entry;
    function set_entry(v:std.UInt):std.UInt {
        this.entry = v;
        return v;
    }
    public var phoff(get, set) : std.UInt;
    function get_phoff():std.UInt return this.phoff;
    function set_phoff(v:std.UInt):std.UInt {
        this.phoff = v;
        return v;
    }
    public var shoff(get, set) : std.UInt;
    function get_shoff():std.UInt return this.shoff;
    function set_shoff(v:std.UInt):std.UInt {
        this.shoff = v;
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = v;
        return v;
    }
    public var ehsize(get, set) : std.UInt;
    function get_ehsize():std.UInt return this.ehsize;
    function set_ehsize(v:std.UInt):std.UInt {
        this.ehsize = v;
        return v;
    }
    public var phentsize(get, set) : std.UInt;
    function get_phentsize():std.UInt return this.phentsize;
    function set_phentsize(v:std.UInt):std.UInt {
        this.phentsize = v;
        return v;
    }
    public var phnum(get, set) : std.UInt;
    function get_phnum():std.UInt return this.phnum;
    function set_phnum(v:std.UInt):std.UInt {
        this.phnum = v;
        return v;
    }
    public var shentsize(get, set) : std.UInt;
    function get_shentsize():std.UInt return this.shentsize;
    function set_shentsize(v:std.UInt):std.UInt {
        this.shentsize = v;
        return v;
    }
    public var shnum(get, set) : std.UInt;
    function get_shnum():std.UInt return this.shnum;
    function set_shnum(v:std.UInt):std.UInt {
        this.shnum = v;
        return v;
    }
    public var shstrndx(get, set) : std.UInt;
    function get_shstrndx():std.UInt return this.shstrndx;
    function set_shstrndx(v:std.UInt):std.UInt {
        this.shstrndx = v;
        return v;
    }
    public function new(?ident:haxe.ds.Vector<std.UInt>, ?type:std.UInt, ?machine:std.UInt, ?version:std.UInt, ?entry:std.UInt, ?phoff:std.UInt, ?shoff:std.UInt, ?flags:std.UInt, ?ehsize:std.UInt, ?phentsize:std.UInt, ?phnum:std.UInt, ?shentsize:std.UInt, ?shnum:std.UInt, ?shstrndx:std.UInt) this = new stdgo._internal.debug.elf.Elf_Header32.Header32(
([for (i in ident) i] : stdgo.GoArray<stdgo.GoUInt8>),
type,
machine,
version,
entry,
phoff,
shoff,
flags,
ehsize,
phentsize,
phnum,
shentsize,
shnum,
shstrndx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Section32(stdgo._internal.debug.elf.Elf_Section32.Section32) from stdgo._internal.debug.elf.Elf_Section32.Section32 to stdgo._internal.debug.elf.Elf_Section32.Section32 {
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = v;
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = v;
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = v;
        return v;
    }
    public var addr(get, set) : std.UInt;
    function get_addr():std.UInt return this.addr;
    function set_addr(v:std.UInt):std.UInt {
        this.addr = v;
        return v;
    }
    public var off(get, set) : std.UInt;
    function get_off():std.UInt return this.off;
    function set_off(v:std.UInt):std.UInt {
        this.off = v;
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = v;
        return v;
    }
    public var link(get, set) : std.UInt;
    function get_link():std.UInt return this.link;
    function set_link(v:std.UInt):std.UInt {
        this.link = v;
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = v;
        return v;
    }
    public var addralign(get, set) : std.UInt;
    function get_addralign():std.UInt return this.addralign;
    function set_addralign(v:std.UInt):std.UInt {
        this.addralign = v;
        return v;
    }
    public var entsize(get, set) : std.UInt;
    function get_entsize():std.UInt return this.entsize;
    function set_entsize(v:std.UInt):std.UInt {
        this.entsize = v;
        return v;
    }
    public function new(?name:std.UInt, ?type:std.UInt, ?flags:std.UInt, ?addr:std.UInt, ?off:std.UInt, ?size:std.UInt, ?link:std.UInt, ?info:std.UInt, ?addralign:std.UInt, ?entsize:std.UInt) this = new stdgo._internal.debug.elf.Elf_Section32.Section32(name, type, flags, addr, off, size, link, info, addralign, entsize);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Prog32(stdgo._internal.debug.elf.Elf_Prog32.Prog32) from stdgo._internal.debug.elf.Elf_Prog32.Prog32 to stdgo._internal.debug.elf.Elf_Prog32.Prog32 {
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = v;
        return v;
    }
    public var off(get, set) : std.UInt;
    function get_off():std.UInt return this.off;
    function set_off(v:std.UInt):std.UInt {
        this.off = v;
        return v;
    }
    public var vaddr(get, set) : std.UInt;
    function get_vaddr():std.UInt return this.vaddr;
    function set_vaddr(v:std.UInt):std.UInt {
        this.vaddr = v;
        return v;
    }
    public var paddr(get, set) : std.UInt;
    function get_paddr():std.UInt return this.paddr;
    function set_paddr(v:std.UInt):std.UInt {
        this.paddr = v;
        return v;
    }
    public var filesz(get, set) : std.UInt;
    function get_filesz():std.UInt return this.filesz;
    function set_filesz(v:std.UInt):std.UInt {
        this.filesz = v;
        return v;
    }
    public var memsz(get, set) : std.UInt;
    function get_memsz():std.UInt return this.memsz;
    function set_memsz(v:std.UInt):std.UInt {
        this.memsz = v;
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = v;
        return v;
    }
    public var align(get, set) : std.UInt;
    function get_align():std.UInt return this.align;
    function set_align(v:std.UInt):std.UInt {
        this.align = v;
        return v;
    }
    public function new(?type:std.UInt, ?off:std.UInt, ?vaddr:std.UInt, ?paddr:std.UInt, ?filesz:std.UInt, ?memsz:std.UInt, ?flags:std.UInt, ?align:std.UInt) this = new stdgo._internal.debug.elf.Elf_Prog32.Prog32(type, off, vaddr, paddr, filesz, memsz, flags, align);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Dyn32(stdgo._internal.debug.elf.Elf_Dyn32.Dyn32) from stdgo._internal.debug.elf.Elf_Dyn32.Dyn32 to stdgo._internal.debug.elf.Elf_Dyn32.Dyn32 {
    public var tag(get, set) : StdTypes.Int;
    function get_tag():StdTypes.Int return this.tag;
    function set_tag(v:StdTypes.Int):StdTypes.Int {
        this.tag = v;
        return v;
    }
    public var val(get, set) : std.UInt;
    function get_val():std.UInt return this.val;
    function set_val(v:std.UInt):std.UInt {
        this.val = v;
        return v;
    }
    public function new(?tag:StdTypes.Int, ?val:std.UInt) this = new stdgo._internal.debug.elf.Elf_Dyn32.Dyn32(tag, val);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Chdr32(stdgo._internal.debug.elf.Elf_Chdr32.Chdr32) from stdgo._internal.debug.elf.Elf_Chdr32.Chdr32 to stdgo._internal.debug.elf.Elf_Chdr32.Chdr32 {
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = v;
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = v;
        return v;
    }
    public var addralign(get, set) : std.UInt;
    function get_addralign():std.UInt return this.addralign;
    function set_addralign(v:std.UInt):std.UInt {
        this.addralign = v;
        return v;
    }
    public function new(?type:std.UInt, ?size:std.UInt, ?addralign:std.UInt) this = new stdgo._internal.debug.elf.Elf_Chdr32.Chdr32(type, size, addralign);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Rel32(stdgo._internal.debug.elf.Elf_Rel32.Rel32) from stdgo._internal.debug.elf.Elf_Rel32.Rel32 to stdgo._internal.debug.elf.Elf_Rel32.Rel32 {
    public var off(get, set) : std.UInt;
    function get_off():std.UInt return this.off;
    function set_off(v:std.UInt):std.UInt {
        this.off = v;
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = v;
        return v;
    }
    public function new(?off:std.UInt, ?info:std.UInt) this = new stdgo._internal.debug.elf.Elf_Rel32.Rel32(off, info);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Rela32(stdgo._internal.debug.elf.Elf_Rela32.Rela32) from stdgo._internal.debug.elf.Elf_Rela32.Rela32 to stdgo._internal.debug.elf.Elf_Rela32.Rela32 {
    public var off(get, set) : std.UInt;
    function get_off():std.UInt return this.off;
    function set_off(v:std.UInt):std.UInt {
        this.off = v;
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = v;
        return v;
    }
    public var addend(get, set) : StdTypes.Int;
    function get_addend():StdTypes.Int return this.addend;
    function set_addend(v:StdTypes.Int):StdTypes.Int {
        this.addend = v;
        return v;
    }
    public function new(?off:std.UInt, ?info:std.UInt, ?addend:StdTypes.Int) this = new stdgo._internal.debug.elf.Elf_Rela32.Rela32(off, info, addend);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Sym32(stdgo._internal.debug.elf.Elf_Sym32.Sym32) from stdgo._internal.debug.elf.Elf_Sym32.Sym32 to stdgo._internal.debug.elf.Elf_Sym32.Sym32 {
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = v;
        return v;
    }
    public var value(get, set) : std.UInt;
    function get_value():std.UInt return this.value;
    function set_value(v:std.UInt):std.UInt {
        this.value = v;
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = v;
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = v;
        return v;
    }
    public var other(get, set) : std.UInt;
    function get_other():std.UInt return this.other;
    function set_other(v:std.UInt):std.UInt {
        this.other = v;
        return v;
    }
    public var shndx(get, set) : std.UInt;
    function get_shndx():std.UInt return this.shndx;
    function set_shndx(v:std.UInt):std.UInt {
        this.shndx = v;
        return v;
    }
    public function new(?name:std.UInt, ?value:std.UInt, ?size:std.UInt, ?info:std.UInt, ?other:std.UInt, ?shndx:std.UInt) this = new stdgo._internal.debug.elf.Elf_Sym32.Sym32(name, value, size, info, other, shndx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Header64(stdgo._internal.debug.elf.Elf_Header64.Header64) from stdgo._internal.debug.elf.Elf_Header64.Header64 to stdgo._internal.debug.elf.Elf_Header64.Header64 {
    public var ident(get, set) : haxe.ds.Vector<std.UInt>;
    function get_ident():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.ident) i]);
    function set_ident(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.ident = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = v;
        return v;
    }
    public var machine(get, set) : std.UInt;
    function get_machine():std.UInt return this.machine;
    function set_machine(v:std.UInt):std.UInt {
        this.machine = v;
        return v;
    }
    public var version(get, set) : std.UInt;
    function get_version():std.UInt return this.version;
    function set_version(v:std.UInt):std.UInt {
        this.version = v;
        return v;
    }
    public var entry(get, set) : haxe.UInt64;
    function get_entry():haxe.UInt64 return this.entry;
    function set_entry(v:haxe.UInt64):haxe.UInt64 {
        this.entry = v;
        return v;
    }
    public var phoff(get, set) : haxe.UInt64;
    function get_phoff():haxe.UInt64 return this.phoff;
    function set_phoff(v:haxe.UInt64):haxe.UInt64 {
        this.phoff = v;
        return v;
    }
    public var shoff(get, set) : haxe.UInt64;
    function get_shoff():haxe.UInt64 return this.shoff;
    function set_shoff(v:haxe.UInt64):haxe.UInt64 {
        this.shoff = v;
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = v;
        return v;
    }
    public var ehsize(get, set) : std.UInt;
    function get_ehsize():std.UInt return this.ehsize;
    function set_ehsize(v:std.UInt):std.UInt {
        this.ehsize = v;
        return v;
    }
    public var phentsize(get, set) : std.UInt;
    function get_phentsize():std.UInt return this.phentsize;
    function set_phentsize(v:std.UInt):std.UInt {
        this.phentsize = v;
        return v;
    }
    public var phnum(get, set) : std.UInt;
    function get_phnum():std.UInt return this.phnum;
    function set_phnum(v:std.UInt):std.UInt {
        this.phnum = v;
        return v;
    }
    public var shentsize(get, set) : std.UInt;
    function get_shentsize():std.UInt return this.shentsize;
    function set_shentsize(v:std.UInt):std.UInt {
        this.shentsize = v;
        return v;
    }
    public var shnum(get, set) : std.UInt;
    function get_shnum():std.UInt return this.shnum;
    function set_shnum(v:std.UInt):std.UInt {
        this.shnum = v;
        return v;
    }
    public var shstrndx(get, set) : std.UInt;
    function get_shstrndx():std.UInt return this.shstrndx;
    function set_shstrndx(v:std.UInt):std.UInt {
        this.shstrndx = v;
        return v;
    }
    public function new(?ident:haxe.ds.Vector<std.UInt>, ?type:std.UInt, ?machine:std.UInt, ?version:std.UInt, ?entry:haxe.UInt64, ?phoff:haxe.UInt64, ?shoff:haxe.UInt64, ?flags:std.UInt, ?ehsize:std.UInt, ?phentsize:std.UInt, ?phnum:std.UInt, ?shentsize:std.UInt, ?shnum:std.UInt, ?shstrndx:std.UInt) this = new stdgo._internal.debug.elf.Elf_Header64.Header64(
([for (i in ident) i] : stdgo.GoArray<stdgo.GoUInt8>),
type,
machine,
version,
entry,
phoff,
shoff,
flags,
ehsize,
phentsize,
phnum,
shentsize,
shnum,
shstrndx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Section64(stdgo._internal.debug.elf.Elf_Section64.Section64) from stdgo._internal.debug.elf.Elf_Section64.Section64 to stdgo._internal.debug.elf.Elf_Section64.Section64 {
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = v;
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = v;
        return v;
    }
    public var flags(get, set) : haxe.UInt64;
    function get_flags():haxe.UInt64 return this.flags;
    function set_flags(v:haxe.UInt64):haxe.UInt64 {
        this.flags = v;
        return v;
    }
    public var addr(get, set) : haxe.UInt64;
    function get_addr():haxe.UInt64 return this.addr;
    function set_addr(v:haxe.UInt64):haxe.UInt64 {
        this.addr = v;
        return v;
    }
    public var off(get, set) : haxe.UInt64;
    function get_off():haxe.UInt64 return this.off;
    function set_off(v:haxe.UInt64):haxe.UInt64 {
        this.off = v;
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = v;
        return v;
    }
    public var link(get, set) : std.UInt;
    function get_link():std.UInt return this.link;
    function set_link(v:std.UInt):std.UInt {
        this.link = v;
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = v;
        return v;
    }
    public var addralign(get, set) : haxe.UInt64;
    function get_addralign():haxe.UInt64 return this.addralign;
    function set_addralign(v:haxe.UInt64):haxe.UInt64 {
        this.addralign = v;
        return v;
    }
    public var entsize(get, set) : haxe.UInt64;
    function get_entsize():haxe.UInt64 return this.entsize;
    function set_entsize(v:haxe.UInt64):haxe.UInt64 {
        this.entsize = v;
        return v;
    }
    public function new(?name:std.UInt, ?type:std.UInt, ?flags:haxe.UInt64, ?addr:haxe.UInt64, ?off:haxe.UInt64, ?size:haxe.UInt64, ?link:std.UInt, ?info:std.UInt, ?addralign:haxe.UInt64, ?entsize:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_Section64.Section64(name, type, flags, addr, off, size, link, info, addralign, entsize);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Prog64(stdgo._internal.debug.elf.Elf_Prog64.Prog64) from stdgo._internal.debug.elf.Elf_Prog64.Prog64 to stdgo._internal.debug.elf.Elf_Prog64.Prog64 {
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = v;
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = v;
        return v;
    }
    public var off(get, set) : haxe.UInt64;
    function get_off():haxe.UInt64 return this.off;
    function set_off(v:haxe.UInt64):haxe.UInt64 {
        this.off = v;
        return v;
    }
    public var vaddr(get, set) : haxe.UInt64;
    function get_vaddr():haxe.UInt64 return this.vaddr;
    function set_vaddr(v:haxe.UInt64):haxe.UInt64 {
        this.vaddr = v;
        return v;
    }
    public var paddr(get, set) : haxe.UInt64;
    function get_paddr():haxe.UInt64 return this.paddr;
    function set_paddr(v:haxe.UInt64):haxe.UInt64 {
        this.paddr = v;
        return v;
    }
    public var filesz(get, set) : haxe.UInt64;
    function get_filesz():haxe.UInt64 return this.filesz;
    function set_filesz(v:haxe.UInt64):haxe.UInt64 {
        this.filesz = v;
        return v;
    }
    public var memsz(get, set) : haxe.UInt64;
    function get_memsz():haxe.UInt64 return this.memsz;
    function set_memsz(v:haxe.UInt64):haxe.UInt64 {
        this.memsz = v;
        return v;
    }
    public var align(get, set) : haxe.UInt64;
    function get_align():haxe.UInt64 return this.align;
    function set_align(v:haxe.UInt64):haxe.UInt64 {
        this.align = v;
        return v;
    }
    public function new(?type:std.UInt, ?flags:std.UInt, ?off:haxe.UInt64, ?vaddr:haxe.UInt64, ?paddr:haxe.UInt64, ?filesz:haxe.UInt64, ?memsz:haxe.UInt64, ?align:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_Prog64.Prog64(type, flags, off, vaddr, paddr, filesz, memsz, align);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Dyn64(stdgo._internal.debug.elf.Elf_Dyn64.Dyn64) from stdgo._internal.debug.elf.Elf_Dyn64.Dyn64 to stdgo._internal.debug.elf.Elf_Dyn64.Dyn64 {
    public var tag(get, set) : haxe.Int64;
    function get_tag():haxe.Int64 return this.tag;
    function set_tag(v:haxe.Int64):haxe.Int64 {
        this.tag = v;
        return v;
    }
    public var val(get, set) : haxe.UInt64;
    function get_val():haxe.UInt64 return this.val;
    function set_val(v:haxe.UInt64):haxe.UInt64 {
        this.val = v;
        return v;
    }
    public function new(?tag:haxe.Int64, ?val:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_Dyn64.Dyn64(tag, val);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Chdr64(stdgo._internal.debug.elf.Elf_Chdr64.Chdr64) from stdgo._internal.debug.elf.Elf_Chdr64.Chdr64 to stdgo._internal.debug.elf.Elf_Chdr64.Chdr64 {
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = v;
        return v;
    }
    public var __1(get, set) : std.UInt;
    function get___1():std.UInt return this.__1;
    function set___1(v:std.UInt):std.UInt {
        this.__1 = v;
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = v;
        return v;
    }
    public var addralign(get, set) : haxe.UInt64;
    function get_addralign():haxe.UInt64 return this.addralign;
    function set_addralign(v:haxe.UInt64):haxe.UInt64 {
        this.addralign = v;
        return v;
    }
    public function new(?type:std.UInt, ?__1:std.UInt, ?size:haxe.UInt64, ?addralign:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_Chdr64.Chdr64(type, __1, size, addralign);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Rel64(stdgo._internal.debug.elf.Elf_Rel64.Rel64) from stdgo._internal.debug.elf.Elf_Rel64.Rel64 to stdgo._internal.debug.elf.Elf_Rel64.Rel64 {
    public var off(get, set) : haxe.UInt64;
    function get_off():haxe.UInt64 return this.off;
    function set_off(v:haxe.UInt64):haxe.UInt64 {
        this.off = v;
        return v;
    }
    public var info(get, set) : haxe.UInt64;
    function get_info():haxe.UInt64 return this.info;
    function set_info(v:haxe.UInt64):haxe.UInt64 {
        this.info = v;
        return v;
    }
    public function new(?off:haxe.UInt64, ?info:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_Rel64.Rel64(off, info);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Rela64(stdgo._internal.debug.elf.Elf_Rela64.Rela64) from stdgo._internal.debug.elf.Elf_Rela64.Rela64 to stdgo._internal.debug.elf.Elf_Rela64.Rela64 {
    public var off(get, set) : haxe.UInt64;
    function get_off():haxe.UInt64 return this.off;
    function set_off(v:haxe.UInt64):haxe.UInt64 {
        this.off = v;
        return v;
    }
    public var info(get, set) : haxe.UInt64;
    function get_info():haxe.UInt64 return this.info;
    function set_info(v:haxe.UInt64):haxe.UInt64 {
        this.info = v;
        return v;
    }
    public var addend(get, set) : haxe.Int64;
    function get_addend():haxe.Int64 return this.addend;
    function set_addend(v:haxe.Int64):haxe.Int64 {
        this.addend = v;
        return v;
    }
    public function new(?off:haxe.UInt64, ?info:haxe.UInt64, ?addend:haxe.Int64) this = new stdgo._internal.debug.elf.Elf_Rela64.Rela64(off, info, addend);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Sym64(stdgo._internal.debug.elf.Elf_Sym64.Sym64) from stdgo._internal.debug.elf.Elf_Sym64.Sym64 to stdgo._internal.debug.elf.Elf_Sym64.Sym64 {
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = v;
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = v;
        return v;
    }
    public var other(get, set) : std.UInt;
    function get_other():std.UInt return this.other;
    function set_other(v:std.UInt):std.UInt {
        this.other = v;
        return v;
    }
    public var shndx(get, set) : std.UInt;
    function get_shndx():std.UInt return this.shndx;
    function set_shndx(v:std.UInt):std.UInt {
        this.shndx = v;
        return v;
    }
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = v;
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = v;
        return v;
    }
    public function new(?name:std.UInt, ?info:std.UInt, ?other:std.UInt, ?shndx:std.UInt, ?value:haxe.UInt64, ?size:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_Sym64.Sym64(name, info, other, shndx, value, size);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_intName(stdgo._internal.debug.elf.Elf_T_intName.T_intName) from stdgo._internal.debug.elf.Elf_T_intName.T_intName to stdgo._internal.debug.elf.Elf_T_intName.T_intName {
    public var _i(get, set) : std.UInt;
    function get__i():std.UInt return this._i;
    function set__i(v:std.UInt):std.UInt {
        this._i = v;
        return v;
    }
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = v;
        return v;
    }
    public function new(?_i:std.UInt, ?_s:String) this = new stdgo._internal.debug.elf.Elf_T_intName.T_intName(_i, _s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract FileHeader(stdgo._internal.debug.elf.Elf_FileHeader.FileHeader) from stdgo._internal.debug.elf.Elf_FileHeader.FileHeader to stdgo._internal.debug.elf.Elf_FileHeader.FileHeader {
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
    public var osabi(get, set) : OSABI;
    function get_osabi():OSABI return this.osabi;
    function set_osabi(v:OSABI):OSABI {
        this.osabi = v;
        return v;
    }
    public var abiversion(get, set) : std.UInt;
    function get_abiversion():std.UInt return this.abiversion;
    function set_abiversion(v:std.UInt):std.UInt {
        this.abiversion = v;
        return v;
    }
    public var byteOrder(get, set) : stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder;
    function get_byteOrder():stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder return this.byteOrder;
    function set_byteOrder(v:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder):stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder {
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
        this.entry = v;
        return v;
    }
    public function new(?class_:Class_, ?data:Data, ?version:Version, ?osabi:OSABI, ?abiversion:std.UInt, ?byteOrder:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, ?type:Type_, ?machine:Machine, ?entry:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_FileHeader.FileHeader(class_, data, version, osabi, abiversion, byteOrder, type, machine, entry);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.File_static_extension) abstract File(stdgo._internal.debug.elf.Elf_File.File) from stdgo._internal.debug.elf.Elf_File.File to stdgo._internal.debug.elf.Elf_File.File {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = v;
        return v;
    }
    public var sections(get, set) : Array<Section>;
    function get_sections():Array<Section> return [for (i in this.sections) i];
    function set_sections(v:Array<Section>):Array<Section> {
        this.sections = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section>>);
        return v;
    }
    public var progs(get, set) : Array<Prog>;
    function get_progs():Array<Prog> return [for (i in this.progs) i];
    function set_progs(v:Array<Prog>):Array<Prog> {
        this.progs = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_Prog.Prog>>);
        return v;
    }
    public var _closer(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get__closer():stdgo._internal.io.Io_Closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this._closer = v;
        return v;
    }
    public var _gnuNeed(get, set) : Array<T_verneed>;
    function get__gnuNeed():Array<T_verneed> return [for (i in this._gnuNeed) i];
    function set__gnuNeed(v:Array<T_verneed>):Array<T_verneed> {
        this._gnuNeed = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_verneed.T_verneed>);
        return v;
    }
    public var _gnuVersym(get, set) : Array<std.UInt>;
    function get__gnuVersym():Array<std.UInt> return [for (i in this._gnuVersym) i];
    function set__gnuVersym(v:Array<std.UInt>):Array<std.UInt> {
        this._gnuVersym = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?fileHeader:FileHeader, ?sections:Array<Section>, ?progs:Array<Prog>, ?_closer:stdgo._internal.io.Io_Closer.Closer, ?_gnuNeed:Array<T_verneed>, ?_gnuVersym:Array<std.UInt>) this = new stdgo._internal.debug.elf.Elf_File.File(fileHeader, ([for (i in sections) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section>>), ([for (i in progs) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_Prog.Prog>>), _closer, ([for (i in _gnuNeed) i] : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_verneed.T_verneed>), ([for (i in _gnuVersym) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SectionHeader(stdgo._internal.debug.elf.Elf_SectionHeader.SectionHeader) from stdgo._internal.debug.elf.Elf_SectionHeader.SectionHeader to stdgo._internal.debug.elf.Elf_SectionHeader.SectionHeader {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
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
        this.addr = v;
        return v;
    }
    public var offset(get, set) : haxe.UInt64;
    function get_offset():haxe.UInt64 return this.offset;
    function set_offset(v:haxe.UInt64):haxe.UInt64 {
        this.offset = v;
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = v;
        return v;
    }
    public var link(get, set) : std.UInt;
    function get_link():std.UInt return this.link;
    function set_link(v:std.UInt):std.UInt {
        this.link = v;
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = v;
        return v;
    }
    public var addralign(get, set) : haxe.UInt64;
    function get_addralign():haxe.UInt64 return this.addralign;
    function set_addralign(v:haxe.UInt64):haxe.UInt64 {
        this.addralign = v;
        return v;
    }
    public var entsize(get, set) : haxe.UInt64;
    function get_entsize():haxe.UInt64 return this.entsize;
    function set_entsize(v:haxe.UInt64):haxe.UInt64 {
        this.entsize = v;
        return v;
    }
    public var fileSize(get, set) : haxe.UInt64;
    function get_fileSize():haxe.UInt64 return this.fileSize;
    function set_fileSize(v:haxe.UInt64):haxe.UInt64 {
        this.fileSize = v;
        return v;
    }
    public function new(?name:String, ?type:SectionType, ?flags:SectionFlag, ?addr:haxe.UInt64, ?offset:haxe.UInt64, ?size:haxe.UInt64, ?link:std.UInt, ?info:std.UInt, ?addralign:haxe.UInt64, ?entsize:haxe.UInt64, ?fileSize:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_SectionHeader.SectionHeader(
name,
type,
flags,
addr,
offset,
size,
link,
info,
addralign,
entsize,
fileSize);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Section_static_extension) abstract Section(stdgo._internal.debug.elf.Elf_Section.Section) from stdgo._internal.debug.elf.Elf_Section.Section to stdgo._internal.debug.elf.Elf_Section.Section {
    public var sectionHeader(get, set) : SectionHeader;
    function get_sectionHeader():SectionHeader return this.sectionHeader;
    function set_sectionHeader(v:SectionHeader):SectionHeader {
        this.sectionHeader = v;
        return v;
    }
    public var readerAt(get, set) : stdgo._internal.io.Io_ReaderAt.ReaderAt;
    function get_readerAt():stdgo._internal.io.Io_ReaderAt.ReaderAt return this.readerAt;
    function set_readerAt(v:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo._internal.io.Io_ReaderAt.ReaderAt {
        this.readerAt = v;
        return v;
    }
    public var _sr(get, set) : stdgo._internal.io.Io_SectionReader.SectionReader;
    function get__sr():stdgo._internal.io.Io_SectionReader.SectionReader return this._sr;
    function set__sr(v:stdgo._internal.io.Io_SectionReader.SectionReader):stdgo._internal.io.Io_SectionReader.SectionReader {
        this._sr = v;
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
        this._compressionOffset = v;
        return v;
    }
    public function new(?sectionHeader:SectionHeader, ?readerAt:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?_sr:stdgo._internal.io.Io_SectionReader.SectionReader, ?_compressionType:CompressionType, ?_compressionOffset:haxe.Int64) this = new stdgo._internal.debug.elf.Elf_Section.Section(sectionHeader, readerAt, _sr, _compressionType, _compressionOffset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract ProgHeader(stdgo._internal.debug.elf.Elf_ProgHeader.ProgHeader) from stdgo._internal.debug.elf.Elf_ProgHeader.ProgHeader to stdgo._internal.debug.elf.Elf_ProgHeader.ProgHeader {
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
        this.off = v;
        return v;
    }
    public var vaddr(get, set) : haxe.UInt64;
    function get_vaddr():haxe.UInt64 return this.vaddr;
    function set_vaddr(v:haxe.UInt64):haxe.UInt64 {
        this.vaddr = v;
        return v;
    }
    public var paddr(get, set) : haxe.UInt64;
    function get_paddr():haxe.UInt64 return this.paddr;
    function set_paddr(v:haxe.UInt64):haxe.UInt64 {
        this.paddr = v;
        return v;
    }
    public var filesz(get, set) : haxe.UInt64;
    function get_filesz():haxe.UInt64 return this.filesz;
    function set_filesz(v:haxe.UInt64):haxe.UInt64 {
        this.filesz = v;
        return v;
    }
    public var memsz(get, set) : haxe.UInt64;
    function get_memsz():haxe.UInt64 return this.memsz;
    function set_memsz(v:haxe.UInt64):haxe.UInt64 {
        this.memsz = v;
        return v;
    }
    public var align(get, set) : haxe.UInt64;
    function get_align():haxe.UInt64 return this.align;
    function set_align(v:haxe.UInt64):haxe.UInt64 {
        this.align = v;
        return v;
    }
    public function new(?type:ProgType, ?flags:ProgFlag, ?off:haxe.UInt64, ?vaddr:haxe.UInt64, ?paddr:haxe.UInt64, ?filesz:haxe.UInt64, ?memsz:haxe.UInt64, ?align:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_ProgHeader.ProgHeader(type, flags, off, vaddr, paddr, filesz, memsz, align);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.Prog_static_extension) abstract Prog(stdgo._internal.debug.elf.Elf_Prog.Prog) from stdgo._internal.debug.elf.Elf_Prog.Prog to stdgo._internal.debug.elf.Elf_Prog.Prog {
    public var progHeader(get, set) : ProgHeader;
    function get_progHeader():ProgHeader return this.progHeader;
    function set_progHeader(v:ProgHeader):ProgHeader {
        this.progHeader = v;
        return v;
    }
    public var readerAt(get, set) : stdgo._internal.io.Io_ReaderAt.ReaderAt;
    function get_readerAt():stdgo._internal.io.Io_ReaderAt.ReaderAt return this.readerAt;
    function set_readerAt(v:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo._internal.io.Io_ReaderAt.ReaderAt {
        this.readerAt = v;
        return v;
    }
    public var _sr(get, set) : stdgo._internal.io.Io_SectionReader.SectionReader;
    function get__sr():stdgo._internal.io.Io_SectionReader.SectionReader return this._sr;
    function set__sr(v:stdgo._internal.io.Io_SectionReader.SectionReader):stdgo._internal.io.Io_SectionReader.SectionReader {
        this._sr = v;
        return v;
    }
    public function new(?progHeader:ProgHeader, ?readerAt:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?_sr:stdgo._internal.io.Io_SectionReader.SectionReader) this = new stdgo._internal.debug.elf.Elf_Prog.Prog(progHeader, readerAt, _sr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Symbol(stdgo._internal.debug.elf.Elf_Symbol.Symbol) from stdgo._internal.debug.elf.Elf_Symbol.Symbol to stdgo._internal.debug.elf.Elf_Symbol.Symbol {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = v;
        return v;
    }
    public var other(get, set) : std.UInt;
    function get_other():std.UInt return this.other;
    function set_other(v:std.UInt):std.UInt {
        this.other = v;
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
        this.value = v;
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = v;
        return v;
    }
    public var version(get, set) : String;
    function get_version():String return this.version;
    function set_version(v:String):String {
        this.version = v;
        return v;
    }
    public var library(get, set) : String;
    function get_library():String return this.library;
    function set_library(v:String):String {
        this.library = v;
        return v;
    }
    public function new(?name:String, ?info:std.UInt, ?other:std.UInt, ?section:SectionIndex, ?value:haxe.UInt64, ?size:haxe.UInt64, ?version:String, ?library:String) this = new stdgo._internal.debug.elf.Elf_Symbol.Symbol(name, info, other, section, value, size, version, library);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.FormatError_static_extension) abstract FormatError(stdgo._internal.debug.elf.Elf_FormatError.FormatError) from stdgo._internal.debug.elf.Elf_FormatError.FormatError to stdgo._internal.debug.elf.Elf_FormatError.FormatError {
    public var _off(get, set) : haxe.Int64;
    function get__off():haxe.Int64 return this._off;
    function set__off(v:haxe.Int64):haxe.Int64 {
        this._off = v;
        return v;
    }
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = v;
        return v;
    }
    public var _val(get, set) : stdgo.AnyInterface;
    function get__val():stdgo.AnyInterface return this._val;
    function set__val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._val = v;
        return v;
    }
    public function new(?_off:haxe.Int64, ?_msg:String, ?_val:stdgo.AnyInterface) this = new stdgo._internal.debug.elf.Elf_FormatError.FormatError(_off, _msg, _val);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract ImportedSymbol(stdgo._internal.debug.elf.Elf_ImportedSymbol.ImportedSymbol) from stdgo._internal.debug.elf.Elf_ImportedSymbol.ImportedSymbol to stdgo._internal.debug.elf.Elf_ImportedSymbol.ImportedSymbol {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var version(get, set) : String;
    function get_version():String return this.version;
    function set_version(v:String):String {
        this.version = v;
        return v;
    }
    public var library(get, set) : String;
    function get_library():String return this.library;
    function set_library(v:String):String {
        this.library = v;
        return v;
    }
    public function new(?name:String, ?version:String, ?library:String) this = new stdgo._internal.debug.elf.Elf_ImportedSymbol.ImportedSymbol(name, version, library);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_verneed(stdgo._internal.debug.elf.Elf_T_verneed.T_verneed) from stdgo._internal.debug.elf.Elf_T_verneed.T_verneed to stdgo._internal.debug.elf.Elf_T_verneed.T_verneed {
    public var file(get, set) : String;
    function get_file():String return this.file;
    function set_file(v:String):String {
        this.file = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public function new(?file:String, ?name:String) this = new stdgo._internal.debug.elf.Elf_T_verneed.T_verneed(file, name);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.T_nobitsSectionReader_static_extension) abstract T_nobitsSectionReader(stdgo._internal.debug.elf.Elf_T_nobitsSectionReader.T_nobitsSectionReader) from stdgo._internal.debug.elf.Elf_T_nobitsSectionReader.T_nobitsSectionReader to stdgo._internal.debug.elf.Elf_T_nobitsSectionReader.T_nobitsSectionReader {
    public function new() this = new stdgo._internal.debug.elf.Elf_T_nobitsSectionReader.T_nobitsSectionReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.T_errorReader_static_extension) abstract T_errorReader(stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader) from stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader to stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader {
    public var _error(get, set) : stdgo.Error;
    function get__error():stdgo.Error return this._error;
    function set__error(v:stdgo.Error):stdgo.Error {
        this._error = v;
        return v;
    }
    public function new(?_error:stdgo.Error) this = new stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader(_error);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.elf.Elf.T_readSeekerFromReader_static_extension) abstract T_readSeekerFromReader(stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader) from stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader to stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader {
    public var _reset(get, set) : () -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; };
    function get__reset():() -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; } return () -> this._reset();
    function set__reset(v:() -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; }):() -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; } {
        this._reset = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _size(get, set) : haxe.Int64;
    function get__size():haxe.Int64 return this._size;
    function set__size(v:haxe.Int64):haxe.Int64 {
        this._size = v;
        return v;
    }
    public var _offset(get, set) : haxe.Int64;
    function get__offset():haxe.Int64 return this._offset;
    function set__offset(v:haxe.Int64):haxe.Int64 {
        this._offset = v;
        return v;
    }
    public function new(?_reset:() -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; }, ?_r:stdgo._internal.io.Io_Reader.Reader, ?_size:haxe.Int64, ?_offset:haxe.Int64) this = new stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader(_reset, _r, _size, _offset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Version = stdgo._internal.debug.elf.Elf_Version.Version;
typedef Class_ = stdgo._internal.debug.elf.Elf_Class_.Class_;
typedef Data = stdgo._internal.debug.elf.Elf_Data.Data;
typedef OSABI = stdgo._internal.debug.elf.Elf_OSABI.OSABI;
typedef Type_ = stdgo._internal.debug.elf.Elf_Type_.Type_;
typedef Machine = stdgo._internal.debug.elf.Elf_Machine.Machine;
typedef SectionIndex = stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex;
typedef SectionType = stdgo._internal.debug.elf.Elf_SectionType.SectionType;
typedef SectionFlag = stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag;
typedef CompressionType = stdgo._internal.debug.elf.Elf_CompressionType.CompressionType;
typedef ProgType = stdgo._internal.debug.elf.Elf_ProgType.ProgType;
typedef ProgFlag = stdgo._internal.debug.elf.Elf_ProgFlag.ProgFlag;
typedef DynTag = stdgo._internal.debug.elf.Elf_DynTag.DynTag;
typedef DynFlag = stdgo._internal.debug.elf.Elf_DynFlag.DynFlag;
typedef DynFlag1 = stdgo._internal.debug.elf.Elf_DynFlag1.DynFlag1;
typedef NType = stdgo._internal.debug.elf.Elf_NType.NType;
typedef SymBind = stdgo._internal.debug.elf.Elf_SymBind.SymBind;
typedef SymType = stdgo._internal.debug.elf.Elf_SymType.SymType;
typedef SymVis = stdgo._internal.debug.elf.Elf_SymVis.SymVis;
typedef R_X86_64 = stdgo._internal.debug.elf.Elf_R_X86_64.R_X86_64;
typedef R_AARCH64 = stdgo._internal.debug.elf.Elf_R_AARCH64.R_AARCH64;
typedef R_ALPHA = stdgo._internal.debug.elf.Elf_R_ALPHA.R_ALPHA;
typedef R_ARM = stdgo._internal.debug.elf.Elf_R_ARM.R_ARM;
typedef R_386 = stdgo._internal.debug.elf.Elf_R_386.R_386;
typedef R_MIPS = stdgo._internal.debug.elf.Elf_R_MIPS.R_MIPS;
typedef R_LARCH = stdgo._internal.debug.elf.Elf_R_LARCH.R_LARCH;
typedef R_PPC = stdgo._internal.debug.elf.Elf_R_PPC.R_PPC;
typedef R_PPC64 = stdgo._internal.debug.elf.Elf_R_PPC64.R_PPC64;
typedef R_RISCV = stdgo._internal.debug.elf.Elf_R_RISCV.R_RISCV;
typedef R_390 = stdgo._internal.debug.elf.Elf_R_390.R_390;
typedef R_SPARC = stdgo._internal.debug.elf.Elf_R_SPARC.R_SPARC;
class File_static_extension {
    static public function dynValue(_f:File, _tag:DynTag):stdgo.Tuple<Array<haxe.UInt64>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.dynValue(_f, _tag);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function dynString(_f:File, _tag:DynTag):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.dynString(_f, _tag);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function importedLibraries(_f:File):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.importedLibraries(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _gnuVersion(_f:File, _i:StdTypes.Int):stdgo.Tuple<String, String> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._gnuVersion(_f, _i);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _gnuVersionInit(_f:File, _str:Array<std.UInt>):Bool {
        final _str = ([for (i in _str) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._gnuVersionInit(_f, _str);
    }
    static public function importedSymbols(_f:File):stdgo.Tuple<Array<ImportedSymbol>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.importedSymbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function dynamicSymbols(_f:File):stdgo.Tuple<Array<Symbol>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.dynamicSymbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function symbols(_f:File):stdgo.Tuple<Array<Symbol>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.symbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function dwarf(_f:File):stdgo.Tuple<stdgo._internal.debug.dwarf.Dwarf_Data.Data, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.dwarf(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _applyRelocationsSPARC64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsSPARC64(_f, _dst, _rels);
    }
    static public function _applyRelocationss390x(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationss390x(_f, _dst, _rels);
    }
    static public function _applyRelocationsRISCV64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsRISCV64(_f, _dst, _rels);
    }
    static public function _applyRelocationsLOONG64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsLOONG64(_f, _dst, _rels);
    }
    static public function _applyRelocationsMIPS64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsMIPS64(_f, _dst, _rels);
    }
    static public function _applyRelocationsMIPS(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsMIPS(_f, _dst, _rels);
    }
    static public function _applyRelocationsPPC64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsPPC64(_f, _dst, _rels);
    }
    static public function _applyRelocationsPPC(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsPPC(_f, _dst, _rels);
    }
    static public function _applyRelocationsARM64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsARM64(_f, _dst, _rels);
    }
    static public function _applyRelocationsARM(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsARM(_f, _dst, _rels);
    }
    static public function _applyRelocations386(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocations386(_f, _dst, _rels);
    }
    static public function _applyRelocationsAMD64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsAMD64(_f, _dst, _rels);
    }
    static public function _applyRelocations(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocations(_f, _dst, _rels);
    }
    static public function section(_f:File, _name:String):Section {
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.section(_f, _name);
    }
    static public function _getSymbols64(_f:File, _typ:SectionType):stdgo.Tuple.Tuple3<Array<Symbol>, Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._getSymbols64(_f, _typ);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function _getSymbols32(_f:File, _typ:SectionType):stdgo.Tuple.Tuple3<Array<Symbol>, Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._getSymbols32(_f, _typ);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function _getSymbols(_f:File, _typ:SectionType):stdgo.Tuple.Tuple3<Array<Symbol>, Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._getSymbols(_f, _typ);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function sectionByType(_f:File, _typ:SectionType):Section {
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.sectionByType(_f, _typ);
    }
    static public function close(_f:File):stdgo.Error {
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.close(_f);
    }
    static public function _stringTable(_f:File, _link:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._stringTable(_f, _link);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class Section_static_extension {
    static public function open(_s:Section):stdgo._internal.io.Io_ReadSeeker.ReadSeeker {
        return stdgo._internal.debug.elf.Elf_Section_static_extension.Section_static_extension.open(_s);
    }
    static public function data(_s:Section):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_Section_static_extension.Section_static_extension.data(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readAt(__self__:stdgo._internal.debug.elf.Elf_Section.Section, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_Section_static_extension.Section_static_extension.readAt(__self__, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Prog_static_extension {
    static public function open(_p:Prog):stdgo._internal.io.Io_ReadSeeker.ReadSeeker {
        return stdgo._internal.debug.elf.Elf_Prog_static_extension.Prog_static_extension.open(_p);
    }
    public static function readAt(__self__:stdgo._internal.debug.elf.Elf_Prog.Prog, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_Prog_static_extension.Prog_static_extension.readAt(__self__, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class FormatError_static_extension {
    static public function error(_e:FormatError):String {
        return stdgo._internal.debug.elf.Elf_FormatError_static_extension.FormatError_static_extension.error(_e);
    }
}
class T_nobitsSectionReader_static_extension {
    static public function readAt(_:T_nobitsSectionReader, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_T_nobitsSectionReader_static_extension.T_nobitsSectionReader_static_extension.readAt(_, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_errorReader_static_extension {
    static public function close(_r:T_errorReader):stdgo.Error {
        return stdgo._internal.debug.elf.Elf_T_errorReader_static_extension.T_errorReader_static_extension.close(_r);
    }
    static public function seek(_r:T_errorReader, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_T_errorReader_static_extension.T_errorReader_static_extension.seek(_r, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readAt(_r:T_errorReader, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_T_errorReader_static_extension.T_errorReader_static_extension.readAt(_r, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:T_errorReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_T_errorReader_static_extension.T_errorReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function error(__self__:stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader):String {
        return stdgo._internal.debug.elf.Elf_T_errorReader_static_extension.T_errorReader_static_extension.error(__self__);
    }
}
class T_readSeekerFromReader_static_extension {
    static public function seek(_r:T_readSeekerFromReader, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_T_readSeekerFromReader_static_extension.T_readSeekerFromReader_static_extension.seek(_r, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:T_readSeekerFromReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_T_readSeekerFromReader_static_extension.T_readSeekerFromReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _start(_r:T_readSeekerFromReader):Void {
        stdgo._internal.debug.elf.Elf_T_readSeekerFromReader_static_extension.T_readSeekerFromReader_static_extension._start(_r);
    }
}
class Version_static_extension {
    static public function goString(_i:Version):String {
        return stdgo._internal.debug.elf.Elf_Version_static_extension.Version_static_extension.goString(_i);
    }
    static public function string(_i:Version):String {
        return stdgo._internal.debug.elf.Elf_Version_static_extension.Version_static_extension.string(_i);
    }
}
class Class__static_extension {
    static public function goString(_i:Class_):String {
        return stdgo._internal.debug.elf.Elf_Class__static_extension.Class__static_extension.goString(_i);
    }
    static public function string(_i:Class_):String {
        return stdgo._internal.debug.elf.Elf_Class__static_extension.Class__static_extension.string(_i);
    }
}
class Data_static_extension {
    static public function goString(_i:Data):String {
        return stdgo._internal.debug.elf.Elf_Data_static_extension.Data_static_extension.goString(_i);
    }
    static public function string(_i:Data):String {
        return stdgo._internal.debug.elf.Elf_Data_static_extension.Data_static_extension.string(_i);
    }
}
class OSABI_static_extension {
    static public function goString(_i:OSABI):String {
        return stdgo._internal.debug.elf.Elf_OSABI_static_extension.OSABI_static_extension.goString(_i);
    }
    static public function string(_i:OSABI):String {
        return stdgo._internal.debug.elf.Elf_OSABI_static_extension.OSABI_static_extension.string(_i);
    }
}
class Type__static_extension {
    static public function goString(_i:Type_):String {
        return stdgo._internal.debug.elf.Elf_Type__static_extension.Type__static_extension.goString(_i);
    }
    static public function string(_i:Type_):String {
        return stdgo._internal.debug.elf.Elf_Type__static_extension.Type__static_extension.string(_i);
    }
}
class Machine_static_extension {
    static public function goString(_i:Machine):String {
        return stdgo._internal.debug.elf.Elf_Machine_static_extension.Machine_static_extension.goString(_i);
    }
    static public function string(_i:Machine):String {
        return stdgo._internal.debug.elf.Elf_Machine_static_extension.Machine_static_extension.string(_i);
    }
}
class SectionIndex_static_extension {
    static public function goString(_i:SectionIndex):String {
        return stdgo._internal.debug.elf.Elf_SectionIndex_static_extension.SectionIndex_static_extension.goString(_i);
    }
    static public function string(_i:SectionIndex):String {
        return stdgo._internal.debug.elf.Elf_SectionIndex_static_extension.SectionIndex_static_extension.string(_i);
    }
}
class SectionType_static_extension {
    static public function goString(_i:SectionType):String {
        return stdgo._internal.debug.elf.Elf_SectionType_static_extension.SectionType_static_extension.goString(_i);
    }
    static public function string(_i:SectionType):String {
        return stdgo._internal.debug.elf.Elf_SectionType_static_extension.SectionType_static_extension.string(_i);
    }
}
class SectionFlag_static_extension {
    static public function goString(_i:SectionFlag):String {
        return stdgo._internal.debug.elf.Elf_SectionFlag_static_extension.SectionFlag_static_extension.goString(_i);
    }
    static public function string(_i:SectionFlag):String {
        return stdgo._internal.debug.elf.Elf_SectionFlag_static_extension.SectionFlag_static_extension.string(_i);
    }
}
class CompressionType_static_extension {
    static public function goString(_i:CompressionType):String {
        return stdgo._internal.debug.elf.Elf_CompressionType_static_extension.CompressionType_static_extension.goString(_i);
    }
    static public function string(_i:CompressionType):String {
        return stdgo._internal.debug.elf.Elf_CompressionType_static_extension.CompressionType_static_extension.string(_i);
    }
}
class ProgType_static_extension {
    static public function goString(_i:ProgType):String {
        return stdgo._internal.debug.elf.Elf_ProgType_static_extension.ProgType_static_extension.goString(_i);
    }
    static public function string(_i:ProgType):String {
        return stdgo._internal.debug.elf.Elf_ProgType_static_extension.ProgType_static_extension.string(_i);
    }
}
class ProgFlag_static_extension {
    static public function goString(_i:ProgFlag):String {
        return stdgo._internal.debug.elf.Elf_ProgFlag_static_extension.ProgFlag_static_extension.goString(_i);
    }
    static public function string(_i:ProgFlag):String {
        return stdgo._internal.debug.elf.Elf_ProgFlag_static_extension.ProgFlag_static_extension.string(_i);
    }
}
class DynTag_static_extension {
    static public function goString(_i:DynTag):String {
        return stdgo._internal.debug.elf.Elf_DynTag_static_extension.DynTag_static_extension.goString(_i);
    }
    static public function string(_i:DynTag):String {
        return stdgo._internal.debug.elf.Elf_DynTag_static_extension.DynTag_static_extension.string(_i);
    }
}
class DynFlag_static_extension {
    static public function goString(_i:DynFlag):String {
        return stdgo._internal.debug.elf.Elf_DynFlag_static_extension.DynFlag_static_extension.goString(_i);
    }
    static public function string(_i:DynFlag):String {
        return stdgo._internal.debug.elf.Elf_DynFlag_static_extension.DynFlag_static_extension.string(_i);
    }
}
class DynFlag1_static_extension {
    static public function goString(_i:DynFlag1):String {
        return stdgo._internal.debug.elf.Elf_DynFlag1_static_extension.DynFlag1_static_extension.goString(_i);
    }
    static public function string(_i:DynFlag1):String {
        return stdgo._internal.debug.elf.Elf_DynFlag1_static_extension.DynFlag1_static_extension.string(_i);
    }
}
class NType_static_extension {
    static public function goString(_i:NType):String {
        return stdgo._internal.debug.elf.Elf_NType_static_extension.NType_static_extension.goString(_i);
    }
    static public function string(_i:NType):String {
        return stdgo._internal.debug.elf.Elf_NType_static_extension.NType_static_extension.string(_i);
    }
}
class SymBind_static_extension {
    static public function goString(_i:SymBind):String {
        return stdgo._internal.debug.elf.Elf_SymBind_static_extension.SymBind_static_extension.goString(_i);
    }
    static public function string(_i:SymBind):String {
        return stdgo._internal.debug.elf.Elf_SymBind_static_extension.SymBind_static_extension.string(_i);
    }
}
class SymType_static_extension {
    static public function goString(_i:SymType):String {
        return stdgo._internal.debug.elf.Elf_SymType_static_extension.SymType_static_extension.goString(_i);
    }
    static public function string(_i:SymType):String {
        return stdgo._internal.debug.elf.Elf_SymType_static_extension.SymType_static_extension.string(_i);
    }
}
class SymVis_static_extension {
    static public function goString(_i:SymVis):String {
        return stdgo._internal.debug.elf.Elf_SymVis_static_extension.SymVis_static_extension.goString(_i);
    }
    static public function string(_i:SymVis):String {
        return stdgo._internal.debug.elf.Elf_SymVis_static_extension.SymVis_static_extension.string(_i);
    }
}
class R_X86_64_static_extension {
    static public function goString(_i:R_X86_64):String {
        return stdgo._internal.debug.elf.Elf_R_X86_64_static_extension.R_X86_64_static_extension.goString(_i);
    }
    static public function string(_i:R_X86_64):String {
        return stdgo._internal.debug.elf.Elf_R_X86_64_static_extension.R_X86_64_static_extension.string(_i);
    }
}
class R_AARCH64_static_extension {
    static public function goString(_i:R_AARCH64):String {
        return stdgo._internal.debug.elf.Elf_R_AARCH64_static_extension.R_AARCH64_static_extension.goString(_i);
    }
    static public function string(_i:R_AARCH64):String {
        return stdgo._internal.debug.elf.Elf_R_AARCH64_static_extension.R_AARCH64_static_extension.string(_i);
    }
}
class R_ALPHA_static_extension {
    static public function goString(_i:R_ALPHA):String {
        return stdgo._internal.debug.elf.Elf_R_ALPHA_static_extension.R_ALPHA_static_extension.goString(_i);
    }
    static public function string(_i:R_ALPHA):String {
        return stdgo._internal.debug.elf.Elf_R_ALPHA_static_extension.R_ALPHA_static_extension.string(_i);
    }
}
class R_ARM_static_extension {
    static public function goString(_i:R_ARM):String {
        return stdgo._internal.debug.elf.Elf_R_ARM_static_extension.R_ARM_static_extension.goString(_i);
    }
    static public function string(_i:R_ARM):String {
        return stdgo._internal.debug.elf.Elf_R_ARM_static_extension.R_ARM_static_extension.string(_i);
    }
}
class R_386_static_extension {
    static public function goString(_i:R_386):String {
        return stdgo._internal.debug.elf.Elf_R_386_static_extension.R_386_static_extension.goString(_i);
    }
    static public function string(_i:R_386):String {
        return stdgo._internal.debug.elf.Elf_R_386_static_extension.R_386_static_extension.string(_i);
    }
}
class R_MIPS_static_extension {
    static public function goString(_i:R_MIPS):String {
        return stdgo._internal.debug.elf.Elf_R_MIPS_static_extension.R_MIPS_static_extension.goString(_i);
    }
    static public function string(_i:R_MIPS):String {
        return stdgo._internal.debug.elf.Elf_R_MIPS_static_extension.R_MIPS_static_extension.string(_i);
    }
}
class R_LARCH_static_extension {
    static public function goString(_i:R_LARCH):String {
        return stdgo._internal.debug.elf.Elf_R_LARCH_static_extension.R_LARCH_static_extension.goString(_i);
    }
    static public function string(_i:R_LARCH):String {
        return stdgo._internal.debug.elf.Elf_R_LARCH_static_extension.R_LARCH_static_extension.string(_i);
    }
}
class R_PPC_static_extension {
    static public function goString(_i:R_PPC):String {
        return stdgo._internal.debug.elf.Elf_R_PPC_static_extension.R_PPC_static_extension.goString(_i);
    }
    static public function string(_i:R_PPC):String {
        return stdgo._internal.debug.elf.Elf_R_PPC_static_extension.R_PPC_static_extension.string(_i);
    }
}
class R_PPC64_static_extension {
    static public function goString(_i:R_PPC64):String {
        return stdgo._internal.debug.elf.Elf_R_PPC64_static_extension.R_PPC64_static_extension.goString(_i);
    }
    static public function string(_i:R_PPC64):String {
        return stdgo._internal.debug.elf.Elf_R_PPC64_static_extension.R_PPC64_static_extension.string(_i);
    }
}
class R_RISCV_static_extension {
    static public function goString(_i:R_RISCV):String {
        return stdgo._internal.debug.elf.Elf_R_RISCV_static_extension.R_RISCV_static_extension.goString(_i);
    }
    static public function string(_i:R_RISCV):String {
        return stdgo._internal.debug.elf.Elf_R_RISCV_static_extension.R_RISCV_static_extension.string(_i);
    }
}
class R_390_static_extension {
    static public function goString(_i:R_390):String {
        return stdgo._internal.debug.elf.Elf_R_390_static_extension.R_390_static_extension.goString(_i);
    }
    static public function string(_i:R_390):String {
        return stdgo._internal.debug.elf.Elf_R_390_static_extension.R_390_static_extension.string(_i);
    }
}
class R_SPARC_static_extension {
    static public function goString(_i:R_SPARC):String {
        return stdgo._internal.debug.elf.Elf_R_SPARC_static_extension.R_SPARC_static_extension.goString(_i);
    }
    static public function string(_i:R_SPARC):String {
        return stdgo._internal.debug.elf.Elf_R_SPARC_static_extension.R_SPARC_static_extension.string(_i);
    }
}
/**
    /|*
    Package elf implements access to ELF object files.
    
    # Security
    
    This package is not designed to be hardened against adversarial inputs, and is
    outside the scope of https://go.dev/security/policy. In particular, only basic
    validation is done when parsing object files. As such, care should be taken when
    parsing untrusted inputs, as parsing malformed files may consume significant
    resources, or cause panics.
    *|/
**/
class Elf {
    static public function r_SYM32(_info:std.UInt):std.UInt {
        return stdgo._internal.debug.elf.Elf_r_SYM32.r_SYM32(_info);
    }
    static public function r_TYPE32(_info:std.UInt):std.UInt {
        return stdgo._internal.debug.elf.Elf_r_TYPE32.r_TYPE32(_info);
    }
    static public function r_INFO32(_sym:std.UInt, _typ:std.UInt):std.UInt {
        return stdgo._internal.debug.elf.Elf_r_INFO32.r_INFO32(_sym, _typ);
    }
    static public function st_BIND(_info:std.UInt):SymBind {
        return stdgo._internal.debug.elf.Elf_st_BIND.st_BIND(_info);
    }
    static public function st_TYPE(_info:std.UInt):SymType {
        return stdgo._internal.debug.elf.Elf_st_TYPE.st_TYPE(_info);
    }
    static public function st_INFO(_bind:SymBind, _typ:SymType):std.UInt {
        return stdgo._internal.debug.elf.Elf_st_INFO.st_INFO(_bind, _typ);
    }
    static public function st_VISIBILITY(_other:std.UInt):SymVis {
        return stdgo._internal.debug.elf.Elf_st_VISIBILITY.st_VISIBILITY(_other);
    }
    static public function r_SYM64(_info:haxe.UInt64):std.UInt {
        return stdgo._internal.debug.elf.Elf_r_SYM64.r_SYM64(_info);
    }
    static public function r_TYPE64(_info:haxe.UInt64):std.UInt {
        return stdgo._internal.debug.elf.Elf_r_TYPE64.r_TYPE64(_info);
    }
    static public function r_INFO(_sym:std.UInt, _typ:std.UInt):haxe.UInt64 {
        return stdgo._internal.debug.elf.Elf_r_INFO.r_INFO(_sym, _typ);
    }
    /**
        Open opens the named file using os.Open and prepares it for use as an ELF binary.
    **/
    static public function open(_name:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_open.open(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewFile creates a new File for accessing an ELF binary in an underlying reader.
        The ELF binary is expected to start at position 0 in the ReaderAt.
    **/
    static public function newFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_newFile.newFile(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
