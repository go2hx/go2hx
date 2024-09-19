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
function testFtoa(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.strconv_test.Strconv_test__ftoatests._ftoatests.length) : Bool), _i++, {
                var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__ftoatests._ftoatests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_ftoaTest.T_ftoaTest>);
                var _s = (stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_test._f, _test._fmt, _test._prec, (64 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                if (_s != (_test._s)) {
                    _t.error(stdgo.Go.toInterface(("testN=64" : stdgo.GoString)), stdgo.Go.toInterface(_test._f), stdgo.Go.toInterface((_test._fmt : stdgo.GoString)), stdgo.Go.toInterface(_test._prec), stdgo.Go.toInterface(("want" : stdgo.GoString)), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(("got" : stdgo.GoString)), stdgo.Go.toInterface(_s));
                };
                var _x = stdgo._internal.strconv.Strconv_appendFloat.appendFloat((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _test._f, _test._fmt, _test._prec, (64 : stdgo.GoInt));
                if ((_x : stdgo.GoString) != ((("abc" : stdgo.GoString) + _test._s?.__copy__() : stdgo.GoString))) {
                    _t.error(stdgo.Go.toInterface(("AppendFloat testN=64" : stdgo.GoString)), stdgo.Go.toInterface(_test._f), stdgo.Go.toInterface((_test._fmt : stdgo.GoString)), stdgo.Go.toInterface(_test._prec), stdgo.Go.toInterface(("want" : stdgo.GoString)), stdgo.Go.toInterface((("abc" : stdgo.GoString) + _test._s?.__copy__() : stdgo.GoString)), stdgo.Go.toInterface(("got" : stdgo.GoString)), stdgo.Go.toInterface((_x : stdgo.GoString)));
                };
                if (((((_test._f : stdgo.GoFloat32) : stdgo.GoFloat64) == _test._f) && (_test._fmt != (98 : stdgo.GoUInt8)) : Bool)) {
                    var _s = (stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_test._f, _test._fmt, _test._prec, (32 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                    if (_s != (_test._s)) {
                        _t.error(stdgo.Go.toInterface(("testN=32" : stdgo.GoString)), stdgo.Go.toInterface(_test._f), stdgo.Go.toInterface((_test._fmt : stdgo.GoString)), stdgo.Go.toInterface(_test._prec), stdgo.Go.toInterface(("want" : stdgo.GoString)), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(("got" : stdgo.GoString)), stdgo.Go.toInterface(_s));
                    };
                    var _x = stdgo._internal.strconv.Strconv_appendFloat.appendFloat((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _test._f, _test._fmt, _test._prec, (32 : stdgo.GoInt));
                    if ((_x : stdgo.GoString) != ((("abc" : stdgo.GoString) + _test._s?.__copy__() : stdgo.GoString))) {
                        _t.error(stdgo.Go.toInterface(("AppendFloat testN=32" : stdgo.GoString)), stdgo.Go.toInterface(_test._f), stdgo.Go.toInterface((_test._fmt : stdgo.GoString)), stdgo.Go.toInterface(_test._prec), stdgo.Go.toInterface(("want" : stdgo.GoString)), stdgo.Go.toInterface((("abc" : stdgo.GoString) + _test._s?.__copy__() : stdgo.GoString)), stdgo.Go.toInterface(("got" : stdgo.GoString)), stdgo.Go.toInterface((_x : stdgo.GoString)));
                    };
                };
            });
        };
    }
