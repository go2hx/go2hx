package stdgo._internal.math.big;
function benchmarkHilbert(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.math.big.Big__doHilbert._doHilbert(null, (10 : stdgo.GoInt));
                _i++;
            };
        };
    }
