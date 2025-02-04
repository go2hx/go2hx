package stdgo._internal.runtime.coverage;
@:structInit @:using(stdgo._internal.runtime.coverage.Coverage_t_emitstate_static_extension.T_emitState_static_extension) class T_emitState {
    public var _mfname : stdgo.GoString = "";
    public var _mftmp : stdgo.GoString = "";
    public var _mf : stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
    public var _cfname : stdgo.GoString = "";
    public var _cftmp : stdgo.GoString = "";
    public var _cf : stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
    public var _outdir : stdgo.GoString = "";
    public var _metalist : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob> = (null : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob>);
    public var _counterlist : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covcounterblob.CovCounterBlob> = (null : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covcounterblob.CovCounterBlob>);
    public var _pkgmap : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
    public var _debug : Bool = false;
    public function new(?_mfname:stdgo.GoString, ?_mftmp:stdgo.GoString, ?_mf:stdgo.Ref<stdgo._internal.os.Os_file.File>, ?_cfname:stdgo.GoString, ?_cftmp:stdgo.GoString, ?_cf:stdgo.Ref<stdgo._internal.os.Os_file.File>, ?_outdir:stdgo.GoString, ?_metalist:stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob>, ?_counterlist:stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covcounterblob.CovCounterBlob>, ?_pkgmap:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?_debug:Bool) {
        if (_mfname != null) this._mfname = _mfname;
        if (_mftmp != null) this._mftmp = _mftmp;
        if (_mf != null) this._mf = _mf;
        if (_cfname != null) this._cfname = _cfname;
        if (_cftmp != null) this._cftmp = _cftmp;
        if (_cf != null) this._cf = _cf;
        if (_outdir != null) this._outdir = _outdir;
        if (_metalist != null) this._metalist = _metalist;
        if (_counterlist != null) this._counterlist = _counterlist;
        if (_pkgmap != null) this._pkgmap = _pkgmap;
        if (_debug != null) this._debug = _debug;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_emitState(
_mfname,
_mftmp,
_mf,
_cfname,
_cftmp,
_cf,
_outdir,
_metalist,
_counterlist,
_pkgmap,
_debug);
    }
}
