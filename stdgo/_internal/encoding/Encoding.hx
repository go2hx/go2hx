package stdgo._internal.encoding;
private var __go2hxdoc__package : Bool;
@:keep class BinaryMarshaler_static_extension {
    static public function marshalBinary(t:BinaryMarshaler):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return t.marshalBinary();
}
typedef BinaryMarshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; };
};
@:keep class BinaryUnmarshaler_static_extension {
    static public function unmarshalBinary(t:BinaryUnmarshaler, _data:stdgo.Slice<stdgo.GoByte>):stdgo.Error return t.unmarshalBinary(_data);
}
typedef BinaryUnmarshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function unmarshalBinary(_data:stdgo.Slice<stdgo.GoByte>):stdgo.Error;
};
@:keep class TextMarshaler_static_extension {
    static public function marshalText(t:TextMarshaler):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return t.marshalText();
}
typedef TextMarshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; };
};
@:keep class TextUnmarshaler_static_extension {
    static public function unmarshalText(t:TextUnmarshaler, _text:stdgo.Slice<stdgo.GoByte>):stdgo.Error return t.unmarshalText(_text);
}
typedef TextUnmarshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoByte>):stdgo.Error;
};
