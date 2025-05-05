package stdgo._internal.internal.fuzz;
function _zeroValue(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.AnyInterface {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1065"
        for (__8 => _v in stdgo._internal.internal.fuzz.Fuzz__zerovals._zeroVals) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1066"
            if ((stdgo._internal.reflect.Reflect_typeof.typeOf(_v).string() : String) == (_t.string() : String)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1067"
                return _v;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1070"
        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unsupported type: %v" : stdgo.GoString), stdgo.Go.toInterface(_t)));
    }
