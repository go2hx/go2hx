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
function _isQtext(_r:stdgo.GoInt32):Bool {
        if (((_r == (92 : stdgo.GoInt32)) || (_r == (34 : stdgo.GoInt32)) : Bool)) {
            return false;
        };
        return stdgo._internal.net.mail.Mail__isVchar._isVchar(_r);
    }
