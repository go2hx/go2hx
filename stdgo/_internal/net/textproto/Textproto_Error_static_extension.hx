package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Error_asInterface) class Error_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Error.Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Error.Error> = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%03d %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").code), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").msg))?.__copy__();
    }
}
