package stdgo._internal.sort;
function isSorted(_data:stdgo._internal.sort.Sort_interface.Interface):Bool {
        var _n = (_data.len() : stdgo.GoInt);
        {
            var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                if (_data.less(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    return false;
                };
                _i--;
            };
        };
        return true;
    }
