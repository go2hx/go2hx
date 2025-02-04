package stdgo._internal.net.mail;
function _quoteString(_s:stdgo.GoString):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        @:check2 _b.writeByte((34 : stdgo.GoUInt8));
        for (__0 => _r in _s) {
            if ((stdgo._internal.net.mail.Mail__isqtext._isQtext(_r) || stdgo._internal.net.mail.Mail__iswsp._isWSP(_r) : Bool)) {
                @:check2 _b.writeRune(_r);
            } else if (stdgo._internal.net.mail.Mail__isvchar._isVchar(_r)) {
                @:check2 _b.writeByte((92 : stdgo.GoUInt8));
                @:check2 _b.writeRune(_r);
            };
        };
        @:check2 _b.writeByte((34 : stdgo.GoUInt8));
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
