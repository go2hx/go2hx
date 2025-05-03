package stdgo._internal.internal.fuzz;
function _godebugSeed():stdgo.Pointer<stdgo.GoInt> {
        var _debug = stdgo._internal.strings.Strings_split.split(stdgo._internal.os.Os_getenv.getenv(("GODEBUG" : stdgo.GoString))?.__copy__(), ("," : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/pcg.go#L47"
        for (__8 => _f in _debug) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/pcg.go#L48"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_f?.__copy__(), ("fuzzseed=" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(stdgo._internal.strings.Strings_trimprefix.trimPrefix(_f?.__copy__(), ("fuzzseed=" : stdgo.GoString))?.__copy__()), _seed:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                var _seed__pointer__ = stdgo.Go.pointer(_seed);
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/pcg.go#L50"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/pcg.go#L51"
                    throw stdgo.Go.toInterface(("malformed fuzzseed" : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/pcg.go#L53"
                return _seed__pointer__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/pcg.go#L56"
        return (null : stdgo.Pointer<stdgo.GoInt>);
    }
