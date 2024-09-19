package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.PallocData_asInterface) class PallocData_static_extension {
    @:keep
    static public function scavenged( _d:stdgo.Ref<stdgo._internal.runtime.Runtime_PallocData.PallocData>):stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits> throw "PallocData:runtime.scavenged is not yet implemented";
    @:keep
    static public function pallocBits( _d:stdgo.Ref<stdgo._internal.runtime.Runtime_PallocData.PallocData>):stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits> throw "PallocData:runtime.pallocBits is not yet implemented";
    @:keep
    static public function scavengedSetRange( _d:stdgo.Ref<stdgo._internal.runtime.Runtime_PallocData.PallocData>, _i:stdgo.GoUInt, _n:stdgo.GoUInt):Void throw "PallocData:runtime.scavengedSetRange is not yet implemented";
    @:keep
    static public function allocRange( _d:stdgo.Ref<stdgo._internal.runtime.Runtime_PallocData.PallocData>, _i:stdgo.GoUInt, _n:stdgo.GoUInt):Void throw "PallocData:runtime.allocRange is not yet implemented";
    @:keep
    static public function findScavengeCandidate( _d:stdgo.Ref<stdgo._internal.runtime.Runtime_PallocData.PallocData>, _searchIdx:stdgo.GoUInt, _min:stdgo.GoUIntptr, _max:stdgo.GoUIntptr):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } throw "PallocData:runtime.findScavengeCandidate is not yet implemented";
}
