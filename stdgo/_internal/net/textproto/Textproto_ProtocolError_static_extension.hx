package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.ProtocolError_asInterface) class ProtocolError_static_extension {
    @:keep
    static public function error( _p:stdgo._internal.net.textproto.Textproto_ProtocolError.ProtocolError):stdgo.GoString {
        @:recv var _p:stdgo._internal.net.textproto.Textproto_ProtocolError.ProtocolError = _p;
        return (_p : stdgo.GoString)?.__copy__();
    }
}