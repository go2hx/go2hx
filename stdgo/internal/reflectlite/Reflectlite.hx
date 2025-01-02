package stdgo.internal.reflectlite;
final ptr : stdgo._internal.internal.abi.Abi_Kind.Kind = stdgo._internal.internal.reflectlite.Reflectlite_ptr.ptr;
final interface_ : stdgo._internal.internal.abi.Abi_Kind.Kind = stdgo._internal.internal.reflectlite.Reflectlite_interface_.interface_;
final slice : stdgo._internal.internal.abi.Abi_Kind.Kind = stdgo._internal.internal.reflectlite.Reflectlite_slice.slice;
final string : stdgo._internal.internal.abi.Abi_Kind.Kind = stdgo._internal.internal.reflectlite.Reflectlite_string.string;
final struct_ : stdgo._internal.internal.abi.Abi_Kind.Kind = stdgo._internal.internal.reflectlite.Reflectlite_struct_.struct_;
typedef Type_ = stdgo._internal.internal.reflectlite.Reflectlite_Type_.Type_;
typedef Value = stdgo._internal.internal.reflectlite.Reflectlite_Value.Value;
@:structInit @:using(stdgo.internal.reflectlite.Reflectlite.ValueError_static_extension) abstract ValueError(stdgo._internal.internal.reflectlite.Reflectlite_ValueError.ValueError) from stdgo._internal.internal.reflectlite.Reflectlite_ValueError.ValueError to stdgo._internal.internal.reflectlite.Reflectlite_ValueError.ValueError {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = v;
        return v;
    }
    public var kind(get, set) : stdgo._internal.internal.abi.Abi_Kind.Kind;
    function get_kind():stdgo._internal.internal.abi.Abi_Kind.Kind return this.kind;
    function set_kind(v:stdgo._internal.internal.abi.Abi_Kind.Kind):stdgo._internal.internal.abi.Abi_Kind.Kind {
        this.kind = v;
        return v;
    }
    public function new(?method:String, ?kind:stdgo._internal.internal.abi.Abi_Kind.Kind) this = new stdgo._internal.internal.reflectlite.Reflectlite_ValueError.ValueError(method, kind);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Kind = stdgo._internal.internal.reflectlite.Reflectlite_Kind.Kind;
typedef ValuePointer = stdgo._internal.internal.reflectlite.Reflectlite_ValuePointer.ValuePointer;
class Value_static_extension {
    static public function type(_v:Value):Type_ {
        return stdgo._internal.internal.reflectlite.Reflectlite_Value_static_extension.Value_static_extension.type(_v);
    }
    static public function set(_v:Value, _x:Value):Void {
        stdgo._internal.internal.reflectlite.Reflectlite_Value_static_extension.Value_static_extension.set(_v, _x);
    }
    static public function len(_v:Value):StdTypes.Int {
        return stdgo._internal.internal.reflectlite.Reflectlite_Value_static_extension.Value_static_extension.len(_v);
    }
    static public function kind(_v:Value):stdgo._internal.internal.abi.Abi_Kind.Kind {
        return stdgo._internal.internal.reflectlite.Reflectlite_Value_static_extension.Value_static_extension.kind(_v);
    }
    static public function isValid(_v:Value):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_Value_static_extension.Value_static_extension.isValid(_v);
    }
    static public function isNil(_v:Value):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_Value_static_extension.Value_static_extension.isNil(_v);
    }
    static public function elem(_v:Value):Value {
        return stdgo._internal.internal.reflectlite.Reflectlite_Value_static_extension.Value_static_extension.elem(_v);
    }
    static public function canSet(_v:Value):Bool {
        return stdgo._internal.internal.reflectlite.Reflectlite_Value_static_extension.Value_static_extension.canSet(_v);
    }
}
typedef ValueErrorPointer = stdgo._internal.internal.reflectlite.Reflectlite_ValueErrorPointer.ValueErrorPointer;
class ValueError_static_extension {
    static public function error(_e:ValueError):String {
        return stdgo._internal.internal.reflectlite.Reflectlite_ValueError_static_extension.ValueError_static_extension.error(_e);
    }
}
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
    static public function swapper(_slice:stdgo.AnyInterface):(stdgo.GoInt, stdgo.GoInt) -> Void {
        return (_0, _1) -> stdgo._internal.internal.reflectlite.Reflectlite_swapper.swapper(_slice)(_0, _1);
    }
    /**
        TypeOf returns the reflection Type that represents the dynamic type of i.
        If i is a nil interface value, TypeOf returns nil.
    **/
    static public function typeOf(_i:stdgo.AnyInterface):Type_ {
        return stdgo._internal.internal.reflectlite.Reflectlite_typeOf.typeOf(_i);
    }
    /**
        ValueOf returns a new Value initialized to the concrete value
        stored in the interface i. ValueOf(nil) returns the zero Value.
    **/
    static public function valueOf(_i:stdgo.AnyInterface):Value {
        return stdgo._internal.internal.reflectlite.Reflectlite_valueOf.valueOf(_i);
    }
}
