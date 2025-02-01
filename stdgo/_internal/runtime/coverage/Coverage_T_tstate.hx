package stdgo._internal.runtime.coverage;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.internal.coverage.encodemeta.Encodemeta;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.coverage.Coverage;
import stdgo._internal.internal.coverage.pods.Pods;
import stdgo._internal.internal.coverage.cformat.Cformat;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.time.Time;
import stdgo._internal.internal.coverage.encodecounter.Encodecounter;
import stdgo._internal.internal.coverage.decodemeta.Decodemeta;
import stdgo._internal.internal.coverage.decodecounter.Decodecounter;
import stdgo._internal.encoding.json.Json;
@:structInit @:using(stdgo._internal.runtime.coverage.Coverage_T_tstate_static_extension.T_tstate_static_extension) class T_tstate {
    @:embedded
    public var batchCounterAlloc : stdgo._internal.internal.coverage.calloc.Calloc_BatchCounterAlloc.BatchCounterAlloc = ({} : stdgo._internal.internal.coverage.calloc.Calloc_BatchCounterAlloc.BatchCounterAlloc);
    public var _cm : stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger> = (null : stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger>);
    public var _cf : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter> = (null : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter>);
    public var _cmode : stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode = ((0 : stdgo.GoUInt8) : stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode);
    public function new(?batchCounterAlloc:stdgo._internal.internal.coverage.calloc.Calloc_BatchCounterAlloc.BatchCounterAlloc, ?_cm:stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_Merger.Merger>, ?_cf:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter>, ?_cmode:stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode) {
        if (batchCounterAlloc != null) this.batchCounterAlloc = batchCounterAlloc;
        if (_cm != null) this._cm = _cm;
        if (_cf != null) this._cf = _cf;
        if (_cmode != null) this._cmode = _cmode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var allocateCounters(get, never) : stdgo.GoInt -> stdgo.Slice<stdgo.GoUInt32>;
    @:embedded
    @:embeddededffieldsffun
    public function get_allocateCounters():stdgo.GoInt -> stdgo.Slice<stdgo.GoUInt32> return @:check32 this.batchCounterAlloc.allocateCounters;
    public function __copy__() {
        return new T_tstate(batchCounterAlloc, _cm, _cf, _cmode);
    }
}
