package stdgo._internal.math.big;
function testGetString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L154"
        for (_i => _test in stdgo._internal.math.big.Big__stringtests._stringTests) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L155"
            if (!_test._ok) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L156"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L158"
            _z.setInt64(_test._val);
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L160"
            if (_test._base == ((10 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L161"
                {
                    var _got = ((_z.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_got != (_test._out)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L162"
                        _t.errorf(("#%da got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._out));
                    };
                };
            };
            var _f = (stdgo._internal.math.big.Big__format._format(_test._base)?.__copy__() : stdgo.GoString);
            var _got = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_f?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)))?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L168"
            if (_f == (("%d" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L169"
                if (_got != (stdgo._internal.fmt.Fmt_sprintf.sprintf((("%d" : stdgo.GoString) : stdgo.GoString), stdgo.Go.toInterface(_test._val)))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L170"
                    _t.errorf(("#%db got %s; want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._val));
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L173"
                if (_got != (_test._out)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L174"
                    _t.errorf(("#%dc got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._out));
                };
            };
        };
    }
