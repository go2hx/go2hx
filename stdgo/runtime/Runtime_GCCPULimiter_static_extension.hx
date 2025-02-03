package stdgo.runtime;
class GCCPULimiter_static_extension {
    static public function resetCapacity(_l:GCCPULimiter, _now:haxe.Int64, _nprocs:StdTypes.Int):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter>);
        final _now = (_now : stdgo.GoInt64);
        final _nprocs = (_nprocs : stdgo.GoInt32);
        stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.resetCapacity(_l, _now, _nprocs);
    }
    static public function addAssistTime(_l:GCCPULimiter, _t:haxe.Int64):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter>);
        final _t = (_t : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.addAssistTime(_l, _t);
    }
    static public function update(_l:GCCPULimiter, _now:haxe.Int64):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter>);
        final _now = (_now : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.update(_l, _now);
    }
    static public function finishGCTransition(_l:GCCPULimiter, _now:haxe.Int64):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter>);
        final _now = (_now : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.finishGCTransition(_l, _now);
    }
    static public function startGCTransition(_l:GCCPULimiter, _enableGC:Bool, _now:haxe.Int64):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter>);
        final _now = (_now : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.startGCTransition(_l, _enableGC, _now);
    }
    static public function needUpdate(_l:GCCPULimiter, _now:haxe.Int64):Bool {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter>);
        final _now = (_now : stdgo.GoInt64);
        return stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.needUpdate(_l, _now);
    }
    static public function limiting(_l:GCCPULimiter):Bool {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter>);
        return stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.limiting(_l);
    }
    static public function overflow(_l:GCCPULimiter):haxe.UInt64 {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter>);
        return stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.overflow(_l);
    }
    static public function capacity_(_l:GCCPULimiter):haxe.UInt64 {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter>);
        return stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.capacity_(_l);
    }
    static public function fill(_l:GCCPULimiter):haxe.UInt64 {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter>);
        return stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.fill(_l);
    }
}
