package stdgo._internal.math.big;
function _runGCDExt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _aSize:stdgo.GoUInt, _bSize:stdgo.GoUInt, _calcXY:Bool):Void {
        @:check2r _b.stopTimer();
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource((1234i64 : stdgo.GoInt64)));
        var _aa = stdgo._internal.math.big.Big__randint._randInt(_r, _aSize);
        var _bb = stdgo._internal.math.big.Big__randint._randInt(_r, _bSize);
        var __0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), __1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
var _y = __1, _x = __0;
        if (_calcXY) {
            _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        };
        @:check2r _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).gCD(_x, _y, _aa, _bb);
                _i++;
            };
        };
    }
