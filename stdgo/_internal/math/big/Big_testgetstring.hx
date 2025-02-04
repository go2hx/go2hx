package stdgo._internal.math.big;
function testGetString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        for (_i => _test in stdgo._internal.math.big.Big__stringtests._stringTests) {
            if (!_test._ok) {
                continue;
            };
            @:check2r _z.setInt64(_test._val);
            if (_test._base == ((10 : stdgo.GoInt))) {
                {
                    var _got = ((@:check2r _z.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_got != (_test._out)) {
                        @:check2r _t.errorf(("#%da got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._out));
                    };
                };
            };
            var _f = (stdgo._internal.math.big.Big__format._format(_test._base)?.__copy__() : stdgo.GoString);
            var _got = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_f?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)))?.__copy__() : stdgo.GoString);
            if (_f == (("%d" : stdgo.GoString))) {
                if (_got != (stdgo._internal.fmt.Fmt_sprintf.sprintf((("%d" : stdgo.GoString) : stdgo.GoString), stdgo.Go.toInterface(_test._val)))) {
                    @:check2r _t.errorf(("#%db got %s; want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._val));
                };
            } else {
                if (_got != (_test._out)) {
                    @:check2r _t.errorf(("#%dc got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._out));
                };
            };
        };
    }
