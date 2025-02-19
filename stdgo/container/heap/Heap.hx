package stdgo.container.heap;
class Interface_static_extension {
    static public function pop(t:stdgo._internal.container.heap.Heap_interface.Interface):stdgo.AnyInterface {
        return stdgo._internal.container.heap.Heap_interface_static_extension.Interface_static_extension.pop(t);
    }
    static public function push(t:stdgo._internal.container.heap.Heap_interface.Interface, _x:stdgo.AnyInterface):Void {
        final _x = (_x : stdgo.AnyInterface);
        stdgo._internal.container.heap.Heap_interface_static_extension.Interface_static_extension.push(t, _x);
    }
}
@:forward abstract Interface(stdgo._internal.container.heap.Heap_interface.Interface) from stdgo._internal.container.heap.Heap_interface.Interface to stdgo._internal.container.heap.Heap_interface.Interface {
    @:from
    static function fromHaxeInterface(x:{ function push(_x:stdgo.AnyInterface):Void; function pop():stdgo.AnyInterface; }):Interface {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Interface = { push : _0 -> x.push(_0), pop : () -> x.pop(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) typedef T_myHeap = stdgo._internal.container.heap.Heap_t_myheap.T_myHeap;
@:dox(hide) typedef T_myHeapPointer = stdgo._internal.container.heap.Heap_t_myheappointer.T_myHeapPointer;
@:dox(hide) class T_myHeap_static_extension {
    static public function _verify(_h:T_myHeap, _t:stdgo._internal.testing.Testing_t_.T_, _i:StdTypes.Int):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        final _i = (_i : stdgo.GoInt);
        stdgo._internal.container.heap.Heap_t_myheap_static_extension.T_myHeap_static_extension._verify(_h, _t, _i);
    }
    static public function push(_h:T_myHeap, _v:stdgo.AnyInterface):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>);
        final _v = (_v : stdgo.AnyInterface);
        stdgo._internal.container.heap.Heap_t_myheap_static_extension.T_myHeap_static_extension.push(_h, _v);
    }
    static public function pop(_h:T_myHeap):stdgo.AnyInterface {
        final _h = (_h : stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>);
        return stdgo._internal.container.heap.Heap_t_myheap_static_extension.T_myHeap_static_extension.pop(_h);
    }
    static public function len(_h:T_myHeap):StdTypes.Int {
        final _h = (_h : stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>);
        return stdgo._internal.container.heap.Heap_t_myheap_static_extension.T_myHeap_static_extension.len(_h);
    }
    static public function swap(_h:T_myHeap, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.container.heap.Heap_t_myheap_static_extension.T_myHeap_static_extension.swap(_h, _i, _j);
    }
    static public function less(_h:T_myHeap, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _h = (_h : stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.container.heap.Heap_t_myheap_static_extension.T_myHeap_static_extension.less(_h, _i, _j);
    }
}
/**
    * Package heap provides heap operations for any type that implements
    * heap.Interface. A heap is a tree with the property that each node is the
    * minimum-valued node in its subtree.
    * 
    * The minimum element in the tree is the root, at index 0.
    * 
    * A heap is a common way to implement a priority queue. To build a priority
    * queue, implement the Heap interface with the (negative) priority as the
    * ordering for the Less method, so Push adds items while Pop removes the
    * highest-priority item from the queue. The Examples include such an
    * implementation; the file example_pq_test.go has the complete source.
**/
class Heap {
    /**
        * Init establishes the heap invariants required by the other routines in this package.
        * Init is idempotent with respect to the heap invariants
        * and may be called whenever the heap invariants may have been invalidated.
        * The complexity is O(n) where n = h.Len().
    **/
    static public inline function init(_h:Interface):Void {
        stdgo._internal.container.heap.Heap_init.init(_h);
    }
    /**
        * Push pushes the element x onto the heap.
        * The complexity is O(log n) where n = h.Len().
    **/
    static public inline function push(_h:Interface, _x:stdgo.AnyInterface):Void {
        final _x = (_x : stdgo.AnyInterface);
        stdgo._internal.container.heap.Heap_push.push(_h, _x);
    }
    /**
        * Pop removes and returns the minimum element (according to Less) from the heap.
        * The complexity is O(log n) where n = h.Len().
        * Pop is equivalent to Remove(h, 0).
    **/
    static public inline function pop(_h:Interface):stdgo.AnyInterface {
        return stdgo._internal.container.heap.Heap_pop.pop(_h);
    }
    /**
        * Remove removes and returns the element at index i from the heap.
        * The complexity is O(log n) where n = h.Len().
    **/
    static public inline function remove(_h:Interface, _i:StdTypes.Int):stdgo.AnyInterface {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.container.heap.Heap_remove.remove(_h, _i);
    }
    /**
        * Fix re-establishes the heap ordering after the element at index i has changed its value.
        * Changing the value of the element at index i and then calling Fix is equivalent to,
        * but less expensive than, calling Remove(h, i) followed by a Push of the new value.
        * The complexity is O(log n) where n = h.Len().
    **/
    static public inline function fix(_h:Interface, _i:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        stdgo._internal.container.heap.Heap_fix.fix(_h, _i);
    }
    static public inline function testInit0(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.container.heap.Heap_testinit0.testInit0(_t);
    }
    static public inline function testInit1(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.container.heap.Heap_testinit1.testInit1(_t);
    }
    static public inline function test(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.container.heap.Heap_test.test(_t);
    }
    static public inline function testRemove0(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.container.heap.Heap_testremove0.testRemove0(_t);
    }
    static public inline function testRemove1(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.container.heap.Heap_testremove1.testRemove1(_t);
    }
    static public inline function testRemove2(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.container.heap.Heap_testremove2.testRemove2(_t);
    }
    static public inline function benchmarkDup(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.container.heap.Heap_benchmarkdup.benchmarkDup(_b);
    }
    static public inline function testFix(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.container.heap.Heap_testfix.testFix(_t);
    }
}
