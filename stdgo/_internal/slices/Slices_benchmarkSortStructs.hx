package stdgo._internal.slices;
function benchmarkSortStructs(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _b.stopTimer();
var _ss = (stdgo._internal.slices.Slices__makeRandomStructs._makeRandomStructs((100000 : stdgo.GoInt)) : stdgo._internal.slices.Slices_T_myStructs.T_myStructs);
@:check2r _b.startTimer();
stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_ss));
                _i++;
            };
        };
    }
