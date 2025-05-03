package stdgo._internal.container.heap;
function _up(_h:stdgo._internal.container.heap.Heap_interface.Interface, _j:stdgo.GoInt):Void {
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L90"
        while (true) {
            var _i = (((_j - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L92"
            if (((_i == _j) || !_h.less(_j, _i) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L93"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L95"
            _h.swap(_i, _j);
            _j = _i;
        };
    }
