package stdgo._internal.container.heap;
function init(_h:stdgo._internal.container.heap.Heap_Interface.Interface):Void {
        var _n = (_h.len() : stdgo.GoInt);
        {
            var _i = ((_n / (2 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                stdgo._internal.container.heap.Heap__down._down(_h, _i, _n);
            });
        };
    }
