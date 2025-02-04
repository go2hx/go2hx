package stdgo._internal.slices;
function benchmarkSortFuncStructs(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _cmpFunc = function(_a:stdgo.Ref<stdgo._internal.slices.Slices_t_mystruct.T_myStruct>, _b:stdgo.Ref<stdgo._internal.slices.Slices_t_mystruct.T_myStruct>):stdgo.GoInt {
            return ((@:checkr _a ?? throw "null pointer dereference")._n - (@:checkr _b ?? throw "null pointer dereference")._n : stdgo.GoInt);
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _b.stopTimer();
var _ss = (stdgo._internal.slices.Slices__makerandomstructs._makeRandomStructs((100000 : stdgo.GoInt)) : stdgo._internal.slices.Slices_t_mystructs.T_myStructs);
@:check2r _b.startTimer();
stdgo._internal.slices.Slices_sortfunc.sortFunc(_ss, _cmpFunc);
                _i++;
            };
        };
    }
