package stdgo._internal.net;
typedef Listener = stdgo.StructType & {
    /**
        Accept waits for and returns the next connection to the listener.
        
        
    **/
    public dynamic function accept():{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    /**
        Close closes the listener.
        Any blocked Accept operations will be unblocked and return errors.
        
        
    **/
    public dynamic function close():stdgo.Error;
    /**
        Addr returns the listener's network address.
        
        
    **/
    public dynamic function addr():stdgo._internal.net.Net_Addr.Addr;
};