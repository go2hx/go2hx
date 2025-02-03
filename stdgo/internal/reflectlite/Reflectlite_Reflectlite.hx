package stdgo.internal.reflectlite;
/**
    Package reflectlite implements lightweight version of reflect, not using
    any package except for "runtime", "unsafe", and "internal/abi"
**/
class Reflectlite {
    /**
        Swapper returns a function that swaps the elements in the provided
        slice.
        
        Swapper panics if the provided interface is not a slice.
    **/
    static public inline function swapper(_slice:stdgo.AnyInterface):(stdgo.GoInt, stdgo.GoInt) -> Void {
        final _slice = (_slice : stdgo.AnyInterface);
        return (_0, _1) -> stdgo._internal.internal.reflectlite.Reflectlite_swapper.swapper(_slice)(_0, _1);
    }
    /**
        TypeOf returns the reflection Type that represents the dynamic type of i.
        If i is a nil interface value, TypeOf returns nil.
    **/
    static public inline function typeOf(_i:stdgo.AnyInterface):Type_ {
        final _i = (_i : stdgo.AnyInterface);
        return stdgo._internal.internal.reflectlite.Reflectlite_typeOf.typeOf(_i);
    }
    /**
        ValueOf returns a new Value initialized to the concrete value
        stored in the interface i. ValueOf(nil) returns the zero Value.
    **/
    static public inline function valueOf(_i:stdgo.AnyInterface):Value {
        final _i = (_i : stdgo.AnyInterface);
        return stdgo._internal.internal.reflectlite.Reflectlite_valueOf.valueOf(_i);
    }
}
