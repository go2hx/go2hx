package stdgo.runtime;
class MemProfileRecord_static_extension {
    static public function stack(_r:MemProfileRecord):Array<stdgo.GoUIntptr> {
        final _r = (_r : stdgo.Ref<stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord>);
        return [for (i in stdgo._internal.runtime.Runtime_MemProfileRecord_static_extension.MemProfileRecord_static_extension.stack(_r)) i];
    }
    static public function inUseObjects(_r:MemProfileRecord):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord>);
        return stdgo._internal.runtime.Runtime_MemProfileRecord_static_extension.MemProfileRecord_static_extension.inUseObjects(_r);
    }
    static public function inUseBytes(_r:MemProfileRecord):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord>);
        return stdgo._internal.runtime.Runtime_MemProfileRecord_static_extension.MemProfileRecord_static_extension.inUseBytes(_r);
    }
}
