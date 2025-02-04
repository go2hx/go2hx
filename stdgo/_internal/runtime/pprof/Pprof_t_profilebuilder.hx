package stdgo._internal.runtime.pprof;
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_t_profilebuilder_static_extension.T_profileBuilder_static_extension) class T_profileBuilder {
    public var _start : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _end : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _havePeriod : Bool = false;
    public var _period : stdgo.GoInt64 = 0;
    public var _m : stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap = ({} : stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap);
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _zw : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = (null : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>);
    public var _pb : stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf = ({} : stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf);
    public var _strings : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _stringMap : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var _locs : stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo> = (null : stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo>);
    public var _funcs : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var _mem : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_memmap.T_memMap> = (null : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_memmap.T_memMap>);
    public var _deck : stdgo._internal.runtime.pprof.Pprof_t_pcdeck.T_pcDeck = ({} : stdgo._internal.runtime.pprof.Pprof_t_pcdeck.T_pcDeck);
    public function new(?_start:stdgo._internal.time.Time_time.Time, ?_end:stdgo._internal.time.Time_time.Time, ?_havePeriod:Bool, ?_period:stdgo.GoInt64, ?_m:stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap, ?_w:stdgo._internal.io.Io_writer.Writer, ?_zw:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>, ?_pb:stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf, ?_strings:stdgo.Slice<stdgo.GoString>, ?_stringMap:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_locs:stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo>, ?_funcs:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_mem:stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_memmap.T_memMap>, ?_deck:stdgo._internal.runtime.pprof.Pprof_t_pcdeck.T_pcDeck) {
        if (_start != null) this._start = _start;
        if (_end != null) this._end = _end;
        if (_havePeriod != null) this._havePeriod = _havePeriod;
        if (_period != null) this._period = _period;
        if (_m != null) this._m = _m;
        if (_w != null) this._w = _w;
        if (_zw != null) this._zw = _zw;
        if (_pb != null) this._pb = _pb;
        if (_strings != null) this._strings = _strings;
        if (_stringMap != null) this._stringMap = _stringMap;
        if (_locs != null) this._locs = _locs;
        if (_funcs != null) this._funcs = _funcs;
        if (_mem != null) this._mem = _mem;
        if (_deck != null) this._deck = _deck;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_profileBuilder(
_start,
_end,
_havePeriod,
_period,
_m,
_w,
_zw,
_pb,
_strings,
_stringMap,
_locs,
_funcs,
_mem,
_deck);
    }
}
