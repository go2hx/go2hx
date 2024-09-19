package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T__struct_1_asInterface) class T__struct_1_static_extension {
    @:embedded
    public static function read( __self__:stdgo._internal.net.http.Http_T__struct_1.T__struct_1, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return return __self__.reader.read(__0);
    @:embedded
    public static function close( __self__:stdgo._internal.net.http.Http_T__struct_1.T__struct_1):stdgo.Error return return __self__.closer.close();
}
