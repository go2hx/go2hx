package stdgo.sync.atomic_;
class Uintptr_static_extension {
    static public function add(_x:Uintptr, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr>);
        final _delta = (_delta : stdgo.GoUIntptr);
        return stdgo._internal.sync.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.add(_x, _delta);
    }
    static public function compareAndSwap(_x:Uintptr, _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr>);
        final _old = (_old : stdgo.GoUIntptr);
        final _new = (_new : stdgo.GoUIntptr);
        return stdgo._internal.sync.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.compareAndSwap(_x, _old, _new);
    }
    static public function swap(_x:Uintptr, _new:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr>);
        final _new = (_new : stdgo.GoUIntptr);
        return stdgo._internal.sync.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.swap(_x, _new);
    }
    static public function store(_x:Uintptr, _val:stdgo.GoUIntptr):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr>);
        final _val = (_val : stdgo.GoUIntptr);
        stdgo._internal.sync.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.store(_x, _val);
    }
    static public function load(_x:Uintptr):stdgo.GoUIntptr {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr>);
        return stdgo._internal.sync.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.load(_x);
    }
}
