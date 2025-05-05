package stdgo._internal.internal.fuzz;
function _isMinimizable(_t:stdgo._internal.reflect.Reflect_type_.Type_):Bool {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L12"
        return (((_t.string() : String) == (stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface((stdgo.Go.str() : stdgo.GoString))).string() : String)) || ((_t.string() : String) == (stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoUInt8>))).string() : String)) : Bool);
    }
