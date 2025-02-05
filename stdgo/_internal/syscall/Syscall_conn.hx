package stdgo._internal.syscall;
@:interface typedef Conn = stdgo.StructType & {
    /**
        * SyscallConn returns a raw network connection.
        
        
    **/
    @:interfacetypeffun
    public dynamic function syscallConn():{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; };
};
