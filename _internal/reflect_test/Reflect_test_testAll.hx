package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.reflect_test.Reflect_test__testType._testType(_t, (1 : stdgo.GoInt), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt8))), ("int8" : stdgo.GoString));
        _internal.reflect_test.Reflect_test__testType._testType(_t, (2 : stdgo.GoInt), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt8>))).elem(), ("int8" : stdgo.GoString));
        var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_T__struct_35.T__struct_35>)))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        _internal.reflect_test.Reflect_test__testType._testType(_t, (3 : stdgo.GoInt), _typ, ("*struct { c chan *int32; d float32 }" : stdgo.GoString));
        var _etyp = (_typ.elem() : stdgo._internal.reflect.Reflect_Type_.Type_);
        _internal.reflect_test.Reflect_test__testType._testType(_t, (4 : stdgo.GoInt), _etyp, ("struct { c chan *int32; d float32 }" : stdgo.GoString));
        var _styp = (_etyp : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _f = (_styp.field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
        _internal.reflect_test.Reflect_test__testType._testType(_t, (5 : stdgo.GoInt), _f.type, ("chan *int32" : stdgo.GoString));
        var __tmp__ = _styp.fieldByName(("d" : stdgo.GoString)), _f:stdgo._internal.reflect.Reflect_StructField.StructField = __tmp__._0, _present:Bool = __tmp__._1;
        if (!_present) {
            _t.errorf(("FieldByName says present field is absent" : stdgo.GoString));
        };
        _internal.reflect_test.Reflect_test__testType._testType(_t, (6 : stdgo.GoInt), _f.type, ("float32" : stdgo.GoString));
        {
            var __tmp__ = _styp.fieldByName(("absent" : stdgo.GoString));
            _f = __tmp__._0?.__copy__();
            _present = __tmp__._1;
        };
        if (_present) {
            _t.errorf(("FieldByName says absent field is present" : stdgo.GoString));
        };
        _typ = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt32>(32, 32, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt32>)));
        _internal.reflect_test.Reflect_test__testType._testType(_t, (7 : stdgo.GoInt), _typ, ("[32]int32" : stdgo.GoString));
        _internal.reflect_test.Reflect_test__testType._testType(_t, (8 : stdgo.GoInt), _typ.elem(), ("int32" : stdgo.GoString));
        _typ = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoInt32>>)));
        _internal.reflect_test.Reflect_test__testType._testType(_t, (9 : stdgo.GoInt), _typ, ("map[string]*int32" : stdgo.GoString));
        var _mtyp = (_typ : stdgo._internal.reflect.Reflect_Type_.Type_);
        _internal.reflect_test.Reflect_test__testType._testType(_t, (10 : stdgo.GoInt), _mtyp.key(), ("string" : stdgo.GoString));
        _internal.reflect_test.Reflect_test__testType._testType(_t, (11 : stdgo.GoInt), _mtyp.elem(), ("*int32" : stdgo.GoString));
        _typ = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Chan<stdgo.GoString>)));
        _internal.reflect_test.Reflect_test__testType._testType(_t, (12 : stdgo.GoInt), _typ, ("chan<- string" : stdgo.GoString));
        _internal.reflect_test.Reflect_test__testType._testType(_t, (13 : stdgo.GoInt), _typ.elem(), ("string" : stdgo.GoString));
        _typ = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(({ _d : (null : stdgo.Slice<stdgo.GoUInt32>) } : _internal.reflect_test.Reflect_test_T__struct_42.T__struct_42)))).field((0 : stdgo.GoInt)).type;
        _internal.reflect_test.Reflect_test__testType._testType(_t, (14 : stdgo.GoInt), _typ, ("[]uint32" : stdgo.GoString));
    }
