package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testIsZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            for (_i => _tt in (new stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_57.T__struct_57>(75, 75, ...[
({ _x : stdgo.Go.toInterface(true), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(false), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((0 : stdgo.GoInt)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((1 : stdgo.GoInt)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((0 : stdgo.GoInt8)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((1 : stdgo.GoInt8)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((0 : stdgo.GoInt16)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((1 : stdgo.GoInt16)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((0 : stdgo.GoInt32)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((1 : stdgo.GoInt32)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((0i64 : stdgo.GoInt64)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((1i64 : stdgo.GoInt64)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((0u32 : stdgo.GoUInt)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((1u32 : stdgo.GoUInt)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((0 : stdgo.GoUInt8)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((1 : stdgo.GoUInt8)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((0 : stdgo.GoUInt16)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((1 : stdgo.GoUInt16)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((0u32 : stdgo.GoUInt32)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((1u32 : stdgo.GoUInt32)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((0i64 : stdgo.GoUInt64)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((1i64 : stdgo.GoUInt64)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(((0 : stdgo.GoFloat64) : stdgo.GoFloat32)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(((1.2 : stdgo.GoFloat64) : stdgo.GoFloat32)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((0 : stdgo.GoFloat64)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((1.2 : stdgo.GoFloat64)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64) : stdgo.GoComplex64)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(((1.2f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64) : stdgo.GoComplex64)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64) : stdgo.GoComplex128)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(((1.2f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64) : stdgo.GoComplex128)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(new stdgo.GoComplex128(stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64))), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(new stdgo.GoComplex128((0 : stdgo.GoFloat64), stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)))), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(new stdgo.GoComplex128(stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)))), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((0 : stdgo.GoUIntptr)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((128 : stdgo.GoUIntptr)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo._internal.reflect.Reflect_zero.zero(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoString>(5, 5, ...[]).__setString__() : stdgo.GoArray<stdgo.GoString>)))).interface_(), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoString>(5, 5, ...[]).__setString__() : stdgo.GoArray<stdgo.GoString>)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoString>(5, 5, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.GoArray<stdgo.GoString>)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>>(1, 1, ...[]) : stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>>)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>>(1, 1, ...[stdgo.Go.pointer((0 : stdgo.GoInt))]) : stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>>)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.Slice<stdgo.GoInt>>(3, 3, ...[]) : stdgo.GoArray<stdgo.Slice<stdgo.GoInt>>)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.Slice<stdgo.GoInt>>(3, 3, ...[(new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)]) : stdgo.GoArray<stdgo.Slice<stdgo.GoInt>>)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(4096, 4096, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(4096, 4096, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.reflect.Reflect_Value.Value>(3, 3, ...[].concat([for (i in 0 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.GoArray<stdgo._internal.reflect.Reflect_Value.Value>)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.reflect.Reflect_Value.Value>(3, 3, ...[(new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((0 : stdgo.GoInt)))?.__copy__(), (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.GoArray<stdgo._internal.reflect.Reflect_Value.Value>)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((null : stdgo.Chan<stdgo.GoString>)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new stdgo.Chan<stdgo.GoString>(0, () -> ("" : stdgo.GoString)) : stdgo.Chan<stdgo.GoString>)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(stdgo._internal.time.Time_after.after((1i64 : stdgo._internal.time.Time_Duration.Duration))), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : (null : () -> Void), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(stdgo._internal.reflect.Reflect_new_.new_), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Error)) : stdgo.Ref<stdgo.Error>))).elem()).elem())), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(stdgo.Go.str()?.__copy__()))), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((null : stdgo.Ref<() -> Void>)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt>)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoInt))), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoString>)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(stdgo.Go.str()), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(("not-zero" : stdgo.GoString)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_.T_() : _internal.reflect_test.Reflect_test_T_.T_)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_.T_((123 : stdgo.GoInt), (456.75 : stdgo.GoFloat64), ("hello" : stdgo.GoString), stdgo.Go.pointer(_internal.reflect_test.Reflect_test___i.__i)) : _internal.reflect_test.Reflect_test_T_.T_)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_DirectIfaceT.DirectIfaceT() : _internal.reflect_test.Reflect_test_DirectIfaceT.DirectIfaceT)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_DirectIfaceT.DirectIfaceT(stdgo.Go.pointer((0 : stdgo.GoInt))) : _internal.reflect_test.Reflect_test_DirectIfaceT.DirectIfaceT)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(stdgo.Go.asInterface(({ _s : (null : stdgo.Slice<stdgo.GoInt>) } : _internal.reflect_test.Reflect_test_T__struct_59.T__struct_59))), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(stdgo.Go.asInterface(({ _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : _internal.reflect_test.Reflect_test_T__struct_59.T__struct_59))), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(stdgo.Go.asInterface(({ value : ({} : stdgo._internal.reflect.Reflect_Value.Value) } : _internal.reflect_test.Reflect_test_T__struct_60.T__struct_60))), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface(stdgo.Go.asInterface(({ value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((0 : stdgo.GoInt)))?.__copy__() } : _internal.reflect_test.Reflect_test_T__struct_60.T__struct_60))), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((@:default_value null : stdgo._internal.unsafe.Unsafe.UnsafePointer)), _want : true } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57),
({ _x : stdgo.Go.toInterface((stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoInt))) : stdgo._internal.unsafe.Unsafe.UnsafePointer)), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57)].concat([for (i in 75 ... (75 > 75 ? 75 : 75 : stdgo.GoInt).toBasic()) ({ _x : (null : stdgo.AnyInterface), _want : false } : _internal.reflect_test.Reflect_test_T__struct_57.T__struct_57)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_57.T__struct_57>)) {
                var _x:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_tt._x : stdgo._internal.reflect.Reflect_Value.Value)) : stdgo._internal.reflect.Reflect_Value.Value), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.reflect.Reflect_Value.Value), _1 : false };
                    }, _v = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _x = _v?.__copy__();
                    } else {
                        _x = stdgo._internal.reflect.Reflect_valueOf.valueOf(_tt._x)?.__copy__();
                    };
                };
                var _b = (_x.isZero() : Bool);
                if (_b != (_tt._want)) {
                    _t.errorf(("%d: IsZero((%s)(%+v)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_x.kind())), _tt._x, stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_tt._want));
                };
                if (!stdgo._internal.reflect.Reflect_zero.zero(stdgo._internal.reflect.Reflect_typeOf.typeOf(_tt._x)).isZero()) {
                    _t.errorf(("%d: IsZero(Zero(TypeOf((%s)(%+v)))) is false" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_x.kind())), _tt._x);
                };
                var _p = (stdgo._internal.reflect.Reflect_new_.new_(_x.type()).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                _p.set(_x?.__copy__());
                _p.setZero();
                if (!_p.isZero()) {
                    _t.errorf(("%d: IsZero((%s)(%+v)) is true after SetZero" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_p.kind())), _tt._x);
                };
            };
            {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    {
                                        var _r = ({
                                            final r = stdgo.Go.recover_exception;
                                            stdgo.Go.recover_exception = null;
                                            r;
                                        } : stdgo.AnyInterface);
                                        if (_r == null) {
                                            _t.error(stdgo.Go.toInterface(("should panic for invalid value" : stdgo.GoString)));
                                        };
                                    };
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                } catch(__exception__) {
                                    var exe:Dynamic = __exception__.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                        if (__exception__.message == "__return__") throw "__return__";
                                        exe = stdgo.Go.toInterface(__exception__.message);
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            };
                            a();
                        });
                        (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value).isZero();
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
