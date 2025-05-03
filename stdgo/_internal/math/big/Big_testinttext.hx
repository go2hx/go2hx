package stdgo._internal.math.big;
function testIntText(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L91"
        for (__8 => _test in stdgo._internal.math.big.Big__stringtests._stringTests) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L92"
            if (!_test._ok) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L93"
                continue;
            };
            var __tmp__ = _z.setString(_test._in?.__copy__(), _test._base), __9:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L97"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L98"
                _t.errorf(("%v: failed to parse" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L99"
                continue;
            };
            var _base = (_test._base : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L103"
            if (_base == ((0 : stdgo.GoInt))) {
                _base = (10 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L107"
            {
                var _got = (_z.text(_base)?.__copy__() : stdgo.GoString);
                if (_got != (_test._out)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L108"
                    _t.errorf(("%v: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._out));
                };
            };
        };
    }
