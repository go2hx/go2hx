package stdgo._internal.net.mail;
function _quoteString(_s:stdgo.GoString):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _b.writeByte((34 : stdgo.GoUInt8));
        for (__0 => _r in _s) {
            if ((stdgo._internal.net.mail.Mail__isQtext._isQtext(_r) || stdgo._internal.net.mail.Mail__isWSP._isWSP(_r) : Bool)) {
                _b.writeRune(_r);
            } else if (stdgo._internal.net.mail.Mail__isVchar._isVchar(_r)) {
                _b.writeByte((92 : stdgo.GoUInt8));
                _b.writeRune(_r);
            };
        };
        _b.writeByte((34 : stdgo.GoUInt8));
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
