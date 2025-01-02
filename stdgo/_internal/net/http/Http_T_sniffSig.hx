package stdgo._internal.net.http;
typedef T_sniffSig = stdgo.StructType & {
    /**
        match returns the MIME type of the data, or "" if unknown.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _match(_data:stdgo.Slice<stdgo.GoUInt8>, _firstNonWS:stdgo.GoInt):stdgo.GoString;
};
