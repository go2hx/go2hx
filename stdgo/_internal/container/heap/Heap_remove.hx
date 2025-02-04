package stdgo._internal.container.heap;
function remove(_h:stdgo._internal.container.heap.Heap_interface.Interface, _i:stdgo.GoInt):stdgo.AnyInterface {
        var _n = (_h.len() - (1 : stdgo.GoInt) : stdgo.GoInt);
        if (_n != (_i)) {
            _h.swap(_i, _n);
            if (!stdgo._internal.container.heap.Heap__down._down(_h, _i, _n)) {
                stdgo._internal.container.heap.Heap__up._up(_h, _i);
            };
        };
        return _h.pop();
    }
