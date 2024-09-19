package stdgo._internal.net;
typedef Addr = stdgo.StructType & {
    /**
        
        
        name of the network (for example, "tcp", "udp")
    **/
    public dynamic function network():stdgo.GoString;
    /**
        
        
        string form of address (for example, "192.0.2.1:25", "[2001:db8::1]:80")
    **/
    public dynamic function string():stdgo.GoString;
};
