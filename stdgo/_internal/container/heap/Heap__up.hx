package stdgo._internal.container.heap;
function _up(_h:stdgo._internal.container.heap.Heap_interface.Interface, _j:stdgo.GoInt):Void {
        while (true) {
            var _i = (((_j - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            if (((_i == _j) || !_h.less(_j, _i) : Bool)) {
                break;
            };
            _h.swap(_i, _j);
            _j = _i;
        };
    }
