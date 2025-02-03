package stdgo.net.http;
class ProtocolError_static_extension {
    static public function is_(_pe:ProtocolError, _err:stdgo.Error):Bool {
        final _pe = (_pe : stdgo.Ref<stdgo._internal.net.http.Http_ProtocolError.ProtocolError>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.net.http.Http_ProtocolError_static_extension.ProtocolError_static_extension.is_(_pe, _err);
    }
    static public function error(_pe:ProtocolError):String {
        final _pe = (_pe : stdgo.Ref<stdgo._internal.net.http.Http_ProtocolError.ProtocolError>);
        return stdgo._internal.net.http.Http_ProtocolError_static_extension.ProtocolError_static_extension.error(_pe);
    }
}
