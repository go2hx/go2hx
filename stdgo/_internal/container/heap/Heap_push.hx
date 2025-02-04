package stdgo._internal.container.heap;
function push(_h:stdgo._internal.container.heap.Heap_interface.Interface, _x:stdgo.AnyInterface):Void {
        _h.push(_x);
        stdgo._internal.container.heap.Heap__up._up(_h, (_h.len() - (1 : stdgo.GoInt) : stdgo.GoInt));
    }
