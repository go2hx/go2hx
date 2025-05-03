package stdgo._internal.net.mail;
function _isMultibyte(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L904"
        return (_r >= (128 : stdgo.GoInt32) : Bool);
    }
