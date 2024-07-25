package stdgo._internal.internal.fmtsort_test;
import stdgo._internal.internal.fmtsort.Fmtsort;
var _iFace : stdgo.AnyInterface = (null : stdgo.AnyInterface);
var _ints : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoInt)]);
var _chans : stdgo.Slice<stdgo.Chan<stdgo.GoInt>> = _makeChans();
var _compareTests : stdgo.Slice<stdgo.Slice<stdgo._internal.reflect.Reflect.Value>> = (new stdgo.Slice<stdgo.Slice<stdgo._internal.reflect.Reflect.Value>>(23, 23, ...[
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt))), stdgo.Go.toInterface((-1 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt8))), stdgo.Go.toInterface((-1 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt16))), stdgo.Go.toInterface((-1 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt32))), stdgo.Go.toInterface((-1 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((0i64 : stdgo.GoInt64))), stdgo.Go.toInterface((-1 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((0u32 : stdgo.GoUInt))), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((5 : stdgo.GoInt))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.GoUInt8))), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((5 : stdgo.GoInt))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.GoUInt16))), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((5 : stdgo.GoInt))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((0u32 : stdgo.GoUInt32))), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((5 : stdgo.GoInt))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((0i64 : stdgo.GoUInt64))), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((5 : stdgo.GoInt))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.GoUIntptr))), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((5 : stdgo.GoInt))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((stdgo.Go.str() : stdgo.GoString))), stdgo.Go.toInterface(stdgo.Go.str()), stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.toInterface(("ab" : stdgo.GoString))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface(((0 : stdgo.GoFloat64) : stdgo.GoFloat32))), stdgo.Go.toInterface(stdgo._internal.math.Math.naN()), stdgo.Go.toInterface(stdgo._internal.math.Math.inf((-1 : stdgo.GoInt))), stdgo.Go.toInterface((-1e+10 : stdgo.GoFloat64)), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((1e+10 : stdgo.GoFloat64)), stdgo.Go.toInterface(stdgo._internal.math.Math.inf((1 : stdgo.GoInt)))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.GoFloat64))), stdgo.Go.toInterface(stdgo._internal.math.Math.naN()), stdgo.Go.toInterface(stdgo._internal.math.Math.inf((-1 : stdgo.GoInt))), stdgo.Go.toInterface((-1e+10 : stdgo.GoFloat64)), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((1e+10 : stdgo.GoFloat64)), stdgo.Go.toInterface(stdgo._internal.math.Math.inf((1 : stdgo.GoInt)))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64) : stdgo.GoComplex64))), stdgo.Go.toInterface(((-1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -1f64))), stdgo.Go.toInterface(((-1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), stdgo.Go.toInterface(((-1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64))), stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -1f64))), stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64))), stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -1f64))), stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64)))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64) : stdgo.GoComplex128))), stdgo.Go.toInterface(((-1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -1f64))), stdgo.Go.toInterface(((-1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), stdgo.Go.toInterface(((-1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64))), stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -1f64))), stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64))), stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -1f64))), stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64)))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface(false)), stdgo.Go.toInterface(false), stdgo.Go.toInterface(true)),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(0 : stdgo.GoInt)]))), stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(0 : stdgo.GoInt)])), stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(1 : stdgo.GoInt)])), stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(2 : stdgo.GoInt)]))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer))), stdgo.Go.toInterface((stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)), stdgo.Go.toInterface((stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(1 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)), stdgo.Go.toInterface((stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(2 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface(_chans[(0 : stdgo.GoInt)])), stdgo.Go.toInterface(_chans[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_chans[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_chans[(2 : stdgo.GoInt)])),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy() : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy))), stdgo.Go.toInterface((new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy)), stdgo.Go.toInterface((new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy)), stdgo.Go.toInterface((new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy((1 : stdgo.GoInt), (-1 : stdgo.GoInt)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy)), stdgo.Go.toInterface((new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy((1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>))), stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)), stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)), stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(2 : stdgo.GoInt), (0 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>))),
_ct(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.toInterface((0 : stdgo.GoInt)))), _iFace, stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt)))]) : stdgo.Slice<stdgo.Slice<stdgo._internal.reflect.Reflect.Value>>);
var _sortTests : stdgo.Slice<stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest> = (new stdgo.Slice<stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest>(11, 11, ...[
(new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((7 : stdgo.GoInt), ("bar" : stdgo.GoString));
x.set((-3 : stdgo.GoInt), ("foo" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>)), ("-3:foo 7:bar" : stdgo.GoString)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((7 : stdgo.GoUInt8), ("bar" : stdgo.GoString));
x.set((3 : stdgo.GoUInt8), ("foo" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>)), ("3:foo 7:bar" : stdgo.GoString)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set(("7" : stdgo.GoString), ("bar" : stdgo.GoString));
x.set(("3" : stdgo.GoString), ("foo" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>)), ("3:foo 7:bar" : stdgo.GoString)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((7 : stdgo.GoFloat64), ("bar" : stdgo.GoString));
x.set((-3 : stdgo.GoFloat64), ("foo" : stdgo.GoString));
x.set(stdgo._internal.math.Math.naN(), ("nan" : stdgo.GoString));
x.set(stdgo._internal.math.Math.inf((0 : stdgo.GoInt)), ("inf" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoString>)), ("NaN:nan -3:foo 7:bar +Inf:inf" : stdgo.GoString)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoComplex128Map<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set(((7f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64)), ("bar2" : stdgo.GoString));
x.set(((7f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64)), ("bar" : stdgo.GoString));
x.set(((-3f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), ("foo" : stdgo.GoString));
x.set(new stdgo.GoComplex128(stdgo._internal.math.Math.naN(), (0 : stdgo.GoFloat64)), ("nan" : stdgo.GoString));
x.set(new stdgo.GoComplex128(stdgo._internal.math.Math.inf((0 : stdgo.GoInt)), (0 : stdgo.GoFloat64)), ("inf" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoComplex128, stdgo.GoString>)), ("(NaN+0i):nan (-3+0i):foo (7+1i):bar (7+2i):bar2 (+Inf+0i):inf" : stdgo.GoString)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoBoolMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set(true, ("true" : stdgo.GoString));
x.set(false, ("false" : stdgo.GoString));
        x;
    } : stdgo.GoMap<Bool, stdgo.GoString>)), ("false:false true:true" : stdgo.GoString)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(_chanMap()), ("CHAN0:0 CHAN1:1 CHAN2:2" : stdgo.GoString)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(_pointerMap()), ("PTR0:0 PTR1:1 PTR2:2" : stdgo.GoString)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(_unsafePointerMap()), ("UNSAFEPTR0:0 UNSAFEPTR1:1 UNSAFEPTR2:2" : stdgo.GoString)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy, stdgo.GoString>();
        x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }));
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy((7 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy), ("72" : stdgo.GoString));
x.set((new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy((7 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy), ("71" : stdgo.GoString));
x.set((new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy((3 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy), ("34" : stdgo.GoString));
        cast x;
    } : stdgo.GoMap<stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_toy, stdgo.GoString>)), ("{3 4}:34 {7 1}:71 {7 2}:72" : stdgo.GoString)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<stdgo.GoArray<stdgo.GoInt>, stdgo.GoString>();
        x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, 2));
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(7 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>), ("72" : stdgo.GoString));
x.set((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(7 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>), ("71" : stdgo.GoString));
x.set((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>), ("34" : stdgo.GoString));
        cast x;
    } : stdgo.GoMap<stdgo.GoArray<stdgo.GoInt>, stdgo.GoString>)), ("[3 4]:34 [7 1]:71 [7 2]:72" : stdgo.GoString)) : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest)])) : stdgo.Slice<stdgo._internal.internal.fmtsort_test.Fmtsort_test.T_sortTest>);
