package stdgo._internal.net.http;
function _isCookieNameValid(_raw:stdgo.GoString):Bool {
        if (_raw == (stdgo.Go.str())) {
            return false;
        };
        return (stdgo._internal.strings.Strings_indexFunc.indexFunc(_raw?.__copy__(), stdgo._internal.net.http.Http__isNotToken._isNotToken) < (0 : stdgo.GoInt) : Bool);
    }
