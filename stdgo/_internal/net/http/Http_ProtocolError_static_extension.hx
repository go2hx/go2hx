package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.ProtocolError_asInterface) class ProtocolError_static_extension {
    @:keep
    @:tdfield
    static public function is_( _pe:stdgo.Ref<stdgo._internal.net.http.Http_ProtocolError.ProtocolError>, _err:stdgo.Error):Bool {
        @:recv var _pe:stdgo.Ref<stdgo._internal.net.http.Http_ProtocolError.ProtocolError> = _pe;
        return ((_pe == stdgo._internal.net.http.Http_errNotSupported.errNotSupported) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.errors.Errors_errUnsupported.errUnsupported)) : Bool);
    }
    @:keep
    @:tdfield
    static public function error( _pe:stdgo.Ref<stdgo._internal.net.http.Http_ProtocolError.ProtocolError>):stdgo.GoString {
        @:recv var _pe:stdgo.Ref<stdgo._internal.net.http.Http_ProtocolError.ProtocolError> = _pe;
        return (@:checkr _pe ?? throw "null pointer dereference").errorString?.__copy__();
    }
}
