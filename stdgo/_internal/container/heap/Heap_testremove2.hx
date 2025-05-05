package stdgo._internal.container.heap;
function testRemove2(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var n = (10 : stdgo.GoInt);
        var _h = (stdgo.Go.setRef((new stdgo._internal.container.heap.Heap_t_myheap.T_myHeap(0, 0) : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap)) : stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>);
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L154"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L155"
                _h.push(stdgo.Go.toInterface(_i));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L157"
        (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
        var _m = (({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, Bool>) : stdgo.GoMap<stdgo.GoInt, Bool>);
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L160"
        while ((_h.len() > (0 : stdgo.GoInt) : Bool)) {
            _m[(stdgo.Go.typeAssert((stdgo._internal.container.heap.Heap_remove.remove(stdgo.Go.asInterface(_h), (((_h.len() - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt)] = true;
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L162"
            (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L165"
        if ((_m.length) != (n)) {
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L166"
            _t.errorf(("len(m) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface((_m.length)), stdgo.Go.toInterface(n));
        };
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L168"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_m.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L169"
                if (!(_m[_i] ?? false)) {
                    //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L170"
                    _t.errorf(("m[%d] doesn\'t exist" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                _i++;
            };
        };
    }
