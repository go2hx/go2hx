package stdgo._internal.math.big;
function testSetString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tmp = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L182"
        for (_i => _test in stdgo._internal.math.big.Big__stringtests._stringTests) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L185"
            _tmp.setInt64((1234567890i64 : stdgo.GoInt64));
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._in?.__copy__(), _test._base), _n1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok1:Bool = __tmp__._1;
            var __tmp__ = _tmp.setString(_test._in?.__copy__(), _test._base), _n2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok2:Bool = __tmp__._1;
            var _expected = stdgo._internal.math.big.Big_newint.newInt(_test._val);
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L189"
            if (((_ok1 != _test._ok) || (_ok2 != _test._ok) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L190"
                _t.errorf(("#%d (input \'%s\') ok incorrect (should be %t)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._ok));
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L191"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L193"
            if (!_ok1) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L194"
                if (({
                    final value = _n1;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L195"
                    _t.errorf(("#%d (input \'%s\') n1 != nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in));
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L197"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L199"
            if (!_ok2) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L200"
                if (({
                    final value = _n2;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L201"
                    _t.errorf(("#%d (input \'%s\') n2 != nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in));
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L203"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L206"
            if ((_ok1 && !stdgo._internal.math.big.Big__isnormalized._isNormalized(_n1) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L207"
                _t.errorf(("#%d (input \'%s\'): %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(stdgo.Go.asInterface((_n1 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L209"
            if ((_ok2 && !stdgo._internal.math.big.Big__isnormalized._isNormalized(_n2) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L210"
                _t.errorf(("#%d (input \'%s\'): %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(stdgo.Go.asInterface((_n2 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L213"
            if (_n1.cmp(_expected) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L214"
                _t.errorf(("#%d (input \'%s\') got: %s want: %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(stdgo.Go.asInterface(_n1)), stdgo.Go.toInterface(_test._val));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L216"
            if (_n2.cmp(_expected) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L217"
                _t.errorf(("#%d (input \'%s\') got: %s want: %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(stdgo.Go.asInterface(_n2)), stdgo.Go.toInterface(_test._val));
            };
        };
    }
