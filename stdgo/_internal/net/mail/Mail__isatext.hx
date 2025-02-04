package stdgo._internal.net.mail;
function _isAtext(_r:stdgo.GoInt32, _dot:Bool, _permissive:Bool):Bool {
        {
            final __value__ = _r;
            if (__value__ == ((46 : stdgo.GoInt32))) {
                return _dot;
            } else if (__value__ == ((40 : stdgo.GoInt32)) || __value__ == ((41 : stdgo.GoInt32)) || __value__ == ((91 : stdgo.GoInt32)) || __value__ == ((93 : stdgo.GoInt32)) || __value__ == ((59 : stdgo.GoInt32)) || __value__ == ((64 : stdgo.GoInt32)) || __value__ == ((92 : stdgo.GoInt32)) || __value__ == ((44 : stdgo.GoInt32))) {
                return _permissive;
            } else if (__value__ == ((60 : stdgo.GoInt32)) || __value__ == ((62 : stdgo.GoInt32)) || __value__ == ((34 : stdgo.GoInt32)) || __value__ == ((58 : stdgo.GoInt32))) {
                return false;
            };
        };
        return stdgo._internal.net.mail.Mail__isvchar._isVchar(_r);
    }
