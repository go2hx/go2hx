package stdgo._internal.encoding.binary;
typedef AppendByteOrder = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function appendUint16(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8>;
    /**
        
        
        
    **/
    public dynamic function appendUint32(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8>;
    /**
        
        
        
    **/
    public dynamic function appendUint64(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8>;
    /**
        
        
        
    **/
    public dynamic function string():stdgo.GoString;
};
