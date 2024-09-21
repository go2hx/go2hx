package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
typedef ResourceBody = stdgo.StructType & {
    /**
        pack packs a Resource except for its header.
        
        
    **/
    public dynamic function _pack(_msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    /**
        realType returns the actual type of the Resource. This is used to
        fill in the header Type field.
        
        
    **/
    public dynamic function _realType():_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_;
    /**
        GoString implements fmt.GoStringer.GoString.
        
        
    **/
    public dynamic function goString():stdgo.GoString;
};
