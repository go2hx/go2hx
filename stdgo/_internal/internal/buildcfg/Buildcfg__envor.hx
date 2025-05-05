package stdgo._internal.internal.buildcfg;
function _envOr(_key:stdgo.GoString, _value:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L51"
        {
            var _x = (stdgo._internal.os.Os_getenv.getenv(_key?.__copy__())?.__copy__() : stdgo.GoString);
            if (_x != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L52"
                return _x?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L54"
        return _value?.__copy__();
    }
