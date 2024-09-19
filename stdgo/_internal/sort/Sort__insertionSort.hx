package stdgo._internal.sort;
function _insertionSort(_data:stdgo._internal.sort.Sort_Interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b : Bool), _i++, {
                {
                    var _j = (_i : stdgo.GoInt);
                    stdgo.Go.cfor(((_j > _a : Bool) && _data.less(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool), _j--, {
                        _data.swap(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt));
                    });
                };
            });
        };
    }
