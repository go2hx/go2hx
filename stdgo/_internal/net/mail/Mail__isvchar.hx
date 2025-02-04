package stdgo._internal.net.mail;
function _isVchar(_r:stdgo.GoInt32):Bool {
        return ((((33 : stdgo.GoInt32) <= _r : Bool) && (_r <= (126 : stdgo.GoInt32) : Bool) : Bool) || stdgo._internal.net.mail.Mail__ismultibyte._isMultibyte(_r) : Bool);
    }
