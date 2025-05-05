package stdgo._internal.math.big;
function _runGCD(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _aSize:stdgo.GoUInt, _bSize:stdgo.GoUInt):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/gcd_test.go#L23"
        if ((stdgo._internal.math.big.Big__isracebuilder._isRaceBuilder && (((_aSize > (1000u32 : stdgo.GoUInt) : Bool) || (_bSize > (1000u32 : stdgo.GoUInt) : Bool) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/gcd_test.go#L24"
            _b.skip(stdgo.Go.toInterface(("skipping on race builder" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/gcd_test.go#L26"
        _b.run(("WithoutXY" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/math/big/gcd_test.go#L27"
            stdgo._internal.math.big.Big__rungcdext._runGCDExt(_b, _aSize, _bSize, false);
        });
        //"file:///home/runner/.go/go1.21.3/src/math/big/gcd_test.go#L29"
        _b.run(("WithXY" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/math/big/gcd_test.go#L30"
            stdgo._internal.math.big.Big__rungcdext._runGCDExt(_b, _aSize, _bSize, true);
        });
    }
