package stdgo._internal.encoding.binary;
typedef ByteOrder = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function uint16(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16;
    /**
        
        
        
    **/
    public dynamic function uint32(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32;
    /**
        
        
        
    **/
    public dynamic function uint64(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64;
    /**
        
        
        
    **/
    public dynamic function putUint16(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):Void;
    /**
        
        
        
    **/
    public dynamic function putUint32(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):Void;
    /**
        
        
        
    **/
    public dynamic function putUint64(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):Void;
    /**
        
        
        
    **/
    public dynamic function string():stdgo.GoString;
};
