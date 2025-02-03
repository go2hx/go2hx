package stdgo.sync.atomic_;
class Int32_static_extension {
    static public function add(_x:Int32, _delta:StdTypes.Int):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int32.Int32>);
        final _delta = (_delta : stdgo.GoInt32);
        return stdgo._internal.sync.atomic_.Atomic__Int32_static_extension.Int32_static_extension.add(_x, _delta);
    }
    static public function compareAndSwap(_x:Int32, _old:StdTypes.Int, _new:StdTypes.Int):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int32.Int32>);
        final _old = (_old : stdgo.GoInt32);
        final _new = (_new : stdgo.GoInt32);
        return stdgo._internal.sync.atomic_.Atomic__Int32_static_extension.Int32_static_extension.compareAndSwap(_x, _old, _new);
    }
    static public function swap(_x:Int32, _new:StdTypes.Int):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int32.Int32>);
        final _new = (_new : stdgo.GoInt32);
        return stdgo._internal.sync.atomic_.Atomic__Int32_static_extension.Int32_static_extension.swap(_x, _new);
    }
    static public function store(_x:Int32, _val:StdTypes.Int):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int32.Int32>);
        final _val = (_val : stdgo.GoInt32);
        stdgo._internal.sync.atomic_.Atomic__Int32_static_extension.Int32_static_extension.store(_x, _val);
    }
    static public function load(_x:Int32):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int32.Int32>);
        return stdgo._internal.sync.atomic_.Atomic__Int32_static_extension.Int32_static_extension.load(_x);
    }
}
