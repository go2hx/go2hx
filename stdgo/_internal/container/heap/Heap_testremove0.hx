package stdgo._internal.container.heap;
function testRemove0(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _h = (stdgo.Go.setRef((new stdgo._internal.container.heap.Heap_t_myheap.T_myHeap(0, 0) : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap)) : stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>);
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L119"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L120"
                _h.push(stdgo.Go.toInterface(_i));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L122"
        (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L124"
        while ((_h.len() > (0 : stdgo.GoInt) : Bool)) {
            var _i = (_h.len() - (1 : stdgo.GoInt) : stdgo.GoInt);
            var _x = (stdgo.Go.typeAssert((stdgo._internal.container.heap.Heap_remove.remove(stdgo.Go.asInterface(_h), _i) : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L127"
            if (_x != (_i)) {
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L128"
                _t.errorf(("Remove(%d) got %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i));
            };
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L130"
            (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
        };
    }
