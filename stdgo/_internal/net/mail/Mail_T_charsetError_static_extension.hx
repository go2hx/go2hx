package stdgo._internal.net.mail;
import stdgo._internal.errors.Errors;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.log.Log;
@:keep @:allow(stdgo._internal.net.mail.Mail.T_charsetError_asInterface) class T_charsetError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.net.mail.Mail_T_charsetError.T_charsetError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.mail.Mail_T_charsetError.T_charsetError = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("charset not supported: %q" : stdgo.GoString), stdgo.Go.toInterface((_e : stdgo.GoString)))?.__copy__();
    }
}
