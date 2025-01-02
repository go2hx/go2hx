package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.SemTable_asInterface) class SemTable_static_extension {
    @:keep
    @:tdfield
    static public function dequeue( _t:stdgo.Ref<stdgo._internal.runtime.Runtime_SemTable.SemTable>, _addr:stdgo.Pointer<stdgo.GoUInt32>):Bool throw "SemTable:runtime.dequeue is not yet implemented";
    @:keep
    @:tdfield
    static public function enqueue( _t:stdgo.Ref<stdgo._internal.runtime.Runtime_SemTable.SemTable>, _addr:stdgo.Pointer<stdgo.GoUInt32>):Void throw "SemTable:runtime.enqueue is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _rootFor( __self__:stdgo._internal.runtime.Runtime_SemTable.SemTable, _0:stdgo.Pointer<stdgo.GoUInt32>):stdgo.Ref<stdgo._internal.runtime.Runtime_T_semaRoot.T_semaRoot> return @:_5 __self__._rootFor(_0);
}
