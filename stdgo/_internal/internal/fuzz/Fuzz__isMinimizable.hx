package stdgo._internal.internal.fuzz;
function _isMinimizable(_t:stdgo._internal.reflect.Reflect_Type_.Type_):Bool {
        return (((_t.string() : String) == (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())).string() : String)) || ((_t.string() : String) == (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoUInt8>))).string() : String)) : Bool);
    }
