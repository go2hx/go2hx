package stdgo.sync.atomic_;
class Uint64_static_extension {
    static public function add(_x:Uint64, _delta:haxe.UInt64):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>);
        final _delta = (_delta : stdgo.GoUInt64);
        return stdgo._internal.sync.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.add(_x, _delta);
    }
    static public function compareAndSwap(_x:Uint64, _old:haxe.UInt64, _new:haxe.UInt64):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>);
        final _old = (_old : stdgo.GoUInt64);
        final _new = (_new : stdgo.GoUInt64);
        return stdgo._internal.sync.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.compareAndSwap(_x, _old, _new);
    }
    static public function swap(_x:Uint64, _new:haxe.UInt64):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>);
        final _new = (_new : stdgo.GoUInt64);
        return stdgo._internal.sync.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.swap(_x, _new);
    }
    static public function store(_x:Uint64, _val:haxe.UInt64):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>);
        final _val = (_val : stdgo.GoUInt64);
        stdgo._internal.sync.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.store(_x, _val);
    }
    static public function load(_x:Uint64):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>);
        return stdgo._internal.sync.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.load(_x);
    }
}
