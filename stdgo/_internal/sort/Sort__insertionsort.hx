package stdgo._internal.sort;
function _insertionSort(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _b : Bool)) {
                {
                    var _j = (_i : stdgo.GoInt);
                    while (((_j > _a : Bool) && _data.less(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
                        _data.swap(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt));
                        _j--;
                    };
                };
                _i++;
            };
        };
    }
