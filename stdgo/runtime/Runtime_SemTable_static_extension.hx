package stdgo.runtime;
class SemTable_static_extension {
    static public function dequeue(_t:SemTable, _addr:stdgo.Pointer<std.UInt>):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.runtime.Runtime_SemTable.SemTable>);
        return stdgo._internal.runtime.Runtime_SemTable_static_extension.SemTable_static_extension.dequeue(_t, _addr);
    }
    static public function enqueue(_t:SemTable, _addr:stdgo.Pointer<std.UInt>):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.runtime.Runtime_SemTable.SemTable>);
        stdgo._internal.runtime.Runtime_SemTable_static_extension.SemTable_static_extension.enqueue(_t, _addr);
    }
    public static function _rootFor(__self__:stdgo._internal.runtime.Runtime_SemTable.SemTable, _0:stdgo.Pointer<std.UInt>):T_semaRoot {
        return stdgo._internal.runtime.Runtime_SemTable_static_extension.SemTable_static_extension._rootFor(__self__, _0);
    }
}
