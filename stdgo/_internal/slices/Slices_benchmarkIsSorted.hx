package stdgo._internal.slices;
function benchmarkIsSorted(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                _b.stopTimer();
var _ints = stdgo._internal.slices.Slices__makeSortedInts._makeSortedInts((100000 : stdgo.GoInt));
_b.startTimer();
stdgo._internal.slices.Slices_isSorted.isSorted(_ints);
                _i++;
            };
        };
    }
