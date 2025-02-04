package stdgo._internal.mime;
function _isToken(_s:stdgo.GoString):Bool {
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            return false;
        };
        return (stdgo._internal.strings.Strings_indexfunc.indexFunc(_s?.__copy__(), stdgo._internal.mime.Mime__isnottokenchar._isNotTokenChar) < (0 : stdgo.GoInt) : Bool);
    }
