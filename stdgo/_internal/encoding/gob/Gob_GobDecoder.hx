package stdgo._internal.encoding.gob;
typedef GobDecoder = stdgo.StructType & {
    /**
        GobDecode overwrites the receiver, which must be a pointer,
        with the value represented by the byte slice, which was written
        by GobEncode, usually for the same concrete type.
        
        
    **/
    public dynamic function gobDecode(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};