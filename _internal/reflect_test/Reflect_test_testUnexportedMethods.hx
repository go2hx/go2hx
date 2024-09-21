package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testUnexportedMethods(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_T_unexp.T_unexp)) : stdgo.Ref<_internal.reflect_test.Reflect_test_T_unexp.T_unexp>)))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        {
            var _got = (_typ.numMethod() : stdgo.GoInt);
            if (_got != ((0 : stdgo.GoInt))) {
                _t.errorf(("NumMethod=%d, want 0 satisfied methods" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
        _typ = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_unexpI.T_unexpI>)));
        {
            var _got = (_typ.elem().numMethod() : stdgo.GoInt);
            if (_got != ((1 : stdgo.GoInt))) {
                _t.errorf(("NumMethod=%d, want 1 satisfied methods" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
    }
