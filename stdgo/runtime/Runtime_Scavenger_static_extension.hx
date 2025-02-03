package stdgo.runtime;
class Scavenger_static_extension {
    static public function stop(_s:Scavenger):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_Scavenger.Scavenger>);
        stdgo._internal.runtime.Runtime_Scavenger_static_extension.Scavenger_static_extension.stop(_s);
    }
    static public function wake(_s:Scavenger):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_Scavenger.Scavenger>);
        stdgo._internal.runtime.Runtime_Scavenger_static_extension.Scavenger_static_extension.wake(_s);
    }
    static public function released(_s:Scavenger):stdgo.GoUIntptr {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_Scavenger.Scavenger>);
        return stdgo._internal.runtime.Runtime_Scavenger_static_extension.Scavenger_static_extension.released(_s);
    }
    static public function blockUntilParked(_s:Scavenger, _timeout:haxe.Int64):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_Scavenger.Scavenger>);
        final _timeout = (_timeout : stdgo.GoInt64);
        return stdgo._internal.runtime.Runtime_Scavenger_static_extension.Scavenger_static_extension.blockUntilParked(_s, _timeout);
    }
    static public function start(_s:Scavenger):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_Scavenger.Scavenger>);
        stdgo._internal.runtime.Runtime_Scavenger_static_extension.Scavenger_static_extension.start(_s);
    }
}
