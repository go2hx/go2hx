package stdgo._internal.container.heap;
function testFix(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _h = (stdgo.Go.setRef((new stdgo._internal.container.heap.Heap_t_myheap.T_myHeap(0, 0) : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap)) : stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>);
        (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
        {
            var _i = (200 : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.container.heap.Heap_push.push(stdgo.Go.asInterface(_h), stdgo.Go.toInterface(_i));
                _i = (_i - ((10 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
        if (((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(0 : stdgo.GoInt)] != ((10 : stdgo.GoInt))) {
            @:check2r _t.fatalf(("Expected head to be 10, was %d" : stdgo.GoString), stdgo.Go.toInterface(((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(0 : stdgo.GoInt)]));
        };
        ((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(0 : stdgo.GoInt)] = (210 : stdgo.GoInt);
        stdgo._internal.container.heap.Heap_fix.fix(stdgo.Go.asInterface(_h), (0 : stdgo.GoInt));
        (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
        {
            var _i = (100 : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var _elem = (stdgo._internal.math.rand.Rand_intn.intn(@:check2r _h.len()) : stdgo.GoInt);
if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    ((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(_elem : stdgo.GoInt)] = (((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(_elem : stdgo.GoInt)] * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                } else {
                    ((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(_elem : stdgo.GoInt)] = (((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(_elem : stdgo.GoInt)] / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
stdgo._internal.container.heap.Heap_fix.fix(stdgo.Go.asInterface(_h), _elem);
(@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
                _i--;
            };
        };
    }
