package stdgo.sync.atomic_;
class Bool__static_extension {
    static public function compareAndSwap(_x:Bool_, _old:Bool, _new:Bool):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_>);
        return stdgo._internal.sync.atomic_.Atomic__Bool__static_extension.Bool__static_extension.compareAndSwap(_x, _old, _new);
    }
    static public function swap(_x:Bool_, _new:Bool):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_>);
        return stdgo._internal.sync.atomic_.Atomic__Bool__static_extension.Bool__static_extension.swap(_x, _new);
    }
    static public function store(_x:Bool_, _val:Bool):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_>);
        stdgo._internal.sync.atomic_.Atomic__Bool__static_extension.Bool__static_extension.store(_x, _val);
    }
    static public function load(_x:Bool_):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_>);
        return stdgo._internal.sync.atomic_.Atomic__Bool__static_extension.Bool__static_extension.load(_x);
    }
}
