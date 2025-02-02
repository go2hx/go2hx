package stdgo._internal.internal.fuzz;
function _zeroValue(_t:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo.AnyInterface {
        for (__8 => _v in stdgo._internal.internal.fuzz.Fuzz__zeroVals._zeroVals) {
            if ((stdgo._internal.reflect.Reflect_typeOf.typeOf(_v).string() : String) == (_t.string() : String)) {
                return _v;
            };
        };
        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unsupported type: %v" : stdgo.GoString), stdgo.Go.toInterface(_t)));
    }
