package stdgo._internal.container.heap;
@:keep @:allow(stdgo._internal.container.heap.Heap.T_myHeap_asInterface) class T_myHeap_static_extension {
    @:keep
    @:tdfield
    static public function _verify( _h:stdgo._internal.container.heap.Heap_t_myheap.T_myHeap, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _i:stdgo.GoInt):Void {
        @:recv var _h:stdgo._internal.container.heap.Heap_t_myheap.T_myHeap = _h;
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L36"
        _t.helper();
        var _n = (_h.len() : stdgo.GoInt);
        var _j1 = (((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _j2 = (((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L40"
        if ((_j1 < _n : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L41"
            if (_h.less(_j1, _i)) {
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L42"
                _t.errorf(("heap invariant invalidated [%d] = %d > [%d] = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_h[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_j1), stdgo.Go.toInterface(_h[(_j1 : stdgo.GoInt)]));
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L43"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L45"
            _h._verify(_t, _j1);
        };
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L47"
        if ((_j2 < _n : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L48"
            if (_h.less(_j2, _i)) {
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L49"
                _t.errorf(("heap invariant invalidated [%d] = %d > [%d] = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_h[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_j1), stdgo.Go.toInterface(_h[(_j2 : stdgo.GoInt)]));
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L50"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L52"
            _h._verify(_t, _j2);
        };
    }
    @:keep
    @:tdfield
    static public function push( _h:stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>, _v:stdgo.AnyInterface):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap> = _h;
        (_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap).__setData__(((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap).__append__((stdgo.Go.typeAssert((_v : stdgo.GoInt)) : stdgo.GoInt)) : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap));
    }
    @:keep
    @:tdfield
    static public function pop( _h:stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>):stdgo.AnyInterface {
        @:recv var _h:stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap> = _h;
        var _v = (null : stdgo.AnyInterface);
        {
            final __tmp__0 = stdgo.Go.toInterface(((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(_h.len() - (1 : stdgo.GoInt) : stdgo.GoInt)]);
            (_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap).__setData__((((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap)).__slice__(0, (_h.len() - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap));
            _v = @:binopAssign __tmp__0;
        };
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L28"
        return _v;
    }
    @:keep
    @:tdfield
    static public function len( _h:stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap> = _h;
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L23"
        return ((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap).length);
    }
    @:keep
    @:tdfield
    static public function swap( _h:stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap> = _h;
        {
            final __tmp__0 = ((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(_j : stdgo.GoInt)];
            final __tmp__1 = ((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(_i : stdgo.GoInt)];
            final __tmp__2 = ((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap));
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = ((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap));
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function less( _h:stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _h:stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap> = _h;
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap_test.go#L15"
        return (((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(_i : stdgo.GoInt)] < ((_h : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap))[(_j : stdgo.GoInt)] : Bool);
    }
}
