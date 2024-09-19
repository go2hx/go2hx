package stdgo._internal.sort;
function isSorted(_data:stdgo._internal.sort.Sort_Interface.Interface):Bool {
        var _n = (_data.len() : stdgo.GoInt);
        {
            var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                if (_data.less(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    return false;
                };
            });
        };
        return true;
    }
