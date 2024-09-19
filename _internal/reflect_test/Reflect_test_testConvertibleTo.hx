package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testConvertibleTo(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _t1 = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new _internal.reflect.internal.example1.Example1_MyStruct.MyStruct() : _internal.reflect.internal.example1.Example1_MyStruct.MyStruct))).type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _t2 = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new _internal.reflect.internal.example2.Example2_MyStruct.MyStruct() : _internal.reflect.internal.example2.Example2_MyStruct.MyStruct))).type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (_t1.convertibleTo(_t2)) {
            _t.fatalf(("(%s).ConvertibleTo(%s) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_t1), stdgo.Go.toInterface(_t2));
        };
        var _t3 = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.Slice<_internal.reflect.internal.example1.Example1_MyStruct.MyStruct>(0, 0, ...[]) : stdgo.Slice<_internal.reflect.internal.example1.Example1_MyStruct.MyStruct>))).type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _t4 = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.Slice<_internal.reflect.internal.example2.Example2_MyStruct.MyStruct>(0, 0, ...[]) : stdgo.Slice<_internal.reflect.internal.example2.Example2_MyStruct.MyStruct>))).type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (_t3.convertibleTo(_t4)) {
            _t.fatalf(("(%s).ConvertibleTo(%s) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_t3), stdgo.Go.toInterface(_t4));
        };
    }
