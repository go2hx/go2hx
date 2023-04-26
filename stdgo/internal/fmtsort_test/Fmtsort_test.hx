package stdgo.internal.fmtsort_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.internal.fmtsort.Fmtsort;
/**
    
    
    
**/
private var _chans = _makeChans();
/**
    
    
    
**/
private var _compareTests = (new Slice<Slice<stdgo.reflect.Reflect.Value>>(
23,
23,
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0 : GoInt))), Go.toInterface((-1 : GoInt)), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0 : GoInt8))), Go.toInterface((-1 : GoInt)), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0 : GoInt16))), Go.toInterface((-1 : GoInt)), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0 : GoInt32))), Go.toInterface((-1 : GoInt)), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0i64 : GoInt64))), Go.toInterface((-1 : GoInt)), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0u32 : GoUInt))), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt)), Go.toInterface((5 : GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0 : GoUInt8))), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt)), Go.toInterface((5 : GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0 : GoUInt16))), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt)), Go.toInterface((5 : GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0u32 : GoUInt32))), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt)), Go.toInterface((5 : GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0i64 : GoUInt64))), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt)), Go.toInterface((5 : GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0 : GoUIntptr))), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt)), Go.toInterface((5 : GoInt))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((Go.str() : GoString))), Go.toInterface(Go.str()), Go.toInterface(("a" : GoString)), Go.toInterface(("ab" : GoString))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface(((0 : GoFloat64) : GoFloat32))), Go.toInterface(stdgo.math.Math.naN()), Go.toInterface(stdgo.math.Math.inf((-1 : GoInt))), Go.toInterface((-1e+10 : GoFloat64)), Go.toInterface((0 : GoInt)), Go.toInterface((1e+10 : GoFloat64)), Go.toInterface(stdgo.math.Math.inf((1 : GoInt)))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0 : GoFloat64))), Go.toInterface(stdgo.math.Math.naN()), Go.toInterface(stdgo.math.Math.inf((-1 : GoInt))), Go.toInterface((-1e+10 : GoFloat64)), Go.toInterface((0 : GoInt)), Go.toInterface((1e+10 : GoFloat64)), Go.toInterface(stdgo.math.Math.inf((1 : GoInt)))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface(((0f64 : GoFloat64) + new GoComplex128(0f64, 1f64) : GoComplex64))), Go.toInterface(((-1f64 : GoFloat64) + new GoComplex128(0f64, -1f64))), Go.toInterface(((-1f64 : GoFloat64) + new GoComplex128(0f64, 0f64))), Go.toInterface(((-1f64 : GoFloat64) + new GoComplex128(0f64, 1f64))), Go.toInterface(((0f64 : GoFloat64) + new GoComplex128(0f64, -1f64))), Go.toInterface(((0f64 : GoFloat64) + new GoComplex128(0f64, 0f64))), Go.toInterface(((0f64 : GoFloat64) + new GoComplex128(0f64, 1f64))), Go.toInterface(((1f64 : GoFloat64) + new GoComplex128(0f64, -1f64))), Go.toInterface(((1f64 : GoFloat64) + new GoComplex128(0f64, 0f64))), Go.toInterface(((1f64 : GoFloat64) + new GoComplex128(0f64, 1f64)))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface(((0f64 : GoFloat64) + new GoComplex128(0f64, 1f64) : GoComplex128))), Go.toInterface(((-1f64 : GoFloat64) + new GoComplex128(0f64, -1f64))), Go.toInterface(((-1f64 : GoFloat64) + new GoComplex128(0f64, 0f64))), Go.toInterface(((-1f64 : GoFloat64) + new GoComplex128(0f64, 1f64))), Go.toInterface(((0f64 : GoFloat64) + new GoComplex128(0f64, -1f64))), Go.toInterface(((0f64 : GoFloat64) + new GoComplex128(0f64, 0f64))), Go.toInterface(((0f64 : GoFloat64) + new GoComplex128(0f64, 1f64))), Go.toInterface(((1f64 : GoFloat64) + new GoComplex128(0f64, -1f64))), Go.toInterface(((1f64 : GoFloat64) + new GoComplex128(0f64, 0f64))), Go.toInterface(((1f64 : GoFloat64) + new GoComplex128(0f64, 1f64)))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface(false)), Go.toInterface(false), Go.toInterface(true)),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface(Go.pointer(_ints[(0 : GoInt)]))), Go.toInterface(Go.pointer(_ints[(0 : GoInt)])), Go.toInterface(Go.pointer(_ints[(1 : GoInt)])), Go.toInterface(Go.pointer(_ints[(2 : GoInt)]))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((Go.toInterface(Go.pointer(_ints[(0 : GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer))), Go.toInterface((Go.toInterface(Go.pointer(_ints[(0 : GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer)), Go.toInterface((Go.toInterface(Go.pointer(_ints[(1 : GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer)), Go.toInterface((Go.toInterface(Go.pointer(_ints[(2 : GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface(_chans[(0 : GoInt)])), Go.toInterface(_chans[(0 : GoInt)]), Go.toInterface(_chans[(1 : GoInt)]), Go.toInterface(_chans[(2 : GoInt)])),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((new T_toy() : T_toy))), Go.toInterface((new T_toy((0 : GoInt), (1 : GoInt)) : T_toy)), Go.toInterface((new T_toy((0 : GoInt), (2 : GoInt)) : T_toy)), Go.toInterface((new T_toy((1 : GoInt), (-1 : GoInt)) : T_toy)), Go.toInterface((new T_toy((1 : GoInt), (1 : GoInt)) : T_toy))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((new GoArray<GoInt>(...([].concat([for (i in 0 ... 2) (0 : GoInt)]))) : GoArray<GoInt>))), Go.toInterface((new GoArray<GoInt>((1 : GoInt), (1 : GoInt)) : GoArray<GoInt>)), Go.toInterface((new GoArray<GoInt>((1 : GoInt), (2 : GoInt)) : GoArray<GoInt>)), Go.toInterface((new GoArray<GoInt>((2 : GoInt), (0 : GoInt)) : GoArray<GoInt>))),
_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface(Go.toInterface((0 : GoInt)))), _iFace, Go.toInterface((1 : GoInt)), Go.toInterface((2 : GoInt)), Go.toInterface((3 : GoInt)))) : Slice<Slice<stdgo.reflect.Reflect.Value>>);
/**
    
    
    
**/
private var _sortTests = (new Slice<stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest>(
11,
11,
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(({
        final x = new GoMap<GoInt, GoString>();
        @:mergeBlock {
            x.set((7 : GoInt), ("bar" : GoString));
            x.set((-3 : GoInt), ("foo" : GoString));
        };
        x;
    })), ("-3:foo 7:bar" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(({
        final x = new GoMap<GoUInt8, GoString>();
        @:mergeBlock {
            x.set((7 : GoUInt8), ("bar" : GoString));
            x.set((3 : GoUInt8), ("foo" : GoString));
        };
        x;
    })), ("3:foo 7:bar" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(({
        final x = new GoMap<GoString, GoString>();
        @:mergeBlock {
            x.set(("7" : GoString), ("bar" : GoString));
            x.set(("3" : GoString), ("foo" : GoString));
        };
        x;
    })), ("3:foo 7:bar" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(({
        final x = new GoMap<GoFloat64, GoString>();
        @:mergeBlock {
            x.set((7 : GoFloat64), ("bar" : GoString));
            x.set((-3 : GoFloat64), ("foo" : GoString));
            x.set(stdgo.math.Math.naN(), ("nan" : GoString));
            x.set(stdgo.math.Math.inf((0 : GoInt)), ("inf" : GoString));
        };
        x;
    })), ("NaN:nan -3:foo 7:bar +Inf:inf" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(({
        final x = new GoMap<GoComplex128, GoString>();
        @:mergeBlock {
            x.set(((7f64 : GoFloat64) + new GoComplex128(0f64, 2f64)), ("bar2" : GoString));
            x.set(((7f64 : GoFloat64) + new GoComplex128(0f64, 1f64)), ("bar" : GoString));
            x.set(((-3f64 : GoFloat64) + new GoComplex128(0f64, 0f64)), ("foo" : GoString));
            x.set(new GoComplex128(stdgo.math.Math.naN(), (0 : GoFloat64)), ("nan" : GoString));
            x.set(new GoComplex128(stdgo.math.Math.inf((0 : GoInt)), (0 : GoFloat64)), ("inf" : GoString));
        };
        x;
    })), ("(NaN+0i):nan (-3+0i):foo (7+1i):bar (7+2i):bar2 (+Inf+0i):inf" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(({
        final x = new GoMap<Bool, GoString>();
        @:mergeBlock {
            x.set(true, ("true" : GoString));
            x.set(false, ("false" : GoString));
        };
        x;
    })), ("false:false true:true" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(_chanMap()), ("CHAN0:0 CHAN1:1 CHAN2:2" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(_pointerMap()), ("PTR0:0 PTR1:1 PTR2:2" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(_unsafePointerMap()), ("UNSAFEPTR0:0 UNSAFEPTR1:1 UNSAFEPTR2:2" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(({
        final x = new GoObjectMap<stdgo.internal.fmtsort_test.Fmtsort_test.T_toy, GoString>();
        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.fmtsort_test.Fmtsort_test.T_toy", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "a", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_b", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }));
        x.__defaultValue__ = () -> ("" : GoString);
        @:mergeBlock {
            x.set(@:invalid_compositelit_null null, ("72" : GoString));
            x.set(@:invalid_compositelit_null null, ("71" : GoString));
            x.set(@:invalid_compositelit_null null, ("34" : GoString));
        };
        cast x;
    } : GoMap<stdgo.internal.fmtsort_test.Fmtsort_test.T_toy, GoString>)), ("{3 4}:34 {7 1}:71 {7 2}:72" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(({
        final x = new GoObjectMap<GoArray<GoInt>, GoString>();
        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, 2));
        x.__defaultValue__ = () -> ("" : GoString);
        @:mergeBlock {
            x.set(@:invalid_compositelit_null null, ("72" : GoString));
            x.set(@:invalid_compositelit_null null, ("71" : GoString));
            x.set(@:invalid_compositelit_null null, ("34" : GoString));
        };
        cast x;
    } : GoMap<GoArray<GoInt>, GoString>)), ("[3 4]:34 [7 1]:71 [7 2]:72" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest)) : Slice<stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest>);
/**
    
    
    
**/
private var _iFace : AnyInterface = (null : AnyInterface);
/**
    
    
    
**/
private var _ints : GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 3) (0 : GoInt)]);
/**
    
    
    
**/
@:structInit @:private class T_sortTest {
    public var _data : AnyInterface = (null : AnyInterface);
    public var _print : GoString = "";
    public function new(?_data:AnyInterface, ?_print:GoString) {
        if (_data != null) this._data = _data;
        if (_print != null) this._print = _print;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_sortTest(_data, _print);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_toy {
    public var a : GoInt = 0;
    public var _b : GoInt = 0;
    public function new(?a:GoInt, ?_b:GoInt) {
        if (a != null) this.a = a;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_toy(a, _b);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.fmtsort_test.Fmtsort_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.internal.fmtsort_test.Fmtsort_test.T__struct_0_static_extension) private typedef T__struct_0 = {
    public var _x : GoInt;
    public var _y : GoInt;
};
private function _ct(_typ:stdgo.reflect.Reflect.Type, _args:haxe.Rest<AnyInterface>):Slice<stdgo.reflect.Reflect.Value> {
        var _args = new Slice<AnyInterface>(_args.length, 0, ..._args);
        var _value = new Slice<stdgo.reflect.Reflect.Value>((_args.length : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_args.length : GoInt).toBasic() > 0 ? (_args.length : GoInt).toBasic() : 0 : GoInt).toBasic()) ({} : stdgo.reflect.Reflect.Value)]);
        for (_i => _v in _args) {
            var _x:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(_v)?.__copy__();
            if (!_x.isValid()) {
                _x = stdgo.reflect.Reflect.zero(_typ)?.__copy__();
            } else {
                _x = _x.convert(_typ)?.__copy__();
            };
            _value[(_i : GoInt)] = _x?.__copy__();
        };
        return _value;
    }
function testCompare(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _compareTests) {
            for (_i => _v0 in _test) {
                for (_j => _v1 in _test) {
                    var _c:GoInt = stdgo.internal.fmtsort.Fmtsort.compare(_v0?.__copy__(), _v1?.__copy__());
                    var _expect:GoInt = (0 : GoInt);
                    if (_i == (_j)) {
                        _expect = (0 : GoInt);
                        {
                            var _typ:stdgo.reflect.Reflect.Type = _v0.type();
                            if (((_typ.kind() == (13u32 : stdgo.reflect.Reflect.Kind)) || (_typ.kind() == (14u32 : stdgo.reflect.Reflect.Kind))) && stdgo.math.Math.isNaN(_v0.float_())) {
                                _expect = (-1 : GoInt);
                            };
                        };
                    } else if (_i < _j) {
                        _expect = (-1 : GoInt);
                    } else if (_i > _j) {
                        _expect = (1 : GoInt);
                    };
                    if (_c != (_expect)) {
                        _t.errorf(("%s: compare(%v,%v)=%d; expect %d" : GoString), Go.toInterface(_v0.type()), Go.toInterface(Go.asInterface(_v0)), Go.toInterface(Go.asInterface(_v1)), Go.toInterface(_c), Go.toInterface(_expect));
                    };
                };
            };
        };
    }
private function _sprint(_data:AnyInterface):GoString {
        var _om = stdgo.internal.fmtsort.Fmtsort.sort(stdgo.reflect.Reflect.valueOf(_data)?.__copy__());
        if (_om == null || (_om : Dynamic).__nil__) {
            return ("nil" : GoString);
        };
        var _b = (Go.setRef(({} : stdgo.strings.Strings.Builder)) : Ref<stdgo.strings.Strings.Builder>);
        for (_i => _key in _om.key) {
            if (_i > (0 : GoInt)) {
                _b.writeRune((32 : GoInt32));
            };
            _b.writeString(_sprintKey(_key?.__copy__()));
            _b.writeRune((58 : GoInt32));
            stdgo.fmt.Fmt.fprint(Go.asInterface(_b), Go.toInterface(Go.asInterface(_om.value[(_i : GoInt)])));
        };
        return (_b.string() : GoString);
    }
/**
    // sprintKey formats a reflect.Value but gives reproducible values for some
    // problematic types such as pointers. Note that it only does special handling
    // for the troublesome types used in the test cases; it is not a general
    // printer.
**/
private function _sprintKey(_key:stdgo.reflect.Reflect.Value):GoString {
        {
            var _str:GoString = (_key.type().string() : GoString);
            {
                final __value__ = _str;
                if (__value__ == (("*int" : GoString))) {
                    var _ptr = (Go.typeAssert((_key.interface_() : Pointer<GoInt>)) : Pointer<GoInt>);
                    for (_i in 0 ... _ints.length.toBasic()) {
                        if (_ptr == (Go.pointer(_ints[(_i : GoInt)]))) {
                            return stdgo.fmt.Fmt.sprintf(("PTR%d" : GoString), Go.toInterface(_i));
                        };
                    };
                    return ("PTR???" : GoString);
                } else if (__value__ == (("unsafe.Pointer" : GoString))) {
                    var _ptr:stdgo.unsafe.Unsafe.UnsafePointer = (Go.typeAssert((_key.interface_() : stdgo.unsafe.Unsafe.UnsafePointer)) : stdgo.unsafe.Unsafe.UnsafePointer);
                    for (_i in 0 ... _ints.length.toBasic()) {
                        if (_ptr == ((Go.toInterface(Go.pointer(_ints[(_i : GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer))) {
                            return stdgo.fmt.Fmt.sprintf(("UNSAFEPTR%d" : GoString), Go.toInterface(_i));
                        };
                    };
                    return ("UNSAFEPTR???" : GoString);
                } else if (__value__ == (("chan int" : GoString))) {
                    var _c = (Go.typeAssert((_key.interface_() : Chan<GoInt>)) : Chan<GoInt>);
                    for (_i in 0 ... _chans.length.toBasic()) {
                        if (_c == (_chans[(_i : GoInt)])) {
                            return stdgo.fmt.Fmt.sprintf(("CHAN%d" : GoString), Go.toInterface(_i));
                        };
                    };
                    return ("CHAN???" : GoString);
                } else {
                    return stdgo.fmt.Fmt.sprint(Go.toInterface(Go.asInterface(_key)));
                };
            };
        };
    }
private function _makeChans():Slice<Chan<GoInt>> {
        var _cs = (new Slice<Chan<GoInt>>(3, 3, new Chan<GoInt>(0, () -> (0 : GoInt)), new Chan<GoInt>(0, () -> (0 : GoInt)), new Chan<GoInt>(0, () -> (0 : GoInt))) : Slice<Chan<GoInt>>);
        stdgo.sort.Sort.slice(Go.toInterface(_cs), function(_i:GoInt, _j:GoInt):Bool {
            return (stdgo.reflect.Reflect.valueOf(Go.toInterface(_cs[(_i : GoInt)])).unsafePointer().__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr) < (stdgo.reflect.Reflect.valueOf(Go.toInterface(_cs[(_j : GoInt)])).unsafePointer().__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr);
        });
        return _cs;
    }
private function _pointerMap():GoMap<Pointer<GoInt>, GoString> {
        var _m = ({
            final x = new GoPointerMap<Pointer<GoInt>, GoString>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Pointer<GoInt>, GoString>);
        {
            var _i:GoInt = (2 : GoInt);
            Go.cfor(_i >= (0 : GoInt), _i--, {
                _m[Go.pointer(_ints[(_i : GoInt)])] = stdgo.fmt.Fmt.sprint(Go.toInterface(_i));
            });
        };
        return _m;
    }
private function _unsafePointerMap():GoMap<stdgo.unsafe.Unsafe.UnsafePointer, GoString> {
        var _m = ({
            final x = new GoMap<stdgo.unsafe.Unsafe.UnsafePointer, GoString>();
            @:mergeBlock {};
            x;
        });
        {
            var _i:GoInt = (2 : GoInt);
            Go.cfor(_i >= (0 : GoInt), _i--, {
                _m[(Go.toInterface(Go.pointer(_ints[(_i : GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer)] = stdgo.fmt.Fmt.sprint(Go.toInterface(_i));
            });
        };
        return _m;
    }
private function _chanMap():GoMap<Chan<GoInt>, GoString> {
        var _m = ({
            final x = new GoMap<Chan<GoInt>, GoString>();
            @:mergeBlock {};
            x;
        });
        {
            var _i:GoInt = (2 : GoInt);
            Go.cfor(_i >= (0 : GoInt), _i--, {
                _m[_chans[(_i : GoInt)]] = stdgo.fmt.Fmt.sprint(Go.toInterface(_i));
            });
        };
        return _m;
    }
function testOrder(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _sortTests) {
            var _got:GoString = _sprint(_test._data);
            if (_got != (_test._print)) {
                _t.errorf(("%s: got %q, want %q" : GoString), Go.toInterface(stdgo.reflect.Reflect.typeOf(_test._data)), Go.toInterface(_got), Go.toInterface(_test._print));
            };
        };
    }
function testInterface(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _m = ({
            final x = new GoAnyInterfaceMap<GoString>();
            x.__defaultValue__ = () -> ("" : GoString);
            @:mergeBlock {
                x.set(Go.toInterface((new GoArray<GoInt>((1 : GoInt), (0 : GoInt)) : GoArray<GoInt>)), Go.str());
                x.set(Go.toInterface((new GoArray<GoInt>((0 : GoInt), (1 : GoInt)) : GoArray<GoInt>)), Go.str());
                x.set(Go.toInterface(true), Go.str());
                x.set(Go.toInterface(false), Go.str());
                x.set(Go.toInterface((3.1 : GoFloat64)), Go.str());
                x.set(Go.toInterface((2.1 : GoFloat64)), Go.str());
                x.set(Go.toInterface((1.1 : GoFloat64)), Go.str());
                x.set(Go.toInterface(stdgo.math.Math.naN()), Go.str());
                x.set(Go.toInterface((3 : GoInt)), Go.str());
                x.set(Go.toInterface((2 : GoInt)), Go.str());
                x.set(Go.toInterface((1 : GoInt)), Go.str());
                x.set(Go.toInterface(("c" : GoString)), Go.str());
                x.set(Go.toInterface(("b" : GoString)), Go.str());
                x.set(Go.toInterface(("a" : GoString)), Go.str());
                x.set(Go.toInterface(Go.asInterface(({ _x : (1 : GoInt), _y : (0 : GoInt) } : T__struct_0))), Go.str());
                x.set(Go.toInterface(Go.asInterface(({ _x : (0 : GoInt), _y : (1 : GoInt) } : T__struct_0))), Go.str());
            };
            cast x;
        } : GoMap<AnyInterface, GoString>);
        var _got:GoString = _sprint(Go.toInterface(_m));
        var _typeGroups = (new Slice<GoString>(6, 6, ("NaN: 1.1: 2.1: 3.1:" : GoString), ("false: true:" : GoString), ("1: 2: 3:" : GoString), ("a: b: c:" : GoString), ("[0 1]: [1 0]:" : GoString), ("{0 1}: {1 0}:" : GoString)) : Slice<GoString>);
        for (__0 => _g in _typeGroups) {
            if (!stdgo.strings.Strings.contains(_got, _g)) {
                _t.errorf(("sorted map should contain %q" : GoString), Go.toInterface(_g));
            };
        };
    }
