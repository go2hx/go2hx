package stdgo._internal.container.heap;
function fix(_h:stdgo._internal.container.heap.Heap_interface.Interface, _i:stdgo.GoInt):Void {
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L84"
        if (!stdgo._internal.container.heap.Heap__down._down(_h, _i, _h.len())) {
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L85"
            stdgo._internal.container.heap.Heap__up._up(_h, _i);
        };
    }
