package stdgo._internal.container.heap;
function remove(_h:stdgo._internal.container.heap.Heap_interface.Interface, _i:stdgo.GoInt):stdgo.AnyInterface {
        var _n = (_h.len() - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L70"
        if (_n != (_i)) {
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L71"
            _h.swap(_i, _n);
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L72"
            if (!stdgo._internal.container.heap.Heap__down._down(_h, _i, _n)) {
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L73"
                stdgo._internal.container.heap.Heap__up._up(_h, _i);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L76"
        return _h.pop();
    }
