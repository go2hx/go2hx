package stdgo.container.heap;
class Interface_static_extension {
    static public function pop(t:stdgo._internal.container.heap.Heap_Interface.Interface):stdgo.AnyInterface {
        return stdgo._internal.container.heap.Heap_Interface_static_extension.Interface_static_extension.pop(t);
    }
    static public function push(t:stdgo._internal.container.heap.Heap_Interface.Interface, _x:stdgo.AnyInterface):Void {
        stdgo._internal.container.heap.Heap_Interface_static_extension.Interface_static_extension.push(t, _x);
    }
}
typedef Interface = stdgo._internal.container.heap.Heap_Interface.Interface;
/**
    Package heap provides heap operations for any type that implements
    heap.Interface. A heap is a tree with the property that each node is the
    minimum-valued node in its subtree.
    
    The minimum element in the tree is the root, at index 0.
    
    A heap is a common way to implement a priority queue. To build a priority
    queue, implement the Heap interface with the (negative) priority as the
    ordering for the Less method, so Push adds items while Pop removes the
    highest-priority item from the queue. The Examples include such an
    implementation; the file example_pq_test.go has the complete source.
**/
class Heap {
    /**
        Init establishes the heap invariants required by the other routines in this package.
        Init is idempotent with respect to the heap invariants
        and may be called whenever the heap invariants may have been invalidated.
        The complexity is O(n) where n = h.Len().
    **/
    static public function init(_h:Interface):Void {
        stdgo._internal.container.heap.Heap_init.init(_h);
    }
    /**
        Push pushes the element x onto the heap.
        The complexity is O(log n) where n = h.Len().
    **/
    static public function push(_h:Interface, _x:stdgo.AnyInterface):Void {
        stdgo._internal.container.heap.Heap_push.push(_h, _x);
    }
    /**
        Pop removes and returns the minimum element (according to Less) from the heap.
        The complexity is O(log n) where n = h.Len().
        Pop is equivalent to Remove(h, 0).
    **/
    static public function pop(_h:Interface):stdgo.AnyInterface {
        return stdgo._internal.container.heap.Heap_pop.pop(_h);
    }
    /**
        Remove removes and returns the element at index i from the heap.
        The complexity is O(log n) where n = h.Len().
    **/
    static public function remove(_h:Interface, _i:StdTypes.Int):stdgo.AnyInterface {
        return stdgo._internal.container.heap.Heap_remove.remove(_h, _i);
    }
    /**
        Fix re-establishes the heap ordering after the element at index i has changed its value.
        Changing the value of the element at index i and then calling Fix is equivalent to,
        but less expensive than, calling Remove(h, i) followed by a Push of the new value.
        The complexity is O(log n) where n = h.Len().
    **/
    static public function fix(_h:Interface, _i:StdTypes.Int):Void {
        stdgo._internal.container.heap.Heap_fix.fix(_h, _i);
    }
}