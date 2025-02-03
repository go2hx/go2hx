package stdgo.sync.atomic_;
class Pointer__static_extension {
    static public function compareAndSwap(_x:Pointer_<Dynamic>, _old:Dynamic, _new:Dynamic):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<Dynamic>>);
        final _old = (_old : stdgo.Ref<Dynamic>);
        final _new = (_new : stdgo.Ref<Dynamic>);
        return stdgo._internal.sync.atomic_.Atomic__Pointer__static_extension.Pointer__static_extension.compareAndSwap(_x, _old, _new);
    }
    static public function swap(_x:Pointer_<Dynamic>, _new:Dynamic):Dynamic {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<Dynamic>>);
        final _new = (_new : stdgo.Ref<Dynamic>);
        return stdgo._internal.sync.atomic_.Atomic__Pointer__static_extension.Pointer__static_extension.swap(_x, _new);
    }
    static public function store(_x:Pointer_<Dynamic>, _val:Dynamic):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<Dynamic>>);
        final _val = (_val : stdgo.Ref<Dynamic>);
        stdgo._internal.sync.atomic_.Atomic__Pointer__static_extension.Pointer__static_extension.store(_x, _val);
    }
    static public function load(_x:Pointer_<Dynamic>):Dynamic {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<Dynamic>>);
        return stdgo._internal.sync.atomic_.Atomic__Pointer__static_extension.Pointer__static_extension.load(_x);
    }
}
