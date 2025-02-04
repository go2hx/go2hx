package stdgo._internal.math.big;
function benchmarkHilbert(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.math.big.Big__dohilbert._doHilbert(null, (10 : stdgo.GoInt));
                _i++;
            };
        };
    }
