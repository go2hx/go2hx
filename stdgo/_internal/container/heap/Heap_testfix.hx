package stdgo._internal.container.heap;
function testFix(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _h = (stdgo.Go.setRef((new stdgo._internal.container.heap.Heap_t_myheap.T_myHeap(0, 0) : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap)) : stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>);
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L190"
        (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L192"
        {
            var _i = (200 : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L193"
                stdgo._internal.container.heap.Heap_push.push(stdgo.Go.asInterface(_h), stdgo.Go.toInterface(_i));
                _i = (_i - ((10 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L195"
        (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L197"
        if (((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(0 : stdgo.GoInt)] != ((10 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L198"
            _t.fatalf(("Expected head to be 10, was %d" : stdgo.GoString), stdgo.Go.toInterface(((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(0 : stdgo.GoInt)]));
        };
        ((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(0 : stdgo.GoInt)] = (210 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L201"
        stdgo._internal.container.heap.Heap_fix.fix(stdgo.Go.asInterface(_h), (0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L202"
        (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L204"
        {
            var _i = (100 : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var _elem = (stdgo._internal.math.rand.Rand_intn.intn(_h.len()) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L206"
                if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    ((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(_elem : stdgo.GoInt)] = (((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(_elem : stdgo.GoInt)] * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                } else {
                    ((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(_elem : stdgo.GoInt)] = (((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(_elem : stdgo.GoInt)] / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
//"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L211"
                stdgo._internal.container.heap.Heap_fix.fix(stdgo.Go.asInterface(_h), _elem);
//"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L212"
                (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
                _i--;
            };
        };
    }
