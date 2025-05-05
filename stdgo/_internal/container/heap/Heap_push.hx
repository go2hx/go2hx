package stdgo._internal.container.heap;
function push(_h:stdgo._internal.container.heap.Heap_interface.Interface, _x:stdgo.AnyInterface):Void {
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L52"
        _h.push(_x);
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L53"
        stdgo._internal.container.heap.Heap__up._up(_h, (_h.len() - (1 : stdgo.GoInt) : stdgo.GoInt));
    }
