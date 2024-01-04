package stdgo.internal.fmtsort_test;
import stdgo.internal.fmtsort.Fmtsort;
/**
    
    
    
**/
var _chans : stdgo.Slice<stdgo.Chan<stdgo.StdGoTypes.GoInt>> = _makeChans();
/**
    
    
    
**/
var _compareTests : stdgo.Slice<stdgo.Slice<stdgo.reflect.Reflect.Value>> = (new stdgo.Slice<stdgo.Slice<stdgo.reflect.Reflect.Value>>(
23,
23,
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt))), stdgo.Go.toInterface((-1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt8))), stdgo.Go.toInterface((-1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt16))), stdgo.Go.toInterface((-1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt32))), stdgo.Go.toInterface((-1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0i64 : stdgo.StdGoTypes.GoInt64))), stdgo.Go.toInterface((-1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0u32 : stdgo.StdGoTypes.GoUInt))), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((5 : stdgo.StdGoTypes.GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoUInt8))), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((5 : stdgo.StdGoTypes.GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoUInt16))), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((5 : stdgo.StdGoTypes.GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0u32 : stdgo.StdGoTypes.GoUInt32))), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((5 : stdgo.StdGoTypes.GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0i64 : stdgo.StdGoTypes.GoUInt64))), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((5 : stdgo.StdGoTypes.GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoUIntptr))), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((5 : stdgo.StdGoTypes.GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((stdgo.Go.str() : stdgo.GoString))), stdgo.Go.toInterface(stdgo.Go.str()), stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.toInterface(("ab" : stdgo.GoString))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(((0 : stdgo.StdGoTypes.GoFloat64) : stdgo.StdGoTypes.GoFloat32))), stdgo.Go.toInterface(stdgo.math.Math.naN()), stdgo.Go.toInterface(stdgo.math.Math.inf((-1 : stdgo.StdGoTypes.GoInt))), stdgo.Go.toInterface((-1e+10 : stdgo.StdGoTypes.GoFloat64)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((1e+10 : stdgo.StdGoTypes.GoFloat64)), stdgo.Go.toInterface(stdgo.math.Math.inf((1 : stdgo.StdGoTypes.GoInt)))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoFloat64))), stdgo.Go.toInterface(stdgo.math.Math.naN()), stdgo.Go.toInterface(stdgo.math.Math.inf((-1 : stdgo.StdGoTypes.GoInt))), stdgo.Go.toInterface((-1e+10 : stdgo.StdGoTypes.GoFloat64)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((1e+10 : stdgo.StdGoTypes.GoFloat64)), stdgo.Go.toInterface(stdgo.math.Math.inf((1 : stdgo.StdGoTypes.GoInt)))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1f64) : stdgo.StdGoTypes.GoComplex64))), stdgo.Go.toInterface(((-1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, -1f64))), stdgo.Go.toInterface(((-1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64))), stdgo.Go.toInterface(((-1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1f64))), stdgo.Go.toInterface(((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, -1f64))), stdgo.Go.toInterface(((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64))), stdgo.Go.toInterface(((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1f64))), stdgo.Go.toInterface(((1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, -1f64))), stdgo.Go.toInterface(((1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64))), stdgo.Go.toInterface(((1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1f64)))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1f64) : stdgo.StdGoTypes.GoComplex128))), stdgo.Go.toInterface(((-1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, -1f64))), stdgo.Go.toInterface(((-1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64))), stdgo.Go.toInterface(((-1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1f64))), stdgo.Go.toInterface(((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, -1f64))), stdgo.Go.toInterface(((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64))), stdgo.Go.toInterface(((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1f64))), stdgo.Go.toInterface(((1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, -1f64))), stdgo.Go.toInterface(((1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64))), stdgo.Go.toInterface(((1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1f64)))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(false)), stdgo.Go.toInterface(false), stdgo.Go.toInterface(true)),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(0 : stdgo.StdGoTypes.GoInt)]))), stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(0 : stdgo.StdGoTypes.GoInt)])), stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(1 : stdgo.StdGoTypes.GoInt)])), stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(2 : stdgo.StdGoTypes.GoInt)]))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(0 : stdgo.StdGoTypes.GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer))), stdgo.Go.toInterface((stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(0 : stdgo.StdGoTypes.GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer)), stdgo.Go.toInterface((stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(1 : stdgo.StdGoTypes.GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer)), stdgo.Go.toInterface((stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(2 : stdgo.StdGoTypes.GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(_chans[(0 : stdgo.StdGoTypes.GoInt)])), stdgo.Go.toInterface(_chans[(0 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_chans[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_chans[(2 : stdgo.StdGoTypes.GoInt)])),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((new stdgo.internal.fmtsort_test.Fmtsort_test.T_toy() : stdgo.internal.fmtsort_test.Fmtsort_test.T_toy))), stdgo.Go.toInterface((new stdgo.internal.fmtsort_test.Fmtsort_test.T_toy((0 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_toy)), stdgo.Go.toInterface((new stdgo.internal.fmtsort_test.Fmtsort_test.T_toy((0 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_toy)), stdgo.Go.toInterface((new stdgo.internal.fmtsort_test.Fmtsort_test.T_toy((1 : stdgo.StdGoTypes.GoInt), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_toy)), stdgo.Go.toInterface((new stdgo.internal.fmtsort_test.Fmtsort_test.T_toy((1 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_toy))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...([].concat([for (i in 0 ... 2) (0 : stdgo.StdGoTypes.GoInt)]))) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>))), stdgo.Go.toInterface((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((1 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)), stdgo.Go.toInterface((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((1 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)), stdgo.Go.toInterface((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((2 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>))),
_ct(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)))), _iFace, stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((2 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((3 : stdgo.StdGoTypes.GoInt)))) : stdgo.Slice<stdgo.Slice<stdgo.reflect.Reflect.Value>>);
/**
    
    
    
**/
var _sortTests : stdgo.Slice<stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest> = (new stdgo.Slice<stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest>(
11,
11,
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((7 : stdgo.StdGoTypes.GoInt), ("bar" : stdgo.GoString));
            x.set((-3 : stdgo.StdGoTypes.GoInt), ("foo" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.GoString>)), ("-3:foo 7:bar" : stdgo.GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((7 : stdgo.StdGoTypes.GoUInt8), ("bar" : stdgo.GoString));
            x.set((3 : stdgo.StdGoTypes.GoUInt8), ("foo" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.StdGoTypes.GoUInt8, stdgo.GoString>)), ("3:foo 7:bar" : stdgo.GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set(("7" : stdgo.GoString), ("bar" : stdgo.GoString));
            x.set(("3" : stdgo.GoString), ("foo" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>)), ("3:foo 7:bar" : stdgo.GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((7 : stdgo.StdGoTypes.GoFloat64), ("bar" : stdgo.GoString));
            x.set((-3 : stdgo.StdGoTypes.GoFloat64), ("foo" : stdgo.GoString));
            x.set(stdgo.math.Math.naN(), ("nan" : stdgo.GoString));
            x.set(stdgo.math.Math.inf((0 : stdgo.StdGoTypes.GoInt)), ("inf" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.StdGoTypes.GoFloat64, stdgo.GoString>)), ("NaN:nan -3:foo 7:bar +Inf:inf" : stdgo.GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoComplex128Map<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set(((7f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 2f64)), ("bar2" : stdgo.GoString));
            x.set(((7f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1f64)), ("bar" : stdgo.GoString));
            x.set(((-3f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), ("foo" : stdgo.GoString));
            x.set(new stdgo.StdGoTypes.GoComplex128(stdgo.math.Math.naN(), (0 : stdgo.StdGoTypes.GoFloat64)), ("nan" : stdgo.GoString));
            x.set(new stdgo.StdGoTypes.GoComplex128(stdgo.math.Math.inf((0 : stdgo.StdGoTypes.GoInt)), (0 : stdgo.StdGoTypes.GoFloat64)), ("inf" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.StdGoTypes.GoComplex128, stdgo.GoString>)), ("(NaN+0i):nan (-3+0i):foo (7+1i):bar (7+2i):bar2 (+Inf+0i):inf" : stdgo.GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoBoolMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set(true, ("true" : stdgo.GoString));
            x.set(false, ("false" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<Bool, stdgo.GoString>)), ("false:false true:true" : stdgo.GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(_chanMap()), ("CHAN0:0 CHAN1:1 CHAN2:2" : stdgo.GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(_pointerMap()), ("PTR0:0 PTR1:1 PTR2:2" : stdgo.GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(_unsafePointerMap()), ("UNSAFEPTR0:0 UNSAFEPTR1:1 UNSAFEPTR2:2" : stdgo.GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<stdgo.internal.fmtsort_test.Fmtsort_test.T_toy, stdgo.GoString>();
        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.fmtsort_test.Fmtsort_test.T_toy", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "a", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_b", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }));
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((new stdgo.internal.fmtsort_test.Fmtsort_test.T_toy((7 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_toy), ("72" : stdgo.GoString));
            x.set((new stdgo.internal.fmtsort_test.Fmtsort_test.T_toy((7 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_toy), ("71" : stdgo.GoString));
            x.set((new stdgo.internal.fmtsort_test.Fmtsort_test.T_toy((3 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_toy), ("34" : stdgo.GoString));
        };
        cast x;
    } : stdgo.GoMap<stdgo.internal.fmtsort_test.Fmtsort_test.T_toy, stdgo.GoString>)), ("{3 4}:34 {7 1}:71 {7 2}:72" : stdgo.GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<stdgo.GoArray<stdgo.StdGoTypes.GoInt>, stdgo.GoString>();
        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, 2));
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((7 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>), ("72" : stdgo.GoString));
            x.set((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((7 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>), ("71" : stdgo.GoString));
            x.set((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((3 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>), ("34" : stdgo.GoString));
        };
        cast x;
    } : stdgo.GoMap<stdgo.GoArray<stdgo.StdGoTypes.GoInt>, stdgo.GoString>)), ("[3 4]:34 [7 1]:71 [7 2]:72" : stdgo.GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest)) : stdgo.Slice<stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest>);
/**
    
    
    
**/
var _iFace = (null : stdgo.StdGoTypes.AnyInterface);
/**
    
    
    
**/
var _ints = new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...[for (i in 0 ... 3) (0 : stdgo.StdGoTypes.GoInt)]);
/**
    
    
    
**/
@:structInit @:private class T_sortTest {
    public var _data : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var _print : stdgo.GoString = "";
    public function new(?_data:stdgo.StdGoTypes.AnyInterface, ?_print:stdgo.GoString) {
        if (_data != null) this._data = _data;
        if (_print != null) this._print = _print;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sortTest(_data, _print);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_toy {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public var _b : stdgo.StdGoTypes.GoInt = 0;
    public function new(?a:stdgo.StdGoTypes.GoInt, ?_b:stdgo.StdGoTypes.GoInt) {
        if (a != null) this.a = a;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_toy(a, _b);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.fmtsort_test.Fmtsort_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.internal.fmtsort_test.Fmtsort_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _x : stdgo.StdGoTypes.GoInt;
    public var _y : stdgo.StdGoTypes.GoInt;
};
function _ct(_typ:stdgo.reflect.Reflect.Type, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.Slice<stdgo.reflect.Reflect.Value> {
        var _args = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_args.length, 0, ..._args);
        var _value = new stdgo.Slice<stdgo.reflect.Reflect.Value>((_args.length : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_args.length : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (_args.length : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.reflect.Reflect.Value)]);
        for (_i => _v in _args) {
            var _x:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(_v)?.__copy__();
            if (!_x.isValid()) {
                _x = stdgo.reflect.Reflect.zero(_typ)?.__copy__();
            } else {
                _x = _x.convert(_typ)?.__copy__();
            };
            _value[(_i : stdgo.StdGoTypes.GoInt)] = _x?.__copy__();
        };
        return _value;
    }
function testCompare(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _compareTests) {
            for (_i => _v0 in _test) {
                for (_j => _v1 in _test) {
                    var _c:stdgo.StdGoTypes.GoInt = stdgo.internal.fmtsort.Fmtsort.compare(_v0?.__copy__(), _v1?.__copy__());
                    var _expect:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    if (_i == (_j)) {
                        _expect = (0 : stdgo.StdGoTypes.GoInt);
                        {
                            var _typ:stdgo.reflect.Reflect.Type = _v0.type();
                            if (((_typ.kind() == (13u32 : stdgo.reflect.Reflect.Kind)) || (_typ.kind() == (14u32 : stdgo.reflect.Reflect.Kind))) && stdgo.math.Math.isNaN(_v0.float_())) {
                                _expect = (-1 : stdgo.StdGoTypes.GoInt);
                            };
                        };
                    } else if (_i < _j) {
                        _expect = (-1 : stdgo.StdGoTypes.GoInt);
                    } else if (_i > _j) {
                        _expect = (1 : stdgo.StdGoTypes.GoInt);
                    };
                    if (_c != (_expect)) {
                        _t.errorf(("%s: compare(%v,%v)=%d; expect %d" : stdgo.GoString), stdgo.Go.toInterface(_v0.type()), stdgo.Go.toInterface(stdgo.Go.asInterface(_v0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_v1)), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_expect));
                    };
                };
            };
        };
    }
function _sprint(_data:stdgo.StdGoTypes.AnyInterface):stdgo.GoString {
        var _om = stdgo.internal.fmtsort.Fmtsort.sort(stdgo.reflect.Reflect.valueOf(_data)?.__copy__());
        if (_om == null || (_om : Dynamic).__nil__) {
            return ("nil" : stdgo.GoString);
        };
        var _b = (stdgo.Go.setRef(({} : stdgo.strings.Strings.Builder)) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>);
        for (_i => _key in _om.key) {
            if (_i > (0 : stdgo.StdGoTypes.GoInt)) {
                _b.writeRune((32 : stdgo.StdGoTypes.GoInt32));
            };
            _b.writeString(_sprintKey(_key?.__copy__())?.__copy__());
            _b.writeRune((58 : stdgo.StdGoTypes.GoInt32));
            stdgo.fmt.Fmt.fprint(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.asInterface(_om.value[(_i : stdgo.StdGoTypes.GoInt)])));
        };
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
/**
    // sprintKey formats a reflect.Value but gives reproducible values for some
    // problematic types such as pointers. Note that it only does special handling
    // for the troublesome types used in the test cases; it is not a general
    // printer.
**/
function _sprintKey(_key:stdgo.reflect.Reflect.Value):stdgo.GoString {
        {
            var _str:stdgo.GoString = (_key.type().string() : stdgo.GoString)?.__copy__();
            {
                final __value__ = _str;
                if (__value__ == (("*int" : stdgo.GoString))) {
                    var _ptr = (stdgo.Go.typeAssert((_key.interface_() : stdgo.Pointer<stdgo.StdGoTypes.GoInt>)) : stdgo.Pointer<stdgo.StdGoTypes.GoInt>);
                    for (_i in 0 ... _ints.length.toBasic()) {
                        if (_ptr == (stdgo.Go.pointer(_ints[(_i : stdgo.StdGoTypes.GoInt)]))) {
                            return stdgo.fmt.Fmt.sprintf(("PTR%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
                        };
                    };
                    return ("PTR???" : stdgo.GoString);
                } else if (__value__ == (("unsafe.Pointer" : stdgo.GoString))) {
                    var _ptr:stdgo.unsafe.Unsafe.UnsafePointer = (stdgo.Go.typeAssert((_key.interface_() : stdgo.unsafe.Unsafe.UnsafePointer)) : stdgo.unsafe.Unsafe.UnsafePointer);
                    for (_i in 0 ... _ints.length.toBasic()) {
                        if (_ptr == ((stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(_i : stdgo.StdGoTypes.GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer))) {
                            return stdgo.fmt.Fmt.sprintf(("UNSAFEPTR%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
                        };
                    };
                    return ("UNSAFEPTR???" : stdgo.GoString);
                } else if (__value__ == (("chan int" : stdgo.GoString))) {
                    var _c = (stdgo.Go.typeAssert((_key.interface_() : stdgo.Chan<stdgo.StdGoTypes.GoInt>)) : stdgo.Chan<stdgo.StdGoTypes.GoInt>);
                    for (_i in 0 ... _chans.length.toBasic()) {
                        if (_c == (_chans[(_i : stdgo.StdGoTypes.GoInt)])) {
                            return stdgo.fmt.Fmt.sprintf(("CHAN%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
                        };
                    };
                    return ("CHAN???" : stdgo.GoString);
                } else {
                    return stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(stdgo.Go.asInterface(_key)))?.__copy__();
                };
            };
        };
    }
function _makeChans():stdgo.Slice<stdgo.Chan<stdgo.StdGoTypes.GoInt>> {
        var _cs = (new stdgo.Slice<stdgo.Chan<stdgo.StdGoTypes.GoInt>>(3, 3, new stdgo.Chan<stdgo.StdGoTypes.GoInt>(0, () -> (0 : stdgo.StdGoTypes.GoInt)), new stdgo.Chan<stdgo.StdGoTypes.GoInt>(0, () -> (0 : stdgo.StdGoTypes.GoInt)), new stdgo.Chan<stdgo.StdGoTypes.GoInt>(0, () -> (0 : stdgo.StdGoTypes.GoInt))) : stdgo.Slice<stdgo.Chan<stdgo.StdGoTypes.GoInt>>);
        stdgo.sort.Sort.slice(stdgo.Go.toInterface(_cs), function(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool {
            return (stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_cs[(_i : stdgo.StdGoTypes.GoInt)])).unsafePointer().__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr) < (stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_cs[(_j : stdgo.StdGoTypes.GoInt)])).unsafePointer().__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr);
        });
        return _cs;
    }
function _pointerMap():stdgo.GoMap<stdgo.Pointer<stdgo.StdGoTypes.GoInt>, stdgo.GoString> {
        var _m = ({
            final x = new stdgo.GoMap.GoPointerMap<stdgo.Pointer<stdgo.StdGoTypes.GoInt>, stdgo.GoString>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Pointer<stdgo.StdGoTypes.GoInt>, stdgo.GoString>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (2 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i >= (0 : stdgo.StdGoTypes.GoInt), _i--, {
                _m[stdgo.Go.pointer(_ints[(_i : stdgo.StdGoTypes.GoInt)])] = stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(_i))?.__copy__();
            });
        };
        return _m;
    }
function _unsafePointerMap():stdgo.GoMap<stdgo.unsafe.Unsafe.UnsafePointer, stdgo.GoString> {
        var _m = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.unsafe.Unsafe.UnsafePointer, stdgo.GoString>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind));
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.unsafe.Unsafe.UnsafePointer, stdgo.GoString>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (2 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i >= (0 : stdgo.StdGoTypes.GoInt), _i--, {
                _m[(stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(_i : stdgo.StdGoTypes.GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer)] = stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(_i))?.__copy__();
            });
        };
        return _m;
    }
function _chanMap():stdgo.GoMap<stdgo.Chan<stdgo.StdGoTypes.GoInt>, stdgo.GoString> {
        var _m = ({
            final x = new stdgo.GoMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.Chan<stdgo.StdGoTypes.GoInt>, stdgo.GoString>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (2 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i >= (0 : stdgo.StdGoTypes.GoInt), _i--, {
                _m[_chans[(_i : stdgo.StdGoTypes.GoInt)]] = stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(_i))?.__copy__();
            });
        };
        return _m;
    }
function testOrder(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _sortTests) {
            var _got:stdgo.GoString = _sprint(_test._data)?.__copy__();
            if (_got != (_test._print)) {
                _t.errorf(("%s: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.reflect.Reflect.typeOf(_test._data)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._print));
            };
        };
    }
function testInterface(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {
                x.set(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((1 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)), stdgo.Go.str());
                x.set(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((0 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)), stdgo.Go.str());
                x.set(stdgo.Go.toInterface(true), stdgo.Go.str());
                x.set(stdgo.Go.toInterface(false), stdgo.Go.str());
                x.set(stdgo.Go.toInterface((3.1 : stdgo.StdGoTypes.GoFloat64)), stdgo.Go.str());
                x.set(stdgo.Go.toInterface((2.1 : stdgo.StdGoTypes.GoFloat64)), stdgo.Go.str());
                x.set(stdgo.Go.toInterface((1.1 : stdgo.StdGoTypes.GoFloat64)), stdgo.Go.str());
                x.set(stdgo.Go.toInterface(stdgo.math.Math.naN()), stdgo.Go.str());
                x.set(stdgo.Go.toInterface((3 : stdgo.StdGoTypes.GoInt)), stdgo.Go.str());
                x.set(stdgo.Go.toInterface((2 : stdgo.StdGoTypes.GoInt)), stdgo.Go.str());
                x.set(stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.str());
                x.set(stdgo.Go.toInterface(("c" : stdgo.GoString)), stdgo.Go.str());
                x.set(stdgo.Go.toInterface(("b" : stdgo.GoString)), stdgo.Go.str());
                x.set(stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.str());
                x.set(stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (1 : stdgo.StdGoTypes.GoInt), _y : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_0))), stdgo.Go.str());
                x.set(stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (0 : stdgo.StdGoTypes.GoInt), _y : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_0))), stdgo.Go.str());
            };
            cast x;
        } : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.GoString>);
        var _got:stdgo.GoString = _sprint(stdgo.Go.toInterface(_m))?.__copy__();
        var _typeGroups = (new stdgo.Slice<stdgo.GoString>(6, 6, ("NaN: 1.1: 2.1: 3.1:" : stdgo.GoString), ("false: true:" : stdgo.GoString), ("1: 2: 3:" : stdgo.GoString), ("a: b: c:" : stdgo.GoString), ("[0 1]: [1 0]:" : stdgo.GoString), ("{0 1}: {1 0}:" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        for (__0 => _g in _typeGroups) {
            if (!stdgo.strings.Strings.contains(_got?.__copy__(), _g?.__copy__())) {
                _t.errorf(("sorted map should contain %q" : stdgo.GoString), stdgo.Go.toInterface(_g));
            };
        };
    }
