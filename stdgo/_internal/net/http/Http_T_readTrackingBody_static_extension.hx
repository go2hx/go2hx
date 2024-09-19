package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_readTrackingBody_asInterface) class T_readTrackingBody_static_extension {
    @:keep
    static public function close( _r:stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody> = _r;
        _r._didClose = true;
        return _r.readCloser.close();
    }
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody> = _r;
        _r._didRead = true;
        return _r.readCloser.read(_data);
    }
}
