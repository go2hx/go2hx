package stdgo._internal.html.template;
function _isJSIdentPart(_r:stdgo.GoInt32):Bool {
        if (_r == ((36 : stdgo.GoInt32))) {
            return true;
        } else if ((((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            return true;
        } else if ((((65 : stdgo.GoInt32) <= _r : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
            return true;
        } else if (_r == ((95 : stdgo.GoInt32))) {
            return true;
        } else if ((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
            return true;
        };
        return false;
    }
