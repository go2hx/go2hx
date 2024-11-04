package stdgo._internal.slices;
function benchmarkSortFuncStructs(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _cmpFunc = function(_a:stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>, _b:stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>):stdgo.GoInt {
            return (_a._n - _b._n : stdgo.GoInt);
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                _b.stopTimer();
var _ss = (stdgo._internal.slices.Slices__makeRandomStructs._makeRandomStructs((100000 : stdgo.GoInt)) : stdgo._internal.slices.Slices_T_myStructs.T_myStructs);
_b.startTimer();
stdgo._internal.slices.Slices_sortFunc.sortFunc(_ss, _cmpFunc);
                _i++;
            };
        };
    }
