package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T__struct_2_asInterface) class T__struct_2_static_extension {
    @:embedded
    @:localembedfields
    public static function writeTo( __self__:stdgo._internal.net.http.Http_T__struct_2.T__struct_2, _0:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check31 (__self__.writerTo ?? throw "null pointer dereference").writeTo(_0);
    @:embedded
    @:localembedfields
    public static function read( __self__:stdgo._internal.net.http.Http_T__struct_2.T__struct_2, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (__self__.reader ?? throw "null pointer dereference").read(_0);
}
