package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.PallocData_asInterface) class PallocData_static_extension {
    @:keep
    @:tdfield
    static public function scavenged( _d:stdgo.Ref<stdgo._internal.runtime.Runtime_pallocdata.PallocData>):stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits> throw "PallocData:runtime.scavenged is not yet implemented";
    @:keep
    @:tdfield
    static public function pallocBits( _d:stdgo.Ref<stdgo._internal.runtime.Runtime_pallocdata.PallocData>):stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits> throw "PallocData:runtime.pallocBits is not yet implemented";
    @:keep
    @:tdfield
    static public function scavengedSetRange( _d:stdgo.Ref<stdgo._internal.runtime.Runtime_pallocdata.PallocData>, _i:stdgo.GoUInt, _n:stdgo.GoUInt):Void throw "PallocData:runtime.scavengedSetRange is not yet implemented";
    @:keep
    @:tdfield
    static public function allocRange( _d:stdgo.Ref<stdgo._internal.runtime.Runtime_pallocdata.PallocData>, _i:stdgo.GoUInt, _n:stdgo.GoUInt):Void throw "PallocData:runtime.allocRange is not yet implemented";
    @:keep
    @:tdfield
    static public function findScavengeCandidate( _d:stdgo.Ref<stdgo._internal.runtime.Runtime_pallocdata.PallocData>, _searchIdx:stdgo.GoUInt, _min:stdgo.GoUIntptr, _max:stdgo.GoUIntptr):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } throw "PallocData:runtime.findScavengeCandidate is not yet implemented";
}
