package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
var _comparableTests : stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_78.T__struct_78> = (new stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_78.T__struct_78>(15, 15, ...[
({ _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((1 : stdgo.GoInt))), _ok : true } : _internal.reflect_test.Reflect_test_T__struct_78.T__struct_78),
({ _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(("hello" : stdgo.GoString))), _ok : true } : _internal.reflect_test.Reflect_test_T__struct_78.T__struct_78),
({ _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoUInt8)))), _ok : true } : _internal.reflect_test.Reflect_test_T__struct_78.T__struct_78),
({ _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf((null : () -> Void)), _ok : false } : _internal.reflect_test.Reflect_test_T__struct_78.T__struct_78),
({ _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), _ok : false } : _internal.reflect_test.Reflect_test_T__struct_78.T__struct_78),
({ _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        {};
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>))), _ok : false } : _internal.reflect_test.Reflect_test_T__struct_78.T__struct_78),
({ _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>))), _ok : true } : _internal.reflect_test.Reflect_test_T__struct_78.T__struct_78),
({ _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((1.5 : stdgo.GoFloat64))), _ok : true } : _internal.reflect_test.Reflect_test_T__struct_78.T__struct_78),
({ _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(false)), _ok : true } : _internal.reflect_test.Reflect_test_T__struct_78.T__struct_78),
({ _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64)))), _ok : true } : _internal.reflect_test.Reflect_test_T__struct_78.T__struct_78),
({ _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_ComparableStruct.ComparableStruct() : _internal.reflect_test.Reflect_test_ComparableStruct.ComparableStruct))), _ok : true } : _internal.reflect_test.Reflect_test_T__struct_78.T__struct_78),
({ _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_NonComparableStruct.NonComparableStruct() : _internal.reflect_test.Reflect_test_NonComparableStruct.NonComparableStruct))), _ok : false } : _internal.reflect_test.Reflect_test_T__struct_78.T__struct_78),
({ _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>(10, 10, ...[]) : stdgo.GoArray<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>))), _ok : false } : _internal.reflect_test.Reflect_test_T__struct_78.T__struct_78),
({ _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoString>(10, 10, ...[]).__setString__() : stdgo.GoArray<stdgo.GoString>))), _ok : true } : _internal.reflect_test.Reflect_test_T__struct_78.T__struct_78),
({ _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.AnyInterface)) : stdgo.Ref<stdgo.AnyInterface>))).elem(), _ok : true } : _internal.reflect_test.Reflect_test_T__struct_78.T__struct_78)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({ _typ : (null : stdgo._internal.reflect.Reflect_Type_.Type_), _ok : false } : _internal.reflect_test.Reflect_test_T__struct_78.T__struct_78)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_78.T__struct_78>);
