package stdgo._internal.net.mail;
function _isAtext(_r:stdgo.GoInt32, _dot:Bool, _permissive:Bool):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L856"
        {
            final __value__ = _r;
            if (__value__ == ((46 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L858"
                return _dot;
            } else if (__value__ == ((40 : stdgo.GoInt32)) || __value__ == ((41 : stdgo.GoInt32)) || __value__ == ((91 : stdgo.GoInt32)) || __value__ == ((93 : stdgo.GoInt32)) || __value__ == ((59 : stdgo.GoInt32)) || __value__ == ((64 : stdgo.GoInt32)) || __value__ == ((92 : stdgo.GoInt32)) || __value__ == ((44 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L862"
                return _permissive;
            } else if (__value__ == ((60 : stdgo.GoInt32)) || __value__ == ((62 : stdgo.GoInt32)) || __value__ == ((34 : stdgo.GoInt32)) || __value__ == ((58 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L865"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L867"
        return stdgo._internal.net.mail.Mail__isvchar._isVchar(_r);
    }
