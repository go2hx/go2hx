package stdgo._internal.container.heap;
function test(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _h = (stdgo.Go.setRef((new stdgo._internal.container.heap.Heap_t_myheap.T_myHeap(0, 0) : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap)) : stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>);
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L92"
        (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L94"
        {
            var _i = (20 : stdgo.GoInt);
            while ((_i > (10 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L95"
                _h.push(stdgo.Go.toInterface(_i));
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L97"
        stdgo._internal.container.heap.Heap_init.init(stdgo.Go.asInterface(_h));
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L98"
        (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L100"
        {
            var _i = (10 : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L101"
                stdgo._internal.container.heap.Heap_push.push(stdgo.Go.asInterface(_h), stdgo.Go.toInterface(_i));
//"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L102"
                (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L105"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_h.len() > (0 : stdgo.GoInt) : Bool)) {
                var _x = (stdgo.Go.typeAssert((stdgo._internal.container.heap.Heap_pop.pop(stdgo.Go.asInterface(_h)) : stdgo.GoInt)) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L107"
                if ((_i < (20 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L108"
                    stdgo._internal.container.heap.Heap_push.push(stdgo.Go.asInterface(_h), stdgo.Go.toInterface(((20 : stdgo.GoInt) + _i : stdgo.GoInt)));
                };
//"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L110"
                (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L111"
                if (_x != (_i)) {
                    //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L112"
                    _t.errorf(("%d.th pop got %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i));
                };
                _i++;
            };
        };
    }
