package stdgo._internal.slices;
function benchmarkSortStrings(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                _b.stopTimer();
var _ss = stdgo._internal.slices.Slices__makeRandomStrings._makeRandomStrings((100000 : stdgo.GoInt));
_b.startTimer();
stdgo._internal.sort.Sort_strings.strings(_ss);
                _i++;
            };
        };
    }
