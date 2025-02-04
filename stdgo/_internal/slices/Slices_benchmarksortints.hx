package stdgo._internal.slices;
function benchmarkSortInts(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _b.stopTimer();
var _ints = stdgo._internal.slices.Slices__makerandomints._makeRandomInts((100000 : stdgo.GoInt));
@:check2r _b.startTimer();
stdgo._internal.sort.Sort_ints.ints(_ints);
                _i++;
            };
        };
    }
