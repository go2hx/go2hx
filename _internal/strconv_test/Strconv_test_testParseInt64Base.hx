package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function testParseInt64Base(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _ in _internal.strconv_test.Strconv_test__parseInt64BaseTests._parseInt64BaseTests) {
            var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseInt64BaseTests._parseInt64BaseTests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest>);
            var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_test._in?.__copy__(), _test._base, (64 : stdgo.GoInt)), _out:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_test._out != _out) || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err)) : Bool)) {
                _t.errorf(("ParseInt(%q, %v, 64) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._base), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
            };
        };
    }
