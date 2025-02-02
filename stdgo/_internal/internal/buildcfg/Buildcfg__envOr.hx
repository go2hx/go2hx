package stdgo._internal.internal.buildcfg;
function _envOr(_key:stdgo.GoString, _value:stdgo.GoString):stdgo.GoString {
        {
            var _x = (stdgo._internal.os.Os_getenv.getenv(_key?.__copy__())?.__copy__() : stdgo.GoString);
            if (_x != ((stdgo.Go.str() : stdgo.GoString))) {
                return _x?.__copy__();
            };
        };
        return _value?.__copy__();
    }
