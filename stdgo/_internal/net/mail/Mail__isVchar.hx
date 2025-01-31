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
function _isVchar(_r:stdgo.GoInt32):Bool {
        return ((((33 : stdgo.GoInt32) <= _r : Bool) && (_r <= (126 : stdgo.GoInt32) : Bool) : Bool) || stdgo._internal.net.mail.Mail__isMultibyte._isMultibyte(_r) : Bool);
    }
