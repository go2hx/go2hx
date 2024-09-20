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
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.strconv_test.Strconv_test__atobtests._atobtests, __tmp__1 = _internal.strconv_test.Strconv_test__boolString._boolString, __tmp__2 = _internal.strconv_test.Strconv_test__appendBoolTests._appendBoolTests, __tmp__3 = _internal.strconv_test.Strconv_test__infp0._infp0, __tmp__4 = _internal.strconv_test.Strconv_test__infm0._infm0, __tmp__5 = _internal.strconv_test.Strconv_test__inf0p._inf0p, __tmp__6 = _internal.strconv_test.Strconv_test__inf0m._inf0m, __tmp__7 = _internal.strconv_test.Strconv_test__infpp._infpp, __tmp__8 = _internal.strconv_test.Strconv_test__infpm._infpm, __tmp__9 = _internal.strconv_test.Strconv_test__infmp._infmp, __tmp__10 = _internal.strconv_test.Strconv_test__infmm._infmm, __tmp__11 = _internal.strconv_test.Strconv_test__atoftests._atoftests, __tmp__12 = _internal.strconv_test.Strconv_test__atof32tests._atof32tests, __tmp__13 = _internal.strconv_test.Strconv_test__roundTripCases._roundTripCases, __tmp__14 = _internal.strconv_test.Strconv_test__parseUint64Tests._parseUint64Tests, __tmp__15 = _internal.strconv_test.Strconv_test__parseUint64BaseTests._parseUint64BaseTests, __tmp__16 = _internal.strconv_test.Strconv_test__parseInt64Tests._parseInt64Tests, __tmp__17 = _internal.strconv_test.Strconv_test__parseInt64BaseTests._parseInt64BaseTests, __tmp__18 = _internal.strconv_test.Strconv_test__parseUint32Tests._parseUint32Tests, __tmp__19 = _internal.strconv_test.Strconv_test__parseInt32Tests._parseInt32Tests, __tmp__20 = _internal.strconv_test.Strconv_test__numErrorTests._numErrorTests, __tmp__21 = _internal.strconv_test.Strconv_test__parseBitSizeTests._parseBitSizeTests, __tmp__22 = _internal.strconv_test.Strconv_test__parseBaseTests._parseBaseTests, __tmp__23 = _internal.strconv_test.Strconv_test__shifttests._shifttests, __tmp__24 = _internal.strconv_test.Strconv_test__roundtests._roundtests, __tmp__25 = _internal.strconv_test.Strconv_test__roundinttests._roundinttests, __tmp__26 = _internal.strconv_test.Strconv_test__ftoatests._ftoatests, __tmp__27 = _internal.strconv_test.Strconv_test__ftoaBenches._ftoaBenches, __tmp__28 = _internal.strconv_test.Strconv_test__itob64tests._itob64tests, __tmp__29 = _internal.strconv_test.Strconv_test__uitob64tests._uitob64tests, __tmp__30 = _internal.strconv_test.Strconv_test__varlenUints._varlenUints, __tmp__31 = _internal.strconv_test.Strconv_test__quotetests._quotetests, __tmp__32 = _internal.strconv_test.Strconv_test__quoterunetests._quoterunetests, __tmp__33 = _internal.strconv_test.Strconv_test__canbackquotetests._canbackquotetests, __tmp__34 = _internal.strconv_test.Strconv_test__unquotetests._unquotetests, __tmp__35 = _internal.strconv_test.Strconv_test__misquoted._misquoted, __tmp__36 = _internal.strconv_test.Strconv_test__nextToOne._nextToOne, __tmp__37 = _internal.strconv_test.Strconv_test__mallocTest._mallocTest;
            for (_i => _ in _internal.strconv_test.Strconv_test__parseUint64Tests._parseUint64Tests) {
                var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseUint64Tests._parseUint64Tests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(("ParseUint" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>));
                };
            };
            for (_i => _ in _internal.strconv_test.Strconv_test__parseUint64BaseTests._parseUint64BaseTests) {
                var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseUint64BaseTests._parseUint64BaseTests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseUint64BaseTest.T_parseUint64BaseTest>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(("ParseUint" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>));
                };
            };
            for (_i => _ in _internal.strconv_test.Strconv_test__parseInt64Tests._parseInt64Tests) {
                var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseInt64Tests._parseInt64Tests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(("ParseInt" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>));
                };
            };
            for (_i => _ in _internal.strconv_test.Strconv_test__parseInt64BaseTests._parseInt64BaseTests) {
                var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseInt64BaseTests._parseInt64BaseTests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(("ParseInt" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>));
                };
            };
            for (_i => _ in _internal.strconv_test.Strconv_test__parseUint32Tests._parseUint32Tests) {
                var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseUint32Tests._parseUint32Tests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(("ParseUint" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>));
                };
            };
            for (_i => _ in _internal.strconv_test.Strconv_test__parseInt32Tests._parseInt32Tests) {
                var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseInt32Tests._parseInt32Tests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(("ParseInt" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>));
                };
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
