package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testTypes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _tt in _internal.reflect_test.Reflect_test__typeTests._typeTests) {
            _internal.reflect_test.Reflect_test__testType._testType(_t, _i, stdgo._internal.reflect.Reflect_valueOf.valueOf(_tt._i).field((0 : stdgo.GoInt)).type(), _tt._s?.__copy__());
        };
    }
