package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.PallocBits_asInterface) class PallocBits_static_extension {
    @:keep
    @:tdfield
    static public function popcntRange( _b:stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>, _i:stdgo.GoUInt, _n:stdgo.GoUInt):stdgo.GoUInt throw "PallocBits:runtime.popcntRange is not yet implemented";
    @:keep
    @:tdfield
    static public function summarize( _b:stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>):stdgo._internal.runtime.Runtime_pallocsum.PallocSum throw "PallocBits:runtime.summarize is not yet implemented";
    @:keep
    @:tdfield
    static public function free( _b:stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>, _i:stdgo.GoUInt, _n:stdgo.GoUInt):Void throw "PallocBits:runtime.free is not yet implemented";
    @:keep
    @:tdfield
    static public function allocRange( _b:stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>, _i:stdgo.GoUInt, _n:stdgo.GoUInt):Void throw "PallocBits:runtime.allocRange is not yet implemented";
    @:keep
    @:tdfield
    static public function find( _b:stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>, _npages:stdgo.GoUIntptr, _searchIdx:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } throw "PallocBits:runtime.find is not yet implemented";
}
