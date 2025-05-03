package stdgo._internal.math.big;
function testMulRangeZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tmp:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L208"
        for (_i => _r in stdgo._internal.math.big.Big__mulrangesn._mulRangesN) {
            var _prod = ((_tmp.mulRange((_r._a : stdgo.GoInt64), (_r._b : stdgo.GoInt64)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L210"
            if (_prod != (_r._prod)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L211"
                _t.errorf(("#%da: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prod), stdgo.Go.toInterface(_r._prod));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L215"
        for (_i => _r in stdgo._internal.math.big.Big__mulrangesz._mulRangesZ) {
            var _prod = ((_tmp.mulRange(_r._a, _r._b).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L217"
            if (_prod != (_r._prod)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L218"
                _t.errorf(("#%db: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prod), stdgo.Go.toInterface(_r._prod));
            };
        };
    }
