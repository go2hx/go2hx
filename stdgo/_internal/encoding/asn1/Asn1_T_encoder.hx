package stdgo._internal.encoding.asn1;
typedef T_encoder = stdgo.StructType & {
    /**
        Len returns the number of bytes needed to marshal this element.
        
        
    **/
    public dynamic function len():stdgo.GoInt;
    /**
        Encode encodes this element by writing Len() bytes to dst.
        
        
    **/
    public dynamic function encode(_dst:stdgo.Slice<stdgo.GoUInt8>):Void;
};
