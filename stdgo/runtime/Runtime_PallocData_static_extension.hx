package stdgo.runtime;
class PallocData_static_extension {
    static public function scavenged(_d:PallocData):PallocBits {
        final _d = (_d : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocData.PallocData>);
        return stdgo._internal.runtime.Runtime_PallocData_static_extension.PallocData_static_extension.scavenged(_d);
    }
    static public function pallocBits(_d:PallocData):PallocBits {
        final _d = (_d : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocData.PallocData>);
        return stdgo._internal.runtime.Runtime_PallocData_static_extension.PallocData_static_extension.pallocBits(_d);
    }
    static public function scavengedSetRange(_d:PallocData, _i:std.UInt, _n:std.UInt):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocData.PallocData>);
        final _i = (_i : stdgo.GoUInt);
        final _n = (_n : stdgo.GoUInt);
        stdgo._internal.runtime.Runtime_PallocData_static_extension.PallocData_static_extension.scavengedSetRange(_d, _i, _n);
    }
    static public function allocRange(_d:PallocData, _i:std.UInt, _n:std.UInt):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocData.PallocData>);
        final _i = (_i : stdgo.GoUInt);
        final _n = (_n : stdgo.GoUInt);
        stdgo._internal.runtime.Runtime_PallocData_static_extension.PallocData_static_extension.allocRange(_d, _i, _n);
    }
    static public function findScavengeCandidate(_d:PallocData, _searchIdx:std.UInt, _min:stdgo.GoUIntptr, _max:stdgo.GoUIntptr):stdgo.Tuple<std.UInt, std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocData.PallocData>);
        final _searchIdx = (_searchIdx : stdgo.GoUInt);
        final _min = (_min : stdgo.GoUIntptr);
        final _max = (_max : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.runtime.Runtime_PallocData_static_extension.PallocData_static_extension.findScavengeCandidate(_d, _searchIdx, _min, _max);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
