package stdgo._internal.math.big;
function testFormat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__formatTests._formatTests) {
            var _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            if (_test._input != (("<nil>" : stdgo.GoString))) {
                var _ok:Bool = false;
                {
                    var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._input?.__copy__(), (0 : stdgo.GoInt));
                    _x = __tmp__._0;
                    _ok = __tmp__._1;
                };
                if (!_ok) {
                    _t.errorf(("#%d failed reading input %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._input));
                };
            };
            var _output = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_test._format?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)))?.__copy__() : stdgo.GoString);
            if (_output != (_test._output)) {
                _t.errorf(("#%d got %q; want %q, {%q, %q, %q}" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_output), stdgo.Go.toInterface(_test._output), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_test._output));
            };
        };
    }