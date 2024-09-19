package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.PallocBits_asInterface) class PallocBits_static_extension {
    @:keep
    static public function popcntRange( _b:stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>, _i:stdgo.GoUInt, _n:stdgo.GoUInt):stdgo.GoUInt throw "PallocBits:runtime.popcntRange is not yet implemented";
    @:keep
    static public function summarize( _b:stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>):stdgo._internal.runtime.Runtime_PallocSum.PallocSum throw "PallocBits:runtime.summarize is not yet implemented";
    @:keep
    static public function free( _b:stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>, _i:stdgo.GoUInt, _n:stdgo.GoUInt):Void throw "PallocBits:runtime.free is not yet implemented";
    @:keep
    static public function allocRange( _b:stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>, _i:stdgo.GoUInt, _n:stdgo.GoUInt):Void throw "PallocBits:runtime.allocRange is not yet implemented";
    @:keep
    static public function find( _b:stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>, _npages:stdgo.GoUIntptr, _searchIdx:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } throw "PallocBits:runtime.find is not yet implemented";
}