@:structInit @:private class T_sortTest {
    public var _data : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _print : stdgo.GoString = "";
    public function new(?_data:stdgo.AnyInterface, ?_print:stdgo.GoString) {
        if (_data != null) this._data = _data;
        if (_print != null) this._print = _print;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sortTest(_data, _print);
    }
}
@:structInit @:private class T_toy {
    public var a : stdgo.GoInt = 0;
    public var _b : stdgo.GoInt = 0;
    public function new(?a:stdgo.GoInt, ?_b:stdgo.GoInt) {
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.fmtsort_test.Fmtsort_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.internal.fmtsort_test.Fmtsort_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _x : stdgo.GoInt;
    public var _y : stdgo.GoInt;
};
function _ct(_typ:stdgo._internal.reflect.Reflect.Type_, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo._internal.reflect.Reflect.Value> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var _value = (new stdgo.Slice<stdgo._internal.reflect.Reflect.Value>((_args.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_args.length : stdgo.GoInt).toBasic() > 0 ? (_args.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect.Value>);
        for (_i => _v in _args) {
            var _x = (stdgo._internal.reflect.Reflect.valueOf(_v)?.__copy__() : stdgo._internal.reflect.Reflect.Value);
            if (!_x.isValid()) {
                _x = stdgo._internal.reflect.Reflect.zero(_typ)?.__copy__();
            } else {
                _x = _x.convert(_typ)?.__copy__();
            };
            _value[(_i : stdgo.GoInt)] = _x?.__copy__();
        };
        return _value;
    }
function testCompare(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _compareTests) {
            for (_i => _v0 in _test) {
                for (_j => _v1 in _test) {
                    var _c = (stdgo._internal.internal.fmtsort.Fmtsort.compare(_v0?.__copy__(), _v1?.__copy__()) : stdgo.GoInt);
                    var _expect:stdgo.GoInt = (0 : stdgo.GoInt);
                    if (_i == (_j)) {
                        _expect = (0 : stdgo.GoInt);
                        {
                            var _typ = (_v0.type() : stdgo._internal.reflect.Reflect.Type_);
                            if (((((_typ.kind() == (13u32 : stdgo._internal.reflect.Reflect.Kind)) || (_typ.kind() == (14u32 : stdgo._internal.reflect.Reflect.Kind)) : Bool)) && stdgo._internal.math.Math.isNaN(_v0.float_()) : Bool)) {
                                _expect = (-1 : stdgo.GoInt);
                            };
                        };
                    } else if ((_i < _j : Bool)) {
                        _expect = (-1 : stdgo.GoInt);
                    } else if ((_i > _j : Bool)) {
                        _expect = (1 : stdgo.GoInt);
                    };
                    if (_c != (_expect)) {
                        _t.errorf(("%s: compare(%v,%v)=%d; expect %d" : stdgo.GoString), stdgo.Go.toInterface(_v0.type()), stdgo.Go.toInterface(stdgo.Go.asInterface(_v0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_v1)), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_expect));
                    };
                };
            };
        };
    }
function _sprint(_data:stdgo.AnyInterface):stdgo.GoString {
        var _om = stdgo._internal.internal.fmtsort.Fmtsort.sort(stdgo._internal.reflect.Reflect.valueOf(_data)?.__copy__());
        if (_om == null || (_om : Dynamic).__nil__) {
            return ("nil" : stdgo.GoString);
        };
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
        for (_i => _key in _om.key) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _b.writeRune((32 : stdgo.GoInt32));
            };
            _b.writeString(_sprintKey(_key?.__copy__())?.__copy__());
            _b.writeRune((58 : stdgo.GoInt32));
            stdgo._internal.fmt.Fmt.fprint(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.asInterface(_om.value[(_i : stdgo.GoInt)])));
        };
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
function _sprintKey(_key:stdgo._internal.reflect.Reflect.Value):stdgo.GoString {
        {
            var _str = ((_key.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                final __value__ = _str;
                if (__value__ == (("*int" : stdgo.GoString))) {
                    var _ptr = (stdgo.Go.typeAssert((_key.interface_() : stdgo.Pointer<stdgo.GoInt>)) : stdgo.Pointer<stdgo.GoInt>);
                    for (_i => _ in _ints) {
                        if (_ptr == (stdgo.Go.pointer(_ints[(_i : stdgo.GoInt)]))) {
                            return stdgo._internal.fmt.Fmt.sprintf(("PTR%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
                        };
                    };
                    return ("PTR???" : stdgo.GoString);
                } else if (__value__ == (("unsafe.Pointer" : stdgo.GoString))) {
                    var _ptr = (stdgo.Go.typeAssert((_key.interface_() : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
                    for (_i => _ in _ints) {
                        if (_ptr == ((stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(_i : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
                            return stdgo._internal.fmt.Fmt.sprintf(("UNSAFEPTR%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
                        };
                    };
                    return ("UNSAFEPTR???" : stdgo.GoString);
                } else if (__value__ == (("chan int" : stdgo.GoString))) {
                    var _c = (stdgo.Go.typeAssert((_key.interface_() : stdgo.Chan<stdgo.GoInt>)) : stdgo.Chan<stdgo.GoInt>);
                    for (_i => _ in _chans) {
                        if (_c == (_chans[(_i : stdgo.GoInt)])) {
                            return stdgo._internal.fmt.Fmt.sprintf(("CHAN%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
                        };
                    };
                    return ("CHAN???" : stdgo.GoString);
                } else {
                    return stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(stdgo.Go.asInterface(_key)))?.__copy__();
                };
            };
        };
    }
function _makeChans():stdgo.Slice<stdgo.Chan<stdgo.GoInt>> {
        var _cs = (new stdgo.Slice<stdgo.Chan<stdgo.GoInt>>(3, 3, ...[(new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>), (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>), (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>)]) : stdgo.Slice<stdgo.Chan<stdgo.GoInt>>);
        stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_cs), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return ((stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_cs[(_i : stdgo.GoInt)])).unsafePointer().__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) < (stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_cs[(_j : stdgo.GoInt)])).unsafePointer().__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : Bool);
        });
        return _cs;
    }
function _pointerMap():stdgo.GoMap<stdgo.Pointer<stdgo.GoInt>, stdgo.GoString> {
        var _m = ({
            final x = new stdgo.GoMap.GoPointerMap<stdgo.Pointer<stdgo.GoInt>, stdgo.GoString>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Pointer<stdgo.GoInt>, stdgo.GoString>);
        {
            var _i = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _m[stdgo.Go.pointer(_ints[(_i : stdgo.GoInt)])] = stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_i))?.__copy__();
            });
        };
        return _m;
    }
function _unsafePointerMap():stdgo.GoMap<stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoString> {
        var _m = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoString>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind));
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoString>);
        {
            var _i = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _m[(stdgo.Go.toInterface(stdgo.Go.pointer(_ints[(_i : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)] = stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_i))?.__copy__();
            });
        };
        return _m;
    }
