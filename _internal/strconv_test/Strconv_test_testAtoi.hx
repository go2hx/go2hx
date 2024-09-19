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
function testAtoi(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            final __value__ = (32 : stdgo.GoInt);
            if (__value__ == ((32 : stdgo.GoInt))) {
                for (_i => _ in _internal.strconv_test.Strconv_test__parseInt32Tests._parseInt32Tests) {
                    var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseInt32Tests._parseInt32Tests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test>);
                    var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_test._in?.__copy__()), _out:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    var _testErr:stdgo.Error = (null : stdgo.Error);
                    if (_test._err != null) {
                        _testErr = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(("Atoi" : stdgo.GoString), _test._in?.__copy__(), (stdgo.Go.typeAssert((stdgo.Go.toInterface(_test._err) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>).err) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>));
                    };
                    if ((((_test._out : stdgo.GoInt) != _out) || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_testErr), stdgo.Go.toInterface(_err)) : Bool)) {
                        _t.errorf(("Atoi(%q) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_testErr));
                    };
                };
            } else if (__value__ == ((64 : stdgo.GoInt))) {
                for (_i => _ in _internal.strconv_test.Strconv_test__parseInt64Tests._parseInt64Tests) {
                    var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseInt64Tests._parseInt64Tests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test>);
                    var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_test._in?.__copy__()), _out:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    var _testErr:stdgo.Error = (null : stdgo.Error);
                    if (_test._err != null) {
                        _testErr = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(("Atoi" : stdgo.GoString), _test._in?.__copy__(), (stdgo.Go.typeAssert((stdgo.Go.toInterface(_test._err) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>).err) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>));
                    };
                    if (((_test._out != (_out : stdgo.GoInt64)) || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_testErr), stdgo.Go.toInterface(_err)) : Bool)) {
                        _t.errorf(("Atoi(%q) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_testErr));
                    };
                };
            };
        };
    }
