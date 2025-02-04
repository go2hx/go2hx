package stdgo._internal.internal.coverage.cmerge;
@:keep @:allow(stdgo._internal.internal.coverage.cmerge.Cmerge.Merger_asInterface) class Merger_static_extension {
    @:keep
    @:tdfield
    static public function granularity( _cm:stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger>):stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity {
        @:recv var _cm:stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger> = _cm;
        return (@:checkr _cm ?? throw "null pointer dereference")._cgran;
    }
    @:keep
    @:tdfield
    static public function mode( _cm:stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger>):stdgo._internal.internal.coverage.Coverage_countermode.CounterMode {
        @:recv var _cm:stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger> = _cm;
        return (@:checkr _cm ?? throw "null pointer dereference")._cmode;
    }
    @:keep
    @:tdfield
    static public function resetModeAndGranularity( _cm:stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger>):Void {
        @:recv var _cm:stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger> = _cm;
        (@:checkr _cm ?? throw "null pointer dereference")._cmode = (0 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode);
        (@:checkr _cm ?? throw "null pointer dereference")._cgran = (0 : stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity);
        (@:checkr _cm ?? throw "null pointer dereference")._overflow = false;
    }
    @:keep
    @:tdfield
    static public function setModeAndGranularity( _cm:stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger>, _mdf:stdgo.GoString, _cmode:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode, _cgran:stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity):stdgo.Error {
        @:recv var _cm:stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger> = _cm;
        if ((@:checkr _cm ?? throw "null pointer dereference")._cmode == ((0 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
            (@:checkr _cm ?? throw "null pointer dereference")._cmode = _cmode;
            (@:checkr _cm ?? throw "null pointer dereference")._cgran = _cgran;
        } else {
            if ((@:checkr _cm ?? throw "null pointer dereference")._cgran != (_cgran)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("counter granularity clash while reading meta-data file %s: previous file had %s, new file has %s" : stdgo.GoString), stdgo.Go.toInterface(_mdf), stdgo.Go.toInterface(((@:checkr _cm ?? throw "null pointer dereference")._cgran.string() : stdgo.GoString)), stdgo.Go.toInterface((_cgran.string() : stdgo.GoString)));
            };
            if ((@:checkr _cm ?? throw "null pointer dereference")._cmode != (_cmode)) {
                if ((@:checkr _cm ?? throw "null pointer dereference")._policy == ((0 : stdgo._internal.internal.coverage.cmerge.Cmerge_modemergepolicy.ModeMergePolicy))) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("counter mode clash while reading meta-data file %s: previous file had %s, new file has %s" : stdgo.GoString), stdgo.Go.toInterface(_mdf), stdgo.Go.toInterface(((@:checkr _cm ?? throw "null pointer dereference")._cmode.string() : stdgo.GoString)), stdgo.Go.toInterface((_cmode.string() : stdgo.GoString)));
                };
                if (((@:checkr _cm ?? throw "null pointer dereference")._cmode < _cmode : Bool)) {
                    (@:checkr _cm ?? throw "null pointer dereference")._cmode = _cmode;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function saturatingAdd( _m:stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger>, _dst:stdgo.GoUInt32, _src:stdgo.GoUInt32):stdgo.GoUInt32 {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger> = _m;
        var __tmp__ = stdgo._internal.internal.coverage.cmerge.Cmerge_saturatingadd.saturatingAdd(_dst, _src), _result:stdgo.GoUInt32 = __tmp__._0, _overflow:Bool = __tmp__._1;
        if (_overflow) {
            (@:checkr _m ?? throw "null pointer dereference")._overflow = true;
        };
        return _result;
    }
    @:keep
    @:tdfield
    static public function mergeCounters( _m:stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger>, _dst:stdgo.Slice<stdgo.GoUInt32>, _src:stdgo.Slice<stdgo.GoUInt32>):{ var _0 : stdgo.Error; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger> = _m;
        if ((_src.length) != ((_dst.length))) {
            return { _0 : stdgo._internal.fmt.Fmt_errorf.errorf(("merging counters: len(dst)=%d len(src)=%d" : stdgo.GoString), stdgo.Go.toInterface((_dst.length)), stdgo.Go.toInterface((_src.length))), _1 : false };
        };
        if ((@:checkr _m ?? throw "null pointer dereference")._cmode == ((1 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_src.length) : Bool)) {
                    if (_src[(_i : stdgo.GoInt)] != ((0u32 : stdgo.GoUInt32))) {
                        _dst[(_i : stdgo.GoInt)] = (1u32 : stdgo.GoUInt32);
                    };
                    _i++;
                };
            };
        } else {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_src.length) : Bool)) {
                    _dst[(_i : stdgo.GoInt)] = @:check2r _m.saturatingAdd(_dst[(_i : stdgo.GoInt)], _src[(_i : stdgo.GoInt)]);
                    _i++;
                };
            };
        };
        var _ovf = ((@:checkr _m ?? throw "null pointer dereference")._overflow : Bool);
        (@:checkr _m ?? throw "null pointer dereference")._overflow = false;
        return { _0 : (null : stdgo.Error), _1 : _ovf };
    }
    @:keep
    @:tdfield
    static public function setModeMergePolicy( _cm:stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger>, _policy:stdgo._internal.internal.coverage.cmerge.Cmerge_modemergepolicy.ModeMergePolicy):Void {
        @:recv var _cm:stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger> = _cm;
        (@:checkr _cm ?? throw "null pointer dereference")._policy = _policy;
    }
}
