package stdgo._internal.container.heap;
function init(_h:stdgo._internal.container.heap.Heap_interface.Interface):Void {
        var _n = (_h.len() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L44"
        {
            var _i = ((_n / (2 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L45"
                stdgo._internal.container.heap.Heap__down._down(_h, _i, _n);
                _i--;
            };
        };
    }
