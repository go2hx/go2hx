package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_readWriteCloserBody_asInterface) class T_readWriteCloserBody_static_extension {
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_readwritecloserbody.T_readWriteCloserBody>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_readWriteCloserBody:net.http.read is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.http.Http_t_readwritecloserbody.T_readWriteCloserBody, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.net.http.Http_t_readwritecloserbody.T_readWriteCloserBody):stdgo.Error return @:_5 __self__.close();
}
