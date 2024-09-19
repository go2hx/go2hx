package stdgo._internal.net.http;
function _validMethod(_method:stdgo.GoString):Bool {
        return (((_method.length) > (0 : stdgo.GoInt) : Bool) && (stdgo._internal.strings.Strings_indexFunc.indexFunc(_method?.__copy__(), stdgo._internal.net.http.Http__isNotToken._isNotToken) == (-1 : stdgo.GoInt)) : Bool);
    }
