package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function testRegress(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _int32s:stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(9, 9, ...[(1 : stdgo.GoInt32), (10 : stdgo.GoInt32), (32 : stdgo.GoInt32), (1048576 : stdgo.GoInt32), (1048577 : stdgo.GoInt32), (1000000000 : stdgo.GoInt32), (1073741824 : stdgo.GoInt32), (2147483646 : stdgo.GoInt32), (2147483647 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _int64s:stdgo.Slice<stdgo.GoInt64> = (new stdgo.Slice<stdgo.GoInt64>(13, 13, ...[
(1i64 : stdgo.GoInt64),
(10i64 : stdgo.GoInt64),
(32i64 : stdgo.GoInt64),
(1048576i64 : stdgo.GoInt64),
(1048577i64 : stdgo.GoInt64),
(1000000000i64 : stdgo.GoInt64),
(1073741824i64 : stdgo.GoInt64),
(2147483646i64 : stdgo.GoInt64),
(2147483647i64 : stdgo.GoInt64),
(1000000000000000000i64 : stdgo.GoInt64),
(1152921504606846976i64 : stdgo.GoInt64),
(9223372036854775806i64 : stdgo.GoInt64),
(9223372036854775807i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        var _permSizes:stdgo.Slice<stdgo.GoInt> = (new stdgo.Slice<stdgo.GoInt>(7, 7, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (10 : stdgo.GoInt), (16 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _readBufferSizes:stdgo.Slice<stdgo.GoInt> = (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(1 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (10 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((0i64 : stdgo.GoInt64)));
        var _rv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_r)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _n = (_rv.numMethod() : stdgo.GoInt);
        var _p = (0 : stdgo.GoInt);
        if (_internal.math.rand_test.Rand_test__printgolden._printgolden.value) {
            stdgo._internal.fmt.Fmt_printf.printf(("var regressGolden = []interface{}{\n" : stdgo.GoString));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _m = (_rv.type().method(_i)?.__copy__() : stdgo._internal.reflect.Reflect_Method.Method);
                var _mv = (_rv.method(_i)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                var _mt = (_mv.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
                if (_mt.numOut() == ((0 : stdgo.GoInt))) {
                    continue;
                };
                _r.seed((0i64 : stdgo.GoInt64));
                {
                    var _repeat = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_repeat < (20 : stdgo.GoInt) : Bool), _repeat++, {
                        var _args:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
                        var _argstr:stdgo.GoString = ("" : stdgo.GoString);
                        if (_mt.numIn() == ((1 : stdgo.GoInt))) {
                            var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                            {
                                var __continue__ = false;
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _mt.in_((0 : stdgo.GoInt)).kind();
                                        if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                            if (_m.name == (("Perm" : stdgo.GoString))) {
                                                _x = stdgo.Go.toInterface(_permSizes[(_repeat % (_permSizes.length) : stdgo.GoInt)]);
                                                break;
                                            };
                                            var _big = (_int64s[(_repeat % (_int64s.length) : stdgo.GoInt)] : stdgo.GoInt64);
                                            if (((_big : stdgo.GoInt) : stdgo.GoInt64) != (_big)) {
                                                _r.int63n(_big);
                                                if (_internal.math.rand_test.Rand_test__printgolden._printgolden.value) {
                                                    stdgo._internal.fmt.Fmt_printf.printf(("\tskipped, // must run printgolden on 64-bit machine\n" : stdgo.GoString));
                                                };
                                                _p++;
                                                {
                                                    __continue__ = true;
                                                    break;
                                                };
                                            };
                                            _x = stdgo.Go.toInterface((_big : stdgo.GoInt));
                                            break;
                                        } else if (__value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                            _x = stdgo.Go.toInterface(_int32s[(_repeat % (_int32s.length) : stdgo.GoInt)]);
                                            break;
                                        } else if (__value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                            _x = stdgo.Go.toInterface(_int64s[(_repeat % (_int64s.length) : stdgo.GoInt)]);
                                            break;
                                        } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                            if (_m.name == (("Read" : stdgo.GoString))) {
                                                var _n = (_readBufferSizes[(_repeat % (_readBufferSizes.length) : stdgo.GoInt)] : stdgo.GoInt);
                                                _x = stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                                            };
                                            break;
                                        } else {
                                            _t.fatalf(("unexpected argument type for r.%s" : stdgo.GoString), stdgo.Go.toInterface(_m.name));
                                        };
                                    };
                                    break;
                                };
                                if (__continue__) continue;
                            };
                            _argstr = stdgo._internal.fmt.Fmt_sprint.sprint(_x)?.__copy__();
                            _args = (_args.__append__(stdgo._internal.reflect.Reflect_valueOf.valueOf(_x)?.__copy__()));
                        };
                        var _out:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                        _out = _mv.call(_args)[(0 : stdgo.GoInt)].interface_();
                        if (((_m.name == ("Int" : stdgo.GoString)) || (_m.name == ("Intn" : stdgo.GoString)) : Bool)) {
                            _out = stdgo.Go.toInterface(((stdgo.Go.typeAssert((_out : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt64));
                        };
                        if (_m.name == (("Read" : stdgo.GoString))) {
                            _out = stdgo.Go.toInterface((stdgo.Go.typeAssert((_args[(0 : stdgo.GoInt)].interface_() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>));
                        };
                        if (_internal.math.rand_test.Rand_test__printgolden._printgolden.value) {
                            var _val:stdgo.GoString = ("" : stdgo.GoString);
                            var _big = ((1152921504606846976i64 : stdgo.GoInt64) : stdgo.GoInt64);
                            if (((((_big : stdgo.GoInt) : stdgo.GoInt64) != _big) && (((_m.name == ("Int" : stdgo.GoString)) || (_m.name == ("Intn" : stdgo.GoString)) : Bool)) : Bool)) {
                                _val = ("truncated" : stdgo.GoString);
                            } else if (stdgo._internal.reflect.Reflect_typeOf.typeOf(_out).kind() == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _val = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%#v" : stdgo.GoString), _out)?.__copy__();
                            } else {
                                _val = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%T(%v)" : stdgo.GoString), _out, _out)?.__copy__();
                            };
                            stdgo._internal.fmt.Fmt_printf.printf(("\t%s, // %s(%s)\n" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_m.name), stdgo.Go.toInterface(_argstr));
                        } else {
                            var _want = (_internal.math.rand_test.Rand_test__regressGolden._regressGolden[(_p : stdgo.GoInt)] : stdgo.AnyInterface);
                            if (_m.name == (("Int" : stdgo.GoString))) {
                                _want = stdgo.Go.toInterface(((((((stdgo.Go.typeAssert((_want : stdgo.GoInt64)) : stdgo.GoInt64) : stdgo.GoUInt) << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt) : stdgo.GoInt64));
                            };
                            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_out, _want)) {
                                _t.errorf(("r.%s(%s) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_m.name), stdgo.Go.toInterface(_argstr), _out, _want);
                            };
                        };
                        _p++;
                    });
                };
            });
        };
        if (_internal.math.rand_test.Rand_test__printgolden._printgolden.value) {
            stdgo._internal.fmt.Fmt_printf.printf(("}\n" : stdgo.GoString));
        };
    }
