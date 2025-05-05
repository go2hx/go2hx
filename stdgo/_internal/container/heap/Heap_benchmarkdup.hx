package stdgo._internal.container.heap;
function benchmarkDup(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {};
        var _h = (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), (10000 : stdgo.GoInt)).__setNumber32__() : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap);
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L178"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L179"
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (10000 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L180"
                        stdgo._internal.container.heap.Heap_push.push(stdgo.Go.asInterface((stdgo.Go.setRef(_h) : stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
                        _j++;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L182"
                while ((_h.len() > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L183"
                    stdgo._internal.container.heap.Heap_pop.pop(stdgo.Go.asInterface((stdgo.Go.setRef(_h) : stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>)));
                };
                _i++;
            };
        };
    }
