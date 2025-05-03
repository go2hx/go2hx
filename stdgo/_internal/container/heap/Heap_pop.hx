package stdgo._internal.container.heap;
function pop(_h:stdgo._internal.container.heap.Heap_interface.Interface):stdgo.AnyInterface {
        var _n = (_h.len() - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L61"
        _h.swap((0 : stdgo.GoInt), _n);
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L62"
        stdgo._internal.container.heap.Heap__down._down(_h, (0 : stdgo.GoInt), _n);
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L63"
        return _h.pop();
    }
