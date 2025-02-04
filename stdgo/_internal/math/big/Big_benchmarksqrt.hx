package stdgo._internal.math.big;
function benchmarkSqrt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString((("1" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("0" : stdgo.GoString), (1001 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt)), _n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __8:Bool = __tmp__._1;
        @:check2r _b.resetTimer();
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _t.sqrt(_n);
                _i++;
            };
        };
    }
