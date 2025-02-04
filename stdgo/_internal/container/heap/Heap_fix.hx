package stdgo._internal.container.heap;
function fix(_h:stdgo._internal.container.heap.Heap_interface.Interface, _i:stdgo.GoInt):Void {
        if (!stdgo._internal.container.heap.Heap__down._down(_h, _i, _h.len())) {
            stdgo._internal.container.heap.Heap__up._up(_h, _i);
        };
    }
