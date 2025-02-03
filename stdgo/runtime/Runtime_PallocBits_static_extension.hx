package stdgo.runtime;
class PallocBits_static_extension {
    static public function popcntRange(_b:PallocBits, _i:std.UInt, _n:std.UInt):std.UInt {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>);
        final _i = (_i : stdgo.GoUInt);
        final _n = (_n : stdgo.GoUInt);
        return stdgo._internal.runtime.Runtime_PallocBits_static_extension.PallocBits_static_extension.popcntRange(_b, _i, _n);
    }
    static public function summarize(_b:PallocBits):PallocSum {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>);
        return stdgo._internal.runtime.Runtime_PallocBits_static_extension.PallocBits_static_extension.summarize(_b);
    }
    static public function free(_b:PallocBits, _i:std.UInt, _n:std.UInt):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>);
        final _i = (_i : stdgo.GoUInt);
        final _n = (_n : stdgo.GoUInt);
        stdgo._internal.runtime.Runtime_PallocBits_static_extension.PallocBits_static_extension.free(_b, _i, _n);
    }
    static public function allocRange(_b:PallocBits, _i:std.UInt, _n:std.UInt):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>);
        final _i = (_i : stdgo.GoUInt);
        final _n = (_n : stdgo.GoUInt);
        stdgo._internal.runtime.Runtime_PallocBits_static_extension.PallocBits_static_extension.allocRange(_b, _i, _n);
    }
    static public function find(_b:PallocBits, _npages:stdgo.GoUIntptr, _searchIdx:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>);
        final _npages = (_npages : stdgo.GoUIntptr);
        final _searchIdx = (_searchIdx : stdgo.GoUInt);
        return {
            final obj = stdgo._internal.runtime.Runtime_PallocBits_static_extension.PallocBits_static_extension.find(_b, _npages, _searchIdx);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
