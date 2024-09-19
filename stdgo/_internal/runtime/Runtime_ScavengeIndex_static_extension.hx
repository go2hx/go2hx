package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.ScavengeIndex_asInterface) class ScavengeIndex_static_extension {
    @:keep
    static public function setNoHugePage( _s:stdgo.Ref<stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex>, _ci:stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx):Void throw "ScavengeIndex:runtime.setNoHugePage is not yet implemented";
    @:keep
    static public function setEmpty( _s:stdgo.Ref<stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex>, _ci:stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx):Void throw "ScavengeIndex:runtime.setEmpty is not yet implemented";
    @:keep
    static public function nextGen( _s:stdgo.Ref<stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex>):Void throw "ScavengeIndex:runtime.nextGen is not yet implemented";
    @:keep
    static public function resetSearchAddrs( _s:stdgo.Ref<stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex>):Void throw "ScavengeIndex:runtime.resetSearchAddrs is not yet implemented";
    @:keep
    static public function freeRange( _s:stdgo.Ref<stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex>, _base:stdgo.GoUIntptr, _limit:stdgo.GoUIntptr):Void throw "ScavengeIndex:runtime.freeRange is not yet implemented";
    @:keep
    static public function allocRange( _s:stdgo.Ref<stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex>, _base:stdgo.GoUIntptr, _limit:stdgo.GoUIntptr):Void throw "ScavengeIndex:runtime.allocRange is not yet implemented";
    @:keep
    static public function find( _s:stdgo.Ref<stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex>, _force:Bool):{ var _0 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx; var _1 : stdgo.GoUInt; } throw "ScavengeIndex:runtime.find is not yet implemented";
}
