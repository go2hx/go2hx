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
function _quoteString(_s:stdgo.GoString):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        @:check2 _b.writeByte((34 : stdgo.GoUInt8));
        for (__0 => _r in _s) {
            if ((stdgo._internal.net.mail.Mail__isQtext._isQtext(_r) || stdgo._internal.net.mail.Mail__isWSP._isWSP(_r) : Bool)) {
                @:check2 _b.writeRune(_r);
            } else if (stdgo._internal.net.mail.Mail__isVchar._isVchar(_r)) {
                @:check2 _b.writeByte((92 : stdgo.GoUInt8));
                @:check2 _b.writeRune(_r);
            };
        };
        @:check2 _b.writeByte((34 : stdgo.GoUInt8));
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
