package stdgo._internal.slices;
function benchmarkSortStrings(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _b.stopTimer();
var _ss = stdgo._internal.slices.Slices__makerandomstrings._makeRandomStrings((100000 : stdgo.GoInt));
@:check2r _b.startTimer();
stdgo._internal.sort.Sort_strings.strings(_ss);
                _i++;
            };
        };
    }
