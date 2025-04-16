package stdgo.syscall;
var aF_UNSPEC : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var aF_UNIX : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var aF_INET : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var aF_INET6 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var sOCK_STREAM : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var sOCK_DGRAM : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var sOCK_RAW : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var sOCK_SEQPACKET : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var iPPROTO_IP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var iPPROTO_IPV4 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var iPPROTO_IPV6 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var iPPROTO_TCP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var iPPROTO_UDP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var iPV6_V6ONLY : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var sOMAXCONN : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var sO_ERROR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_DUPFD_CLOEXEC : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var sYS_FCNTL : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var pathMax : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var sIGCHLD : Signal = ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall_signal.Signal);
var sIGINT : Signal = ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall_signal.Signal);
var sIGKILL : Signal = ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall_signal.Signal);
var sIGTRAP : Signal = ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall_signal.Signal);
var sIGQUIT : Signal = ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall_signal.Signal);
var sIGTERM : Signal = ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall_signal.Signal);
var stdin : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var stdout : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var stderr : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var o_RDONLY : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var o_WRONLY : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var o_RDWR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var o_CREAT : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var o_CREATE : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var o_TRUNC : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var o_APPEND : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var o_EXCL : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var o_SYNC : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var o_CLOEXEC : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_DUPFD : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_GETFD : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_SETFD : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_GETFL : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_SETFL : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_GETOWN : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_SETOWN : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_GETLK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_SETLK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_SETLKW : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_RGETLK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_RSETLK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_CNVT : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_RSETLKW : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_RDLCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_WRLCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_UNLCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var f_UNLKSYS : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IFMT : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IFSHM_SYSV : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IFSEMA : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IFCOND : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IFMUTEX : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IFSHM : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IFBOUNDSOCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IFSOCKADDR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IFDSOCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IFSOCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IFLNK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IFREG : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IFBLK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IFDIR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IFCHR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IFIFO : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_UNSUP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_ISUID : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_ISGID : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_ISVTX : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IREAD : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IWRITE : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IEXEC : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IRWXU : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IRUSR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IWUSR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IXUSR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IRWXG : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IRGRP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IWGRP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IXGRP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IRWXO : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IROTH : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IWOTH : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var s_IXOTH : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var forkLock(get, set) : stdgo._internal.sync.Sync_rwmutex.RWMutex;
private function get_forkLock():stdgo._internal.sync.Sync_rwmutex.RWMutex return stdgo._internal.syscall.Syscall_forklock.forkLock;
private function set_forkLock(v:stdgo._internal.sync.Sync_rwmutex.RWMutex):stdgo._internal.sync.Sync_rwmutex.RWMutex {
        stdgo._internal.syscall.Syscall_forklock.forkLock = v;
        return v;
    }
