package stdgo.sync.atomic_;
class Int64__static_extension {
    static public function add(_x:Int64_, _delta:haxe.Int64):haxe.Int64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_>);
        final _delta = (_delta : stdgo.GoInt64);
        return stdgo._internal.sync.atomic_.Atomic__Int64__static_extension.Int64__static_extension.add(_x, _delta);
    }
    static public function compareAndSwap(_x:Int64_, _old:haxe.Int64, _new:haxe.Int64):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_>);
        final _old = (_old : stdgo.GoInt64);
        final _new = (_new : stdgo.GoInt64);
        return stdgo._internal.sync.atomic_.Atomic__Int64__static_extension.Int64__static_extension.compareAndSwap(_x, _old, _new);
    }
    static public function swap(_x:Int64_, _new:haxe.Int64):haxe.Int64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_>);
        final _new = (_new : stdgo.GoInt64);
        return stdgo._internal.sync.atomic_.Atomic__Int64__static_extension.Int64__static_extension.swap(_x, _new);
    }
    static public function store(_x:Int64_, _val:haxe.Int64):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_>);
        final _val = (_val : stdgo.GoInt64);
        stdgo._internal.sync.atomic_.Atomic__Int64__static_extension.Int64__static_extension.store(_x, _val);
    }
    static public function load(_x:Int64_):haxe.Int64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_>);
        return stdgo._internal.sync.atomic_.Atomic__Int64__static_extension.Int64__static_extension.load(_x);
    }
}
