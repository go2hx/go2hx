package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testClear(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        for (__7 => _tt in _internal.reflect_test.Reflect_test__valueTests._valueTests) {
            _m[_tt._s] = _tt._i;
        };
        var _mapTestFn = (function(_v:stdgo._internal.reflect.Reflect_Value.Value):Bool {
            _v.clear();
            return _v.len() == ((0 : stdgo.GoInt));
        } : stdgo._internal.reflect.Reflect_Value.Value -> Bool);
        var _s = (new stdgo.Slice<stdgo.Ref<_internal.reflect_test.Reflect_test_T_pair.T_pair>>((_internal.reflect_test.Reflect_test__valueTests._valueTests.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<_internal.reflect_test.Reflect_test_T_pair.T_pair>>);
        for (_i => _ in _s) {
            _s[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(_internal.reflect_test.Reflect_test__valueTests._valueTests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.reflect_test.Reflect_test_T_pair.T_pair>);
        };
        var _sliceTestFn = (function(_v:stdgo._internal.reflect.Reflect_Value.Value):Bool {
            _v.clear();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _v.len() : Bool), _i++, {
                    if (!_v.index(_i).isZero()) {
                        return false;
                    };
                });
            };
            return true;
        } : stdgo._internal.reflect.Reflect_Value.Value -> Bool);
        var _panicTestFn = (function(_v:stdgo._internal.reflect.Reflect_Value.Value):Bool {
            _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("reflect.Value.Clear" : stdgo.GoString), function():Void {
                _v.clear();
            });
            return true;
        } : stdgo._internal.reflect.Reflect_Value.Value -> Bool);
        var _tests = (new stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_98.T__struct_98>(4, 4, ...[({ _name : ("map" : stdgo.GoString), _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m))?.__copy__(), _testFunc : _mapTestFn } : _internal.reflect_test.Reflect_test_T__struct_98.T__struct_98), ({ _name : ("slice no pointer" : stdgo.GoString), _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)))?.__copy__(), _testFunc : _sliceTestFn } : _internal.reflect_test.Reflect_test_T__struct_98.T__struct_98), ({ _name : ("slice has pointer" : stdgo.GoString), _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_s))?.__copy__(), _testFunc : _sliceTestFn } : _internal.reflect_test.Reflect_test_T__struct_98.T__struct_98), ({ _name : ("non-map/slice" : stdgo.GoString), _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__(), _testFunc : _panicTestFn } : _internal.reflect_test.Reflect_test_T__struct_98.T__struct_98)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _value : ({} : stdgo._internal.reflect.Reflect_Value.Value), _testFunc : null } : _internal.reflect_test.Reflect_test_T__struct_98.T__struct_98)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_98.T__struct_98>);
        for (__8 => _tc in _tests) {
            var _tc = ({
                final x = _tc;
                ({ _name : x._name?.__copy__(), _value : x._value?.__copy__(), _testFunc : x._testFunc } : _internal.reflect_test.Reflect_test_T__struct_98.T__struct_98);
            } : _internal.reflect_test.Reflect_test_T__struct_98.T__struct_98);
            _t.run(_tc._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                _t.parallel();
                if (!_tc._testFunc(_tc._value?.__copy__())) {
                    _t.errorf(("unexpected result for value.Clear(): %value" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tc._value)));
                };
            });
        };
    }
