package stdgo.syscall;
final aF_UNSPEC : haxe.UInt64 = stdgo._internal.syscall.Syscall_af_unspec.aF_UNSPEC;
final aF_UNIX = stdgo._internal.syscall.Syscall_af_unix.aF_UNIX;
final aF_INET = stdgo._internal.syscall.Syscall_af_inet.aF_INET;
final aF_INET6 = stdgo._internal.syscall.Syscall_af_inet6.aF_INET6;
final sOCK_STREAM : haxe.UInt64 = stdgo._internal.syscall.Syscall_sock_stream.sOCK_STREAM;
final sOCK_DGRAM = stdgo._internal.syscall.Syscall_sock_dgram.sOCK_DGRAM;
final sOCK_RAW = stdgo._internal.syscall.Syscall_sock_raw.sOCK_RAW;
final sOCK_SEQPACKET = stdgo._internal.syscall.Syscall_sock_seqpacket.sOCK_SEQPACKET;
final iPPROTO_IP : haxe.UInt64 = stdgo._internal.syscall.Syscall_ipproto_ip.iPPROTO_IP;
final iPPROTO_IPV4 : haxe.UInt64 = stdgo._internal.syscall.Syscall_ipproto_ipv4.iPPROTO_IPV4;
final iPPROTO_IPV6 : haxe.UInt64 = stdgo._internal.syscall.Syscall_ipproto_ipv6.iPPROTO_IPV6;
final iPPROTO_TCP : haxe.UInt64 = stdgo._internal.syscall.Syscall_ipproto_tcp.iPPROTO_TCP;
final iPPROTO_UDP : haxe.UInt64 = stdgo._internal.syscall.Syscall_ipproto_udp.iPPROTO_UDP;
final iPV6_V6ONLY = stdgo._internal.syscall.Syscall_ipv6_v6only.iPV6_V6ONLY;
final sOMAXCONN = stdgo._internal.syscall.Syscall_somaxconn.sOMAXCONN;
final sO_ERROR = stdgo._internal.syscall.Syscall_so_error.sO_ERROR;
final f_DUPFD_CLOEXEC = stdgo._internal.syscall.Syscall_f_dupfd_cloexec.f_DUPFD_CLOEXEC;
final sYS_FCNTL : haxe.UInt64 = stdgo._internal.syscall.Syscall_sys_fcntl.sYS_FCNTL;
final pathMax : haxe.UInt64 = stdgo._internal.syscall.Syscall_pathmax.pathMax;
final sIGCHLD = stdgo._internal.syscall.Syscall_sigchld.sIGCHLD;
final sIGINT = stdgo._internal.syscall.Syscall_sigint.sIGINT;
final sIGKILL = stdgo._internal.syscall.Syscall_sigkill.sIGKILL;
final sIGTRAP = stdgo._internal.syscall.Syscall_sigtrap.sIGTRAP;
final sIGQUIT = stdgo._internal.syscall.Syscall_sigquit.sIGQUIT;
final sIGTERM = stdgo._internal.syscall.Syscall_sigterm.sIGTERM;
final stdin : haxe.UInt64 = stdgo._internal.syscall.Syscall_stdin.stdin;
final stdout : haxe.UInt64 = stdgo._internal.syscall.Syscall_stdout.stdout;
final stderr : haxe.UInt64 = stdgo._internal.syscall.Syscall_stderr.stderr;
final o_RDONLY : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_rdonly.o_RDONLY;
final o_WRONLY : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_wronly.o_WRONLY;
final o_RDWR : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_rdwr.o_RDWR;
final o_CREAT : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_creat.o_CREAT;
final o_CREATE : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_create.o_CREATE;
final o_TRUNC : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_trunc.o_TRUNC;
final o_APPEND : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_append.o_APPEND;
final o_EXCL : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_excl.o_EXCL;
final o_SYNC : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_sync.o_SYNC;
final o_CLOEXEC : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_cloexec.o_CLOEXEC;
final f_DUPFD : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_dupfd.f_DUPFD;
final f_GETFD : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_getfd.f_GETFD;
final f_SETFD : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_setfd.f_SETFD;
final f_GETFL : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_getfl.f_GETFL;
final f_SETFL : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_setfl.f_SETFL;
final f_GETOWN : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_getown.f_GETOWN;
final f_SETOWN : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_setown.f_SETOWN;
final f_GETLK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_getlk.f_GETLK;
final f_SETLK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_setlk.f_SETLK;
final f_SETLKW : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_setlkw.f_SETLKW;
final f_RGETLK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_rgetlk.f_RGETLK;
final f_RSETLK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_rsetlk.f_RSETLK;
final f_CNVT : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_cnvt.f_CNVT;
final f_RSETLKW : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_rsetlkw.f_RSETLKW;
final f_RDLCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_rdlck.f_RDLCK;
final f_WRLCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_wrlck.f_WRLCK;
final f_UNLCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_unlck.f_UNLCK;
final f_UNLKSYS : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_unlksys.f_UNLKSYS;
final s_IFMT : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ifmt.s_IFMT;
final s_IFSHM_SYSV : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ifshm_sysv.s_IFSHM_SYSV;
final s_IFSEMA : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ifsema.s_IFSEMA;
final s_IFCOND : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ifcond.s_IFCOND;
final s_IFMUTEX : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ifmutex.s_IFMUTEX;
final s_IFSHM : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ifshm.s_IFSHM;
final s_IFBOUNDSOCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ifboundsock.s_IFBOUNDSOCK;
final s_IFSOCKADDR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ifsockaddr.s_IFSOCKADDR;
final s_IFDSOCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ifdsock.s_IFDSOCK;
final s_IFSOCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ifsock.s_IFSOCK;
final s_IFLNK : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_iflnk.s_IFLNK;
final s_IFREG : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ifreg.s_IFREG;
final s_IFBLK : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ifblk.s_IFBLK;
final s_IFDIR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ifdir.s_IFDIR;
final s_IFCHR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ifchr.s_IFCHR;
final s_IFIFO : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ififo.s_IFIFO;
final s_UNSUP : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_unsup.s_UNSUP;
final s_ISUID : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_isuid.s_ISUID;
final s_ISGID : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_isgid.s_ISGID;
final s_ISVTX : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_isvtx.s_ISVTX;
final s_IREAD : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_iread.s_IREAD;
final s_IWRITE : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_iwrite.s_IWRITE;
final s_IEXEC : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_iexec.s_IEXEC;
final s_IRWXU : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_irwxu.s_IRWXU;
final s_IRUSR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_irusr.s_IRUSR;
final s_IWUSR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_iwusr.s_IWUSR;
final s_IXUSR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ixusr.s_IXUSR;
final s_IRWXG : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_irwxg.s_IRWXG;
final s_IRGRP : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_irgrp.s_IRGRP;
final s_IWGRP : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_iwgrp.s_IWGRP;
final s_IXGRP : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ixgrp.s_IXGRP;
final s_IRWXO : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_irwxo.s_IRWXO;
final s_IROTH : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_iroth.s_IROTH;
final s_IWOTH : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_iwoth.s_IWOTH;
final s_IXOTH : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ixoth.s_IXOTH;
var forkLock(get, set) : stdgo._internal.sync.Sync_rwmutex.RWMutex;
private function get_forkLock():stdgo._internal.sync.Sync_rwmutex.RWMutex return stdgo._internal.syscall.Syscall_forklock.forkLock;
private function set_forkLock(v:stdgo._internal.sync.Sync_rwmutex.RWMutex):stdgo._internal.sync.Sync_rwmutex.RWMutex {
        stdgo._internal.syscall.Syscall_forklock.forkLock = v;
        return v;
    }
