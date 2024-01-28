package stdgo._internal.encoding;
private var __go2hxdoc__package : Bool;
typedef BinaryMarshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; };
};
typedef BinaryUnmarshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function unmarshalBinary(_data:stdgo.Slice<stdgo.GoByte>):stdgo.Error;
};
typedef TextMarshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; };
};
typedef TextUnmarshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoByte>):stdgo.Error;
};
