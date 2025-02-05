package stdgo.runtime.coverage;
@:structInit @:using(stdgo.runtime.coverage.Coverage.T_emitState_static_extension) abstract T_emitState(stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState) from stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState to stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState {
    public var _mfname(get, set) : String;
    function get__mfname():String return this._mfname;
    function set__mfname(v:String):String {
        this._mfname = (v : stdgo.GoString);
        return v;
    }
    public var _mftmp(get, set) : String;
    function get__mftmp():String return this._mftmp;
    function set__mftmp(v:String):String {
        this._mftmp = (v : stdgo.GoString);
        return v;
    }
    public var _mf(get, set) : stdgo._internal.os.Os_file.File;
    function get__mf():stdgo._internal.os.Os_file.File return this._mf;
    function set__mf(v:stdgo._internal.os.Os_file.File):stdgo._internal.os.Os_file.File {
        this._mf = (v : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return v;
    }
    public var _cfname(get, set) : String;
    function get__cfname():String return this._cfname;
    function set__cfname(v:String):String {
        this._cfname = (v : stdgo.GoString);
        return v;
    }
    public var _cftmp(get, set) : String;
    function get__cftmp():String return this._cftmp;
    function set__cftmp(v:String):String {
        this._cftmp = (v : stdgo.GoString);
        return v;
    }
    public var _cf(get, set) : stdgo._internal.os.Os_file.File;
    function get__cf():stdgo._internal.os.Os_file.File return this._cf;
    function set__cf(v:stdgo._internal.os.Os_file.File):stdgo._internal.os.Os_file.File {
        this._cf = (v : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return v;
    }
    public var _outdir(get, set) : String;
    function get__outdir():String return this._outdir;
    function set__outdir(v:String):String {
        this._outdir = (v : stdgo.GoString);
        return v;
    }
    public var _metalist(get, set) : Array<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob>;
    function get__metalist():Array<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob> return [for (i in this._metalist) i];
    function set__metalist(v:Array<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob>):Array<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob> {
        this._metalist = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob>);
        return v;
    }
    public var _counterlist(get, set) : Array<stdgo._internal.internal.coverage.rtcov.Rtcov_covcounterblob.CovCounterBlob>;
    function get__counterlist():Array<stdgo._internal.internal.coverage.rtcov.Rtcov_covcounterblob.CovCounterBlob> return [for (i in this._counterlist) i];
    function set__counterlist(v:Array<stdgo._internal.internal.coverage.rtcov.Rtcov_covcounterblob.CovCounterBlob>):Array<stdgo._internal.internal.coverage.rtcov.Rtcov_covcounterblob.CovCounterBlob> {
        this._counterlist = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covcounterblob.CovCounterBlob>);
        return v;
    }
    public var _pkgmap(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>;
    function get__pkgmap():stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> return this._pkgmap;
    function set__pkgmap(v:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> {
        this._pkgmap = (v : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        return v;
    }
    public var _debug(get, set) : Bool;
    function get__debug():Bool return this._debug;
    function set__debug(v:Bool):Bool {
        this._debug = v;
        return v;
    }
    public function new(?_mfname:String, ?_mftmp:String, ?_mf:stdgo._internal.os.Os_file.File, ?_cfname:String, ?_cftmp:String, ?_cf:stdgo._internal.os.Os_file.File, ?_outdir:String, ?_metalist:Array<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob>, ?_counterlist:Array<stdgo._internal.internal.coverage.rtcov.Rtcov_covcounterblob.CovCounterBlob>, ?_pkgmap:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?_debug:Bool) this = new stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState(
(_mfname : stdgo.GoString),
(_mftmp : stdgo.GoString),
(_mf : stdgo.Ref<stdgo._internal.os.Os_file.File>),
(_cfname : stdgo.GoString),
(_cftmp : stdgo.GoString),
(_cf : stdgo.Ref<stdgo._internal.os.Os_file.File>),
(_outdir : stdgo.GoString),
([for (i in _metalist) i] : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob>),
([for (i in _counterlist) i] : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covcounterblob.CovCounterBlob>),
(_pkgmap : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>),
_debug);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.coverage.Coverage.T_tstate_static_extension) abstract T_tstate(stdgo._internal.runtime.coverage.Coverage_T_tstate.T_tstate) from stdgo._internal.runtime.coverage.Coverage_T_tstate.T_tstate to stdgo._internal.runtime.coverage.Coverage_T_tstate.T_tstate {
    public var batchCounterAlloc(get, set) : stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc.BatchCounterAlloc;
    function get_batchCounterAlloc():stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc.BatchCounterAlloc return this.batchCounterAlloc;
    function set_batchCounterAlloc(v:stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc.BatchCounterAlloc):stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc.BatchCounterAlloc {
        this.batchCounterAlloc = v;
        return v;
    }
    public var _cm(get, set) : stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger;
    function get__cm():stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger return this._cm;
    function set__cm(v:stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger):stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger {
        this._cm = (v : stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger>);
        return v;
    }
    public var _cf(get, set) : stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter;
    function get__cf():stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter return this._cf;
    function set__cf(v:stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter):stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter {
        this._cf = (v : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter>);
        return v;
    }
    public var _cmode(get, set) : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode;
    function get__cmode():stdgo._internal.internal.coverage.Coverage_countermode.CounterMode return this._cmode;
    function set__cmode(v:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode):stdgo._internal.internal.coverage.Coverage_countermode.CounterMode {
        this._cmode = v;
        return v;
    }
    public function new(?batchCounterAlloc:stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc.BatchCounterAlloc, ?_cm:stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger, ?_cf:stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter, ?_cmode:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode) this = new stdgo._internal.runtime.coverage.Coverage_T_tstate.T_tstate(batchCounterAlloc, (_cm : stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger>), (_cf : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter>), _cmode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.coverage.Coverage.T_pkfunc_static_extension) abstract T_pkfunc(stdgo._internal.runtime.coverage.Coverage_T_pkfunc.T_pkfunc) from stdgo._internal.runtime.coverage.Coverage_T_pkfunc.T_pkfunc to stdgo._internal.runtime.coverage.Coverage_T_pkfunc.T_pkfunc {
    public var _pk(get, set) : std.UInt;
    function get__pk():std.UInt return this._pk;
    function set__pk(v:std.UInt):std.UInt {
        this._pk = (v : stdgo.GoUInt32);
        return v;
    }
    public var _fcn(get, set) : std.UInt;
    function get__fcn():std.UInt return this._fcn;
    function set__fcn(v:std.UInt):std.UInt {
        this._fcn = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_pk:std.UInt, ?_fcn:std.UInt) this = new stdgo._internal.runtime.coverage.Coverage_T_pkfunc.T_pkfunc((_pk : stdgo.GoUInt32), (_fcn : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0Pointer = stdgo._internal.runtime.coverage.Coverage_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.runtime.coverage.Coverage_T__struct_0.T__struct_0;
typedef T_fileType = stdgo._internal.runtime.coverage.Coverage_T_fileType.T_fileType;
typedef T_emitStatePointer = stdgo._internal.runtime.coverage.Coverage_T_emitStatePointer.T_emitStatePointer;
class T_emitState_static_extension {
    static public function _emitCounterDataFile(_s:T_emitState, _finalHash:haxe.ds.Vector<std.UInt>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>);
        final _finalHash = ([for (i in _finalHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return stdgo._internal.runtime.coverage.Coverage_T_emitState_static_extension.T_emitState_static_extension._emitCounterDataFile(_s, _finalHash, _w);
    }
    static public function visitFuncs(_s:T_emitState, _f:stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitorfn.CounterVisitorFn):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>);
        return stdgo._internal.runtime.coverage.Coverage_T_emitState_static_extension.T_emitState_static_extension.visitFuncs(_s, _f);
    }
    static public function _needMetaDataFile(_s:T_emitState):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>);
        return stdgo._internal.runtime.coverage.Coverage_T_emitState_static_extension.T_emitState_static_extension._needMetaDataFile(_s);
    }
    static public function _emitMetaDataFile(_s:T_emitState, _finalHash:haxe.ds.Vector<std.UInt>, _tlen:haxe.UInt64):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>);
        final _finalHash = ([for (i in _finalHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        final _tlen = (_tlen : stdgo.GoUInt64);
        return stdgo._internal.runtime.coverage.Coverage_T_emitState_static_extension.T_emitState_static_extension._emitMetaDataFile(_s, _finalHash, _tlen);
    }
    static public function _openOutputFiles(_s:T_emitState, _metaHash:haxe.ds.Vector<std.UInt>, _metaLen:haxe.UInt64, _which:T_fileType):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>);
        final _metaHash = ([for (i in _metaHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        final _metaLen = (_metaLen : stdgo.GoUInt64);
        return stdgo._internal.runtime.coverage.Coverage_T_emitState_static_extension.T_emitState_static_extension._openOutputFiles(_s, _metaHash, _metaLen, _which);
    }
    static public function _openCounterFile(_s:T_emitState, _metaHash:haxe.ds.Vector<std.UInt>):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>);
        final _metaHash = ([for (i in _metaHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return stdgo._internal.runtime.coverage.Coverage_T_emitState_static_extension.T_emitState_static_extension._openCounterFile(_s, _metaHash);
    }
    static public function _openMetaFile(_s:T_emitState, _metaHash:haxe.ds.Vector<std.UInt>, _metaLen:haxe.UInt64):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>);
        final _metaHash = ([for (i in _metaHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        final _metaLen = (_metaLen : stdgo.GoUInt64);
        return stdgo._internal.runtime.coverage.Coverage_T_emitState_static_extension.T_emitState_static_extension._openMetaFile(_s, _metaHash, _metaLen);
    }
    static public function _emitCounterDataToWriter(_s:T_emitState, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_emitstate.T_emitState>);
        return stdgo._internal.runtime.coverage.Coverage_T_emitState_static_extension.T_emitState_static_extension._emitCounterDataToWriter(_s, _w);
    }
}
typedef T_tstatePointer = stdgo._internal.runtime.coverage.Coverage_T_tstatePointer.T_tstatePointer;
class T_tstate_static_extension {
    static public function _readAuxMetaFiles(_ts:T_tstate, _metafiles:String, _importpaths:stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0>):stdgo.Error {
        final _ts = (_ts : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_tstate.T_tstate>);
        final _metafiles = (_metafiles : stdgo.GoString);
        final _importpaths = (_importpaths : stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0>);
        return stdgo._internal.runtime.coverage.Coverage_T_tstate_static_extension.T_tstate_static_extension._readAuxMetaFiles(_ts, _metafiles, _importpaths);
    }
    static public function _processPod(_ts:T_tstate, _p:stdgo._internal.internal.coverage.pods.Pods_pod.Pod, _importpaths:stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0>):stdgo.Error {
        final _ts = (_ts : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_tstate.T_tstate>);
        final _importpaths = (_importpaths : stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0>);
        return stdgo._internal.runtime.coverage.Coverage_T_tstate_static_extension.T_tstate_static_extension._processPod(_ts, _p, _importpaths);
    }
    public static function allocateCounters(__self__:stdgo._internal.runtime.coverage.Coverage_t_tstate.T_tstate, _0:StdTypes.Int):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoInt);
        return [for (i in stdgo._internal.runtime.coverage.Coverage_T_tstate_static_extension.T_tstate_static_extension.allocateCounters(__self__, _0)) i];
    }
}
typedef T_pkfuncPointer = stdgo._internal.runtime.coverage.Coverage_T_pkfuncPointer.T_pkfuncPointer;
class T_pkfunc_static_extension {

}
typedef T__struct_0PointerPointer = stdgo._internal.runtime.coverage.Coverage_T__struct_0PointerPointer.T__struct_0PointerPointer;
class T__struct_0Pointer_static_extension {

}
typedef T_fileTypePointer = stdgo._internal.runtime.coverage.Coverage_T_fileTypePointer.T_fileTypePointer;
class T_fileType_static_extension {

}
class Coverage {
    /**
        * WriteMetaDir writes a coverage meta-data file for the currently
        * running program to the directory specified in 'dir'. An error will
        * be returned if the operation can't be completed successfully (for
        * example, if the currently running program was not built with
        * "-cover", or if the directory does not exist).
    **/
    static public inline function writeMetaDir(_dir:String):stdgo.Error {
        final _dir = (_dir : stdgo.GoString);
        return stdgo._internal.runtime.coverage.Coverage_writeMetaDir.writeMetaDir(_dir);
    }
    /**
        * WriteMeta writes the meta-data content (the payload that would
        * normally be emitted to a meta-data file) for the currently running
        * program to the writer 'w'. An error will be returned if the
        * operation can't be completed successfully (for example, if the
        * currently running program was not built with "-cover", or if a
        * write fails).
    **/
    static public inline function writeMeta(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        return stdgo._internal.runtime.coverage.Coverage_writeMeta.writeMeta(_w);
    }
    /**
        * WriteCountersDir writes a coverage counter-data file for the
        * currently running program to the directory specified in 'dir'. An
        * error will be returned if the operation can't be completed
        * successfully (for example, if the currently running program was not
        * built with "-cover", or if the directory does not exist). The
        * counter data written will be a snapshot taken at the point of the
        * call.
    **/
    static public inline function writeCountersDir(_dir:String):stdgo.Error {
        final _dir = (_dir : stdgo.GoString);
        return stdgo._internal.runtime.coverage.Coverage_writeCountersDir.writeCountersDir(_dir);
    }
    /**
        * WriteCounters writes coverage counter-data content for the
        * currently running program to the writer 'w'. An error will be
        * returned if the operation can't be completed successfully (for
        * example, if the currently running program was not built with
        * "-cover", or if a write fails). The counter data written will be a
        * snapshot taken at the point of the invocation.
    **/
    static public inline function writeCounters(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        return stdgo._internal.runtime.coverage.Coverage_writeCounters.writeCounters(_w);
    }
    /**
        * ClearCounters clears/resets all coverage counter variables in the
        * currently running program. It returns an error if the program in
        * question was not built with the "-cover" flag. Clearing of coverage
        * counters is also not supported for programs not using atomic
        * counter mode (see more detailed comments below for the rationale
        * here).
    **/
    static public inline function clearCounters():stdgo.Error {
        return stdgo._internal.runtime.coverage.Coverage_clearCounters.clearCounters();
    }
}
