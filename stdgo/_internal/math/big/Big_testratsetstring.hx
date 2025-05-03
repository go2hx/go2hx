package stdgo._internal.math.big;
function testRatSetString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tests:stdgo.Slice<stdgo._internal.math.big.Big_stringtest.StringTest> = (null : stdgo.Slice<stdgo._internal.math.big.Big_stringtest.StringTest>);
        _tests = (_tests.__append__(...(stdgo._internal.math.big.Big__setstringtests._setStringTests : Array<stdgo._internal.math.big.Big_stringtest.StringTest>)) : stdgo.Slice<stdgo._internal.math.big.Big_stringtest.StringTest>);
        _tests = (_tests.__append__(...(stdgo._internal.math.big.Big__setstringtests2._setStringTests2 : Array<stdgo._internal.math.big.Big_stringtest.StringTest>)) : stdgo.Slice<stdgo._internal.math.big.Big_stringtest.StringTest>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L190"
        for (_i => _test in _tests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setString(_test._in?.__copy__()), _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L193"
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L194"
                if (!_test._ok) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L195"
                    _t.errorf(("#%d SetString(%q) expected failure" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in));
                } else if (_x.ratString() != (_test._out)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L197"
                    _t.errorf(("#%d SetString(%q) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_x.ratString()), stdgo.Go.toInterface(_test._out));
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L200"
                if (_test._ok) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L201"
                    _t.errorf(("#%d SetString(%q) expected success" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in));
                } else if (({
                    final value = _x;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L203"
                    _t.errorf(("#%d SetString(%q) got %p want nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
                };
            };
        };
    }
