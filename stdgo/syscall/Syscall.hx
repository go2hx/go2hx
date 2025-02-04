package stdgo.syscall;
final aF_UNSPEC : haxe.UInt64 = stdgo._internal.syscall.Syscall_aF_UNSPEC.aF_UNSPEC;
final aF_UNIX = stdgo._internal.syscall.Syscall_aF_UNIX.aF_UNIX;
final aF_INET = stdgo._internal.syscall.Syscall_aF_INET.aF_INET;
final aF_INET6 = stdgo._internal.syscall.Syscall_aF_INET6.aF_INET6;
final sOCK_STREAM : haxe.UInt64 = stdgo._internal.syscall.Syscall_sOCK_STREAM.sOCK_STREAM;
final sOCK_DGRAM = stdgo._internal.syscall.Syscall_sOCK_DGRAM.sOCK_DGRAM;
final sOCK_RAW = stdgo._internal.syscall.Syscall_sOCK_RAW.sOCK_RAW;
final sOCK_SEQPACKET = stdgo._internal.syscall.Syscall_sOCK_SEQPACKET.sOCK_SEQPACKET;
final iPPROTO_IP : haxe.UInt64 = stdgo._internal.syscall.Syscall_iPPROTO_IP.iPPROTO_IP;
final iPPROTO_IPV4 : haxe.UInt64 = stdgo._internal.syscall.Syscall_iPPROTO_IPV4.iPPROTO_IPV4;
final iPPROTO_IPV6 : haxe.UInt64 = stdgo._internal.syscall.Syscall_iPPROTO_IPV6.iPPROTO_IPV6;
final iPPROTO_TCP : haxe.UInt64 = stdgo._internal.syscall.Syscall_iPPROTO_TCP.iPPROTO_TCP;
final iPPROTO_UDP : haxe.UInt64 = stdgo._internal.syscall.Syscall_iPPROTO_UDP.iPPROTO_UDP;
final iPV6_V6ONLY = stdgo._internal.syscall.Syscall_iPV6_V6ONLY.iPV6_V6ONLY;
final sOMAXCONN = stdgo._internal.syscall.Syscall_sOMAXCONN.sOMAXCONN;
final sO_ERROR = stdgo._internal.syscall.Syscall_sO_ERROR.sO_ERROR;
final f_DUPFD_CLOEXEC = stdgo._internal.syscall.Syscall_f_DUPFD_CLOEXEC.f_DUPFD_CLOEXEC;
final sYS_FCNTL : haxe.UInt64 = stdgo._internal.syscall.Syscall_sYS_FCNTL.sYS_FCNTL;
final pathMax : haxe.UInt64 = stdgo._internal.syscall.Syscall_pathMax.pathMax;
final sIGCHLD = stdgo._internal.syscall.Syscall_sIGCHLD.sIGCHLD;
final sIGINT = stdgo._internal.syscall.Syscall_sIGINT.sIGINT;
final sIGKILL = stdgo._internal.syscall.Syscall_sIGKILL.sIGKILL;
final sIGTRAP = stdgo._internal.syscall.Syscall_sIGTRAP.sIGTRAP;
final sIGQUIT = stdgo._internal.syscall.Syscall_sIGQUIT.sIGQUIT;
final sIGTERM = stdgo._internal.syscall.Syscall_sIGTERM.sIGTERM;
final stdin : haxe.UInt64 = stdgo._internal.syscall.Syscall_stdin.stdin;
final stdout : haxe.UInt64 = stdgo._internal.syscall.Syscall_stdout.stdout;
final stderr : haxe.UInt64 = stdgo._internal.syscall.Syscall_stderr.stderr;
final o_RDONLY : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_RDONLY.o_RDONLY;
final o_WRONLY : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_WRONLY.o_WRONLY;
final o_RDWR : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_RDWR.o_RDWR;
final o_CREAT : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_CREAT.o_CREAT;
final o_CREATE : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_CREATE.o_CREATE;
final o_TRUNC : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_TRUNC.o_TRUNC;
final o_APPEND : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_APPEND.o_APPEND;
final o_EXCL : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_EXCL.o_EXCL;
final o_SYNC : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_SYNC.o_SYNC;
final o_CLOEXEC : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_CLOEXEC.o_CLOEXEC;
final f_DUPFD : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_DUPFD.f_DUPFD;
final f_GETFD : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_GETFD.f_GETFD;
final f_SETFD : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_SETFD.f_SETFD;
final f_GETFL : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_GETFL.f_GETFL;
final f_SETFL : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_SETFL.f_SETFL;
final f_GETOWN : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_GETOWN.f_GETOWN;
final f_SETOWN : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_SETOWN.f_SETOWN;
final f_GETLK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_GETLK.f_GETLK;
final f_SETLK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_SETLK.f_SETLK;
final f_SETLKW : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_SETLKW.f_SETLKW;
final f_RGETLK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_RGETLK.f_RGETLK;
final f_RSETLK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_RSETLK.f_RSETLK;
final f_CNVT : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_CNVT.f_CNVT;
final f_RSETLKW : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_RSETLKW.f_RSETLKW;
final f_RDLCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_RDLCK.f_RDLCK;
final f_WRLCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_WRLCK.f_WRLCK;
final f_UNLCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_UNLCK.f_UNLCK;
final f_UNLKSYS : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_UNLKSYS.f_UNLKSYS;
final s_IFMT : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFMT.s_IFMT;
final s_IFSHM_SYSV : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFSHM_SYSV.s_IFSHM_SYSV;
final s_IFSEMA : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFSEMA.s_IFSEMA;
final s_IFCOND : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFCOND.s_IFCOND;
final s_IFMUTEX : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFMUTEX.s_IFMUTEX;
final s_IFSHM : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFSHM.s_IFSHM;
final s_IFBOUNDSOCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFBOUNDSOCK.s_IFBOUNDSOCK;
final s_IFSOCKADDR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFSOCKADDR.s_IFSOCKADDR;
final s_IFDSOCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFDSOCK.s_IFDSOCK;
final s_IFSOCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFSOCK.s_IFSOCK;
final s_IFLNK : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFLNK.s_IFLNK;
final s_IFREG : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFREG.s_IFREG;
final s_IFBLK : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFBLK.s_IFBLK;
final s_IFDIR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFDIR.s_IFDIR;
final s_IFCHR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFCHR.s_IFCHR;
final s_IFIFO : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFIFO.s_IFIFO;
final s_UNSUP : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_UNSUP.s_UNSUP;
final s_ISUID : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ISUID.s_ISUID;
final s_ISGID : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ISGID.s_ISGID;
final s_ISVTX : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ISVTX.s_ISVTX;
final s_IREAD : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IREAD.s_IREAD;
final s_IWRITE : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IWRITE.s_IWRITE;
final s_IEXEC : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IEXEC.s_IEXEC;
final s_IRWXU : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IRWXU.s_IRWXU;
final s_IRUSR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IRUSR.s_IRUSR;
final s_IWUSR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IWUSR.s_IWUSR;
final s_IXUSR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IXUSR.s_IXUSR;
final s_IRWXG : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IRWXG.s_IRWXG;
final s_IRGRP : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IRGRP.s_IRGRP;
final s_IWGRP : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IWGRP.s_IWGRP;
final s_IXGRP : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IXGRP.s_IXGRP;
final s_IRWXO : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IRWXO.s_IRWXO;
final s_IROTH : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IROTH.s_IROTH;
final s_IWOTH : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IWOTH.s_IWOTH;
final s_IXOTH : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IXOTH.s_IXOTH;
var forkLock(get, set) : stdgo._internal.sync.Sync_rwmutex.RWMutex;
private function get_forkLock():stdgo._internal.sync.Sync_rwmutex.RWMutex return stdgo._internal.syscall.Syscall_forkLock.forkLock;
private function set_forkLock(v:stdgo._internal.sync.Sync_rwmutex.RWMutex):stdgo._internal.sync.Sync_rwmutex.RWMutex {
        stdgo._internal.syscall.Syscall_forkLock.forkLock = v;
        return v;
    }
