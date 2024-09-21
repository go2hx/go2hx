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
function testParseInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            final __value__ = (32 : stdgo.GoInt);
            if (__value__ == ((32 : stdgo.GoInt))) {
                for (_i => _ in _internal.strconv_test.Strconv_test__parseInt32Tests._parseInt32Tests) {
                    var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseInt32Tests._parseInt32Tests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test>);
                    var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_test._in?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _out:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((((_test._out : stdgo.GoInt64) != _out) || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err)) : Bool)) {
                        _t.errorf(("ParseInt(%q, 10, 0) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
                    };
                };
            } else if (__value__ == ((64 : stdgo.GoInt))) {
                for (_i => _ in _internal.strconv_test.Strconv_test__parseInt64Tests._parseInt64Tests) {
                    var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseInt64Tests._parseInt64Tests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test>);
                    var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_test._in?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _out:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_test._out != _out) || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err)) : Bool)) {
                        _t.errorf(("ParseInt(%q, 10, 0) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
                    };
                };
            };
        };
    }
