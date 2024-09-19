package stdgo._internal.sort;
function sliceIsSorted(_x:stdgo.AnyInterface, _less:(stdgo.GoInt, stdgo.GoInt) -> Bool):Bool {
        var _rv = (stdgo._internal.internal.reflectlite.Reflectlite_valueOf.valueOf(_x)?.__copy__() : stdgo._internal.internal.reflectlite.Reflectlite_Value.Value);
        var _n = (_rv.len() : stdgo.GoInt);
        {
            var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                if (_less(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    return false;
                };
            });
        };
        return true;
    }
