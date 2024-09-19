package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testValue_Comparable(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _a:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _i:stdgo.AnyInterface = stdgo.Go.toInterface(_a);
        var _iSlice:stdgo.AnyInterface = stdgo.Go.toInterface(_s);
        var _iArrayFalse:stdgo.AnyInterface = stdgo.Go.toInterface((new stdgo.GoArray<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>))]) : stdgo.GoArray<stdgo.AnyInterface>));
        var _iArrayTrue:stdgo.AnyInterface = stdgo.Go.toInterface((new stdgo.GoArray<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.asInterface(({ i : stdgo.Go.toInterface((1 : stdgo.GoInt)) } : _internal.reflect_test.Reflect_test_T__struct_95.T__struct_95)))]) : stdgo.GoArray<stdgo.AnyInterface>));
        var _testcases:stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_96.T__struct_96> = (new stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_96.T__struct_96>(31, 31, ...[
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((32 : stdgo.GoInt)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoInt8)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoInt16)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoInt32)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1i64 : stdgo.GoInt64)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoUInt8)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoUInt16)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1u32 : stdgo.GoUInt32)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1i64 : stdgo.GoUInt64)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(((1 : stdgo.GoFloat64) : stdgo.GoFloat32)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoFloat64)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(new stdgo.GoComplex128(((1 : stdgo.GoFloat64) : stdgo.GoFloat32), ((1 : stdgo.GoFloat64) : stdgo.GoFloat32))))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(new stdgo.GoComplex128((1 : stdgo.GoFloat64), (1 : stdgo.GoFloat64))))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("abc" : stdgo.GoString)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(true))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)))?.__copy__(), _comparable : false, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)))?.__copy__(), _comparable : false, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value), _comparable : false, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_a)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_i) : stdgo.Ref<stdgo.AnyInterface>)))?.__copy__(), _comparable : true, _deref : true } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_iSlice) : stdgo.Ref<stdgo.AnyInterface>)))?.__copy__(), _comparable : false, _deref : true } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>(2, 2, ...[]) : stdgo.GoArray<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>)))?.__copy__(), _comparable : false, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.GoArray<() -> Void>(0, 0, ...[]) : stdgo.GoArray<() -> Void>)))?.__copy__(), _comparable : false, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.GoArray<_internal.reflect_test.Reflect_test_T__struct_95.T__struct_95>(2, 2, ...[({ i : stdgo.Go.toInterface((1 : stdgo.GoInt)) } : _internal.reflect_test.Reflect_test_T__struct_95.T__struct_95), ({ i : stdgo.Go.toInterface((1 : stdgo.GoInt)) } : _internal.reflect_test.Reflect_test_T__struct_95.T__struct_95)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ i : (null : stdgo.AnyInterface) } : _internal.reflect_test.Reflect_test_T__struct_95.T__struct_95)])) : stdgo.GoArray<_internal.reflect_test.Reflect_test_T__struct_95.T__struct_95>)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.GoArray<_internal.reflect_test.Reflect_test_T__struct_95.T__struct_95>(2, 2, ...[({ i : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) } : _internal.reflect_test.Reflect_test_T__struct_95.T__struct_95), ({ i : stdgo.Go.toInterface((1 : stdgo.GoInt)) } : _internal.reflect_test.Reflect_test_T__struct_95.T__struct_95)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ i : (null : stdgo.AnyInterface) } : _internal.reflect_test.Reflect_test_T__struct_95.T__struct_95)])) : stdgo.GoArray<_internal.reflect_test.Reflect_test_T__struct_95.T__struct_95>)))?.__copy__(), _comparable : false, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.asInterface(({ i : (1 : stdgo.GoInt) } : _internal.reflect_test.Reflect_test_T__struct_97.T__struct_97)))]) : stdgo.GoArray<stdgo.AnyInterface>)))?.__copy__(), _comparable : true, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((new stdgo.GoArray<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>))]) : stdgo.GoArray<stdgo.AnyInterface>)), stdgo.Go.toInterface(stdgo.Go.asInterface(({ i : (1 : stdgo.GoInt) } : _internal.reflect_test.Reflect_test_T__struct_97.T__struct_97)))]) : stdgo.GoArray<stdgo.AnyInterface>)))?.__copy__(), _comparable : false, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_iArrayFalse) : stdgo.Ref<stdgo.AnyInterface>)))?.__copy__(), _comparable : false, _deref : true } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96),
({ _value : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_iArrayTrue) : stdgo.Ref<stdgo.AnyInterface>)))?.__copy__(), _comparable : true, _deref : true } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96)].concat([for (i in 31 ... (31 > 31 ? 31 : 31 : stdgo.GoInt).toBasic()) ({ _value : ({} : stdgo._internal.reflect.Reflect_Value.Value), _comparable : false, _deref : false } : _internal.reflect_test.Reflect_test_T__struct_96.T__struct_96)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_96.T__struct_96>);
        for (__7 => _cas in _testcases) {
            var _v = (_cas._value?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if (_cas._deref) {
                _v = _v.elem()?.__copy__();
            };
            var _got = (_v.comparable_() : Bool);
            if (_got != (_cas._comparable)) {
                _t.errorf(("%T.Comparable = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_cas._comparable));
            };
        };
    }
