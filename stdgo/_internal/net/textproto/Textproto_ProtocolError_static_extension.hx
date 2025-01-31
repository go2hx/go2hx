package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.ProtocolError_asInterface) class ProtocolError_static_extension {
    @:keep
    @:tdfield
    static public function error( _p:stdgo._internal.net.textproto.Textproto_ProtocolError.ProtocolError):stdgo.GoString {
        @:recv var _p:stdgo._internal.net.textproto.Textproto_ProtocolError.ProtocolError = _p;
        return (_p : stdgo.GoString)?.__copy__();
    }
}
