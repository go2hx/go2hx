package stdgo._internal.net.http;
function _bodyAllowedForStatus(_status:stdgo.GoInt):Bool {
        if (((_status >= (100 : stdgo.GoInt) : Bool) && (_status <= (199 : stdgo.GoInt) : Bool) : Bool)) {
            return false;
        } else if (_status == ((204 : stdgo.GoInt))) {
            return false;
        } else if (_status == ((304 : stdgo.GoInt))) {
            return false;
        };
        return true;
    }
