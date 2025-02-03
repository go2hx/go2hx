package stdgo.sync.atomic_;
class Value_static_extension {
    static public function compareAndSwap(_v:Value, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool {
        final _v = (_v : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Value.Value>);
        final _old = (_old : stdgo.AnyInterface);
        final _new = (_new : stdgo.AnyInterface);
        return stdgo._internal.sync.atomic_.Atomic__Value_static_extension.Value_static_extension.compareAndSwap(_v, _old, _new);
    }
    static public function swap(_v:Value, _new:stdgo.AnyInterface):stdgo.AnyInterface {
        final _v = (_v : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Value.Value>);
        final _new = (_new : stdgo.AnyInterface);
        return stdgo._internal.sync.atomic_.Atomic__Value_static_extension.Value_static_extension.swap(_v, _new);
    }
    static public function store(_v:Value, _val:stdgo.AnyInterface):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Value.Value>);
        final _val = (_val : stdgo.AnyInterface);
        stdgo._internal.sync.atomic_.Atomic__Value_static_extension.Value_static_extension.store(_v, _val);
    }
    static public function load(_v:Value):stdgo.AnyInterface {
        final _v = (_v : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Value.Value>);
        return stdgo._internal.sync.atomic_.Atomic__Value_static_extension.Value_static_extension.load(_v);
    }
}
