package stdgo._internal.go.build;
function _envOr(_name:stdgo.GoString, _def:stdgo.GoString):stdgo.GoString {
        var _s = (stdgo._internal.os.Os_getenv.getenv(_name?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L360"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L361"
            return _def?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L363"
        return _s?.__copy__();
    }
