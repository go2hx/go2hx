package stdgo.sync.atomic_;
class Uint32_static_extension {
    static public function add(_x:Uint32, _delta:std.UInt):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32>);
        final _delta = (_delta : stdgo.GoUInt32);
        return stdgo._internal.sync.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.add(_x, _delta);
    }
    static public function compareAndSwap(_x:Uint32, _old:std.UInt, _new:std.UInt):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32>);
        final _old = (_old : stdgo.GoUInt32);
        final _new = (_new : stdgo.GoUInt32);
        return stdgo._internal.sync.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.compareAndSwap(_x, _old, _new);
    }
    static public function swap(_x:Uint32, _new:std.UInt):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32>);
        final _new = (_new : stdgo.GoUInt32);
        return stdgo._internal.sync.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.swap(_x, _new);
    }
    static public function store(_x:Uint32, _val:std.UInt):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32>);
        final _val = (_val : stdgo.GoUInt32);
        stdgo._internal.sync.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.store(_x, _val);
    }
    static public function load(_x:Uint32):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32>);
        return stdgo._internal.sync.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.load(_x);
    }
}
