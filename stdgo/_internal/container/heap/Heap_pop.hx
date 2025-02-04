package stdgo._internal.container.heap;
function pop(_h:stdgo._internal.container.heap.Heap_interface.Interface):stdgo.AnyInterface {
        var _n = (_h.len() - (1 : stdgo.GoInt) : stdgo.GoInt);
        _h.swap((0 : stdgo.GoInt), _n);
        stdgo._internal.container.heap.Heap__down._down(_h, (0 : stdgo.GoInt), _n);
        return _h.pop();
    }
