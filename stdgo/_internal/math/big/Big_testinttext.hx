package stdgo._internal.math.big;
function testIntText(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        for (__8 => _test in stdgo._internal.math.big.Big__stringtests._stringTests) {
            if (!_test._ok) {
                continue;
            };
            var __tmp__ = @:check2r _z.setString(_test._in?.__copy__(), _test._base), __9:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                @:check2r _t.errorf(("%v: failed to parse" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                continue;
            };
            var _base = (_test._base : stdgo.GoInt);
            if (_base == ((0 : stdgo.GoInt))) {
                _base = (10 : stdgo.GoInt);
            };
            {
                var _got = (@:check2r _z.text(_base)?.__copy__() : stdgo.GoString);
                if (_got != (_test._out)) {
                    @:check2r _t.errorf(("%v: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._out));
                };
            };
        };
    }