final implementsGetwd : Bool = stdgo._internal.syscall.Syscall_implementsgetwd.implementsGetwd;
final ePERM : Errno = stdgo._internal.syscall.Syscall_eperm.ePERM;
final eNOENT : Errno = stdgo._internal.syscall.Syscall_enoent.eNOENT;
final eSRCH : Errno = stdgo._internal.syscall.Syscall_esrch.eSRCH;
final eINTR : Errno = stdgo._internal.syscall.Syscall_eintr.eINTR;
final eIO : Errno = stdgo._internal.syscall.Syscall_eio.eIO;
final eNXIO : Errno = stdgo._internal.syscall.Syscall_enxio.eNXIO;
final e2BIG : Errno = stdgo._internal.syscall.Syscall_e2big.e2BIG;
final eNOEXEC : Errno = stdgo._internal.syscall.Syscall_enoexec.eNOEXEC;
final eBADF : Errno = stdgo._internal.syscall.Syscall_ebadf.eBADF;
final eCHILD : Errno = stdgo._internal.syscall.Syscall_echild.eCHILD;
final eAGAIN : Errno = stdgo._internal.syscall.Syscall_eagain.eAGAIN;
final eNOMEM : Errno = stdgo._internal.syscall.Syscall_enomem.eNOMEM;
final eACCES : Errno = stdgo._internal.syscall.Syscall_eacces.eACCES;
final eFAULT : Errno = stdgo._internal.syscall.Syscall_efault.eFAULT;
final eBUSY : Errno = stdgo._internal.syscall.Syscall_ebusy.eBUSY;
final eEXIST : Errno = stdgo._internal.syscall.Syscall_eexist.eEXIST;
final eXDEV : Errno = stdgo._internal.syscall.Syscall_exdev.eXDEV;
final eNODEV : Errno = stdgo._internal.syscall.Syscall_enodev.eNODEV;
final eNOTDIR : Errno = stdgo._internal.syscall.Syscall_enotdir.eNOTDIR;
final eISDIR : Errno = stdgo._internal.syscall.Syscall_eisdir.eISDIR;
final eINVAL : Errno = stdgo._internal.syscall.Syscall_einval.eINVAL;
final eNFILE : Errno = stdgo._internal.syscall.Syscall_enfile.eNFILE;
final eMFILE : Errno = stdgo._internal.syscall.Syscall_emfile.eMFILE;
final eNOTTY : Errno = stdgo._internal.syscall.Syscall_enotty.eNOTTY;
final eFBIG : Errno = stdgo._internal.syscall.Syscall_efbig.eFBIG;
final eNOSPC : Errno = stdgo._internal.syscall.Syscall_enospc.eNOSPC;
final eSPIPE : Errno = stdgo._internal.syscall.Syscall_espipe.eSPIPE;
final eROFS : Errno = stdgo._internal.syscall.Syscall_erofs.eROFS;
final eMLINK : Errno = stdgo._internal.syscall.Syscall_emlink.eMLINK;
final ePIPE : Errno = stdgo._internal.syscall.Syscall_epipe.ePIPE;
final eNAMETOOLONG : Errno = stdgo._internal.syscall.Syscall_enametoolong.eNAMETOOLONG;
final eNOSYS : Errno = stdgo._internal.syscall.Syscall_enosys.eNOSYS;
final eDQUOT : Errno = stdgo._internal.syscall.Syscall_edquot.eDQUOT;
final eDOM : Errno = stdgo._internal.syscall.Syscall_edom.eDOM;
final eRANGE : Errno = stdgo._internal.syscall.Syscall_erange.eRANGE;
final eDEADLK : Errno = stdgo._internal.syscall.Syscall_edeadlk.eDEADLK;
final eNOLCK : Errno = stdgo._internal.syscall.Syscall_enolck.eNOLCK;
final eNOTEMPTY : Errno = stdgo._internal.syscall.Syscall_enotempty.eNOTEMPTY;
final eLOOP : Errno = stdgo._internal.syscall.Syscall_eloop.eLOOP;
final eNOMSG : Errno = stdgo._internal.syscall.Syscall_enomsg.eNOMSG;
final eIDRM : Errno = stdgo._internal.syscall.Syscall_eidrm.eIDRM;
final eCHRNG : Errno = stdgo._internal.syscall.Syscall_echrng.eCHRNG;
final eL2NSYNC : Errno = stdgo._internal.syscall.Syscall_el2nsync.eL2NSYNC;
final eL3HLT : Errno = stdgo._internal.syscall.Syscall_el3hlt.eL3HLT;
final eL3RST : Errno = stdgo._internal.syscall.Syscall_el3rst.eL3RST;
final eLNRNG : Errno = stdgo._internal.syscall.Syscall_elnrng.eLNRNG;
final eUNATCH : Errno = stdgo._internal.syscall.Syscall_eunatch.eUNATCH;
final eNOCSI : Errno = stdgo._internal.syscall.Syscall_enocsi.eNOCSI;
final eL2HLT : Errno = stdgo._internal.syscall.Syscall_el2hlt.eL2HLT;
final eBADE : Errno = stdgo._internal.syscall.Syscall_ebade.eBADE;
final eBADR : Errno = stdgo._internal.syscall.Syscall_ebadr.eBADR;
final eXFULL : Errno = stdgo._internal.syscall.Syscall_exfull.eXFULL;
final eNOANO : Errno = stdgo._internal.syscall.Syscall_enoano.eNOANO;
final eBADRQC : Errno = stdgo._internal.syscall.Syscall_ebadrqc.eBADRQC;
final eBADSLT : Errno = stdgo._internal.syscall.Syscall_ebadslt.eBADSLT;
final eDEADLOCK : Errno = stdgo._internal.syscall.Syscall_edeadlock.eDEADLOCK;
final eBFONT : Errno = stdgo._internal.syscall.Syscall_ebfont.eBFONT;
final eNOSTR : Errno = stdgo._internal.syscall.Syscall_enostr.eNOSTR;
final eNODATA : Errno = stdgo._internal.syscall.Syscall_enodata.eNODATA;
final eTIME : Errno = stdgo._internal.syscall.Syscall_etime.eTIME;
final eNOSR : Errno = stdgo._internal.syscall.Syscall_enosr.eNOSR;
final eNONET : Errno = stdgo._internal.syscall.Syscall_enonet.eNONET;
final eNOPKG : Errno = stdgo._internal.syscall.Syscall_enopkg.eNOPKG;
final eREMOTE : Errno = stdgo._internal.syscall.Syscall_eremote.eREMOTE;
final eNOLINK : Errno = stdgo._internal.syscall.Syscall_enolink.eNOLINK;
final eADV : Errno = stdgo._internal.syscall.Syscall_eadv.eADV;
final eSRMNT : Errno = stdgo._internal.syscall.Syscall_esrmnt.eSRMNT;
final eCOMM : Errno = stdgo._internal.syscall.Syscall_ecomm.eCOMM;
final ePROTO : Errno = stdgo._internal.syscall.Syscall_eproto.ePROTO;
final eMULTIHOP : Errno = stdgo._internal.syscall.Syscall_emultihop.eMULTIHOP;
final eDOTDOT : Errno = stdgo._internal.syscall.Syscall_edotdot.eDOTDOT;
final eBADMSG : Errno = stdgo._internal.syscall.Syscall_ebadmsg.eBADMSG;
final eOVERFLOW : Errno = stdgo._internal.syscall.Syscall_eoverflow.eOVERFLOW;
final eNOTUNIQ : Errno = stdgo._internal.syscall.Syscall_enotuniq.eNOTUNIQ;
final eBADFD : Errno = stdgo._internal.syscall.Syscall_ebadfd.eBADFD;
final eREMCHG : Errno = stdgo._internal.syscall.Syscall_eremchg.eREMCHG;
final eLIBACC : Errno = stdgo._internal.syscall.Syscall_elibacc.eLIBACC;
final eLIBBAD : Errno = stdgo._internal.syscall.Syscall_elibbad.eLIBBAD;
final eLIBSCN : Errno = stdgo._internal.syscall.Syscall_elibscn.eLIBSCN;
final eLIBMAX : Errno = stdgo._internal.syscall.Syscall_elibmax.eLIBMAX;
final eLIBEXEC : Errno = stdgo._internal.syscall.Syscall_elibexec.eLIBEXEC;
final eILSEQ : Errno = stdgo._internal.syscall.Syscall_eilseq.eILSEQ;
final eUSERS : Errno = stdgo._internal.syscall.Syscall_eusers.eUSERS;
final eNOTSOCK : Errno = stdgo._internal.syscall.Syscall_enotsock.eNOTSOCK;
final eDESTADDRREQ : Errno = stdgo._internal.syscall.Syscall_edestaddrreq.eDESTADDRREQ;
final eMSGSIZE : Errno = stdgo._internal.syscall.Syscall_emsgsize.eMSGSIZE;
final ePROTOTYPE : Errno = stdgo._internal.syscall.Syscall_eprototype.ePROTOTYPE;
final eNOPROTOOPT : Errno = stdgo._internal.syscall.Syscall_enoprotoopt.eNOPROTOOPT;
final ePROTONOSUPPORT : Errno = stdgo._internal.syscall.Syscall_eprotonosupport.ePROTONOSUPPORT;
final eSOCKTNOSUPPORT : Errno = stdgo._internal.syscall.Syscall_esocktnosupport.eSOCKTNOSUPPORT;
final eOPNOTSUPP : Errno = stdgo._internal.syscall.Syscall_eopnotsupp.eOPNOTSUPP;
final ePFNOSUPPORT : Errno = stdgo._internal.syscall.Syscall_epfnosupport.ePFNOSUPPORT;
final eAFNOSUPPORT : Errno = stdgo._internal.syscall.Syscall_eafnosupport.eAFNOSUPPORT;
final eADDRINUSE : Errno = stdgo._internal.syscall.Syscall_eaddrinuse.eADDRINUSE;
final eADDRNOTAVAIL : Errno = stdgo._internal.syscall.Syscall_eaddrnotavail.eADDRNOTAVAIL;
final eNETDOWN : Errno = stdgo._internal.syscall.Syscall_enetdown.eNETDOWN;
final eNETUNREACH : Errno = stdgo._internal.syscall.Syscall_enetunreach.eNETUNREACH;
final eNETRESET : Errno = stdgo._internal.syscall.Syscall_enetreset.eNETRESET;
final eCONNABORTED : Errno = stdgo._internal.syscall.Syscall_econnaborted.eCONNABORTED;
final eCONNRESET : Errno = stdgo._internal.syscall.Syscall_econnreset.eCONNRESET;
final eNOBUFS : Errno = stdgo._internal.syscall.Syscall_enobufs.eNOBUFS;
final eISCONN : Errno = stdgo._internal.syscall.Syscall_eisconn.eISCONN;
final eNOTCONN : Errno = stdgo._internal.syscall.Syscall_enotconn.eNOTCONN;
final eSHUTDOWN : Errno = stdgo._internal.syscall.Syscall_eshutdown.eSHUTDOWN;
final eTOOMANYREFS : Errno = stdgo._internal.syscall.Syscall_etoomanyrefs.eTOOMANYREFS;
final eTIMEDOUT : Errno = stdgo._internal.syscall.Syscall_etimedout.eTIMEDOUT;
final eCONNREFUSED : Errno = stdgo._internal.syscall.Syscall_econnrefused.eCONNREFUSED;
final eHOSTDOWN : Errno = stdgo._internal.syscall.Syscall_ehostdown.eHOSTDOWN;
final eHOSTUNREACH : Errno = stdgo._internal.syscall.Syscall_ehostunreach.eHOSTUNREACH;
final eALREADY : Errno = stdgo._internal.syscall.Syscall_ealready.eALREADY;
final eINPROGRESS : Errno = stdgo._internal.syscall.Syscall_einprogress.eINPROGRESS;
final eSTALE : Errno = stdgo._internal.syscall.Syscall_estale.eSTALE;
final eNOTSUP : Errno = stdgo._internal.syscall.Syscall_enotsup.eNOTSUP;
final eNOMEDIUM : Errno = stdgo._internal.syscall.Syscall_enomedium.eNOMEDIUM;
final eCANCELED : Errno = stdgo._internal.syscall.Syscall_ecanceled.eCANCELED;
final eLBIN : Errno = stdgo._internal.syscall.Syscall_elbin.eLBIN;
final eFTYPE : Errno = stdgo._internal.syscall.Syscall_eftype.eFTYPE;
final eNMFILE : Errno = stdgo._internal.syscall.Syscall_enmfile.eNMFILE;
final ePROCLIM : Errno = stdgo._internal.syscall.Syscall_eproclim.ePROCLIM;
final eNOSHARE : Errno = stdgo._internal.syscall.Syscall_enoshare.eNOSHARE;
final eCASECLASH : Errno = stdgo._internal.syscall.Syscall_ecaseclash.eCASECLASH;
final eWOULDBLOCK : Errno = stdgo._internal.syscall.Syscall_ewouldblock.eWOULDBLOCK;
class RawConn_static_extension {
    static public function write(t:stdgo._internal.syscall.Syscall_rawconn.RawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _f = _f;
        return stdgo._internal.syscall.Syscall_rawconn_static_extension.RawConn_static_extension.write(t, _f);
    }
    static public function read(t:stdgo._internal.syscall.Syscall_rawconn.RawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _f = _f;
        return stdgo._internal.syscall.Syscall_rawconn_static_extension.RawConn_static_extension.read(t, _f);
    }
    static public function control(t:stdgo._internal.syscall.Syscall_rawconn.RawConn, _f:stdgo.GoUIntptr -> Void):stdgo.Error {
        final _f = _f;
        return stdgo._internal.syscall.Syscall_rawconn_static_extension.RawConn_static_extension.control(t, _f);
    }
}
@:interface @:forward abstract RawConn(stdgo._internal.syscall.Syscall_rawconn.RawConn) from stdgo._internal.syscall.Syscall_rawconn.RawConn to stdgo._internal.syscall.Syscall_rawconn.RawConn {
    @:from
    static function fromHaxeInterface(x:{ function control(_f:stdgo.GoUIntptr -> Void):stdgo.Error; function read(_f:stdgo.GoUIntptr -> Bool):stdgo.Error; function write(_f:stdgo.GoUIntptr -> Bool):stdgo.Error; }):RawConn {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:RawConn = { control : _0 -> x.control(_0 -> _0(_0)), read : _0 -> x.read(_0 -> _0(_0)), write : _0 -> x.write(_0 -> _0(_0)), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Conn_static_extension {
    static public function syscallConn(t:stdgo._internal.syscall.Syscall_conn.Conn):stdgo.Tuple<RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_conn_static_extension.Conn_static_extension.syscallConn(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract Conn(stdgo._internal.syscall.Syscall_conn.Conn) from stdgo._internal.syscall.Syscall_conn.Conn to stdgo._internal.syscall.Syscall_conn.Conn {
    @:from
    static function fromHaxeInterface(x:{ function syscallConn():stdgo.Tuple<RawConn, stdgo.Error>; }):Conn {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Conn = { syscallConn : () -> x.syscallConn(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.syscall.Syscall.T_jsFile_static_extension) @:dox(hide) abstract T_jsFile(stdgo._internal.syscall.Syscall_t_jsfile.T_jsFile) from stdgo._internal.syscall.Syscall_t_jsfile.T_jsFile to stdgo._internal.syscall.Syscall_t_jsfile.T_jsFile {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = (v : stdgo.GoString);
        return v;
    }
    public var _entries(get, set) : Array<String>;
    function get__entries():Array<String> return [for (i in this._entries) i];
    function set__entries(v:Array<String>):Array<String> {
        this._entries = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _dirIdx(get, set) : StdTypes.Int;
    function get__dirIdx():StdTypes.Int return this._dirIdx;
    function set__dirIdx(v:StdTypes.Int):StdTypes.Int {
        this._dirIdx = (v : stdgo.GoInt);
        return v;
    }
    public var _pos(get, set) : haxe.Int64;
    function get__pos():haxe.Int64 return this._pos;
    function set__pos(v:haxe.Int64):haxe.Int64 {
        this._pos = (v : stdgo.GoInt64);
        return v;
    }
    public var _seeked(get, set) : Bool;
    function get__seeked():Bool return this._seeked;
    function set__seeked(v:Bool):Bool {
        this._seeked = v;
        return v;
    }
    public function new(?_path:String, ?_entries:Array<String>, ?_dirIdx:StdTypes.Int, ?_pos:haxe.Int64, ?_seeked:Bool) this = new stdgo._internal.syscall.Syscall_t_jsfile.T_jsFile((_path : stdgo.GoString), ([for (i in _entries) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_dirIdx : stdgo.GoInt), (_pos : stdgo.GoInt64), _seeked);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.SockaddrInet4_static_extension) abstract SockaddrInet4(stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4) from stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4 to stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4 {
    public var port(get, set) : StdTypes.Int;
    function get_port():StdTypes.Int return this.port;
    function set_port(v:StdTypes.Int):StdTypes.Int {
        this.port = (v : stdgo.GoInt);
        return v;
    }
    public var addr(get, set) : haxe.ds.Vector<std.UInt>;
    function get_addr():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.addr) i]);
    function set_addr(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.addr = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?port:StdTypes.Int, ?addr:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4((port : stdgo.GoInt), ([for (i in addr) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.SockaddrInet6_static_extension) abstract SockaddrInet6(stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6) from stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6 to stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6 {
    public var port(get, set) : StdTypes.Int;
    function get_port():StdTypes.Int return this.port;
    function set_port(v:StdTypes.Int):StdTypes.Int {
        this.port = (v : stdgo.GoInt);
        return v;
    }
    public var zoneId(get, set) : std.UInt;
    function get_zoneId():std.UInt return this.zoneId;
    function set_zoneId(v:std.UInt):std.UInt {
        this.zoneId = (v : stdgo.GoUInt32);
        return v;
    }
    public var addr(get, set) : haxe.ds.Vector<std.UInt>;
    function get_addr():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.addr) i]);
    function set_addr(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.addr = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?port:StdTypes.Int, ?zoneId:std.UInt, ?addr:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6((port : stdgo.GoInt), (zoneId : stdgo.GoUInt32), ([for (i in addr) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.SockaddrUnix_static_extension) abstract SockaddrUnix(stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix) from stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix to stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?name:String) this = new stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix((name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.Dirent_static_extension) abstract Dirent(stdgo._internal.syscall.Syscall_dirent.Dirent) from stdgo._internal.syscall.Syscall_dirent.Dirent to stdgo._internal.syscall.Syscall_dirent.Dirent {
    public var reclen(get, set) : std.UInt;
    function get_reclen():std.UInt return this.reclen;
    function set_reclen(v:std.UInt):std.UInt {
        this.reclen = (v : stdgo.GoUInt16);
        return v;
    }
    public var name(get, set) : haxe.ds.Vector<std.UInt>;
    function get_name():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.name) i]);
    function set_name(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.name = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?reclen:std.UInt, ?name:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.syscall.Syscall_dirent.Dirent((reclen : stdgo.GoUInt16), ([for (i in name) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.Stat_t_static_extension) abstract Stat_t(stdgo._internal.syscall.Syscall_stat_t.Stat_t) from stdgo._internal.syscall.Syscall_stat_t.Stat_t to stdgo._internal.syscall.Syscall_stat_t.Stat_t {
    public var dev(get, set) : haxe.Int64;
    function get_dev():haxe.Int64 return this.dev;
    function set_dev(v:haxe.Int64):haxe.Int64 {
        this.dev = (v : stdgo.GoInt64);
        return v;
    }
    public var ino(get, set) : haxe.UInt64;
    function get_ino():haxe.UInt64 return this.ino;
    function set_ino(v:haxe.UInt64):haxe.UInt64 {
        this.ino = (v : stdgo.GoUInt64);
        return v;
    }
    public var mode(get, set) : std.UInt;
    function get_mode():std.UInt return this.mode;
    function set_mode(v:std.UInt):std.UInt {
        this.mode = (v : stdgo.GoUInt32);
        return v;
    }
    public var nlink(get, set) : std.UInt;
    function get_nlink():std.UInt return this.nlink;
    function set_nlink(v:std.UInt):std.UInt {
        this.nlink = (v : stdgo.GoUInt32);
        return v;
    }
    public var uid(get, set) : std.UInt;
    function get_uid():std.UInt return this.uid;
    function set_uid(v:std.UInt):std.UInt {
        this.uid = (v : stdgo.GoUInt32);
        return v;
    }
    public var gid(get, set) : std.UInt;
    function get_gid():std.UInt return this.gid;
    function set_gid(v:std.UInt):std.UInt {
        this.gid = (v : stdgo.GoUInt32);
        return v;
    }
    public var rdev(get, set) : haxe.Int64;
    function get_rdev():haxe.Int64 return this.rdev;
    function set_rdev(v:haxe.Int64):haxe.Int64 {
        this.rdev = (v : stdgo.GoInt64);
        return v;
    }
    public var size(get, set) : haxe.Int64;
    function get_size():haxe.Int64 return this.size;
    function set_size(v:haxe.Int64):haxe.Int64 {
        this.size = (v : stdgo.GoInt64);
        return v;
    }
    public var blksize(get, set) : StdTypes.Int;
    function get_blksize():StdTypes.Int return this.blksize;
    function set_blksize(v:StdTypes.Int):StdTypes.Int {
        this.blksize = (v : stdgo.GoInt32);
        return v;
    }
    public var blocks(get, set) : StdTypes.Int;
    function get_blocks():StdTypes.Int return this.blocks;
    function set_blocks(v:StdTypes.Int):StdTypes.Int {
        this.blocks = (v : stdgo.GoInt32);
        return v;
    }
    public var atime(get, set) : haxe.Int64;
    function get_atime():haxe.Int64 return this.atime;
    function set_atime(v:haxe.Int64):haxe.Int64 {
        this.atime = (v : stdgo.GoInt64);
        return v;
    }
    public var atimeNsec(get, set) : haxe.Int64;
    function get_atimeNsec():haxe.Int64 return this.atimeNsec;
    function set_atimeNsec(v:haxe.Int64):haxe.Int64 {
        this.atimeNsec = (v : stdgo.GoInt64);
        return v;
    }
    public var mtime(get, set) : haxe.Int64;
    function get_mtime():haxe.Int64 return this.mtime;
    function set_mtime(v:haxe.Int64):haxe.Int64 {
        this.mtime = (v : stdgo.GoInt64);
        return v;
    }
    public var mtimeNsec(get, set) : haxe.Int64;
    function get_mtimeNsec():haxe.Int64 return this.mtimeNsec;
    function set_mtimeNsec(v:haxe.Int64):haxe.Int64 {
        this.mtimeNsec = (v : stdgo.GoInt64);
        return v;
    }
    public var ctime(get, set) : haxe.Int64;
    function get_ctime():haxe.Int64 return this.ctime;
    function set_ctime(v:haxe.Int64):haxe.Int64 {
        this.ctime = (v : stdgo.GoInt64);
        return v;
    }
    public var ctimeNsec(get, set) : haxe.Int64;
    function get_ctimeNsec():haxe.Int64 return this.ctimeNsec;
    function set_ctimeNsec(v:haxe.Int64):haxe.Int64 {
        this.ctimeNsec = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?dev:haxe.Int64, ?ino:haxe.UInt64, ?mode:std.UInt, ?nlink:std.UInt, ?uid:std.UInt, ?gid:std.UInt, ?rdev:haxe.Int64, ?size:haxe.Int64, ?blksize:StdTypes.Int, ?blocks:StdTypes.Int, ?atime:haxe.Int64, ?atimeNsec:haxe.Int64, ?mtime:haxe.Int64, ?mtimeNsec:haxe.Int64, ?ctime:haxe.Int64, ?ctimeNsec:haxe.Int64) this = new stdgo._internal.syscall.Syscall_stat_t.Stat_t(
(dev : stdgo.GoInt64),
(ino : stdgo.GoUInt64),
(mode : stdgo.GoUInt32),
(nlink : stdgo.GoUInt32),
(uid : stdgo.GoUInt32),
(gid : stdgo.GoUInt32),
(rdev : stdgo.GoInt64),
(size : stdgo.GoInt64),
(blksize : stdgo.GoInt32),
(blocks : stdgo.GoInt32),
(atime : stdgo.GoInt64),
(atimeNsec : stdgo.GoInt64),
(mtime : stdgo.GoInt64),
(mtimeNsec : stdgo.GoInt64),
(ctime : stdgo.GoInt64),
(ctimeNsec : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.Rusage_static_extension) abstract Rusage(stdgo._internal.syscall.Syscall_rusage.Rusage) from stdgo._internal.syscall.Syscall_rusage.Rusage to stdgo._internal.syscall.Syscall_rusage.Rusage {
    public var utime(get, set) : Timeval;
    function get_utime():Timeval return this.utime;
    function set_utime(v:Timeval):Timeval {
        this.utime = v;
        return v;
    }
    public var stime(get, set) : Timeval;
    function get_stime():Timeval return this.stime;
    function set_stime(v:Timeval):Timeval {
        this.stime = v;
        return v;
    }
    public function new(?utime:Timeval, ?stime:Timeval) this = new stdgo._internal.syscall.Syscall_rusage.Rusage(utime, stime);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.ProcAttr_static_extension) abstract ProcAttr(stdgo._internal.syscall.Syscall_procattr.ProcAttr) from stdgo._internal.syscall.Syscall_procattr.ProcAttr to stdgo._internal.syscall.Syscall_procattr.ProcAttr {
    public var dir(get, set) : String;
    function get_dir():String return this.dir;
    function set_dir(v:String):String {
        this.dir = (v : stdgo.GoString);
        return v;
    }
    public var env(get, set) : Array<String>;
    function get_env():Array<String> return [for (i in this.env) i];
    function set_env(v:Array<String>):Array<String> {
        this.env = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var files(get, set) : Array<stdgo.GoUIntptr>;
    function get_files():Array<stdgo.GoUIntptr> return [for (i in this.files) i];
    function set_files(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this.files = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public var sys(get, set) : SysProcAttr;
    function get_sys():SysProcAttr return this.sys;
    function set_sys(v:SysProcAttr):SysProcAttr {
        this.sys = (v : stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr>);
        return v;
    }
    public function new(?dir:String, ?env:Array<String>, ?files:Array<stdgo.GoUIntptr>, ?sys:SysProcAttr) this = new stdgo._internal.syscall.Syscall_procattr.ProcAttr((dir : stdgo.GoString), ([for (i in env) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in files) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>), (sys : stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.SysProcAttr_static_extension) abstract SysProcAttr(stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr) from stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr to stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr {
    public function new() this = new stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.Iovec_static_extension) abstract Iovec(stdgo._internal.syscall.Syscall_iovec.Iovec) from stdgo._internal.syscall.Syscall_iovec.Iovec to stdgo._internal.syscall.Syscall_iovec.Iovec {
    public function new() this = new stdgo._internal.syscall.Syscall_iovec.Iovec();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.Timespec_static_extension) abstract Timespec(stdgo._internal.syscall.Syscall_timespec.Timespec) from stdgo._internal.syscall.Syscall_timespec.Timespec to stdgo._internal.syscall.Syscall_timespec.Timespec {
    public var sec(get, set) : haxe.Int64;
    function get_sec():haxe.Int64 return this.sec;
    function set_sec(v:haxe.Int64):haxe.Int64 {
        this.sec = (v : stdgo.GoInt64);
        return v;
    }
    public var nsec(get, set) : haxe.Int64;
    function get_nsec():haxe.Int64 return this.nsec;
    function set_nsec(v:haxe.Int64):haxe.Int64 {
        this.nsec = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?sec:haxe.Int64, ?nsec:haxe.Int64) this = new stdgo._internal.syscall.Syscall_timespec.Timespec((sec : stdgo.GoInt64), (nsec : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.Timeval_static_extension) abstract Timeval(stdgo._internal.syscall.Syscall_timeval.Timeval) from stdgo._internal.syscall.Syscall_timeval.Timeval to stdgo._internal.syscall.Syscall_timeval.Timeval {
    public var sec(get, set) : haxe.Int64;
    function get_sec():haxe.Int64 return this.sec;
    function set_sec(v:haxe.Int64):haxe.Int64 {
        this.sec = (v : stdgo.GoInt64);
        return v;
    }
    public var usec(get, set) : haxe.Int64;
    function get_usec():haxe.Int64 return this.usec;
    function set_usec(v:haxe.Int64):haxe.Int64 {
        this.usec = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?sec:haxe.Int64, ?usec:haxe.Int64) this = new stdgo._internal.syscall.Syscall_timeval.Timeval((sec : stdgo.GoInt64), (usec : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Sockaddr = stdgo._internal.syscall.Syscall_sockaddr.Sockaddr;
typedef Errno = stdgo._internal.syscall.Syscall_errno.Errno;
typedef Signal = stdgo._internal.syscall.Syscall_signal.Signal;
typedef WaitStatus = stdgo._internal.syscall.Syscall_waitstatus.WaitStatus;
@:dox(hide) typedef T_jsFilePointer = stdgo._internal.syscall.Syscall_t_jsfilepointer.T_jsFilePointer;
@:dox(hide) class T_jsFile_static_extension {

}
typedef SockaddrInet4Pointer = stdgo._internal.syscall.Syscall_sockaddrinet4pointer.SockaddrInet4Pointer;
class SockaddrInet4_static_extension {

}
typedef SockaddrInet6Pointer = stdgo._internal.syscall.Syscall_sockaddrinet6pointer.SockaddrInet6Pointer;
class SockaddrInet6_static_extension {

}
typedef SockaddrUnixPointer = stdgo._internal.syscall.Syscall_sockaddrunixpointer.SockaddrUnixPointer;
class SockaddrUnix_static_extension {

}
typedef DirentPointer = stdgo._internal.syscall.Syscall_direntpointer.DirentPointer;
class Dirent_static_extension {

}
typedef Stat_tPointer = stdgo._internal.syscall.Syscall_stat_tpointer.Stat_tPointer;
class Stat_t_static_extension {

}
typedef RusagePointer = stdgo._internal.syscall.Syscall_rusagepointer.RusagePointer;
class Rusage_static_extension {

}
typedef ProcAttrPointer = stdgo._internal.syscall.Syscall_procattrpointer.ProcAttrPointer;
class ProcAttr_static_extension {

}
typedef SysProcAttrPointer = stdgo._internal.syscall.Syscall_sysprocattrpointer.SysProcAttrPointer;
class SysProcAttr_static_extension {

}
typedef IovecPointer = stdgo._internal.syscall.Syscall_iovecpointer.IovecPointer;
class Iovec_static_extension {

}
typedef TimespecPointer = stdgo._internal.syscall.Syscall_timespecpointer.TimespecPointer;
class Timespec_static_extension {
    static public function nano(_ts:Timespec):haxe.Int64 {
        final _ts = (_ts : stdgo.Ref<stdgo._internal.syscall.Syscall_timespec.Timespec>);
        return stdgo._internal.syscall.Syscall_timespec_static_extension.Timespec_static_extension.nano(_ts);
    }
    static public function unix(_ts:Timespec):stdgo.Tuple<haxe.Int64, haxe.Int64> {
        final _ts = (_ts : stdgo.Ref<stdgo._internal.syscall.Syscall_timespec.Timespec>);
        return {
            final obj = stdgo._internal.syscall.Syscall_timespec_static_extension.Timespec_static_extension.unix(_ts);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef TimevalPointer = stdgo._internal.syscall.Syscall_timevalpointer.TimevalPointer;
class Timeval_static_extension {
    static public function nano(_tv:Timeval):haxe.Int64 {
        final _tv = (_tv : stdgo.Ref<stdgo._internal.syscall.Syscall_timeval.Timeval>);
        return stdgo._internal.syscall.Syscall_timeval_static_extension.Timeval_static_extension.nano(_tv);
    }
    static public function unix(_tv:Timeval):stdgo.Tuple<haxe.Int64, haxe.Int64> {
        final _tv = (_tv : stdgo.Ref<stdgo._internal.syscall.Syscall_timeval.Timeval>);
        return {
            final obj = stdgo._internal.syscall.Syscall_timeval_static_extension.Timeval_static_extension.unix(_tv);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef SockaddrPointer = stdgo._internal.syscall.Syscall_sockaddrpointer.SockaddrPointer;
class Sockaddr_static_extension {

}
typedef ErrnoPointer = stdgo._internal.syscall.Syscall_errnopointer.ErrnoPointer;
class Errno_static_extension {
    static public function timeout(_e:Errno):Bool {
        return stdgo._internal.syscall.Syscall_errno_static_extension.Errno_static_extension.timeout(_e);
    }
    static public function temporary(_e:Errno):Bool {
        return stdgo._internal.syscall.Syscall_errno_static_extension.Errno_static_extension.temporary(_e);
    }
    static public function is_(_e:Errno, _target:stdgo.Error):Bool {
        final _target = (_target : stdgo.Error);
        return stdgo._internal.syscall.Syscall_errno_static_extension.Errno_static_extension.is_(_e, _target);
    }
    static public function error(_e:Errno):String {
        return stdgo._internal.syscall.Syscall_errno_static_extension.Errno_static_extension.error(_e);
    }
}
typedef SignalPointer = stdgo._internal.syscall.Syscall_signalpointer.SignalPointer;
class Signal_static_extension {
    static public function string(_s:Signal):String {
        return stdgo._internal.syscall.Syscall_signal_static_extension.Signal_static_extension.string(_s);
    }
    static public function signal(_s:Signal):Void {
        stdgo._internal.syscall.Syscall_signal_static_extension.Signal_static_extension.signal(_s);
    }
}
typedef WaitStatusPointer = stdgo._internal.syscall.Syscall_waitstatuspointer.WaitStatusPointer;
class WaitStatus_static_extension {
    static public function trapCause(_w:WaitStatus):StdTypes.Int {
        return stdgo._internal.syscall.Syscall_waitstatus_static_extension.WaitStatus_static_extension.trapCause(_w);
    }
    static public function stopSignal(_w:WaitStatus):Signal {
        return stdgo._internal.syscall.Syscall_waitstatus_static_extension.WaitStatus_static_extension.stopSignal(_w);
    }
    static public function continued(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_waitstatus_static_extension.WaitStatus_static_extension.continued(_w);
    }
    static public function stopped(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_waitstatus_static_extension.WaitStatus_static_extension.stopped(_w);
    }
    static public function coreDump(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_waitstatus_static_extension.WaitStatus_static_extension.coreDump(_w);
    }
    static public function signal(_w:WaitStatus):Signal {
        return stdgo._internal.syscall.Syscall_waitstatus_static_extension.WaitStatus_static_extension.signal(_w);
    }
    static public function signaled(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_waitstatus_static_extension.WaitStatus_static_extension.signaled(_w);
    }
    static public function exitStatus(_w:WaitStatus):StdTypes.Int {
        return stdgo._internal.syscall.Syscall_waitstatus_static_extension.WaitStatus_static_extension.exitStatus(_w);
    }
    static public function exited(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_waitstatus_static_extension.WaitStatus_static_extension.exited(_w);
    }
}
/**
    * Package syscall contains an interface to the low-level operating system
    * primitives. The details vary depending on the underlying system, and
    * by default, godoc will display the syscall documentation for the current
    * system. If you want godoc to display syscall documentation for another
    * system, set $GOOS and $GOARCH to the desired system. For example, if
    * you want to view documentation for freebsd/arm on linux/amd64, set $GOOS
    * to freebsd and $GOARCH to arm.
    * The primary use of syscall is inside other packages that provide a more
    * portable interface to the system, such as "os", "time" and "net".  Use
    * those packages rather than this one if you can.
    * For details of the functions and data types in this package consult
    * the manuals for the appropriate operating system.
    * These calls return err == nil to indicate success; otherwise
    * err is an operating system error describing the failure.
    * On most systems, that error has type syscall.Errno.
    * 
    * Deprecated: this package is locked down. Callers should use the
    * corresponding package in the golang.org/x/sys repository instead.
    * That is also where updates required by new systems or versions
    * should be applied. See https://golang.org/s/go1.4-syscall for more
    * information.
**/
class Syscall {
    /**
        * ParseDirent parses up to max directory entries in buf,
        * appending the names to names. It returns the number of
        * bytes consumed from buf, the number of entries added
        * to names, and the new names slice.
    **/
    static public inline function parseDirent(_buf:Array<std.UInt>, _max:StdTypes.Int, _names:Array<String>):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, Array<String>> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _max = (_max : stdgo.GoInt);
        final _names = ([for (i in _names) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.syscall.Syscall_parsedirent.parseDirent(_buf, _max, _names);
            { _0 : obj._0, _1 : obj._1, _2 : [for (i in obj._2) i] };
        };
    }
    static public inline function unsetenv(_key:String):stdgo.Error {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_unsetenv.unsetenv(_key);
    }
    static public inline function getenv(_key:String):stdgo.Tuple<String, Bool> {
        final _key = (_key : stdgo.GoString);
        return {
            final obj = stdgo._internal.syscall.Syscall_getenv.getenv(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function setenv(_key:String, _value:String):stdgo.Error {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_setenv.setenv(_key, _value);
    }
    static public inline function clearenv():Void {
        stdgo._internal.syscall.Syscall_clearenv.clearenv();
    }
    static public inline function environ_():Array<String> {
        return [for (i in stdgo._internal.syscall.Syscall_environ_.environ_()) i];
    }
    static public inline function open(_path:String, _openmode:StdTypes.Int, _perm:std.UInt):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _path = (_path : stdgo.GoString);
        final _openmode = (_openmode : stdgo.GoInt);
        final _perm = (_perm : stdgo.GoUInt32);
        return {
            final obj = stdgo._internal.syscall.Syscall_open.open(_path, _openmode, _perm);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function close(_fd:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_close.close(_fd);
    }
    static public inline function closeOnExec(_fd:StdTypes.Int):Void {
        final _fd = (_fd : stdgo.GoInt);
        stdgo._internal.syscall.Syscall_closeonexec.closeOnExec(_fd);
    }
    static public inline function mkdir(_path:String, _perm:std.UInt):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _perm = (_perm : stdgo.GoUInt32);
        return stdgo._internal.syscall.Syscall_mkdir.mkdir(_path, _perm);
    }
    static public inline function readDirent(_fd:StdTypes.Int, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_readdirent.readDirent(_fd, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function stat(_path:String, _st:Stat_t):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _st = (_st : stdgo.Ref<stdgo._internal.syscall.Syscall_stat_t.Stat_t>);
        return stdgo._internal.syscall.Syscall_stat.stat(_path, _st);
    }
    static public inline function lstat(_path:String, _st:Stat_t):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _st = (_st : stdgo.Ref<stdgo._internal.syscall.Syscall_stat_t.Stat_t>);
        return stdgo._internal.syscall.Syscall_lstat.lstat(_path, _st);
    }
    static public inline function fstat(_fd:StdTypes.Int, _st:Stat_t):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _st = (_st : stdgo.Ref<stdgo._internal.syscall.Syscall_stat_t.Stat_t>);
        return stdgo._internal.syscall.Syscall_fstat.fstat(_fd, _st);
    }
    static public inline function unlink(_path:String):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_unlink.unlink(_path);
    }
    static public inline function rmdir(_path:String):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_rmdir.rmdir(_path);
    }
    static public inline function chmod(_path:String, _mode:std.UInt):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _mode = (_mode : stdgo.GoUInt32);
        return stdgo._internal.syscall.Syscall_chmod.chmod(_path, _mode);
    }
    static public inline function fchmod(_fd:StdTypes.Int, _mode:std.UInt):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _mode = (_mode : stdgo.GoUInt32);
        return stdgo._internal.syscall.Syscall_fchmod.fchmod(_fd, _mode);
    }
    static public inline function chown(_path:String, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _uid = (_uid : stdgo.GoInt);
        final _gid = (_gid : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_chown.chown(_path, _uid, _gid);
    }
    static public inline function fchown(_fd:StdTypes.Int, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _uid = (_uid : stdgo.GoInt);
        final _gid = (_gid : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_fchown.fchown(_fd, _uid, _gid);
    }
    static public inline function lchown(_path:String, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _uid = (_uid : stdgo.GoInt);
        final _gid = (_gid : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_lchown.lchown(_path, _uid, _gid);
    }
    static public inline function utimesNano(_path:String, _ts:Array<Timespec>):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _ts = ([for (i in _ts) i] : stdgo.Slice<stdgo._internal.syscall.Syscall_timespec.Timespec>);
        return stdgo._internal.syscall.Syscall_utimesnano.utimesNano(_path, _ts);
    }
    static public inline function rename(_from:String, _to:String):stdgo.Error {
        final _from = (_from : stdgo.GoString);
        final _to = (_to : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_rename.rename(_from, _to);
    }
    static public inline function truncate(_path:String, _length:haxe.Int64):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _length = (_length : stdgo.GoInt64);
        return stdgo._internal.syscall.Syscall_truncate.truncate(_path, _length);
    }
    static public inline function ftruncate(_fd:StdTypes.Int, _length:haxe.Int64):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _length = (_length : stdgo.GoInt64);
        return stdgo._internal.syscall.Syscall_ftruncate.ftruncate(_fd, _length);
    }
    static public inline function getcwd(_buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_getcwd.getcwd(_buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function chdir(_path:String):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_chdir.chdir(_path);
    }
    static public inline function fchdir(_fd:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_fchdir.fchdir(_fd);
    }
    static public inline function readlink(_path:String, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _path = (_path : stdgo.GoString);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_readlink.readlink(_path, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function link(_path:String, _link:String):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _link = (_link : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_link.link(_path, _link);
    }
    static public inline function symlink(_path:String, _link:String):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _link = (_link : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_symlink.symlink(_path, _link);
    }
    static public inline function fsync(_fd:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_fsync.fsync(_fd);
    }
    static public inline function read(_fd:StdTypes.Int, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_read.read(_fd, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function write(_fd:StdTypes.Int, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_write.write(_fd, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function pread(_fd:StdTypes.Int, _b:Array<std.UInt>, _offset:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _offset = (_offset : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.syscall.Syscall_pread.pread(_fd, _b, _offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function pwrite(_fd:StdTypes.Int, _b:Array<std.UInt>, _offset:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _offset = (_offset : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.syscall.Syscall_pwrite.pwrite(_fd, _b, _offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function seek(_fd:StdTypes.Int, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_seek.seek(_fd, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function dup(_fd:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_dup.dup(_fd);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function dup2(_fd:StdTypes.Int, _newfd:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _newfd = (_newfd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_dup2.dup2(_fd, _newfd);
    }
    static public inline function pipe(_fd:Array<StdTypes.Int>):stdgo.Error {
        final _fd = ([for (i in _fd) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.syscall.Syscall_pipe.pipe(_fd);
    }
    static public inline function socket(_proto:StdTypes.Int, _sotype:StdTypes.Int, _unused:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _proto = (_proto : stdgo.GoInt);
        final _sotype = (_sotype : stdgo.GoInt);
        final _unused = (_unused : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_socket.socket(_proto, _sotype, _unused);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function bind(_fd:StdTypes.Int, _sa:Sockaddr):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_bind.bind(_fd, _sa);
    }
    static public inline function stopIO(_fd:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_stopio.stopIO(_fd);
    }
    static public inline function listen(_fd:StdTypes.Int, _backlog:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _backlog = (_backlog : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_listen.listen(_fd, _backlog);
    }
    static public inline function accept(_fd:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, Sockaddr, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_accept.accept(_fd);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function connect(_fd:StdTypes.Int, _sa:Sockaddr):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_connect.connect(_fd, _sa);
    }
    static public inline function recvfrom(_fd:StdTypes.Int, _p:Array<std.UInt>, _flags:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, Sockaddr, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_recvfrom.recvfrom(_fd, _p, _flags);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function sendto(_fd:StdTypes.Int, _p:Array<std.UInt>, _flags:StdTypes.Int, _to:Sockaddr):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_sendto.sendto(_fd, _p, _flags, _to);
    }
    static public inline function recvmsg(_fd:StdTypes.Int, _p:Array<std.UInt>, _oob:Array<std.UInt>, _flags:StdTypes.Int):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, Sockaddr, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_recvmsg.recvmsg(_fd, _p, _oob, _flags);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public inline function sendmsgN(_fd:StdTypes.Int, _p:Array<std.UInt>, _oob:Array<std.UInt>, _to:Sockaddr, _flags:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_sendmsgn.sendmsgN(_fd, _p, _oob, _to, _flags);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function getsockoptInt(_fd:StdTypes.Int, _level:StdTypes.Int, _opt:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _level = (_level : stdgo.GoInt);
        final _opt = (_opt : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_getsockoptint.getsockoptInt(_fd, _level, _opt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function setsockoptInt(_fd:StdTypes.Int, _level:StdTypes.Int, _opt:StdTypes.Int, _value:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _level = (_level : stdgo.GoInt);
        final _opt = (_opt : stdgo.GoInt);
        final _value = (_value : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_setsockoptint.setsockoptInt(_fd, _level, _opt, _value);
    }
    static public inline function setReadDeadline(_fd:StdTypes.Int, _t:haxe.Int64):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _t = (_t : stdgo.GoInt64);
        return stdgo._internal.syscall.Syscall_setreaddeadline.setReadDeadline(_fd, _t);
    }
    static public inline function setWriteDeadline(_fd:StdTypes.Int, _t:haxe.Int64):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _t = (_t : stdgo.GoInt64);
        return stdgo._internal.syscall.Syscall_setwritedeadline.setWriteDeadline(_fd, _t);
    }
    static public inline function shutdown(_fd:StdTypes.Int, _how:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _how = (_how : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_shutdown.shutdown(_fd, _how);
    }
    static public inline function setNonblock(_fd:StdTypes.Int, _nonblocking:Bool):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_setnonblock.setNonblock(_fd, _nonblocking);
    }
    /**
        * StringByteSlice converts a string to a NUL-terminated []byte,
        * If s contains a NUL byte this function panics instead of
        * returning an error.
        * 
        * Deprecated: Use ByteSliceFromString instead.
    **/
    static public inline function stringByteSlice(_s:String):Array<std.UInt> {
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.syscall.Syscall_stringbyteslice.stringByteSlice(_s)) i];
    }
    /**
        * ByteSliceFromString returns a NUL-terminated slice of bytes
        * containing the text of s. If s contains a NUL byte at any
        * location, it returns (nil, EINVAL).
    **/
    static public inline function byteSliceFromString(_s:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.syscall.Syscall_byteslicefromstring.byteSliceFromString(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * StringBytePtr returns a pointer to a NUL-terminated array of bytes.
        * If s contains a NUL byte this function panics instead of returning
        * an error.
        * 
        * Deprecated: Use BytePtrFromString instead.
    **/
    static public inline function stringBytePtr(_s:String):stdgo.Pointer<std.UInt> {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_stringbyteptr.stringBytePtr(_s);
    }
    /**
        * BytePtrFromString returns a pointer to a NUL-terminated array of
        * bytes containing the text of s. If s contains a NUL byte at any
        * location, it returns (nil, EINVAL).
    **/
    static public inline function bytePtrFromString(_s:String):stdgo.Tuple<stdgo.Pointer<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.syscall.Syscall_byteptrfromstring.bytePtrFromString(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function getpagesize():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getpagesize.getpagesize();
    }
    static public inline function exit(_code:StdTypes.Int):Void {
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.syscall.Syscall_exit.exit(_code);
    }
    static public inline function syscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        final _trap = (_trap : stdgo.GoUIntptr);
        final _a1 = (_a1 : stdgo.GoUIntptr);
        final _a2 = (_a2 : stdgo.GoUIntptr);
        final _a3 = (_a3 : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.syscall.Syscall_syscall.syscall(_trap, _a1, _a2, _a3);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function syscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        final _trap = (_trap : stdgo.GoUIntptr);
        final _a1 = (_a1 : stdgo.GoUIntptr);
        final _a2 = (_a2 : stdgo.GoUIntptr);
        final _a3 = (_a3 : stdgo.GoUIntptr);
        final _a4 = (_a4 : stdgo.GoUIntptr);
        final _a5 = (_a5 : stdgo.GoUIntptr);
        final _a6 = (_a6 : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.syscall.Syscall_syscall6.syscall6(_trap, _a1, _a2, _a3, _a4, _a5, _a6);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function rawSyscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        final _trap = (_trap : stdgo.GoUIntptr);
        final _a1 = (_a1 : stdgo.GoUIntptr);
        final _a2 = (_a2 : stdgo.GoUIntptr);
        final _a3 = (_a3 : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.syscall.Syscall_rawsyscall.rawSyscall(_trap, _a1, _a2, _a3);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function rawSyscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        final _trap = (_trap : stdgo.GoUIntptr);
        final _a1 = (_a1 : stdgo.GoUIntptr);
        final _a2 = (_a2 : stdgo.GoUIntptr);
        final _a3 = (_a3 : stdgo.GoUIntptr);
        final _a4 = (_a4 : stdgo.GoUIntptr);
        final _a5 = (_a5 : stdgo.GoUIntptr);
        final _a6 = (_a6 : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.syscall.Syscall_rawsyscall6.rawSyscall6(_trap, _a1, _a2, _a3, _a4, _a5, _a6);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function sysctl(_key:String):stdgo.Tuple<String, stdgo.Error> {
        final _key = (_key : stdgo.GoString);
        return {
            final obj = stdgo._internal.syscall.Syscall_sysctl.sysctl(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function getwd():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_getwd.getwd();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function getuid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getuid.getuid();
    }
    static public inline function getgid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getgid.getgid();
    }
    static public inline function geteuid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_geteuid.geteuid();
    }
    static public inline function getegid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getegid.getegid();
    }
    static public inline function getgroups():stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_getgroups.getgroups();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function getpid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getpid.getpid();
    }
    static public inline function getppid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getppid.getppid();
    }
    static public inline function umask(_mask:StdTypes.Int):StdTypes.Int {
        final _mask = (_mask : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_umask.umask(_mask);
    }
    static public inline function gettimeofday(_tv:Timeval):stdgo.Error {
        final _tv = (_tv : stdgo.Ref<stdgo._internal.syscall.Syscall_timeval.Timeval>);
        return stdgo._internal.syscall.Syscall_gettimeofday.gettimeofday(_tv);
    }
    static public inline function kill(_pid:StdTypes.Int, _signum:Signal):stdgo.Error {
        final _pid = (_pid : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_kill.kill(_pid, _signum);
    }
    static public inline function sendfile(_outfd:StdTypes.Int, _infd:StdTypes.Int, _offset:stdgo.Pointer<haxe.Int64>, _count:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _outfd = (_outfd : stdgo.GoInt);
        final _infd = (_infd : stdgo.GoInt);
        final _count = (_count : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_sendfile.sendfile(_outfd, _infd, _offset, _count);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function startProcess(_argv0:String, _argv:Array<String>, _attr:ProcAttr):stdgo.Tuple.Tuple3<StdTypes.Int, stdgo.GoUIntptr, stdgo.Error> {
        final _argv0 = (_argv0 : stdgo.GoString);
        final _argv = ([for (i in _argv) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _attr = (_attr : stdgo.Ref<stdgo._internal.syscall.Syscall_procattr.ProcAttr>);
        return {
            final obj = stdgo._internal.syscall.Syscall_startprocess.startProcess(_argv0, _argv, _attr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function wait4(_pid:StdTypes.Int, _wstatus:stdgo.Pointer<WaitStatus>, _options:StdTypes.Int, _rusage:Rusage):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _pid = (_pid : stdgo.GoInt);
        final _options = (_options : stdgo.GoInt);
        final _rusage = (_rusage : stdgo.Ref<stdgo._internal.syscall.Syscall_rusage.Rusage>);
        return {
            final obj = stdgo._internal.syscall.Syscall_wait4.wait4(_pid, _wstatus, _options, _rusage);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * TimespecToNsec returns the time stored in ts as nanoseconds.
    **/
    static public inline function timespecToNsec(_ts:Timespec):haxe.Int64 {
        return stdgo._internal.syscall.Syscall_timespectonsec.timespecToNsec(_ts);
    }
    /**
        * NsecToTimespec converts a number of nanoseconds into a Timespec.
    **/
    static public inline function nsecToTimespec(_nsec:haxe.Int64):Timespec {
        final _nsec = (_nsec : stdgo.GoInt64);
        return stdgo._internal.syscall.Syscall_nsectotimespec.nsecToTimespec(_nsec);
    }
    /**
        * TimevalToNsec returns the time stored in tv as nanoseconds.
    **/
    static public inline function timevalToNsec(_tv:Timeval):haxe.Int64 {
        return stdgo._internal.syscall.Syscall_timevaltonsec.timevalToNsec(_tv);
    }
    /**
        * NsecToTimeval converts a number of nanoseconds into a Timeval.
    **/
    static public inline function nsecToTimeval(_nsec:haxe.Int64):Timeval {
        final _nsec = (_nsec : stdgo.GoInt64);
        return stdgo._internal.syscall.Syscall_nsectotimeval.nsecToTimeval(_nsec);
    }
}
