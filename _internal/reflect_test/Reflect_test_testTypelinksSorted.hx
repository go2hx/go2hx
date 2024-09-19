package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testTypelinksSorted(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _last:stdgo.GoString = ("" : stdgo.GoString);
        for (_i => _n in stdgo._internal.reflect.Reflect_typeLinks.typeLinks()) {
            if ((_n < _last : Bool)) {
                _t.errorf(("typelinks not sorted: %q [%d] > %q [%d]" : stdgo.GoString), stdgo.Go.toInterface(_last), stdgo.Go.toInterface((_i - (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i));
            };
            _last = _n?.__copy__();
        };
    }
