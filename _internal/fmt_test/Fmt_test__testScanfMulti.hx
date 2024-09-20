package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function _testScanfMulti(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:stdgo.GoString -> stdgo._internal.io.Io_Reader.Reader):Void {
        var _sliceType = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>((1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        for (__2 => _test in _internal.fmt_test.Fmt_test__multiTests._multiTests) {
            var _r = (_f(_test._text?.__copy__()) : stdgo._internal.io.Io_Reader.Reader);
            var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(_r, _test._format?.__copy__(), ...(_test._in : Array<stdgo.AnyInterface>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (_test._err == (stdgo.Go.str())) {
                    _t.errorf(("got error scanning (%q, %q): %q" : stdgo.GoString), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_err));
                } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _test._err?.__copy__())) {
                    _t.errorf(("got wrong error scanning (%q, %q): %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._err));
                };
                continue;
            };
            if (_test._err != (stdgo.Go.str())) {
                _t.errorf(("expected error %q error scanning (%q, %q)" : stdgo.GoString), stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_test._text));
            };
            if (_n != ((_test._out.length))) {
                _t.errorf(("count error on entry (%q, %q): expected %d got %d" : stdgo.GoString), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface((_test._out.length)), stdgo.Go.toInterface(_n));
                continue;
            };
            var _resultVal = (stdgo._internal.reflect.Reflect_makeSlice.makeSlice(_sliceType, _n, _n)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_test._in[(_i : stdgo.GoInt)]).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                    _resultVal.index(_i).set(_v?.__copy__());
                });
            };
            var _result = (_resultVal.interface_() : stdgo.AnyInterface);
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_result, stdgo.Go.toInterface(_test._out))) {
                _t.errorf(("scanning (%q, %q): expected %#v got %#v" : stdgo.GoString), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_test._out), _result);
            };
        };
    }
