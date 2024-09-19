package stdgo._internal.math.big;
function testMulRangeZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tmp:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
        for (_i => _r in stdgo._internal.math.big.Big__mulRangesN._mulRangesN) {
            var _prod = ((_tmp.mulRange((_r._a : stdgo.GoInt64), (_r._b : stdgo.GoInt64)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_prod != (_r._prod)) {
                _t.errorf(("#%da: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prod), stdgo.Go.toInterface(_r._prod));
            };
        };
        for (_i => _r in stdgo._internal.math.big.Big__mulRangesZ._mulRangesZ) {
            var _prod = ((_tmp.mulRange(_r._a, _r._b).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_prod != (_r._prod)) {
                _t.errorf(("#%db: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prod), stdgo.Go.toInterface(_r._prod));
            };
        };
    }