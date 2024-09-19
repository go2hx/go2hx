package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testSmallZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(10, 10, ...[]).__setNumber32__() : _internal.reflect_test.Reflect_test_T_testSmallZero___localname___T_169139.T_testSmallZero___localname___T_169139))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        {
            var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
                stdgo._internal.reflect.Reflect_zero.zero(_typ);
            }) : stdgo.GoFloat64);
            if ((_allocs > (0 : stdgo.GoFloat64) : Bool)) {
                _t.errorf(("Creating small zero values caused %f allocs, want 0" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
            };
        };
    }
