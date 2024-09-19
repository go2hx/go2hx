package stdgo._internal.math.big;
function _benchmarkDiv(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _aSize:stdgo.GoInt, _bSize:stdgo.GoInt):Void {
        var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((1234i64 : stdgo.GoInt64)));
        var _aa = stdgo._internal.math.big.Big__randInt._randInt(_r, (_aSize : stdgo.GoUInt));
        var _bb = stdgo._internal.math.big.Big__randInt._randInt(_r, (_bSize : stdgo.GoUInt));
        if ((_aa.cmp(_bb) < (0 : stdgo.GoInt) : Bool)) {
            {
                final __tmp__0 = _bb;
                final __tmp__1 = _aa;
                _aa = __tmp__0;
                _bb = __tmp__1;
            };
        };
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x.divMod(_aa, _bb, _y);
            });
        };
    }
