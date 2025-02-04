package stdgo._internal.net.mail;
function _isQtext(_r:stdgo.GoInt32):Bool {
        if (((_r == (92 : stdgo.GoInt32)) || (_r == (34 : stdgo.GoInt32)) : Bool)) {
            return false;
        };
        return stdgo._internal.net.mail.Mail__isvchar._isVchar(_r);
    }
