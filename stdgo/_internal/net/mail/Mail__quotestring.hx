package stdgo._internal.net.mail;
function _quoteString(_s:stdgo.GoString):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L882"
        _b.writeByte((34 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L883"
        for (__0 => _r in _s) {
            //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L884"
            if ((stdgo._internal.net.mail.Mail__isqtext._isQtext(_r) || stdgo._internal.net.mail.Mail__iswsp._isWSP(_r) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L885"
                _b.writeRune(_r);
            } else if (stdgo._internal.net.mail.Mail__isvchar._isVchar(_r)) {
                //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L887"
                _b.writeByte((92 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L888"
                _b.writeRune(_r);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L891"
        _b.writeByte((34 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L892"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