final implementsGetwd : Bool = stdgo._internal.syscall.Syscall_implementsGetwd.implementsGetwd;
final ePERM : Errno = stdgo._internal.syscall.Syscall_ePERM.ePERM;
final eNOENT : Errno = stdgo._internal.syscall.Syscall_eNOENT.eNOENT;
final eSRCH : Errno = stdgo._internal.syscall.Syscall_eSRCH.eSRCH;
final eINTR : Errno = stdgo._internal.syscall.Syscall_eINTR.eINTR;
final eIO : Errno = stdgo._internal.syscall.Syscall_eIO.eIO;
final eNXIO : Errno = stdgo._internal.syscall.Syscall_eNXIO.eNXIO;
final e2BIG : Errno = stdgo._internal.syscall.Syscall_e2BIG.e2BIG;
final eNOEXEC : Errno = stdgo._internal.syscall.Syscall_eNOEXEC.eNOEXEC;
final eBADF : Errno = stdgo._internal.syscall.Syscall_eBADF.eBADF;
final eCHILD : Errno = stdgo._internal.syscall.Syscall_eCHILD.eCHILD;
final eAGAIN : Errno = stdgo._internal.syscall.Syscall_eAGAIN.eAGAIN;
final eNOMEM : Errno = stdgo._internal.syscall.Syscall_eNOMEM.eNOMEM;
final eACCES : Errno = stdgo._internal.syscall.Syscall_eACCES.eACCES;
final eFAULT : Errno = stdgo._internal.syscall.Syscall_eFAULT.eFAULT;
final eBUSY : Errno = stdgo._internal.syscall.Syscall_eBUSY.eBUSY;
final eEXIST : Errno = stdgo._internal.syscall.Syscall_eEXIST.eEXIST;
final eXDEV : Errno = stdgo._internal.syscall.Syscall_eXDEV.eXDEV;
final eNODEV : Errno = stdgo._internal.syscall.Syscall_eNODEV.eNODEV;
final eNOTDIR : Errno = stdgo._internal.syscall.Syscall_eNOTDIR.eNOTDIR;
final eISDIR : Errno = stdgo._internal.syscall.Syscall_eISDIR.eISDIR;
final eINVAL : Errno = stdgo._internal.syscall.Syscall_eINVAL.eINVAL;
final eNFILE : Errno = stdgo._internal.syscall.Syscall_eNFILE.eNFILE;
final eMFILE : Errno = stdgo._internal.syscall.Syscall_eMFILE.eMFILE;
final eNOTTY : Errno = stdgo._internal.syscall.Syscall_eNOTTY.eNOTTY;
final eFBIG : Errno = stdgo._internal.syscall.Syscall_eFBIG.eFBIG;
final eNOSPC : Errno = stdgo._internal.syscall.Syscall_eNOSPC.eNOSPC;
final eSPIPE : Errno = stdgo._internal.syscall.Syscall_eSPIPE.eSPIPE;
final eROFS : Errno = stdgo._internal.syscall.Syscall_eROFS.eROFS;
final eMLINK : Errno = stdgo._internal.syscall.Syscall_eMLINK.eMLINK;
final ePIPE : Errno = stdgo._internal.syscall.Syscall_ePIPE.ePIPE;
final eNAMETOOLONG : Errno = stdgo._internal.syscall.Syscall_eNAMETOOLONG.eNAMETOOLONG;
final eNOSYS : Errno = stdgo._internal.syscall.Syscall_eNOSYS.eNOSYS;
final eDQUOT : Errno = stdgo._internal.syscall.Syscall_eDQUOT.eDQUOT;
final eDOM : Errno = stdgo._internal.syscall.Syscall_eDOM.eDOM;
final eRANGE : Errno = stdgo._internal.syscall.Syscall_eRANGE.eRANGE;
final eDEADLK : Errno = stdgo._internal.syscall.Syscall_eDEADLK.eDEADLK;
final eNOLCK : Errno = stdgo._internal.syscall.Syscall_eNOLCK.eNOLCK;
final eNOTEMPTY : Errno = stdgo._internal.syscall.Syscall_eNOTEMPTY.eNOTEMPTY;
final eLOOP : Errno = stdgo._internal.syscall.Syscall_eLOOP.eLOOP;
final eNOMSG : Errno = stdgo._internal.syscall.Syscall_eNOMSG.eNOMSG;
final eIDRM : Errno = stdgo._internal.syscall.Syscall_eIDRM.eIDRM;
final eCHRNG : Errno = stdgo._internal.syscall.Syscall_eCHRNG.eCHRNG;
final eL2NSYNC : Errno = stdgo._internal.syscall.Syscall_eL2NSYNC.eL2NSYNC;
final eL3HLT : Errno = stdgo._internal.syscall.Syscall_eL3HLT.eL3HLT;
final eL3RST : Errno = stdgo._internal.syscall.Syscall_eL3RST.eL3RST;
final eLNRNG : Errno = stdgo._internal.syscall.Syscall_eLNRNG.eLNRNG;
final eUNATCH : Errno = stdgo._internal.syscall.Syscall_eUNATCH.eUNATCH;
final eNOCSI : Errno = stdgo._internal.syscall.Syscall_eNOCSI.eNOCSI;
final eL2HLT : Errno = stdgo._internal.syscall.Syscall_eL2HLT.eL2HLT;
final eBADE : Errno = stdgo._internal.syscall.Syscall_eBADE.eBADE;
final eBADR : Errno = stdgo._internal.syscall.Syscall_eBADR.eBADR;
final eXFULL : Errno = stdgo._internal.syscall.Syscall_eXFULL.eXFULL;
final eNOANO : Errno = stdgo._internal.syscall.Syscall_eNOANO.eNOANO;
final eBADRQC : Errno = stdgo._internal.syscall.Syscall_eBADRQC.eBADRQC;
final eBADSLT : Errno = stdgo._internal.syscall.Syscall_eBADSLT.eBADSLT;
final eDEADLOCK : Errno = stdgo._internal.syscall.Syscall_eDEADLOCK.eDEADLOCK;
final eBFONT : Errno = stdgo._internal.syscall.Syscall_eBFONT.eBFONT;
final eNOSTR : Errno = stdgo._internal.syscall.Syscall_eNOSTR.eNOSTR;
final eNODATA : Errno = stdgo._internal.syscall.Syscall_eNODATA.eNODATA;
final eTIME : Errno = stdgo._internal.syscall.Syscall_eTIME.eTIME;
final eNOSR : Errno = stdgo._internal.syscall.Syscall_eNOSR.eNOSR;
final eNONET : Errno = stdgo._internal.syscall.Syscall_eNONET.eNONET;
final eNOPKG : Errno = stdgo._internal.syscall.Syscall_eNOPKG.eNOPKG;
final eREMOTE : Errno = stdgo._internal.syscall.Syscall_eREMOTE.eREMOTE;
final eNOLINK : Errno = stdgo._internal.syscall.Syscall_eNOLINK.eNOLINK;
final eADV : Errno = stdgo._internal.syscall.Syscall_eADV.eADV;
final eSRMNT : Errno = stdgo._internal.syscall.Syscall_eSRMNT.eSRMNT;
final eCOMM : Errno = stdgo._internal.syscall.Syscall_eCOMM.eCOMM;
final ePROTO : Errno = stdgo._internal.syscall.Syscall_ePROTO.ePROTO;
final eMULTIHOP : Errno = stdgo._internal.syscall.Syscall_eMULTIHOP.eMULTIHOP;
final eDOTDOT : Errno = stdgo._internal.syscall.Syscall_eDOTDOT.eDOTDOT;
final eBADMSG : Errno = stdgo._internal.syscall.Syscall_eBADMSG.eBADMSG;
final eOVERFLOW : Errno = stdgo._internal.syscall.Syscall_eOVERFLOW.eOVERFLOW;
final eNOTUNIQ : Errno = stdgo._internal.syscall.Syscall_eNOTUNIQ.eNOTUNIQ;
final eBADFD : Errno = stdgo._internal.syscall.Syscall_eBADFD.eBADFD;
final eREMCHG : Errno = stdgo._internal.syscall.Syscall_eREMCHG.eREMCHG;
final eLIBACC : Errno = stdgo._internal.syscall.Syscall_eLIBACC.eLIBACC;
final eLIBBAD : Errno = stdgo._internal.syscall.Syscall_eLIBBAD.eLIBBAD;
final eLIBSCN : Errno = stdgo._internal.syscall.Syscall_eLIBSCN.eLIBSCN;
final eLIBMAX : Errno = stdgo._internal.syscall.Syscall_eLIBMAX.eLIBMAX;
final eLIBEXEC : Errno = stdgo._internal.syscall.Syscall_eLIBEXEC.eLIBEXEC;
final eILSEQ : Errno = stdgo._internal.syscall.Syscall_eILSEQ.eILSEQ;
final eUSERS : Errno = stdgo._internal.syscall.Syscall_eUSERS.eUSERS;
final eNOTSOCK : Errno = stdgo._internal.syscall.Syscall_eNOTSOCK.eNOTSOCK;
final eDESTADDRREQ : Errno = stdgo._internal.syscall.Syscall_eDESTADDRREQ.eDESTADDRREQ;
final eMSGSIZE : Errno = stdgo._internal.syscall.Syscall_eMSGSIZE.eMSGSIZE;
final ePROTOTYPE : Errno = stdgo._internal.syscall.Syscall_ePROTOTYPE.ePROTOTYPE;
final eNOPROTOOPT : Errno = stdgo._internal.syscall.Syscall_eNOPROTOOPT.eNOPROTOOPT;
final ePROTONOSUPPORT : Errno = stdgo._internal.syscall.Syscall_ePROTONOSUPPORT.ePROTONOSUPPORT;
final eSOCKTNOSUPPORT : Errno = stdgo._internal.syscall.Syscall_eSOCKTNOSUPPORT.eSOCKTNOSUPPORT;
final eOPNOTSUPP : Errno = stdgo._internal.syscall.Syscall_eOPNOTSUPP.eOPNOTSUPP;
final ePFNOSUPPORT : Errno = stdgo._internal.syscall.Syscall_ePFNOSUPPORT.ePFNOSUPPORT;
final eAFNOSUPPORT : Errno = stdgo._internal.syscall.Syscall_eAFNOSUPPORT.eAFNOSUPPORT;
final eADDRINUSE : Errno = stdgo._internal.syscall.Syscall_eADDRINUSE.eADDRINUSE;
final eADDRNOTAVAIL : Errno = stdgo._internal.syscall.Syscall_eADDRNOTAVAIL.eADDRNOTAVAIL;
final eNETDOWN : Errno = stdgo._internal.syscall.Syscall_eNETDOWN.eNETDOWN;
final eNETUNREACH : Errno = stdgo._internal.syscall.Syscall_eNETUNREACH.eNETUNREACH;
final eNETRESET : Errno = stdgo._internal.syscall.Syscall_eNETRESET.eNETRESET;
final eCONNABORTED : Errno = stdgo._internal.syscall.Syscall_eCONNABORTED.eCONNABORTED;
final eCONNRESET : Errno = stdgo._internal.syscall.Syscall_eCONNRESET.eCONNRESET;
final eNOBUFS : Errno = stdgo._internal.syscall.Syscall_eNOBUFS.eNOBUFS;
final eISCONN : Errno = stdgo._internal.syscall.Syscall_eISCONN.eISCONN;
final eNOTCONN : Errno = stdgo._internal.syscall.Syscall_eNOTCONN.eNOTCONN;
final eSHUTDOWN : Errno = stdgo._internal.syscall.Syscall_eSHUTDOWN.eSHUTDOWN;
final eTOOMANYREFS : Errno = stdgo._internal.syscall.Syscall_eTOOMANYREFS.eTOOMANYREFS;
final eTIMEDOUT : Errno = stdgo._internal.syscall.Syscall_eTIMEDOUT.eTIMEDOUT;
final eCONNREFUSED : Errno = stdgo._internal.syscall.Syscall_eCONNREFUSED.eCONNREFUSED;
final eHOSTDOWN : Errno = stdgo._internal.syscall.Syscall_eHOSTDOWN.eHOSTDOWN;
final eHOSTUNREACH : Errno = stdgo._internal.syscall.Syscall_eHOSTUNREACH.eHOSTUNREACH;
final eALREADY : Errno = stdgo._internal.syscall.Syscall_eALREADY.eALREADY;
final eINPROGRESS : Errno = stdgo._internal.syscall.Syscall_eINPROGRESS.eINPROGRESS;
final eSTALE : Errno = stdgo._internal.syscall.Syscall_eSTALE.eSTALE;
final eNOTSUP : Errno = stdgo._internal.syscall.Syscall_eNOTSUP.eNOTSUP;
final eNOMEDIUM : Errno = stdgo._internal.syscall.Syscall_eNOMEDIUM.eNOMEDIUM;
final eCANCELED : Errno = stdgo._internal.syscall.Syscall_eCANCELED.eCANCELED;
final eLBIN : Errno = stdgo._internal.syscall.Syscall_eLBIN.eLBIN;
final eFTYPE : Errno = stdgo._internal.syscall.Syscall_eFTYPE.eFTYPE;
final eNMFILE : Errno = stdgo._internal.syscall.Syscall_eNMFILE.eNMFILE;
final ePROCLIM : Errno = stdgo._internal.syscall.Syscall_ePROCLIM.ePROCLIM;
final eNOSHARE : Errno = stdgo._internal.syscall.Syscall_eNOSHARE.eNOSHARE;
final eCASECLASH : Errno = stdgo._internal.syscall.Syscall_eCASECLASH.eCASECLASH;
final eWOULDBLOCK : Errno = stdgo._internal.syscall.Syscall_eWOULDBLOCK.eWOULDBLOCK;
class RawConn_static_extension {
    static public function write(t:stdgo._internal.syscall.Syscall_rawconn.RawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _f = _f;
        return stdgo._internal.syscall.Syscall_RawConn_static_extension.RawConn_static_extension.write(t, _f);
    }
    static public function read(t:stdgo._internal.syscall.Syscall_rawconn.RawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _f = _f;
        return stdgo._internal.syscall.Syscall_RawConn_static_extension.RawConn_static_extension.read(t, _f);
    }
    static public function control(t:stdgo._internal.syscall.Syscall_rawconn.RawConn, _f:stdgo.GoUIntptr -> Void):stdgo.Error {
        final _f = _f;
        return stdgo._internal.syscall.Syscall_RawConn_static_extension.RawConn_static_extension.control(t, _f);
    }
}
typedef RawConn = stdgo._internal.syscall.Syscall_RawConn.RawConn;
class Conn_static_extension {
    static public function syscallConn(t:stdgo._internal.syscall.Syscall_conn.Conn):stdgo.Tuple<RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_Conn_static_extension.Conn_static_extension.syscallConn(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Conn = stdgo._internal.syscall.Syscall_Conn.Conn;
@:structInit @:using(stdgo.syscall.Syscall.T_jsFile_static_extension) abstract T_jsFile(stdgo._internal.syscall.Syscall_T_jsFile.T_jsFile) from stdgo._internal.syscall.Syscall_T_jsFile.T_jsFile to stdgo._internal.syscall.Syscall_T_jsFile.T_jsFile {
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
    public function new(?_path:String, ?_entries:Array<String>, ?_dirIdx:StdTypes.Int, ?_pos:haxe.Int64, ?_seeked:Bool) this = new stdgo._internal.syscall.Syscall_T_jsFile.T_jsFile((_path : stdgo.GoString), ([for (i in _entries) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_dirIdx : stdgo.GoInt), (_pos : stdgo.GoInt64), _seeked);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.SockaddrInet4_static_extension) abstract SockaddrInet4(stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4) from stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4 to stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4 {
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
    public function new(?port:StdTypes.Int, ?addr:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4((port : stdgo.GoInt), ([for (i in addr) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.SockaddrInet6_static_extension) abstract SockaddrInet6(stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6) from stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6 to stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6 {
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
    public function new(?port:StdTypes.Int, ?zoneId:std.UInt, ?addr:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6((port : stdgo.GoInt), (zoneId : stdgo.GoUInt32), ([for (i in addr) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.SockaddrUnix_static_extension) abstract SockaddrUnix(stdgo._internal.syscall.Syscall_SockaddrUnix.SockaddrUnix) from stdgo._internal.syscall.Syscall_SockaddrUnix.SockaddrUnix to stdgo._internal.syscall.Syscall_SockaddrUnix.SockaddrUnix {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?name:String) this = new stdgo._internal.syscall.Syscall_SockaddrUnix.SockaddrUnix((name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.Dirent_static_extension) abstract Dirent(stdgo._internal.syscall.Syscall_Dirent.Dirent) from stdgo._internal.syscall.Syscall_Dirent.Dirent to stdgo._internal.syscall.Syscall_Dirent.Dirent {
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
    public function new(?reclen:std.UInt, ?name:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.syscall.Syscall_Dirent.Dirent((reclen : stdgo.GoUInt16), ([for (i in name) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.Stat_t_static_extension) abstract Stat_t(stdgo._internal.syscall.Syscall_Stat_t.Stat_t) from stdgo._internal.syscall.Syscall_Stat_t.Stat_t to stdgo._internal.syscall.Syscall_Stat_t.Stat_t {
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
    public function new(?dev:haxe.Int64, ?ino:haxe.UInt64, ?mode:std.UInt, ?nlink:std.UInt, ?uid:std.UInt, ?gid:std.UInt, ?rdev:haxe.Int64, ?size:haxe.Int64, ?blksize:StdTypes.Int, ?blocks:StdTypes.Int, ?atime:haxe.Int64, ?atimeNsec:haxe.Int64, ?mtime:haxe.Int64, ?mtimeNsec:haxe.Int64, ?ctime:haxe.Int64, ?ctimeNsec:haxe.Int64) this = new stdgo._internal.syscall.Syscall_Stat_t.Stat_t(
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
@:structInit @:using(stdgo.syscall.Syscall.Rusage_static_extension) abstract Rusage(stdgo._internal.syscall.Syscall_Rusage.Rusage) from stdgo._internal.syscall.Syscall_Rusage.Rusage to stdgo._internal.syscall.Syscall_Rusage.Rusage {
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
    public function new(?utime:Timeval, ?stime:Timeval) this = new stdgo._internal.syscall.Syscall_Rusage.Rusage(utime, stime);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.ProcAttr_static_extension) abstract ProcAttr(stdgo._internal.syscall.Syscall_ProcAttr.ProcAttr) from stdgo._internal.syscall.Syscall_ProcAttr.ProcAttr to stdgo._internal.syscall.Syscall_ProcAttr.ProcAttr {
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
    public function new(?dir:String, ?env:Array<String>, ?files:Array<stdgo.GoUIntptr>, ?sys:SysProcAttr) this = new stdgo._internal.syscall.Syscall_ProcAttr.ProcAttr((dir : stdgo.GoString), ([for (i in env) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in files) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>), (sys : stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.SysProcAttr_static_extension) abstract SysProcAttr(stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr) from stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr to stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr {
    public function new() this = new stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.Iovec_static_extension) abstract Iovec(stdgo._internal.syscall.Syscall_Iovec.Iovec) from stdgo._internal.syscall.Syscall_Iovec.Iovec to stdgo._internal.syscall.Syscall_Iovec.Iovec {
    public function new() this = new stdgo._internal.syscall.Syscall_Iovec.Iovec();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.Timespec_static_extension) abstract Timespec(stdgo._internal.syscall.Syscall_Timespec.Timespec) from stdgo._internal.syscall.Syscall_Timespec.Timespec to stdgo._internal.syscall.Syscall_Timespec.Timespec {
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
    public function new(?sec:haxe.Int64, ?nsec:haxe.Int64) this = new stdgo._internal.syscall.Syscall_Timespec.Timespec((sec : stdgo.GoInt64), (nsec : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.Timeval_static_extension) abstract Timeval(stdgo._internal.syscall.Syscall_Timeval.Timeval) from stdgo._internal.syscall.Syscall_Timeval.Timeval to stdgo._internal.syscall.Syscall_Timeval.Timeval {
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
    public function new(?sec:haxe.Int64, ?usec:haxe.Int64) this = new stdgo._internal.syscall.Syscall_Timeval.Timeval((sec : stdgo.GoInt64), (usec : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Sockaddr = stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr;
typedef Errno = stdgo._internal.syscall.Syscall_Errno.Errno;
typedef Signal = stdgo._internal.syscall.Syscall_Signal.Signal;
typedef WaitStatus = stdgo._internal.syscall.Syscall_WaitStatus.WaitStatus;
typedef T_jsFilePointer = stdgo._internal.syscall.Syscall_T_jsFilePointer.T_jsFilePointer;
class T_jsFile_static_extension {

}
typedef SockaddrInet4Pointer = stdgo._internal.syscall.Syscall_SockaddrInet4Pointer.SockaddrInet4Pointer;
class SockaddrInet4_static_extension {

}
typedef SockaddrInet6Pointer = stdgo._internal.syscall.Syscall_SockaddrInet6Pointer.SockaddrInet6Pointer;
class SockaddrInet6_static_extension {

}
typedef SockaddrUnixPointer = stdgo._internal.syscall.Syscall_SockaddrUnixPointer.SockaddrUnixPointer;
class SockaddrUnix_static_extension {

}
typedef DirentPointer = stdgo._internal.syscall.Syscall_DirentPointer.DirentPointer;
class Dirent_static_extension {

}
typedef Stat_tPointer = stdgo._internal.syscall.Syscall_Stat_tPointer.Stat_tPointer;
class Stat_t_static_extension {

}
typedef RusagePointer = stdgo._internal.syscall.Syscall_RusagePointer.RusagePointer;
class Rusage_static_extension {

}
typedef ProcAttrPointer = stdgo._internal.syscall.Syscall_ProcAttrPointer.ProcAttrPointer;
class ProcAttr_static_extension {

}
typedef SysProcAttrPointer = stdgo._internal.syscall.Syscall_SysProcAttrPointer.SysProcAttrPointer;
class SysProcAttr_static_extension {

}
typedef IovecPointer = stdgo._internal.syscall.Syscall_IovecPointer.IovecPointer;
class Iovec_static_extension {

}
typedef TimespecPointer = stdgo._internal.syscall.Syscall_TimespecPointer.TimespecPointer;
class Timespec_static_extension {
    static public function nano(_ts:Timespec):haxe.Int64 {
        final _ts = (_ts : stdgo.Ref<stdgo._internal.syscall.Syscall_timespec.Timespec>);
        return stdgo._internal.syscall.Syscall_Timespec_static_extension.Timespec_static_extension.nano(_ts);
    }
    static public function unix(_ts:Timespec):stdgo.Tuple<haxe.Int64, haxe.Int64> {
        final _ts = (_ts : stdgo.Ref<stdgo._internal.syscall.Syscall_timespec.Timespec>);
        return {
            final obj = stdgo._internal.syscall.Syscall_Timespec_static_extension.Timespec_static_extension.unix(_ts);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef TimevalPointer = stdgo._internal.syscall.Syscall_TimevalPointer.TimevalPointer;
class Timeval_static_extension {
    static public function nano(_tv:Timeval):haxe.Int64 {
        final _tv = (_tv : stdgo.Ref<stdgo._internal.syscall.Syscall_timeval.Timeval>);
        return stdgo._internal.syscall.Syscall_Timeval_static_extension.Timeval_static_extension.nano(_tv);
    }
    static public function unix(_tv:Timeval):stdgo.Tuple<haxe.Int64, haxe.Int64> {
        final _tv = (_tv : stdgo.Ref<stdgo._internal.syscall.Syscall_timeval.Timeval>);
        return {
            final obj = stdgo._internal.syscall.Syscall_Timeval_static_extension.Timeval_static_extension.unix(_tv);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef SockaddrPointer = stdgo._internal.syscall.Syscall_SockaddrPointer.SockaddrPointer;
class Sockaddr_static_extension {

}
typedef ErrnoPointer = stdgo._internal.syscall.Syscall_ErrnoPointer.ErrnoPointer;
class Errno_static_extension {
    static public function timeout(_e:Errno):Bool {
        return stdgo._internal.syscall.Syscall_Errno_static_extension.Errno_static_extension.timeout(_e);
    }
    static public function temporary(_e:Errno):Bool {
        return stdgo._internal.syscall.Syscall_Errno_static_extension.Errno_static_extension.temporary(_e);
    }
    static public function is_(_e:Errno, _target:stdgo.Error):Bool {
        final _target = (_target : stdgo.Error);
        return stdgo._internal.syscall.Syscall_Errno_static_extension.Errno_static_extension.is_(_e, _target);
    }
    static public function error(_e:Errno):String {
        return stdgo._internal.syscall.Syscall_Errno_static_extension.Errno_static_extension.error(_e);
    }
}
typedef SignalPointer = stdgo._internal.syscall.Syscall_SignalPointer.SignalPointer;
class Signal_static_extension {
    static public function string(_s:Signal):String {
        return stdgo._internal.syscall.Syscall_Signal_static_extension.Signal_static_extension.string(_s);
    }
    static public function signal(_s:Signal):Void {
        stdgo._internal.syscall.Syscall_Signal_static_extension.Signal_static_extension.signal(_s);
    }
}
typedef WaitStatusPointer = stdgo._internal.syscall.Syscall_WaitStatusPointer.WaitStatusPointer;
class WaitStatus_static_extension {
    static public function trapCause(_w:WaitStatus):StdTypes.Int {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.trapCause(_w);
    }
    static public function stopSignal(_w:WaitStatus):Signal {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.stopSignal(_w);
    }
    static public function continued(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.continued(_w);
    }
    static public function stopped(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.stopped(_w);
    }
    static public function coreDump(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.coreDump(_w);
    }
    static public function signal(_w:WaitStatus):Signal {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.signal(_w);
    }
    static public function signaled(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.signaled(_w);
    }
    static public function exitStatus(_w:WaitStatus):StdTypes.Int {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.exitStatus(_w);
    }
    static public function exited(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.exited(_w);
    }
}
/**
    Package syscall contains an interface to the low-level operating system
    primitives. The details vary depending on the underlying system, and
    by default, godoc will display the syscall documentation for the current
    system. If you want godoc to display syscall documentation for another
    system, set $GOOS and $GOARCH to the desired system. For example, if
    you want to view documentation for freebsd/arm on linux/amd64, set $GOOS
    to freebsd and $GOARCH to arm.
    The primary use of syscall is inside other packages that provide a more
    portable interface to the system, such as "os", "time" and "net".  Use
    those packages rather than this one if you can.
    For details of the functions and data types in this package consult
    the manuals for the appropriate operating system.
    These calls return err == nil to indicate success; otherwise
    err is an operating system error describing the failure.
    On most systems, that error has type syscall.Errno.
    
    Deprecated: this package is locked down. Callers should use the
    corresponding package in the golang.org/x/sys repository instead.
    That is also where updates required by new systems or versions
    should be applied. See https://golang.org/s/go1.4-syscall for more
    information.
**/
class Syscall {
    /**
        ParseDirent parses up to max directory entries in buf,
        appending the names to names. It returns the number of
        bytes consumed from buf, the number of entries added
        to names, and the new names slice.
    **/
    static public inline function parseDirent(_buf:Array<std.UInt>, _max:StdTypes.Int, _names:Array<String>):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, Array<String>> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _max = (_max : stdgo.GoInt);
        final _names = ([for (i in _names) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.syscall.Syscall_parseDirent.parseDirent(_buf, _max, _names);
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
        stdgo._internal.syscall.Syscall_closeOnExec.closeOnExec(_fd);
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
            final obj = stdgo._internal.syscall.Syscall_readDirent.readDirent(_fd, _buf);
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
        return stdgo._internal.syscall.Syscall_utimesNano.utimesNano(_path, _ts);
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
        return stdgo._internal.syscall.Syscall_stopIO.stopIO(_fd);
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
            final obj = stdgo._internal.syscall.Syscall_sendmsgN.sendmsgN(_fd, _p, _oob, _to, _flags);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function getsockoptInt(_fd:StdTypes.Int, _level:StdTypes.Int, _opt:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _level = (_level : stdgo.GoInt);
        final _opt = (_opt : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_getsockoptInt.getsockoptInt(_fd, _level, _opt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function setsockoptInt(_fd:StdTypes.Int, _level:StdTypes.Int, _opt:StdTypes.Int, _value:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _level = (_level : stdgo.GoInt);
        final _opt = (_opt : stdgo.GoInt);
        final _value = (_value : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_setsockoptInt.setsockoptInt(_fd, _level, _opt, _value);
    }
    static public inline function setReadDeadline(_fd:StdTypes.Int, _t:haxe.Int64):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _t = (_t : stdgo.GoInt64);
        return stdgo._internal.syscall.Syscall_setReadDeadline.setReadDeadline(_fd, _t);
    }
    static public inline function setWriteDeadline(_fd:StdTypes.Int, _t:haxe.Int64):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _t = (_t : stdgo.GoInt64);
        return stdgo._internal.syscall.Syscall_setWriteDeadline.setWriteDeadline(_fd, _t);
    }
    static public inline function shutdown(_fd:StdTypes.Int, _how:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _how = (_how : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_shutdown.shutdown(_fd, _how);
    }
    static public inline function setNonblock(_fd:StdTypes.Int, _nonblocking:Bool):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_setNonblock.setNonblock(_fd, _nonblocking);
    }
    /**
        StringByteSlice converts a string to a NUL-terminated []byte,
        If s contains a NUL byte this function panics instead of
        returning an error.
        
        Deprecated: Use ByteSliceFromString instead.
    **/
    static public inline function stringByteSlice(_s:String):Array<std.UInt> {
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.syscall.Syscall_stringByteSlice.stringByteSlice(_s)) i];
    }
    /**
        ByteSliceFromString returns a NUL-terminated slice of bytes
        containing the text of s. If s contains a NUL byte at any
        location, it returns (nil, EINVAL).
    **/
    static public inline function byteSliceFromString(_s:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.syscall.Syscall_byteSliceFromString.byteSliceFromString(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        StringBytePtr returns a pointer to a NUL-terminated array of bytes.
        If s contains a NUL byte this function panics instead of returning
        an error.
        
        Deprecated: Use BytePtrFromString instead.
    **/
    static public inline function stringBytePtr(_s:String):stdgo.Pointer<std.UInt> {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_stringBytePtr.stringBytePtr(_s);
    }
    /**
        BytePtrFromString returns a pointer to a NUL-terminated array of
        bytes containing the text of s. If s contains a NUL byte at any
        location, it returns (nil, EINVAL).
    **/
    static public inline function bytePtrFromString(_s:String):stdgo.Tuple<stdgo.Pointer<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.syscall.Syscall_bytePtrFromString.bytePtrFromString(_s);
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
            final obj = stdgo._internal.syscall.Syscall_rawSyscall.rawSyscall(_trap, _a1, _a2, _a3);
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
            final obj = stdgo._internal.syscall.Syscall_rawSyscall6.rawSyscall6(_trap, _a1, _a2, _a3, _a4, _a5, _a6);
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
            final obj = stdgo._internal.syscall.Syscall_startProcess.startProcess(_argv0, _argv, _attr);
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
        TimespecToNsec returns the time stored in ts as nanoseconds.
    **/
    static public inline function timespecToNsec(_ts:Timespec):haxe.Int64 {
        return stdgo._internal.syscall.Syscall_timespecToNsec.timespecToNsec(_ts);
    }
    /**
        NsecToTimespec converts a number of nanoseconds into a Timespec.
    **/
    static public inline function nsecToTimespec(_nsec:haxe.Int64):Timespec {
        final _nsec = (_nsec : stdgo.GoInt64);
        return stdgo._internal.syscall.Syscall_nsecToTimespec.nsecToTimespec(_nsec);
    }
    /**
        TimevalToNsec returns the time stored in tv as nanoseconds.
    **/
    static public inline function timevalToNsec(_tv:Timeval):haxe.Int64 {
        return stdgo._internal.syscall.Syscall_timevalToNsec.timevalToNsec(_tv);
    }
    /**
        NsecToTimeval converts a number of nanoseconds into a Timeval.
    **/
    static public inline function nsecToTimeval(_nsec:haxe.Int64):Timeval {
        final _nsec = (_nsec : stdgo.GoInt64);
        return stdgo._internal.syscall.Syscall_nsecToTimeval.nsecToTimeval(_nsec);
    }
}
