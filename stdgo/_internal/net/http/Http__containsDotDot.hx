package stdgo._internal.net.http;
function _containsDotDot(_v:stdgo.GoString):Bool {
        if (!stdgo._internal.strings.Strings_contains.contains(_v?.__copy__(), (".." : stdgo.GoString))) {
            return false;
        };
        for (__137 => _ent in stdgo._internal.strings.Strings_fieldsFunc.fieldsFunc(_v?.__copy__(), stdgo._internal.net.http.Http__isSlashRune._isSlashRune)) {
            if (_ent == ((".." : stdgo.GoString))) {
                return true;
            };
        };
        return false;
    }
