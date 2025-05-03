package stdgo._internal.net.mail;
function _isQtext(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L873"
        if (((_r == (92 : stdgo.GoInt32)) || (_r == (34 : stdgo.GoInt32)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L874"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L876"
        return stdgo._internal.net.mail.Mail__isvchar._isVchar(_r);
    }
