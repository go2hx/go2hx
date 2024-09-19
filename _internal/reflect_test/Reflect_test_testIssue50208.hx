package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testIssue50208(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _want1 = ("B[reflect_test.A]" : stdgo.GoString);
        {
            var _got = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_B.B<_internal.reflect_test.Reflect_test_A.A>)) : stdgo.Ref<_internal.reflect_test.Reflect_test_B.B<_internal.reflect_test.Reflect_test_A.A>>))).elem().name()?.__copy__() : stdgo.GoString);
            if (_got != (_want1)) {
                _t.errorf(("name of type parameter mismatched, want:%s, got:%s" : stdgo.GoString), stdgo.Go.toInterface(_want1), stdgo.Go.toInterface(_got));
            };
        };
        var _want2 = ("B[reflect_test.B[reflect_test.A]]" : stdgo.GoString);
        {
            var _got = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_B.B<_internal.reflect_test.Reflect_test_B.B<_internal.reflect_test.Reflect_test_A.A>>)) : stdgo.Ref<_internal.reflect_test.Reflect_test_B.B<_internal.reflect_test.Reflect_test_B.B<_internal.reflect_test.Reflect_test_A.A>>>))).elem().name()?.__copy__() : stdgo.GoString);
            if (_got != (_want2)) {
                _t.errorf(("name of type parameter mismatched, want:%s, got:%s" : stdgo.GoString), stdgo.Go.toInterface(_want2), stdgo.Go.toInterface(_got));
            };
        };
    }
