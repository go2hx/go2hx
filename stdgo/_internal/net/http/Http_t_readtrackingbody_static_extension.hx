package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_readTrackingBody_asInterface) class T_readTrackingBody_static_extension {
    @:keep
    @:tdfield
    static public function close( _r:stdgo.Ref<stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._didClose = true;
        return (@:checkr _r ?? throw "null pointer dereference").readCloser.close();
    }
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._didRead = true;
        return (@:checkr _r ?? throw "null pointer dereference").readCloser.read(_data);
    }
}
