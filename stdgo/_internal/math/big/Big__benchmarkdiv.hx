package stdgo._internal.math.big;
function _benchmarkDiv(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _aSize:stdgo.GoInt, _bSize:stdgo.GoInt):Void {
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource((1234i64 : stdgo.GoInt64)));
        var _aa = stdgo._internal.math.big.Big__randint._randInt(_r, (_aSize : stdgo.GoUInt));
        var _bb = stdgo._internal.math.big.Big__randint._randInt(_r, (_bSize : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1852"
        if ((_aa.cmp(_bb) < (0 : stdgo.GoInt) : Bool)) {
            {
                final __tmp__0 = _bb;
                final __tmp__1 = _aa;
                _aa = @:binopAssign __tmp__0;
                _bb = @:binopAssign __tmp__1;
            };
        };
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1858"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1859"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1860"
                _x.divMod(_aa, _bb, _y);
                _i++;
            };
        };
    }
