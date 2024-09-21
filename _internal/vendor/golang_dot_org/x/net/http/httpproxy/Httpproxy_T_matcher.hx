package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
typedef T_matcher = stdgo.StructType & {
    /**
        match returns true if the host and optional port or ip and optional port
        are allowed
        
        
    **/
    public dynamic function _match(_host:stdgo.GoString, _port:stdgo.GoString, _ip:stdgo._internal.net.Net_IP.IP):Bool;
};