function _chanMap():stdgo.GoMap<stdgo.Chan<stdgo.GoInt>, stdgo.GoString> {
        var _m = ({
            final x = new stdgo.GoMap.GoChanMap<stdgo.Chan<stdgo.GoInt>, stdgo.GoString>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Chan<stdgo.GoInt>, stdgo.GoString>);
        {
            var _i = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _m[_chans[(_i : stdgo.GoInt)]] = stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_i))?.__copy__();
            });
        };
        return _m;
    }
function testOrder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _sortTests) {
            var _got = (_sprint(_test._data)?.__copy__() : stdgo.GoString);
            if (_got != (_test._print)) {
                _t.errorf(("%s: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.reflect.Reflect.typeOf(_test._data)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._print));
            };
        };
    }
function testInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (0 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)), stdgo.Go.str());
x.set(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)), stdgo.Go.str());
x.set(stdgo.Go.toInterface(true), stdgo.Go.str());
x.set(stdgo.Go.toInterface(false), stdgo.Go.str());
x.set(stdgo.Go.toInterface((3.1 : stdgo.GoFloat64)), stdgo.Go.str());
x.set(stdgo.Go.toInterface((2.1 : stdgo.GoFloat64)), stdgo.Go.str());
x.set(stdgo.Go.toInterface((1.1 : stdgo.GoFloat64)), stdgo.Go.str());
x.set(stdgo.Go.toInterface(stdgo._internal.math.Math.naN()), stdgo.Go.str());
x.set(stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.str());
x.set(stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.str());
x.set(stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.str());
x.set(stdgo.Go.toInterface(("c" : stdgo.GoString)), stdgo.Go.str());
x.set(stdgo.Go.toInterface(("b" : stdgo.GoString)), stdgo.Go.str());
x.set(stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.str());
x.set(stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (1 : stdgo.GoInt), _y : (0 : stdgo.GoInt) } : T__struct_0))), stdgo.Go.str());
x.set(stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (0 : stdgo.GoInt), _y : (1 : stdgo.GoInt) } : T__struct_0))), stdgo.Go.str());
            cast x;
        } : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoString>);
        var _got = (_sprint(stdgo.Go.toInterface(_m))?.__copy__() : stdgo.GoString);
        var _typeGroups = (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("NaN: 1.1: 2.1: 3.1:" : stdgo.GoString), ("false: true:" : stdgo.GoString), ("1: 2: 3:" : stdgo.GoString), ("a: b: c:" : stdgo.GoString), ("[0 1]: [1 0]:" : stdgo.GoString), ("{0 1}: {1 0}:" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _g in _typeGroups) {
            if (!stdgo._internal.strings.Strings.contains(_got?.__copy__(), _g?.__copy__())) {
                _t.errorf(("sorted map should contain %q" : stdgo.GoString), stdgo.Go.toInterface(_g));
            };
        };
    }
