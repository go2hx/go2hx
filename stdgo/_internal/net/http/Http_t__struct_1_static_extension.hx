package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T__struct_1_asInterface) class T__struct_1_static_extension {
    @:embedded
    @:localembedfields
    public static function read( __self__:stdgo._internal.net.http.Http_t__struct_1.T__struct_1, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (__self__.reader ?? throw "null pointer dereference").read(_0);
    @:embedded
    @:localembedfields
    public static function close( __self__:stdgo._internal.net.http.Http_t__struct_1.T__struct_1):stdgo.Error return @:check31 (__self__.closer ?? throw "null pointer dereference").close();
}
