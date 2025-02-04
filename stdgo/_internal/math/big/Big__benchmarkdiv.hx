package stdgo._internal.math.big;
function _benchmarkDiv(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _aSize:stdgo.GoInt, _bSize:stdgo.GoInt):Void {
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource((1234i64 : stdgo.GoInt64)));
        var _aa = stdgo._internal.math.big.Big__randint._randInt(_r, (_aSize : stdgo.GoUInt));
        var _bb = stdgo._internal.math.big.Big__randint._randInt(_r, (_bSize : stdgo.GoUInt));
        if ((@:check2r _aa.cmp(_bb) < (0 : stdgo.GoInt) : Bool)) {
            {
                final __tmp__0 = _bb;
                final __tmp__1 = _aa;
                _aa = __tmp__0;
                _bb = __tmp__1;
            };
        };
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _x.divMod(_aa, _bb, _y);
                _i++;
            };
        };
    }
