package stdgo._internal.sort;
function _insertionSort(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L11"
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _b : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L12"
                {
                    var _j = (_i : stdgo.GoInt);
                    while (((_j > _a : Bool) && _data.less(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L13"
                        _data.swap(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt));
                        _j--;
                    };
                };
                _i++;
            };
        };
    }
