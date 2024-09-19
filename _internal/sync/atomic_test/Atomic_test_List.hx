package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
@:structInit class List {
    public var next : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<_internal.sync.atomic_test.Atomic_test_List.List> = ({} : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<_internal.sync.atomic_test.Atomic_test_List.List>);
    public function new(?next:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<_internal.sync.atomic_test.Atomic_test_List.List>) {
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new List(next);
    }
}