var implementsGetwd : Bool = false;
var ePERM : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOENT : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eSRCH : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eINTR : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eIO : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNXIO : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var e2BIG : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOEXEC : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eBADF : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eCHILD : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eAGAIN : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOMEM : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eACCES : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eFAULT : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eBUSY : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eEXIST : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eXDEV : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNODEV : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOTDIR : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eISDIR : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eINVAL : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNFILE : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eMFILE : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOTTY : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eFBIG : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOSPC : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eSPIPE : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eROFS : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eMLINK : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var ePIPE : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNAMETOOLONG : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOSYS : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eDQUOT : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eDOM : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eRANGE : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eDEADLK : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOLCK : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOTEMPTY : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eLOOP : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOMSG : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eIDRM : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eCHRNG : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eL2NSYNC : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eL3HLT : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eL3RST : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eLNRNG : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eUNATCH : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOCSI : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eL2HLT : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eBADE : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eBADR : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eXFULL : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOANO : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eBADRQC : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eBADSLT : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eDEADLOCK : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eBFONT : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOSTR : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNODATA : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eTIME : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOSR : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNONET : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOPKG : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eREMOTE : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOLINK : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eADV : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eSRMNT : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eCOMM : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var ePROTO : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eMULTIHOP : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eDOTDOT : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eBADMSG : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eOVERFLOW : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOTUNIQ : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eBADFD : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eREMCHG : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eLIBACC : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eLIBBAD : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eLIBSCN : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eLIBMAX : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eLIBEXEC : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eILSEQ : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eUSERS : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOTSOCK : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eDESTADDRREQ : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eMSGSIZE : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var ePROTOTYPE : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOPROTOOPT : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var ePROTONOSUPPORT : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eSOCKTNOSUPPORT : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eOPNOTSUPP : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var ePFNOSUPPORT : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eAFNOSUPPORT : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eADDRINUSE : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eADDRNOTAVAIL : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNETDOWN : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNETUNREACH : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNETRESET : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eCONNABORTED : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eCONNRESET : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOBUFS : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eISCONN : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOTCONN : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eSHUTDOWN : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eTOOMANYREFS : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eTIMEDOUT : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eCONNREFUSED : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eHOSTDOWN : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eHOSTUNREACH : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eALREADY : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eINPROGRESS : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eSTALE : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOTSUP : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOMEDIUM : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eCANCELED : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eLBIN : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eFTYPE : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNMFILE : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var ePROCLIM : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eNOSHARE : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eCASECLASH : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
var eWOULDBLOCK : Errno = (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno);
typedef RawConn = stdgo._internal.syscall.Syscall_rawconn.RawConn;
typedef Conn = stdgo._internal.syscall.Syscall_conn.Conn;
typedef SockaddrInet4 = stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4;
typedef SockaddrInet6 = stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6;
typedef SockaddrUnix = stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix;
typedef Dirent = stdgo._internal.syscall.Syscall_dirent.Dirent;
typedef Stat_t = stdgo._internal.syscall.Syscall_stat_t.Stat_t;
typedef Rusage = stdgo._internal.syscall.Syscall_rusage.Rusage;
typedef ProcAttr = stdgo._internal.syscall.Syscall_procattr.ProcAttr;
typedef SysProcAttr = stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr;
typedef Iovec = stdgo._internal.syscall.Syscall_iovec.Iovec;
typedef Timespec = stdgo._internal.syscall.Syscall_timespec.Timespec;
typedef Timeval = stdgo._internal.syscall.Syscall_timeval.Timeval;
typedef Sockaddr = stdgo._internal.syscall.Syscall_sockaddr.Sockaddr;
typedef Errno = stdgo._internal.syscall.Syscall_errno.Errno;
typedef Signal = stdgo._internal.syscall.Syscall_signal.Signal;
typedef WaitStatus = stdgo._internal.syscall.Syscall_waitstatus.WaitStatus;
typedef SockaddrInet4Pointer = stdgo._internal.syscall.Syscall_sockaddrinet4pointer.SockaddrInet4Pointer;
typedef SockaddrInet6Pointer = stdgo._internal.syscall.Syscall_sockaddrinet6pointer.SockaddrInet6Pointer;
typedef SockaddrUnixPointer = stdgo._internal.syscall.Syscall_sockaddrunixpointer.SockaddrUnixPointer;
typedef DirentPointer = stdgo._internal.syscall.Syscall_direntpointer.DirentPointer;
typedef Stat_tPointer = stdgo._internal.syscall.Syscall_stat_tpointer.Stat_tPointer;
typedef RusagePointer = stdgo._internal.syscall.Syscall_rusagepointer.RusagePointer;
typedef ProcAttrPointer = stdgo._internal.syscall.Syscall_procattrpointer.ProcAttrPointer;
typedef SysProcAttrPointer = stdgo._internal.syscall.Syscall_sysprocattrpointer.SysProcAttrPointer;
typedef IovecPointer = stdgo._internal.syscall.Syscall_iovecpointer.IovecPointer;
typedef TimespecPointer = stdgo._internal.syscall.Syscall_timespecpointer.TimespecPointer;
typedef TimevalPointer = stdgo._internal.syscall.Syscall_timevalpointer.TimevalPointer;
typedef SockaddrPointer = stdgo._internal.syscall.Syscall_sockaddrpointer.SockaddrPointer;
typedef ErrnoPointer = stdgo._internal.syscall.Syscall_errnopointer.ErrnoPointer;
typedef SignalPointer = stdgo._internal.syscall.Syscall_signalpointer.SignalPointer;
typedef WaitStatusPointer = stdgo._internal.syscall.Syscall_waitstatuspointer.WaitStatusPointer;
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
    static public inline function parseDirent(_buf:stdgo.Slice<stdgo.GoUInt8>, _max:stdgo.GoInt, _names:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Slice<stdgo.GoString>; } return stdgo._internal.syscall.Syscall_parsedirent.parseDirent(_buf, _max, _names);
    static public inline function unsetenv(_key:stdgo.GoString):stdgo.Error return stdgo._internal.syscall.Syscall_unsetenv.unsetenv(_key);
    static public inline function getenv(_key:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } return stdgo._internal.syscall.Syscall_getenv.getenv(_key);
    static public inline function setenv(_key:stdgo.GoString, _value:stdgo.GoString):stdgo.Error return stdgo._internal.syscall.Syscall_setenv.setenv(_key, _value);
    static public inline function clearenv():Void stdgo._internal.syscall.Syscall_clearenv.clearenv();
    static public inline function environ_():stdgo.Slice<stdgo.GoString> return stdgo._internal.syscall.Syscall_environ_.environ_();
    static public inline function open(_path:stdgo.GoString, _openmode:stdgo.GoInt, _perm:stdgo.GoUInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_open.open(_path, _openmode, _perm);
    static public inline function close(_fd:stdgo.GoInt):stdgo.Error return stdgo._internal.syscall.Syscall_close.close(_fd);
    static public inline function closeOnExec(_fd:stdgo.GoInt):Void stdgo._internal.syscall.Syscall_closeonexec.closeOnExec(_fd);
    static public inline function mkdir(_path:stdgo.GoString, _perm:stdgo.GoUInt32):stdgo.Error return stdgo._internal.syscall.Syscall_mkdir.mkdir(_path, _perm);
    static public inline function readDirent(_fd:stdgo.GoInt, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_readdirent.readDirent(_fd, _buf);
    static public inline function stat(_path:stdgo.GoString, _st:stdgo.Ref<stdgo._internal.syscall.Syscall_stat_t.Stat_t>):stdgo.Error return stdgo._internal.syscall.Syscall_stat.stat(_path, _st);
    static public inline function lstat(_path:stdgo.GoString, _st:stdgo.Ref<stdgo._internal.syscall.Syscall_stat_t.Stat_t>):stdgo.Error return stdgo._internal.syscall.Syscall_lstat.lstat(_path, _st);
    static public inline function fstat(_fd:stdgo.GoInt, _st:stdgo.Ref<stdgo._internal.syscall.Syscall_stat_t.Stat_t>):stdgo.Error return stdgo._internal.syscall.Syscall_fstat.fstat(_fd, _st);
    static public inline function unlink(_path:stdgo.GoString):stdgo.Error return stdgo._internal.syscall.Syscall_unlink.unlink(_path);
    static public inline function rmdir(_path:stdgo.GoString):stdgo.Error return stdgo._internal.syscall.Syscall_rmdir.rmdir(_path);
    static public inline function chmod(_path:stdgo.GoString, _mode:stdgo.GoUInt32):stdgo.Error return stdgo._internal.syscall.Syscall_chmod.chmod(_path, _mode);
    static public inline function fchmod(_fd:stdgo.GoInt, _mode:stdgo.GoUInt32):stdgo.Error return stdgo._internal.syscall.Syscall_fchmod.fchmod(_fd, _mode);
    static public inline function chown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error return stdgo._internal.syscall.Syscall_chown.chown(_path, _uid, _gid);
    static public inline function fchown(_fd:stdgo.GoInt, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error return stdgo._internal.syscall.Syscall_fchown.fchown(_fd, _uid, _gid);
    static public inline function lchown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error return stdgo._internal.syscall.Syscall_lchown.lchown(_path, _uid, _gid);
    static public inline function utimesNano(_path:stdgo.GoString, _ts:stdgo.Slice<stdgo._internal.syscall.Syscall_timespec.Timespec>):stdgo.Error return stdgo._internal.syscall.Syscall_utimesnano.utimesNano(_path, _ts);
    static public inline function rename(_from:stdgo.GoString, _to:stdgo.GoString):stdgo.Error return stdgo._internal.syscall.Syscall_rename.rename(_from, _to);
    static public inline function truncate(_path:stdgo.GoString, _length:stdgo.GoInt64):stdgo.Error return stdgo._internal.syscall.Syscall_truncate.truncate(_path, _length);
    static public inline function ftruncate(_fd:stdgo.GoInt, _length:stdgo.GoInt64):stdgo.Error return stdgo._internal.syscall.Syscall_ftruncate.ftruncate(_fd, _length);
    static public inline function getcwd(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_getcwd.getcwd(_buf);
    static public inline function chdir(_path:stdgo.GoString):stdgo.Error return stdgo._internal.syscall.Syscall_chdir.chdir(_path);
    static public inline function fchdir(_fd:stdgo.GoInt):stdgo.Error return stdgo._internal.syscall.Syscall_fchdir.fchdir(_fd);
    static public inline function readlink(_path:stdgo.GoString, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_readlink.readlink(_path, _buf);
    static public inline function link(_path:stdgo.GoString, _link:stdgo.GoString):stdgo.Error return stdgo._internal.syscall.Syscall_link.link(_path, _link);
    static public inline function symlink(_path:stdgo.GoString, _link:stdgo.GoString):stdgo.Error return stdgo._internal.syscall.Syscall_symlink.symlink(_path, _link);
    static public inline function fsync(_fd:stdgo.GoInt):stdgo.Error return stdgo._internal.syscall.Syscall_fsync.fsync(_fd);
    static public inline function read(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_read.read(_fd, _b);
    static public inline function write(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_write.write(_fd, _b);
    static public inline function pread(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoUInt8>, _offset:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_pread.pread(_fd, _b, _offset);
    static public inline function pwrite(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoUInt8>, _offset:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_pwrite.pwrite(_fd, _b, _offset);
    static public inline function seek(_fd:stdgo.GoInt, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_seek.seek(_fd, _offset, _whence);
    static public inline function dup(_fd:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_dup.dup(_fd);
    static public inline function dup2(_fd:stdgo.GoInt, _newfd:stdgo.GoInt):stdgo.Error return stdgo._internal.syscall.Syscall_dup2.dup2(_fd, _newfd);
    static public inline function pipe(_fd:stdgo.Slice<stdgo.GoInt>):stdgo.Error return stdgo._internal.syscall.Syscall_pipe.pipe(_fd);
    static public inline function socket(_proto:stdgo.GoInt, _sotype:stdgo.GoInt, _unused:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_socket.socket(_proto, _sotype, _unused);
    static public inline function bind(_fd:stdgo.GoInt, _sa:Sockaddr):stdgo.Error return stdgo._internal.syscall.Syscall_bind.bind(_fd, _sa);
    static public inline function stopIO(_fd:stdgo.GoInt):stdgo.Error return stdgo._internal.syscall.Syscall_stopio.stopIO(_fd);
    static public inline function listen(_fd:stdgo.GoInt, _backlog:stdgo.GoInt):stdgo.Error return stdgo._internal.syscall.Syscall_listen.listen(_fd, _backlog);
    static public inline function accept(_fd:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } return stdgo._internal.syscall.Syscall_accept.accept(_fd);
    static public inline function connect(_fd:stdgo.GoInt, _sa:Sockaddr):stdgo.Error return stdgo._internal.syscall.Syscall_connect.connect(_fd, _sa);
    static public inline function recvfrom(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } return stdgo._internal.syscall.Syscall_recvfrom.recvfrom(_fd, _p, _flags);
    static public inline function sendto(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _to:Sockaddr):stdgo.Error return stdgo._internal.syscall.Syscall_sendto.sendto(_fd, _p, _flags, _to);
    static public inline function recvmsg(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _4 : stdgo.Error; } return stdgo._internal.syscall.Syscall_recvmsg.recvmsg(_fd, _p, _oob, _flags);
    static public inline function sendmsgN(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _to:Sockaddr, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_sendmsgn.sendmsgN(_fd, _p, _oob, _to, _flags);
    static public inline function getsockoptInt(_fd:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_getsockoptint.getsockoptInt(_fd, _level, _opt);
    static public inline function setsockoptInt(_fd:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt, _value:stdgo.GoInt):stdgo.Error return stdgo._internal.syscall.Syscall_setsockoptint.setsockoptInt(_fd, _level, _opt, _value);
    static public inline function setReadDeadline(_fd:stdgo.GoInt, _t:stdgo.GoInt64):stdgo.Error return stdgo._internal.syscall.Syscall_setreaddeadline.setReadDeadline(_fd, _t);
    static public inline function setWriteDeadline(_fd:stdgo.GoInt, _t:stdgo.GoInt64):stdgo.Error return stdgo._internal.syscall.Syscall_setwritedeadline.setWriteDeadline(_fd, _t);
    static public inline function shutdown(_fd:stdgo.GoInt, _how:stdgo.GoInt):stdgo.Error return stdgo._internal.syscall.Syscall_shutdown.shutdown(_fd, _how);
    static public inline function setNonblock(_fd:stdgo.GoInt, _nonblocking:Bool):stdgo.Error return stdgo._internal.syscall.Syscall_setnonblock.setNonblock(_fd, _nonblocking);
    /**
        * StringByteSlice converts a string to a NUL-terminated []byte,
        * If s contains a NUL byte this function panics instead of
        * returning an error.
        * 
        * Deprecated: Use ByteSliceFromString instead.
    **/
    static public inline function stringByteSlice(_s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.syscall.Syscall_stringbyteslice.stringByteSlice(_s);
    /**
        * ByteSliceFromString returns a NUL-terminated slice of bytes
        * containing the text of s. If s contains a NUL byte at any
        * location, it returns (nil, EINVAL).
    **/
    static public inline function byteSliceFromString(_s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_byteslicefromstring.byteSliceFromString(_s);
    /**
        * StringBytePtr returns a pointer to a NUL-terminated array of bytes.
        * If s contains a NUL byte this function panics instead of returning
        * an error.
        * 
        * Deprecated: Use BytePtrFromString instead.
    **/
    static public inline function stringBytePtr(_s:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt8> return stdgo._internal.syscall.Syscall_stringbyteptr.stringBytePtr(_s);
    /**
        * BytePtrFromString returns a pointer to a NUL-terminated array of
        * bytes containing the text of s. If s contains a NUL byte at any
        * location, it returns (nil, EINVAL).
    **/
    static public inline function bytePtrFromString(_s:stdgo.GoString):{ var _0 : stdgo.Pointer<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_byteptrfromstring.bytePtrFromString(_s);
    static public inline function getpagesize():stdgo.GoInt return stdgo._internal.syscall.Syscall_getpagesize.getpagesize();
    static public inline function exit(_code:stdgo.GoInt):Void stdgo._internal.syscall.Syscall_exit.exit(_code);
    static public inline function syscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : stdgo._internal.syscall.Syscall_errno.Errno; } return stdgo._internal.syscall.Syscall_syscall.syscall(_trap, _a1, _a2, _a3);
    static public inline function syscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : stdgo._internal.syscall.Syscall_errno.Errno; } return stdgo._internal.syscall.Syscall_syscall6.syscall6(_trap, _a1, _a2, _a3, _a4, _a5, _a6);
    static public inline function rawSyscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : stdgo._internal.syscall.Syscall_errno.Errno; } return stdgo._internal.syscall.Syscall_rawsyscall.rawSyscall(_trap, _a1, _a2, _a3);
    static public inline function rawSyscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : stdgo._internal.syscall.Syscall_errno.Errno; } return stdgo._internal.syscall.Syscall_rawsyscall6.rawSyscall6(_trap, _a1, _a2, _a3, _a4, _a5, _a6);
    static public inline function sysctl(_key:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_sysctl.sysctl(_key);
    static public inline function getwd():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_getwd.getwd();
    static public inline function getuid():stdgo.GoInt return stdgo._internal.syscall.Syscall_getuid.getuid();
    static public inline function getgid():stdgo.GoInt return stdgo._internal.syscall.Syscall_getgid.getgid();
    static public inline function geteuid():stdgo.GoInt return stdgo._internal.syscall.Syscall_geteuid.geteuid();
    static public inline function getegid():stdgo.GoInt return stdgo._internal.syscall.Syscall_getegid.getegid();
    static public inline function getgroups():{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_getgroups.getgroups();
    static public inline function getpid():stdgo.GoInt return stdgo._internal.syscall.Syscall_getpid.getpid();
    static public inline function getppid():stdgo.GoInt return stdgo._internal.syscall.Syscall_getppid.getppid();
    static public inline function umask(_mask:stdgo.GoInt):stdgo.GoInt return stdgo._internal.syscall.Syscall_umask.umask(_mask);
    static public inline function gettimeofday(_tv:stdgo.Ref<stdgo._internal.syscall.Syscall_timeval.Timeval>):stdgo.Error return stdgo._internal.syscall.Syscall_gettimeofday.gettimeofday(_tv);
    static public inline function kill(_pid:stdgo.GoInt, _signum:Signal):stdgo.Error return stdgo._internal.syscall.Syscall_kill.kill(_pid, _signum);
    static public inline function sendfile(_outfd:stdgo.GoInt, _infd:stdgo.GoInt, _offset:stdgo.Pointer<stdgo.GoInt64>, _count:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_sendfile.sendfile(_outfd, _infd, _offset, _count);
    static public inline function startProcess(_argv0:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<stdgo._internal.syscall.Syscall_procattr.ProcAttr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoUIntptr; var _2 : stdgo.Error; } return stdgo._internal.syscall.Syscall_startprocess.startProcess(_argv0, _argv, _attr);
    static public inline function wait4(_pid:stdgo.GoInt, _wstatus:stdgo.Pointer<stdgo._internal.syscall.Syscall_waitstatus.WaitStatus>, _options:stdgo.GoInt, _rusage:stdgo.Ref<stdgo._internal.syscall.Syscall_rusage.Rusage>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.syscall.Syscall_wait4.wait4(_pid, _wstatus, _options, _rusage);
    /**
        * TimespecToNsec returns the time stored in ts as nanoseconds.
    **/
    static public inline function timespecToNsec(_ts:Timespec):stdgo.GoInt64 return stdgo._internal.syscall.Syscall_timespectonsec.timespecToNsec(_ts);
    /**
        * NsecToTimespec converts a number of nanoseconds into a Timespec.
    **/
    static public inline function nsecToTimespec(_nsec:stdgo.GoInt64):stdgo._internal.syscall.Syscall_timespec.Timespec return stdgo._internal.syscall.Syscall_nsectotimespec.nsecToTimespec(_nsec);
    /**
        * TimevalToNsec returns the time stored in tv as nanoseconds.
    **/
    static public inline function timevalToNsec(_tv:Timeval):stdgo.GoInt64 return stdgo._internal.syscall.Syscall_timevaltonsec.timevalToNsec(_tv);
    /**
        * NsecToTimeval converts a number of nanoseconds into a Timeval.
    **/
    static public inline function nsecToTimeval(_nsec:stdgo.GoInt64):stdgo._internal.syscall.Syscall_timeval.Timeval return stdgo._internal.syscall.Syscall_nsectotimeval.nsecToTimeval(_nsec);
}
