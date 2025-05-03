package stdgo._internal.sort;
function _swapRange(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L330"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L331"
                _data.swap((_a + _i : stdgo.GoInt), (_b + _i : stdgo.GoInt));
                _i++;
            };
        };
    }
