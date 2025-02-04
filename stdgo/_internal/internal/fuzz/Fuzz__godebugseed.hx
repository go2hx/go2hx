package stdgo._internal.internal.fuzz;
function _godebugSeed():stdgo.Pointer<stdgo.GoInt> {
        var _debug = stdgo._internal.strings.Strings_split.split(stdgo._internal.os.Os_getenv.getenv(("GODEBUG" : stdgo.GoString))?.__copy__(), ("," : stdgo.GoString));
        for (__8 => _f in _debug) {
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_f?.__copy__(), ("fuzzseed=" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(stdgo._internal.strings.Strings_trimprefix.trimPrefix(_f?.__copy__(), ("fuzzseed=" : stdgo.GoString))?.__copy__()), _seed:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                var _seed__pointer__ = stdgo.Go.pointer(_seed);
                if (_err != null) {
                    throw stdgo.Go.toInterface(("malformed fuzzseed" : stdgo.GoString));
                };
                return _seed__pointer__;
            };
        };
        return (null : stdgo.Pointer<stdgo.GoInt>);
    }
