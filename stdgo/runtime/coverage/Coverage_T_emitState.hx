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
    public var _mf(get, set) : stdgo._internal.os.Os_File.File;
    function get__mf():stdgo._internal.os.Os_File.File return this._mf;
    function set__mf(v:stdgo._internal.os.Os_File.File):stdgo._internal.os.Os_File.File {
        this._mf = (v : stdgo.Ref<stdgo._internal.os.Os_File.File>);
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
    public var _cf(get, set) : stdgo._internal.os.Os_File.File;
    function get__cf():stdgo._internal.os.Os_File.File return this._cf;
    function set__cf(v:stdgo._internal.os.Os_File.File):stdgo._internal.os.Os_File.File {
        this._cf = (v : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return v;
    }
    public var _outdir(get, set) : String;
    function get__outdir():String return this._outdir;
    function set__outdir(v:String):String {
        this._outdir = (v : stdgo.GoString);
        return v;
    }
    public var _metalist(get, set) : Array<stdgo._internal.internal.coverage.rtcov.Rtcov_CovMetaBlob.CovMetaBlob>;
    function get__metalist():Array<stdgo._internal.internal.coverage.rtcov.Rtcov_CovMetaBlob.CovMetaBlob> return [for (i in this._metalist) i];
    function set__metalist(v:Array<stdgo._internal.internal.coverage.rtcov.Rtcov_CovMetaBlob.CovMetaBlob>):Array<stdgo._internal.internal.coverage.rtcov.Rtcov_CovMetaBlob.CovMetaBlob> {
        this._metalist = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_CovMetaBlob.CovMetaBlob>);
        return v;
    }
    public var _counterlist(get, set) : Array<stdgo._internal.internal.coverage.rtcov.Rtcov_CovCounterBlob.CovCounterBlob>;
    function get__counterlist():Array<stdgo._internal.internal.coverage.rtcov.Rtcov_CovCounterBlob.CovCounterBlob> return [for (i in this._counterlist) i];
    function set__counterlist(v:Array<stdgo._internal.internal.coverage.rtcov.Rtcov_CovCounterBlob.CovCounterBlob>):Array<stdgo._internal.internal.coverage.rtcov.Rtcov_CovCounterBlob.CovCounterBlob> {
        this._counterlist = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_CovCounterBlob.CovCounterBlob>);
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
    public function new(?_mfname:String, ?_mftmp:String, ?_mf:stdgo._internal.os.Os_File.File, ?_cfname:String, ?_cftmp:String, ?_cf:stdgo._internal.os.Os_File.File, ?_outdir:String, ?_metalist:Array<stdgo._internal.internal.coverage.rtcov.Rtcov_CovMetaBlob.CovMetaBlob>, ?_counterlist:Array<stdgo._internal.internal.coverage.rtcov.Rtcov_CovCounterBlob.CovCounterBlob>, ?_pkgmap:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?_debug:Bool) this = new stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState(
(_mfname : stdgo.GoString),
(_mftmp : stdgo.GoString),
(_mf : stdgo.Ref<stdgo._internal.os.Os_File.File>),
(_cfname : stdgo.GoString),
(_cftmp : stdgo.GoString),
(_cf : stdgo.Ref<stdgo._internal.os.Os_File.File>),
(_outdir : stdgo.GoString),
([for (i in _metalist) i] : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_CovMetaBlob.CovMetaBlob>),
([for (i in _counterlist) i] : stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_CovCounterBlob.CovCounterBlob>),
(_pkgmap : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>),
_debug);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
