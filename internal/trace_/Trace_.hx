package internal.trace_;
final utilSTW : UtilFlags = _internal.internal.trace_.Trace__utilSTW.utilSTW;
final utilBackground = _internal.internal.trace_.Trace__utilBackground.utilBackground;
final utilAssist = _internal.internal.trace_.Trace__utilAssist.utilAssist;
final utilSweep = _internal.internal.trace_.Trace__utilSweep.utilSweep;
final utilPerProc = _internal.internal.trace_.Trace__utilPerProc.utilPerProc;
final fakeP : haxe.UInt64 = _internal.internal.trace_.Trace__fakeP.fakeP;
final timerP = _internal.internal.trace_.Trace__timerP.timerP;
final netpollP = _internal.internal.trace_.Trace__netpollP.netpollP;
final syscallP = _internal.internal.trace_.Trace__syscallP.syscallP;
final gCP = _internal.internal.trace_.Trace__gCP.gCP;
final profileP = _internal.internal.trace_.Trace__profileP.profileP;
var breakTimestampsForTesting(get, set) : Bool;
private function get_breakTimestampsForTesting():Bool return _internal.internal.trace_.Trace__breakTimestampsForTesting.breakTimestampsForTesting;
private function set_breakTimestampsForTesting(v:Bool):Bool {
        _internal.internal.trace_.Trace__breakTimestampsForTesting.breakTimestampsForTesting = v;
        return v;
    }
final evNone : haxe.UInt64 = _internal.internal.trace_.Trace__evNone.evNone;
final evBatch : haxe.UInt64 = _internal.internal.trace_.Trace__evBatch.evBatch;
final evFrequency : haxe.UInt64 = _internal.internal.trace_.Trace__evFrequency.evFrequency;
final evStack : haxe.UInt64 = _internal.internal.trace_.Trace__evStack.evStack;
final evGomaxprocs : haxe.UInt64 = _internal.internal.trace_.Trace__evGomaxprocs.evGomaxprocs;
final evProcStart : haxe.UInt64 = _internal.internal.trace_.Trace__evProcStart.evProcStart;
final evProcStop : haxe.UInt64 = _internal.internal.trace_.Trace__evProcStop.evProcStop;
final evGCStart : haxe.UInt64 = _internal.internal.trace_.Trace__evGCStart.evGCStart;
final evGCDone : haxe.UInt64 = _internal.internal.trace_.Trace__evGCDone.evGCDone;
final evSTWStart : haxe.UInt64 = _internal.internal.trace_.Trace__evSTWStart.evSTWStart;
final evSTWDone : haxe.UInt64 = _internal.internal.trace_.Trace__evSTWDone.evSTWDone;
final evGCSweepStart : haxe.UInt64 = _internal.internal.trace_.Trace__evGCSweepStart.evGCSweepStart;
final evGCSweepDone : haxe.UInt64 = _internal.internal.trace_.Trace__evGCSweepDone.evGCSweepDone;
final evGoCreate : haxe.UInt64 = _internal.internal.trace_.Trace__evGoCreate.evGoCreate;
final evGoStart : haxe.UInt64 = _internal.internal.trace_.Trace__evGoStart.evGoStart;
final evGoEnd : haxe.UInt64 = _internal.internal.trace_.Trace__evGoEnd.evGoEnd;
final evGoStop : haxe.UInt64 = _internal.internal.trace_.Trace__evGoStop.evGoStop;
final evGoSched : haxe.UInt64 = _internal.internal.trace_.Trace__evGoSched.evGoSched;
final evGoPreempt : haxe.UInt64 = _internal.internal.trace_.Trace__evGoPreempt.evGoPreempt;
final evGoSleep : haxe.UInt64 = _internal.internal.trace_.Trace__evGoSleep.evGoSleep;
final evGoBlock : haxe.UInt64 = _internal.internal.trace_.Trace__evGoBlock.evGoBlock;
final evGoUnblock : haxe.UInt64 = _internal.internal.trace_.Trace__evGoUnblock.evGoUnblock;
final evGoBlockSend : haxe.UInt64 = _internal.internal.trace_.Trace__evGoBlockSend.evGoBlockSend;
final evGoBlockRecv : haxe.UInt64 = _internal.internal.trace_.Trace__evGoBlockRecv.evGoBlockRecv;
final evGoBlockSelect : haxe.UInt64 = _internal.internal.trace_.Trace__evGoBlockSelect.evGoBlockSelect;
final evGoBlockSync : haxe.UInt64 = _internal.internal.trace_.Trace__evGoBlockSync.evGoBlockSync;
final evGoBlockCond : haxe.UInt64 = _internal.internal.trace_.Trace__evGoBlockCond.evGoBlockCond;
final evGoBlockNet : haxe.UInt64 = _internal.internal.trace_.Trace__evGoBlockNet.evGoBlockNet;
final evGoSysCall : haxe.UInt64 = _internal.internal.trace_.Trace__evGoSysCall.evGoSysCall;
final evGoSysExit : haxe.UInt64 = _internal.internal.trace_.Trace__evGoSysExit.evGoSysExit;
final evGoSysBlock : haxe.UInt64 = _internal.internal.trace_.Trace__evGoSysBlock.evGoSysBlock;
final evGoWaiting : haxe.UInt64 = _internal.internal.trace_.Trace__evGoWaiting.evGoWaiting;
final evGoInSyscall : haxe.UInt64 = _internal.internal.trace_.Trace__evGoInSyscall.evGoInSyscall;
final evHeapAlloc : haxe.UInt64 = _internal.internal.trace_.Trace__evHeapAlloc.evHeapAlloc;
final evHeapGoal : haxe.UInt64 = _internal.internal.trace_.Trace__evHeapGoal.evHeapGoal;
final evTimerGoroutine : haxe.UInt64 = _internal.internal.trace_.Trace__evTimerGoroutine.evTimerGoroutine;
final evFutileWakeup : haxe.UInt64 = _internal.internal.trace_.Trace__evFutileWakeup.evFutileWakeup;
final evString : haxe.UInt64 = _internal.internal.trace_.Trace__evString.evString;
final evGoStartLocal : haxe.UInt64 = _internal.internal.trace_.Trace__evGoStartLocal.evGoStartLocal;
final evGoUnblockLocal : haxe.UInt64 = _internal.internal.trace_.Trace__evGoUnblockLocal.evGoUnblockLocal;
final evGoSysExitLocal : haxe.UInt64 = _internal.internal.trace_.Trace__evGoSysExitLocal.evGoSysExitLocal;
final evGoStartLabel : haxe.UInt64 = _internal.internal.trace_.Trace__evGoStartLabel.evGoStartLabel;
final evGoBlockGC : haxe.UInt64 = _internal.internal.trace_.Trace__evGoBlockGC.evGoBlockGC;
final evGCMarkAssistStart : haxe.UInt64 = _internal.internal.trace_.Trace__evGCMarkAssistStart.evGCMarkAssistStart;
final evGCMarkAssistDone : haxe.UInt64 = _internal.internal.trace_.Trace__evGCMarkAssistDone.evGCMarkAssistDone;
final evUserTaskCreate : haxe.UInt64 = _internal.internal.trace_.Trace__evUserTaskCreate.evUserTaskCreate;
final evUserTaskEnd : haxe.UInt64 = _internal.internal.trace_.Trace__evUserTaskEnd.evUserTaskEnd;
final evUserRegion : haxe.UInt64 = _internal.internal.trace_.Trace__evUserRegion.evUserRegion;
final evUserLog : haxe.UInt64 = _internal.internal.trace_.Trace__evUserLog.evUserLog;
final evCPUSample : haxe.UInt64 = _internal.internal.trace_.Trace__evCPUSample.evCPUSample;
final evCount : haxe.UInt64 = _internal.internal.trace_.Trace__evCount.evCount;
var errTimeOrder(get, set) : stdgo.Error;
private function get_errTimeOrder():stdgo.Error return _internal.internal.trace_.Trace__errTimeOrder.errTimeOrder;
private function set_errTimeOrder(v:stdgo.Error):stdgo.Error {
        _internal.internal.trace_.Trace__errTimeOrder.errTimeOrder = (v : stdgo.Error);
        return v;
    }
var eventDescriptions(get, set) : haxe.ds.Vector<_internal.internal.trace_.Trace__t__struct_0.T__struct_0>;
private function get_eventDescriptions():haxe.ds.Vector<_internal.internal.trace_.Trace__t__struct_0.T__struct_0> return haxe.ds.Vector.fromArrayCopy([for (i in _internal.internal.trace_.Trace__eventDescriptions.eventDescriptions) i]);
private function set_eventDescriptions(v:haxe.ds.Vector<_internal.internal.trace_.Trace__t__struct_0.T__struct_0>):haxe.ds.Vector<_internal.internal.trace_.Trace__t__struct_0.T__struct_0> {
        _internal.internal.trace_.Trace__eventDescriptions.eventDescriptions = ([for (i in v) i] : stdgo.GoArray<_internal.internal.trace_.Trace__t__struct_0.T__struct_0>);
        return v;
    }
@:structInit @:using(internal.trace_.Trace_.MutatorUtil_static_extension) abstract MutatorUtil(_internal.internal.trace_.Trace__MutatorUtil.MutatorUtil) from _internal.internal.trace_.Trace__MutatorUtil.MutatorUtil to _internal.internal.trace_.Trace__MutatorUtil.MutatorUtil {
    public var time(get, set) : haxe.Int64;
    function get_time():haxe.Int64 return this.time;
    function set_time(v:haxe.Int64):haxe.Int64 {
        this.time = (v : stdgo.GoInt64);
        return v;
    }
    public var util(get, set) : StdTypes.Float;
    function get_util():StdTypes.Float return this.util;
    function set_util(v:StdTypes.Float):StdTypes.Float {
        this.util = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?time:haxe.Int64, ?util:StdTypes.Float) this = new _internal.internal.trace_.Trace__MutatorUtil.MutatorUtil((time : stdgo.GoInt64), (util : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.MMUCurve_static_extension) abstract MMUCurve(_internal.internal.trace_.Trace__MMUCurve.MMUCurve) from _internal.internal.trace_.Trace__MMUCurve.MMUCurve to _internal.internal.trace_.Trace__MMUCurve.MMUCurve {
    public var _series(get, set) : Array<T_mmuSeries>;
    function get__series():Array<T_mmuSeries> return [for (i in this._series) i];
    function set__series(v:Array<T_mmuSeries>):Array<T_mmuSeries> {
        this._series = ([for (i in v) i] : stdgo.Slice<_internal.internal.trace_.Trace_t_mmuseries.T_mmuSeries>);
        return v;
    }
    public function new(?_series:Array<T_mmuSeries>) this = new _internal.internal.trace_.Trace__MMUCurve.MMUCurve(([for (i in _series) i] : stdgo.Slice<_internal.internal.trace_.Trace_t_mmuseries.T_mmuSeries>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.T_mmuSeries_static_extension) abstract T_mmuSeries(_internal.internal.trace_.Trace__T_mmuSeries.T_mmuSeries) from _internal.internal.trace_.Trace__T_mmuSeries.T_mmuSeries to _internal.internal.trace_.Trace__T_mmuSeries.T_mmuSeries {
    public var _util(get, set) : Array<MutatorUtil>;
    function get__util():Array<MutatorUtil> return [for (i in this._util) i];
    function set__util(v:Array<MutatorUtil>):Array<MutatorUtil> {
        this._util = ([for (i in v) i] : stdgo.Slice<_internal.internal.trace_.Trace_mutatorutil.MutatorUtil>);
        return v;
    }
    public var _sums(get, set) : Array<T_totalUtil>;
    function get__sums():Array<T_totalUtil> return [for (i in this._sums) i];
    function set__sums(v:Array<T_totalUtil>):Array<T_totalUtil> {
        this._sums = ([for (i in v) i] : stdgo.Slice<_internal.internal.trace_.Trace_t_totalutil.T_totalUtil>);
        return v;
    }
    public var _bands(get, set) : Array<T_mmuBand>;
    function get__bands():Array<T_mmuBand> return [for (i in this._bands) i];
    function set__bands(v:Array<T_mmuBand>):Array<T_mmuBand> {
        this._bands = ([for (i in v) i] : stdgo.Slice<_internal.internal.trace_.Trace_t_mmuband.T_mmuBand>);
        return v;
    }
    public var _bandDur(get, set) : haxe.Int64;
    function get__bandDur():haxe.Int64 return this._bandDur;
    function set__bandDur(v:haxe.Int64):haxe.Int64 {
        this._bandDur = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_util:Array<MutatorUtil>, ?_sums:Array<T_totalUtil>, ?_bands:Array<T_mmuBand>, ?_bandDur:haxe.Int64) this = new _internal.internal.trace_.Trace__T_mmuSeries.T_mmuSeries(([for (i in _util) i] : stdgo.Slice<_internal.internal.trace_.Trace_mutatorutil.MutatorUtil>), ([for (i in _sums) i] : stdgo.Slice<_internal.internal.trace_.Trace_t_totalutil.T_totalUtil>), ([for (i in _bands) i] : stdgo.Slice<_internal.internal.trace_.Trace_t_mmuband.T_mmuBand>), (_bandDur : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.T_mmuBand_static_extension) abstract T_mmuBand(_internal.internal.trace_.Trace__T_mmuBand.T_mmuBand) from _internal.internal.trace_.Trace__T_mmuBand.T_mmuBand to _internal.internal.trace_.Trace__T_mmuBand.T_mmuBand {
    public var _minUtil(get, set) : StdTypes.Float;
    function get__minUtil():StdTypes.Float return this._minUtil;
    function set__minUtil(v:StdTypes.Float):StdTypes.Float {
        this._minUtil = (v : stdgo.GoFloat64);
        return v;
    }
    public var _cumUtil(get, set) : T_totalUtil;
    function get__cumUtil():T_totalUtil return this._cumUtil;
    function set__cumUtil(v:T_totalUtil):T_totalUtil {
        this._cumUtil = v;
        return v;
    }
    public var _integrator(get, set) : T_integrator;
    function get__integrator():T_integrator return this._integrator;
    function set__integrator(v:T_integrator):T_integrator {
        this._integrator = v;
        return v;
    }
    public function new(?_minUtil:StdTypes.Float, ?_cumUtil:T_totalUtil, ?_integrator:T_integrator) this = new _internal.internal.trace_.Trace__T_mmuBand.T_mmuBand((_minUtil : stdgo.GoFloat64), _cumUtil, _integrator);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.T_bandUtil_static_extension) abstract T_bandUtil(_internal.internal.trace_.Trace__T_bandUtil.T_bandUtil) from _internal.internal.trace_.Trace__T_bandUtil.T_bandUtil to _internal.internal.trace_.Trace__T_bandUtil.T_bandUtil {
    public var _series(get, set) : StdTypes.Int;
    function get__series():StdTypes.Int return this._series;
    function set__series(v:StdTypes.Int):StdTypes.Int {
        this._series = (v : stdgo.GoInt);
        return v;
    }
    public var _i(get, set) : StdTypes.Int;
    function get__i():StdTypes.Int return this._i;
    function set__i(v:StdTypes.Int):StdTypes.Int {
        this._i = (v : stdgo.GoInt);
        return v;
    }
    public var _utilBound(get, set) : StdTypes.Float;
    function get__utilBound():StdTypes.Float return this._utilBound;
    function set__utilBound(v:StdTypes.Float):StdTypes.Float {
        this._utilBound = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?_series:StdTypes.Int, ?_i:StdTypes.Int, ?_utilBound:StdTypes.Float) this = new _internal.internal.trace_.Trace__T_bandUtil.T_bandUtil((_series : stdgo.GoInt), (_i : stdgo.GoInt), (_utilBound : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.UtilWindow_static_extension) abstract UtilWindow(_internal.internal.trace_.Trace__UtilWindow.UtilWindow) from _internal.internal.trace_.Trace__UtilWindow.UtilWindow to _internal.internal.trace_.Trace__UtilWindow.UtilWindow {
    public var time(get, set) : haxe.Int64;
    function get_time():haxe.Int64 return this.time;
    function set_time(v:haxe.Int64):haxe.Int64 {
        this.time = (v : stdgo.GoInt64);
        return v;
    }
    public var mutatorUtil(get, set) : StdTypes.Float;
    function get_mutatorUtil():StdTypes.Float return this.mutatorUtil;
    function set_mutatorUtil(v:StdTypes.Float):StdTypes.Float {
        this.mutatorUtil = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?time:haxe.Int64, ?mutatorUtil:StdTypes.Float) this = new _internal.internal.trace_.Trace__UtilWindow.UtilWindow((time : stdgo.GoInt64), (mutatorUtil : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.T_accumulator_static_extension) abstract T_accumulator(_internal.internal.trace_.Trace__T_accumulator.T_accumulator) from _internal.internal.trace_.Trace__T_accumulator.T_accumulator to _internal.internal.trace_.Trace__T_accumulator.T_accumulator {
    public var _mmu(get, set) : StdTypes.Float;
    function get__mmu():StdTypes.Float return this._mmu;
    function set__mmu(v:StdTypes.Float):StdTypes.Float {
        this._mmu = (v : stdgo.GoFloat64);
        return v;
    }
    public var _bound(get, set) : StdTypes.Float;
    function get__bound():StdTypes.Float return this._bound;
    function set__bound(v:StdTypes.Float):StdTypes.Float {
        this._bound = (v : stdgo.GoFloat64);
        return v;
    }
    public var _nWorst(get, set) : StdTypes.Int;
    function get__nWorst():StdTypes.Int return this._nWorst;
    function set__nWorst(v:StdTypes.Int):StdTypes.Int {
        this._nWorst = (v : stdgo.GoInt);
        return v;
    }
    public var _wHeap(get, set) : T_utilHeap;
    function get__wHeap():T_utilHeap return this._wHeap;
    function set__wHeap(v:T_utilHeap):T_utilHeap {
        this._wHeap = v;
        return v;
    }
    public var _mud(get, set) : T_mud;
    function get__mud():T_mud return this._mud;
    function set__mud(v:T_mud):T_mud {
        this._mud = (v : stdgo.Ref<_internal.internal.trace_.Trace_t_mud.T_mud>);
        return v;
    }
    public var _preciseMass(get, set) : StdTypes.Float;
    function get__preciseMass():StdTypes.Float return this._preciseMass;
    function set__preciseMass(v:StdTypes.Float):StdTypes.Float {
        this._preciseMass = (v : stdgo.GoFloat64);
        return v;
    }
    public var _lastTime(get, set) : haxe.Int64;
    function get__lastTime():haxe.Int64 return this._lastTime;
    function set__lastTime(v:haxe.Int64):haxe.Int64 {
        this._lastTime = (v : stdgo.GoInt64);
        return v;
    }
    public var _lastMU(get, set) : StdTypes.Float;
    function get__lastMU():StdTypes.Float return this._lastMU;
    function set__lastMU(v:StdTypes.Float):StdTypes.Float {
        this._lastMU = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?_mmu:StdTypes.Float, ?_bound:StdTypes.Float, ?_nWorst:StdTypes.Int, ?_wHeap:T_utilHeap, ?_mud:T_mud, ?_preciseMass:StdTypes.Float, ?_lastTime:haxe.Int64, ?_lastMU:StdTypes.Float) this = new _internal.internal.trace_.Trace__T_accumulator.T_accumulator((_mmu : stdgo.GoFloat64), (_bound : stdgo.GoFloat64), (_nWorst : stdgo.GoInt), _wHeap, (_mud : stdgo.Ref<_internal.internal.trace_.Trace_t_mud.T_mud>), (_preciseMass : stdgo.GoFloat64), (_lastTime : stdgo.GoInt64), (_lastMU : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.T_integrator_static_extension) abstract T_integrator(_internal.internal.trace_.Trace__T_integrator.T_integrator) from _internal.internal.trace_.Trace__T_integrator.T_integrator to _internal.internal.trace_.Trace__T_integrator.T_integrator {
    public var _u(get, set) : T_mmuSeries;
    function get__u():T_mmuSeries return this._u;
    function set__u(v:T_mmuSeries):T_mmuSeries {
        this._u = (v : stdgo.Ref<_internal.internal.trace_.Trace_t_mmuseries.T_mmuSeries>);
        return v;
    }
    public var _pos(get, set) : StdTypes.Int;
    function get__pos():StdTypes.Int return this._pos;
    function set__pos(v:StdTypes.Int):StdTypes.Int {
        this._pos = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_u:T_mmuSeries, ?_pos:StdTypes.Int) this = new _internal.internal.trace_.Trace__T_integrator.T_integrator((_u : stdgo.Ref<_internal.internal.trace_.Trace_t_mmuseries.T_mmuSeries>), (_pos : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.GDesc_static_extension) abstract GDesc(_internal.internal.trace_.Trace__GDesc.GDesc) from _internal.internal.trace_.Trace__GDesc.GDesc to _internal.internal.trace_.Trace__GDesc.GDesc {
    public var iD(get, set) : haxe.UInt64;
    function get_iD():haxe.UInt64 return this.iD;
    function set_iD(v:haxe.UInt64):haxe.UInt64 {
        this.iD = (v : stdgo.GoUInt64);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var pC(get, set) : haxe.UInt64;
    function get_pC():haxe.UInt64 return this.pC;
    function set_pC(v:haxe.UInt64):haxe.UInt64 {
        this.pC = (v : stdgo.GoUInt64);
        return v;
    }
    public var creationTime(get, set) : haxe.Int64;
    function get_creationTime():haxe.Int64 return this.creationTime;
    function set_creationTime(v:haxe.Int64):haxe.Int64 {
        this.creationTime = (v : stdgo.GoInt64);
        return v;
    }
    public var startTime(get, set) : haxe.Int64;
    function get_startTime():haxe.Int64 return this.startTime;
    function set_startTime(v:haxe.Int64):haxe.Int64 {
        this.startTime = (v : stdgo.GoInt64);
        return v;
    }
    public var endTime(get, set) : haxe.Int64;
    function get_endTime():haxe.Int64 return this.endTime;
    function set_endTime(v:haxe.Int64):haxe.Int64 {
        this.endTime = (v : stdgo.GoInt64);
        return v;
    }
    public var regions(get, set) : Array<UserRegionDesc>;
    function get_regions():Array<UserRegionDesc> return [for (i in this.regions) i];
    function set_regions(v:Array<UserRegionDesc>):Array<UserRegionDesc> {
        this.regions = ([for (i in v) (i : stdgo.Ref<_internal.internal.trace_.Trace_userregiondesc.UserRegionDesc>)] : stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_userregiondesc.UserRegionDesc>>);
        return v;
    }
    public var gExecutionStat(get, set) : GExecutionStat;
    function get_gExecutionStat():GExecutionStat return this.gExecutionStat;
    function set_gExecutionStat(v:GExecutionStat):GExecutionStat {
        this.gExecutionStat = v;
        return v;
    }
    public var _gdesc(get, set) : T_gdesc;
    function get__gdesc():T_gdesc return this._gdesc;
    function set__gdesc(v:T_gdesc):T_gdesc {
        this._gdesc = (v : stdgo.Ref<_internal.internal.trace_.Trace_t_gdesc.T_gdesc>);
        return v;
    }
    public function new(?iD:haxe.UInt64, ?name:String, ?pC:haxe.UInt64, ?creationTime:haxe.Int64, ?startTime:haxe.Int64, ?endTime:haxe.Int64, ?regions:Array<UserRegionDesc>, ?gExecutionStat:GExecutionStat, ?_gdesc:T_gdesc) this = new _internal.internal.trace_.Trace__GDesc.GDesc((iD : stdgo.GoUInt64), (name : stdgo.GoString), (pC : stdgo.GoUInt64), (creationTime : stdgo.GoInt64), (startTime : stdgo.GoInt64), (endTime : stdgo.GoInt64), ([for (i in regions) (i : stdgo.Ref<_internal.internal.trace_.Trace_userregiondesc.UserRegionDesc>)] : stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_userregiondesc.UserRegionDesc>>), gExecutionStat, (_gdesc : stdgo.Ref<_internal.internal.trace_.Trace_t_gdesc.T_gdesc>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.UserRegionDesc_static_extension) abstract UserRegionDesc(_internal.internal.trace_.Trace__UserRegionDesc.UserRegionDesc) from _internal.internal.trace_.Trace__UserRegionDesc.UserRegionDesc to _internal.internal.trace_.Trace__UserRegionDesc.UserRegionDesc {
    public var taskID(get, set) : haxe.UInt64;
    function get_taskID():haxe.UInt64 return this.taskID;
    function set_taskID(v:haxe.UInt64):haxe.UInt64 {
        this.taskID = (v : stdgo.GoUInt64);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var start(get, set) : Event;
    function get_start():Event return this.start;
    function set_start(v:Event):Event {
        this.start = (v : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>);
        return v;
    }
    public var end(get, set) : Event;
    function get_end():Event return this.end;
    function set_end(v:Event):Event {
        this.end = (v : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>);
        return v;
    }
    public var gExecutionStat(get, set) : GExecutionStat;
    function get_gExecutionStat():GExecutionStat return this.gExecutionStat;
    function set_gExecutionStat(v:GExecutionStat):GExecutionStat {
        this.gExecutionStat = v;
        return v;
    }
    public function new(?taskID:haxe.UInt64, ?name:String, ?start:Event, ?end:Event, ?gExecutionStat:GExecutionStat) this = new _internal.internal.trace_.Trace__UserRegionDesc.UserRegionDesc((taskID : stdgo.GoUInt64), (name : stdgo.GoString), (start : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>), (end : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>), gExecutionStat);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.GExecutionStat_static_extension) abstract GExecutionStat(_internal.internal.trace_.Trace__GExecutionStat.GExecutionStat) from _internal.internal.trace_.Trace__GExecutionStat.GExecutionStat to _internal.internal.trace_.Trace__GExecutionStat.GExecutionStat {
    public var execTime(get, set) : haxe.Int64;
    function get_execTime():haxe.Int64 return this.execTime;
    function set_execTime(v:haxe.Int64):haxe.Int64 {
        this.execTime = (v : stdgo.GoInt64);
        return v;
    }
    public var schedWaitTime(get, set) : haxe.Int64;
    function get_schedWaitTime():haxe.Int64 return this.schedWaitTime;
    function set_schedWaitTime(v:haxe.Int64):haxe.Int64 {
        this.schedWaitTime = (v : stdgo.GoInt64);
        return v;
    }
    public var iOTime(get, set) : haxe.Int64;
    function get_iOTime():haxe.Int64 return this.iOTime;
    function set_iOTime(v:haxe.Int64):haxe.Int64 {
        this.iOTime = (v : stdgo.GoInt64);
        return v;
    }
    public var blockTime(get, set) : haxe.Int64;
    function get_blockTime():haxe.Int64 return this.blockTime;
    function set_blockTime(v:haxe.Int64):haxe.Int64 {
        this.blockTime = (v : stdgo.GoInt64);
        return v;
    }
    public var syscallTime(get, set) : haxe.Int64;
    function get_syscallTime():haxe.Int64 return this.syscallTime;
    function set_syscallTime(v:haxe.Int64):haxe.Int64 {
        this.syscallTime = (v : stdgo.GoInt64);
        return v;
    }
    public var gCTime(get, set) : haxe.Int64;
    function get_gCTime():haxe.Int64 return this.gCTime;
    function set_gCTime(v:haxe.Int64):haxe.Int64 {
        this.gCTime = (v : stdgo.GoInt64);
        return v;
    }
    public var sweepTime(get, set) : haxe.Int64;
    function get_sweepTime():haxe.Int64 return this.sweepTime;
    function set_sweepTime(v:haxe.Int64):haxe.Int64 {
        this.sweepTime = (v : stdgo.GoInt64);
        return v;
    }
    public var totalTime(get, set) : haxe.Int64;
    function get_totalTime():haxe.Int64 return this.totalTime;
    function set_totalTime(v:haxe.Int64):haxe.Int64 {
        this.totalTime = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?execTime:haxe.Int64, ?schedWaitTime:haxe.Int64, ?iOTime:haxe.Int64, ?blockTime:haxe.Int64, ?syscallTime:haxe.Int64, ?gCTime:haxe.Int64, ?sweepTime:haxe.Int64, ?totalTime:haxe.Int64) this = new _internal.internal.trace_.Trace__GExecutionStat.GExecutionStat((execTime : stdgo.GoInt64), (schedWaitTime : stdgo.GoInt64), (iOTime : stdgo.GoInt64), (blockTime : stdgo.GoInt64), (syscallTime : stdgo.GoInt64), (gCTime : stdgo.GoInt64), (sweepTime : stdgo.GoInt64), (totalTime : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.T_gdesc_static_extension) abstract T_gdesc(_internal.internal.trace_.Trace__T_gdesc.T_gdesc) from _internal.internal.trace_.Trace__T_gdesc.T_gdesc to _internal.internal.trace_.Trace__T_gdesc.T_gdesc {
    public var _lastStartTime(get, set) : haxe.Int64;
    function get__lastStartTime():haxe.Int64 return this._lastStartTime;
    function set__lastStartTime(v:haxe.Int64):haxe.Int64 {
        this._lastStartTime = (v : stdgo.GoInt64);
        return v;
    }
    public var _blockNetTime(get, set) : haxe.Int64;
    function get__blockNetTime():haxe.Int64 return this._blockNetTime;
    function set__blockNetTime(v:haxe.Int64):haxe.Int64 {
        this._blockNetTime = (v : stdgo.GoInt64);
        return v;
    }
    public var _blockSyncTime(get, set) : haxe.Int64;
    function get__blockSyncTime():haxe.Int64 return this._blockSyncTime;
    function set__blockSyncTime(v:haxe.Int64):haxe.Int64 {
        this._blockSyncTime = (v : stdgo.GoInt64);
        return v;
    }
    public var _blockSyscallTime(get, set) : haxe.Int64;
    function get__blockSyscallTime():haxe.Int64 return this._blockSyscallTime;
    function set__blockSyscallTime(v:haxe.Int64):haxe.Int64 {
        this._blockSyscallTime = (v : stdgo.GoInt64);
        return v;
    }
    public var _blockSweepTime(get, set) : haxe.Int64;
    function get__blockSweepTime():haxe.Int64 return this._blockSweepTime;
    function set__blockSweepTime(v:haxe.Int64):haxe.Int64 {
        this._blockSweepTime = (v : stdgo.GoInt64);
        return v;
    }
    public var _blockGCTime(get, set) : haxe.Int64;
    function get__blockGCTime():haxe.Int64 return this._blockGCTime;
    function set__blockGCTime(v:haxe.Int64):haxe.Int64 {
        this._blockGCTime = (v : stdgo.GoInt64);
        return v;
    }
    public var _blockSchedTime(get, set) : haxe.Int64;
    function get__blockSchedTime():haxe.Int64 return this._blockSchedTime;
    function set__blockSchedTime(v:haxe.Int64):haxe.Int64 {
        this._blockSchedTime = (v : stdgo.GoInt64);
        return v;
    }
    public var _activeRegions(get, set) : Array<UserRegionDesc>;
    function get__activeRegions():Array<UserRegionDesc> return [for (i in this._activeRegions) i];
    function set__activeRegions(v:Array<UserRegionDesc>):Array<UserRegionDesc> {
        this._activeRegions = ([for (i in v) (i : stdgo.Ref<_internal.internal.trace_.Trace_userregiondesc.UserRegionDesc>)] : stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_userregiondesc.UserRegionDesc>>);
        return v;
    }
    public function new(?_lastStartTime:haxe.Int64, ?_blockNetTime:haxe.Int64, ?_blockSyncTime:haxe.Int64, ?_blockSyscallTime:haxe.Int64, ?_blockSweepTime:haxe.Int64, ?_blockGCTime:haxe.Int64, ?_blockSchedTime:haxe.Int64, ?_activeRegions:Array<UserRegionDesc>) this = new _internal.internal.trace_.Trace__T_gdesc.T_gdesc((_lastStartTime : stdgo.GoInt64), (_blockNetTime : stdgo.GoInt64), (_blockSyncTime : stdgo.GoInt64), (_blockSyscallTime : stdgo.GoInt64), (_blockSweepTime : stdgo.GoInt64), (_blockGCTime : stdgo.GoInt64), (_blockSchedTime : stdgo.GoInt64), ([for (i in _activeRegions) (i : stdgo.Ref<_internal.internal.trace_.Trace_userregiondesc.UserRegionDesc>)] : stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_userregiondesc.UserRegionDesc>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.T_mud_static_extension) abstract T_mud(_internal.internal.trace_.Trace__T_mud.T_mud) from _internal.internal.trace_.Trace__T_mud.T_mud to _internal.internal.trace_.Trace__T_mud.T_mud {
    public var _sorted(get, set) : Array<T_edge>;
    function get__sorted():Array<T_edge> return [for (i in this._sorted) i];
    function set__sorted(v:Array<T_edge>):Array<T_edge> {
        this._sorted = ([for (i in v) i] : stdgo.Slice<_internal.internal.trace_.Trace_t_edge.T_edge>);
        return v;
    }
    public var _unsorted(get, set) : Array<T_edge>;
    function get__unsorted():Array<T_edge> return [for (i in this._unsorted) i];
    function set__unsorted(v:Array<T_edge>):Array<T_edge> {
        this._unsorted = ([for (i in v) i] : stdgo.Slice<_internal.internal.trace_.Trace_t_edge.T_edge>);
        return v;
    }
    public var _trackMass(get, set) : StdTypes.Float;
    function get__trackMass():StdTypes.Float return this._trackMass;
    function set__trackMass(v:StdTypes.Float):StdTypes.Float {
        this._trackMass = (v : stdgo.GoFloat64);
        return v;
    }
    public var _trackBucket(get, set) : StdTypes.Int;
    function get__trackBucket():StdTypes.Int return this._trackBucket;
    function set__trackBucket(v:StdTypes.Int):StdTypes.Int {
        this._trackBucket = (v : stdgo.GoInt);
        return v;
    }
    public var _trackSum(get, set) : StdTypes.Float;
    function get__trackSum():StdTypes.Float return this._trackSum;
    function set__trackSum(v:StdTypes.Float):StdTypes.Float {
        this._trackSum = (v : stdgo.GoFloat64);
        return v;
    }
    public var _hist(get, set) : haxe.ds.Vector<StdTypes.Float>;
    function get__hist():haxe.ds.Vector<StdTypes.Float> return haxe.ds.Vector.fromArrayCopy([for (i in this._hist) i]);
    function set__hist(v:haxe.ds.Vector<StdTypes.Float>):haxe.ds.Vector<StdTypes.Float> {
        this._hist = ([for (i in v) (i : stdgo.GoFloat64)] : stdgo.GoArray<stdgo.GoFloat64>);
        return v;
    }
    public function new(?_sorted:Array<T_edge>, ?_unsorted:Array<T_edge>, ?_trackMass:StdTypes.Float, ?_trackBucket:StdTypes.Int, ?_trackSum:StdTypes.Float, ?_hist:haxe.ds.Vector<StdTypes.Float>) this = new _internal.internal.trace_.Trace__T_mud.T_mud(([for (i in _sorted) i] : stdgo.Slice<_internal.internal.trace_.Trace_t_edge.T_edge>), ([for (i in _unsorted) i] : stdgo.Slice<_internal.internal.trace_.Trace_t_edge.T_edge>), (_trackMass : stdgo.GoFloat64), (_trackBucket : stdgo.GoInt), (_trackSum : stdgo.GoFloat64), ([for (i in _hist) (i : stdgo.GoFloat64)] : stdgo.GoArray<stdgo.GoFloat64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.T_edge_static_extension) abstract T_edge(_internal.internal.trace_.Trace__T_edge.T_edge) from _internal.internal.trace_.Trace__T_edge.T_edge to _internal.internal.trace_.Trace__T_edge.T_edge {
    public var _x(get, set) : StdTypes.Float;
    function get__x():StdTypes.Float return this._x;
    function set__x(v:StdTypes.Float):StdTypes.Float {
        this._x = (v : stdgo.GoFloat64);
        return v;
    }
    public var _delta(get, set) : StdTypes.Float;
    function get__delta():StdTypes.Float return this._delta;
    function set__delta(v:StdTypes.Float):StdTypes.Float {
        this._delta = (v : stdgo.GoFloat64);
        return v;
    }
    public var _dirac(get, set) : StdTypes.Float;
    function get__dirac():StdTypes.Float return this._dirac;
    function set__dirac(v:StdTypes.Float):StdTypes.Float {
        this._dirac = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?_x:StdTypes.Float, ?_delta:StdTypes.Float, ?_dirac:StdTypes.Float) this = new _internal.internal.trace_.Trace__T_edge.T_edge((_x : stdgo.GoFloat64), (_delta : stdgo.GoFloat64), (_dirac : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.T_eventBatch_static_extension) abstract T_eventBatch(_internal.internal.trace_.Trace__T_eventBatch.T_eventBatch) from _internal.internal.trace_.Trace__T_eventBatch.T_eventBatch to _internal.internal.trace_.Trace__T_eventBatch.T_eventBatch {
    public var _events(get, set) : Array<Event>;
    function get__events():Array<Event> return [for (i in this._events) i];
    function set__events(v:Array<Event>):Array<Event> {
        this._events = ([for (i in v) (i : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>)] : stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_event.Event>>);
        return v;
    }
    public var _selected(get, set) : Bool;
    function get__selected():Bool return this._selected;
    function set__selected(v:Bool):Bool {
        this._selected = v;
        return v;
    }
    public function new(?_events:Array<Event>, ?_selected:Bool) this = new _internal.internal.trace_.Trace__T_eventBatch.T_eventBatch(([for (i in _events) (i : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>)] : stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_event.Event>>), _selected);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.T_orderEvent_static_extension) abstract T_orderEvent(_internal.internal.trace_.Trace__T_orderEvent.T_orderEvent) from _internal.internal.trace_.Trace__T_orderEvent.T_orderEvent to _internal.internal.trace_.Trace__T_orderEvent.T_orderEvent {
    public var _ev(get, set) : Event;
    function get__ev():Event return this._ev;
    function set__ev(v:Event):Event {
        this._ev = (v : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>);
        return v;
    }
    public var _batch(get, set) : StdTypes.Int;
    function get__batch():StdTypes.Int return this._batch;
    function set__batch(v:StdTypes.Int):StdTypes.Int {
        this._batch = (v : stdgo.GoInt);
        return v;
    }
    public var _g(get, set) : haxe.UInt64;
    function get__g():haxe.UInt64 return this._g;
    function set__g(v:haxe.UInt64):haxe.UInt64 {
        this._g = (v : stdgo.GoUInt64);
        return v;
    }
    public var _init(get, set) : T_gState;
    function get__init():T_gState return this._init;
    function set__init(v:T_gState):T_gState {
        this._init = v;
        return v;
    }
    public var _next(get, set) : T_gState;
    function get__next():T_gState return this._next;
    function set__next(v:T_gState):T_gState {
        this._next = v;
        return v;
    }
    public function new(?_ev:Event, ?_batch:StdTypes.Int, ?_g:haxe.UInt64, ?_init:T_gState, ?_next:T_gState) this = new _internal.internal.trace_.Trace__T_orderEvent.T_orderEvent((_ev : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>), (_batch : stdgo.GoInt), (_g : stdgo.GoUInt64), _init, _next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.T_gState_static_extension) abstract T_gState(_internal.internal.trace_.Trace__T_gState.T_gState) from _internal.internal.trace_.Trace__T_gState.T_gState to _internal.internal.trace_.Trace__T_gState.T_gState {
    public var _seq(get, set) : haxe.UInt64;
    function get__seq():haxe.UInt64 return this._seq;
    function set__seq(v:haxe.UInt64):haxe.UInt64 {
        this._seq = (v : stdgo.GoUInt64);
        return v;
    }
    public var _status(get, set) : T_gStatus;
    function get__status():T_gStatus return this._status;
    function set__status(v:T_gStatus):T_gStatus {
        this._status = v;
        return v;
    }
    public function new(?_seq:haxe.UInt64, ?_status:T_gStatus) this = new _internal.internal.trace_.Trace__T_gState.T_gState((_seq : stdgo.GoUInt64), _status);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.Event_static_extension) abstract Event(_internal.internal.trace_.Trace__Event.Event) from _internal.internal.trace_.Trace__Event.Event to _internal.internal.trace_.Trace__Event.Event {
    public var off(get, set) : StdTypes.Int;
    function get_off():StdTypes.Int return this.off;
    function set_off(v:StdTypes.Int):StdTypes.Int {
        this.off = (v : stdgo.GoInt);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt8);
        return v;
    }
    public var _seq(get, set) : haxe.Int64;
    function get__seq():haxe.Int64 return this._seq;
    function set__seq(v:haxe.Int64):haxe.Int64 {
        this._seq = (v : stdgo.GoInt64);
        return v;
    }
    public var ts(get, set) : haxe.Int64;
    function get_ts():haxe.Int64 return this.ts;
    function set_ts(v:haxe.Int64):haxe.Int64 {
        this.ts = (v : stdgo.GoInt64);
        return v;
    }
    public var p(get, set) : StdTypes.Int;
    function get_p():StdTypes.Int return this.p;
    function set_p(v:StdTypes.Int):StdTypes.Int {
        this.p = (v : stdgo.GoInt);
        return v;
    }
    public var g(get, set) : haxe.UInt64;
    function get_g():haxe.UInt64 return this.g;
    function set_g(v:haxe.UInt64):haxe.UInt64 {
        this.g = (v : stdgo.GoUInt64);
        return v;
    }
    public var stkID(get, set) : haxe.UInt64;
    function get_stkID():haxe.UInt64 return this.stkID;
    function set_stkID(v:haxe.UInt64):haxe.UInt64 {
        this.stkID = (v : stdgo.GoUInt64);
        return v;
    }
    public var stk(get, set) : Array<Frame>;
    function get_stk():Array<Frame> return [for (i in this.stk) i];
    function set_stk(v:Array<Frame>):Array<Frame> {
        this.stk = ([for (i in v) (i : stdgo.Ref<_internal.internal.trace_.Trace_frame.Frame>)] : stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_frame.Frame>>);
        return v;
    }
    public var args(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get_args():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this.args) i]);
    function set_args(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this.args = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public var sArgs(get, set) : Array<String>;
    function get_sArgs():Array<String> return [for (i in this.sArgs) i];
    function set_sArgs(v:Array<String>):Array<String> {
        this.sArgs = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var link(get, set) : Event;
    function get_link():Event return this.link;
    function set_link(v:Event):Event {
        this.link = (v : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>);
        return v;
    }
    public function new(?off:StdTypes.Int, ?type:std.UInt, ?_seq:haxe.Int64, ?ts:haxe.Int64, ?p:StdTypes.Int, ?g:haxe.UInt64, ?stkID:haxe.UInt64, ?stk:Array<Frame>, ?args:haxe.ds.Vector<haxe.UInt64>, ?sArgs:Array<String>, ?link:Event) this = new _internal.internal.trace_.Trace__Event.Event(
(off : stdgo.GoInt),
(type : stdgo.GoUInt8),
(_seq : stdgo.GoInt64),
(ts : stdgo.GoInt64),
(p : stdgo.GoInt),
(g : stdgo.GoUInt64),
(stkID : stdgo.GoUInt64),
([for (i in stk) (i : stdgo.Ref<_internal.internal.trace_.Trace_frame.Frame>)] : stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_frame.Frame>>),
([for (i in args) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>),
([for (i in sArgs) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(link : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.Frame_static_extension) abstract Frame(_internal.internal.trace_.Trace__Frame.Frame) from _internal.internal.trace_.Trace__Frame.Frame to _internal.internal.trace_.Trace__Frame.Frame {
    public var pC(get, set) : haxe.UInt64;
    function get_pC():haxe.UInt64 return this.pC;
    function set_pC(v:haxe.UInt64):haxe.UInt64 {
        this.pC = (v : stdgo.GoUInt64);
        return v;
    }
    public var fn(get, set) : String;
    function get_fn():String return this.fn;
    function set_fn(v:String):String {
        this.fn = (v : stdgo.GoString);
        return v;
    }
    public var file(get, set) : String;
    function get_file():String return this.file;
    function set_file(v:String):String {
        this.file = (v : stdgo.GoString);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public function new(?pC:haxe.UInt64, ?fn:String, ?file:String, ?line:StdTypes.Int) this = new _internal.internal.trace_.Trace__Frame.Frame((pC : stdgo.GoUInt64), (fn : stdgo.GoString), (file : stdgo.GoString), (line : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.ParseResult_static_extension) abstract ParseResult(_internal.internal.trace_.Trace__ParseResult.ParseResult) from _internal.internal.trace_.Trace__ParseResult.ParseResult to _internal.internal.trace_.Trace__ParseResult.ParseResult {
    public var events(get, set) : Array<Event>;
    function get_events():Array<Event> return [for (i in this.events) i];
    function set_events(v:Array<Event>):Array<Event> {
        this.events = ([for (i in v) (i : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>)] : stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_event.Event>>);
        return v;
    }
    public var stacks(get, set) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_frame.Frame>>>;
    function get_stacks():stdgo.GoMap<stdgo.GoUInt64, stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_frame.Frame>>> return this.stacks;
    function set_stacks(v:stdgo.GoMap<stdgo.GoUInt64, stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_frame.Frame>>>):stdgo.GoMap<stdgo.GoUInt64, stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_frame.Frame>>> {
        this.stacks = (v : stdgo.GoMap<stdgo.GoUInt64, stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_frame.Frame>>>);
        return v;
    }
    public function new(?events:Array<Event>, ?stacks:stdgo.GoMap<stdgo.GoUInt64, stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_frame.Frame>>>) this = new _internal.internal.trace_.Trace__ParseResult.ParseResult(([for (i in events) (i : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>)] : stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_event.Event>>), (stacks : stdgo.GoMap<stdgo.GoUInt64, stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_frame.Frame>>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.T_rawEvent_static_extension) abstract T_rawEvent(_internal.internal.trace_.Trace__T_rawEvent.T_rawEvent) from _internal.internal.trace_.Trace__T_rawEvent.T_rawEvent to _internal.internal.trace_.Trace__T_rawEvent.T_rawEvent {
    public var _off(get, set) : StdTypes.Int;
    function get__off():StdTypes.Int return this._off;
    function set__off(v:StdTypes.Int):StdTypes.Int {
        this._off = (v : stdgo.GoInt);
        return v;
    }
    public var _typ(get, set) : std.UInt;
    function get__typ():std.UInt return this._typ;
    function set__typ(v:std.UInt):std.UInt {
        this._typ = (v : stdgo.GoUInt8);
        return v;
    }
    public var _args(get, set) : Array<haxe.UInt64>;
    function get__args():Array<haxe.UInt64> return [for (i in this._args) i];
    function set__args(v:Array<haxe.UInt64>):Array<haxe.UInt64> {
        this._args = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        return v;
    }
    public var _sargs(get, set) : Array<String>;
    function get__sargs():Array<String> return [for (i in this._sargs) i];
    function set__sargs(v:Array<String>):Array<String> {
        this._sargs = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_off:StdTypes.Int, ?_typ:std.UInt, ?_args:Array<haxe.UInt64>, ?_sargs:Array<String>) this = new _internal.internal.trace_.Trace__T_rawEvent.T_rawEvent((_off : stdgo.GoInt), (_typ : stdgo.GoUInt8), ([for (i in _args) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>), ([for (i in _sargs) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.Writer_static_extension) abstract Writer(_internal.internal.trace_.Trace__Writer.Writer) from _internal.internal.trace_.Trace__Writer.Writer to _internal.internal.trace_.Trace__Writer.Writer {
    public var buffer(get, set) : stdgo._internal.bytes.Bytes_buffer.Buffer;
    function get_buffer():stdgo._internal.bytes.Bytes_buffer.Buffer return this.buffer;
    function set_buffer(v:stdgo._internal.bytes.Bytes_buffer.Buffer):stdgo._internal.bytes.Bytes_buffer.Buffer {
        this.buffer = v;
        return v;
    }
    public function new(?buffer:stdgo._internal.bytes.Bytes_buffer.Buffer) this = new _internal.internal.trace_.Trace__Writer.Writer(buffer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0Pointer = _internal.internal.trace_.Trace__T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = _internal.internal.trace_.Trace__T__struct_0.T__struct_0;
typedef UtilFlags = _internal.internal.trace_.Trace__UtilFlags.UtilFlags;
typedef T_totalUtil = _internal.internal.trace_.Trace__T_totalUtil.T_totalUtil;
typedef T_bandUtilHeap = _internal.internal.trace_.Trace__T_bandUtilHeap.T_bandUtilHeap;
typedef T_utilHeap = _internal.internal.trace_.Trace__T_utilHeap.T_utilHeap;
typedef T_gStatus = _internal.internal.trace_.Trace__T_gStatus.T_gStatus;
typedef T_orderEventList = _internal.internal.trace_.Trace__T_orderEventList.T_orderEventList;
typedef T_eventList = _internal.internal.trace_.Trace__T_eventList.T_eventList;
typedef T_eventSeqList = _internal.internal.trace_.Trace__T_eventSeqList.T_eventSeqList;
@:structInit @:using(internal.trace_.Trace_.T_mutatorUtilization___localname___perP_1775_static_extension) abstract T_mutatorUtilization___localname___perP_1775(_internal.internal.trace_.Trace__T_mutatorUtilization___localname___perP_1775.T_mutatorUtilization___localname___perP_1775) from _internal.internal.trace_.Trace__T_mutatorUtilization___localname___perP_1775.T_mutatorUtilization___localname___perP_1775 to _internal.internal.trace_.Trace__T_mutatorUtilization___localname___perP_1775.T_mutatorUtilization___localname___perP_1775 {
    public var _gc(get, set) : StdTypes.Int;
    function get__gc():StdTypes.Int return this._gc;
    function set__gc(v:StdTypes.Int):StdTypes.Int {
        this._gc = (v : stdgo.GoInt);
        return v;
    }
    public var _series(get, set) : StdTypes.Int;
    function get__series():StdTypes.Int return this._series;
    function set__series(v:StdTypes.Int):StdTypes.Int {
        this._series = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_gc:StdTypes.Int, ?_series:StdTypes.Int) this = new _internal.internal.trace_.Trace__T_mutatorUtilization___localname___perP_1775.T_mutatorUtilization___localname___perP_1775((_gc : stdgo.GoInt), (_series : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.T__removeFutile___localname___G_15736_static_extension) abstract T__removeFutile___localname___G_15736(_internal.internal.trace_.Trace__T__removeFutile___localname___G_15736.T__removeFutile___localname___G_15736) from _internal.internal.trace_.Trace__T__removeFutile___localname___G_15736.T__removeFutile___localname___G_15736 to _internal.internal.trace_.Trace__T__removeFutile___localname___G_15736.T__removeFutile___localname___G_15736 {
    public var _futile(get, set) : Bool;
    function get__futile():Bool return this._futile;
    function set__futile(v:Bool):Bool {
        this._futile = v;
        return v;
    }
    public var _wakeup(get, set) : Array<Event>;
    function get__wakeup():Array<Event> return [for (i in this._wakeup) i];
    function set__wakeup(v:Array<Event>):Array<Event> {
        this._wakeup = ([for (i in v) (i : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>)] : stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_event.Event>>);
        return v;
    }
    public function new(?_futile:Bool, ?_wakeup:Array<Event>) this = new _internal.internal.trace_.Trace__T__removeFutile___localname___G_15736.T__removeFutile___localname___G_15736(_futile, ([for (i in _wakeup) (i : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>)] : stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_event.Event>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.T__postProcessTrace___localname___gdesc_17207_static_extension) abstract T__postProcessTrace___localname___gdesc_17207(_internal.internal.trace_.Trace__T__postProcessTrace___localname___gdesc_17207.T__postProcessTrace___localname___gdesc_17207) from _internal.internal.trace_.Trace__T__postProcessTrace___localname___gdesc_17207.T__postProcessTrace___localname___gdesc_17207 to _internal.internal.trace_.Trace__T__postProcessTrace___localname___gdesc_17207.T__postProcessTrace___localname___gdesc_17207 {
    public var _state(get, set) : StdTypes.Int;
    function get__state():StdTypes.Int return this._state;
    function set__state(v:StdTypes.Int):StdTypes.Int {
        this._state = (v : stdgo.GoInt);
        return v;
    }
    public var _ev(get, set) : Event;
    function get__ev():Event return this._ev;
    function set__ev(v:Event):Event {
        this._ev = (v : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>);
        return v;
    }
    public var _evStart(get, set) : Event;
    function get__evStart():Event return this._evStart;
    function set__evStart(v:Event):Event {
        this._evStart = (v : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>);
        return v;
    }
    public var _evCreate(get, set) : Event;
    function get__evCreate():Event return this._evCreate;
    function set__evCreate(v:Event):Event {
        this._evCreate = (v : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>);
        return v;
    }
    public var _evMarkAssist(get, set) : Event;
    function get__evMarkAssist():Event return this._evMarkAssist;
    function set__evMarkAssist(v:Event):Event {
        this._evMarkAssist = (v : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>);
        return v;
    }
    public function new(?_state:StdTypes.Int, ?_ev:Event, ?_evStart:Event, ?_evCreate:Event, ?_evMarkAssist:Event) this = new _internal.internal.trace_.Trace__T__postProcessTrace___localname___gdesc_17207.T__postProcessTrace___localname___gdesc_17207((_state : stdgo.GoInt), (_ev : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>), (_evStart : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>), (_evCreate : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>), (_evMarkAssist : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.trace_.Trace_.T__postProcessTrace___localname___pdesc_17338_static_extension) abstract T__postProcessTrace___localname___pdesc_17338(_internal.internal.trace_.Trace__T__postProcessTrace___localname___pdesc_17338.T__postProcessTrace___localname___pdesc_17338) from _internal.internal.trace_.Trace__T__postProcessTrace___localname___pdesc_17338.T__postProcessTrace___localname___pdesc_17338 to _internal.internal.trace_.Trace__T__postProcessTrace___localname___pdesc_17338.T__postProcessTrace___localname___pdesc_17338 {
    public var _running(get, set) : Bool;
    function get__running():Bool return this._running;
    function set__running(v:Bool):Bool {
        this._running = v;
        return v;
    }
    public var _g(get, set) : haxe.UInt64;
    function get__g():haxe.UInt64 return this._g;
    function set__g(v:haxe.UInt64):haxe.UInt64 {
        this._g = (v : stdgo.GoUInt64);
        return v;
    }
    public var _evSTW(get, set) : Event;
    function get__evSTW():Event return this._evSTW;
    function set__evSTW(v:Event):Event {
        this._evSTW = (v : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>);
        return v;
    }
    public var _evSweep(get, set) : Event;
    function get__evSweep():Event return this._evSweep;
    function set__evSweep(v:Event):Event {
        this._evSweep = (v : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>);
        return v;
    }
    public function new(?_running:Bool, ?_g:haxe.UInt64, ?_evSTW:Event, ?_evSweep:Event) this = new _internal.internal.trace_.Trace__T__postProcessTrace___localname___pdesc_17338.T__postProcessTrace___localname___pdesc_17338(_running, (_g : stdgo.GoUInt64), (_evSTW : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>), (_evSweep : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef MutatorUtilPointer = _internal.internal.trace_.Trace__MutatorUtilPointer.MutatorUtilPointer;
class MutatorUtil_static_extension {

}
typedef MMUCurvePointer = _internal.internal.trace_.Trace__MMUCurvePointer.MMUCurvePointer;
class MMUCurve_static_extension {
    static public function _mmu(_c:MMUCurve, _window:stdgo._internal.time.Time_duration.Duration, _acc:T_accumulator):Void {
        final _c = (_c : stdgo.Ref<_internal.internal.trace_.Trace_mmucurve.MMUCurve>);
        final _acc = (_acc : stdgo.Ref<_internal.internal.trace_.Trace_t_accumulator.T_accumulator>);
        _internal.internal.trace_.Trace__MMUCurve_static_extension.MMUCurve_static_extension._mmu(_c, _window, _acc);
    }
    static public function mUD(_c:MMUCurve, _window:stdgo._internal.time.Time_duration.Duration, _quantiles:Array<StdTypes.Float>):Array<StdTypes.Float> {
        final _c = (_c : stdgo.Ref<_internal.internal.trace_.Trace_mmucurve.MMUCurve>);
        final _quantiles = ([for (i in _quantiles) (i : stdgo.GoFloat64)] : stdgo.Slice<stdgo.GoFloat64>);
        return [for (i in _internal.internal.trace_.Trace__MMUCurve_static_extension.MMUCurve_static_extension.mUD(_c, _window, _quantiles)) i];
    }
    static public function examples(_c:MMUCurve, _window:stdgo._internal.time.Time_duration.Duration, _n:StdTypes.Int):Array<UtilWindow> {
        final _c = (_c : stdgo.Ref<_internal.internal.trace_.Trace_mmucurve.MMUCurve>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in _internal.internal.trace_.Trace__MMUCurve_static_extension.MMUCurve_static_extension.examples(_c, _window, _n)) i];
    }
    static public function mMU(_c:MMUCurve, _window:stdgo._internal.time.Time_duration.Duration):StdTypes.Float {
        final _c = (_c : stdgo.Ref<_internal.internal.trace_.Trace_mmucurve.MMUCurve>);
        return _internal.internal.trace_.Trace__MMUCurve_static_extension.MMUCurve_static_extension.mMU(_c, _window);
    }
}
typedef T_mmuSeriesPointer = _internal.internal.trace_.Trace__T_mmuSeriesPointer.T_mmuSeriesPointer;
class T_mmuSeries_static_extension {
    static public function _bandMMU(_c:T_mmuSeries, _bandIdx:StdTypes.Int, _window:stdgo._internal.time.Time_duration.Duration, _acc:T_accumulator):Void {
        final _c = (_c : stdgo.Ref<_internal.internal.trace_.Trace_t_mmuseries.T_mmuSeries>);
        final _bandIdx = (_bandIdx : stdgo.GoInt);
        final _acc = (_acc : stdgo.Ref<_internal.internal.trace_.Trace_t_accumulator.T_accumulator>);
        _internal.internal.trace_.Trace__T_mmuSeries_static_extension.T_mmuSeries_static_extension._bandMMU(_c, _bandIdx, _window, _acc);
    }
    static public function _mkBandUtil(_c:T_mmuSeries, _series:StdTypes.Int, _window:stdgo._internal.time.Time_duration.Duration):Array<T_bandUtil> {
        final _c = (_c : stdgo.Ref<_internal.internal.trace_.Trace_t_mmuseries.T_mmuSeries>);
        final _series = (_series : stdgo.GoInt);
        return [for (i in _internal.internal.trace_.Trace__T_mmuSeries_static_extension.T_mmuSeries_static_extension._mkBandUtil(_c, _series, _window)) i];
    }
    static public function _bandTime(_s:T_mmuSeries, _i:StdTypes.Int):stdgo.Tuple<haxe.Int64, haxe.Int64> {
        final _s = (_s : stdgo.Ref<_internal.internal.trace_.Trace_t_mmuseries.T_mmuSeries>);
        final _i = (_i : stdgo.GoInt);
        return {
            final obj = _internal.internal.trace_.Trace__T_mmuSeries_static_extension.T_mmuSeries_static_extension._bandTime(_s, _i);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_mmuBandPointer = _internal.internal.trace_.Trace__T_mmuBandPointer.T_mmuBandPointer;
class T_mmuBand_static_extension {

}
typedef T_bandUtilPointer = _internal.internal.trace_.Trace__T_bandUtilPointer.T_bandUtilPointer;
class T_bandUtil_static_extension {

}
typedef UtilWindowPointer = _internal.internal.trace_.Trace__UtilWindowPointer.UtilWindowPointer;
class UtilWindow_static_extension {

}
typedef T_accumulatorPointer = _internal.internal.trace_.Trace__T_accumulatorPointer.T_accumulatorPointer;
class T_accumulator_static_extension {
    static public function _addMU(_acc:T_accumulator, _time:haxe.Int64, _mu:StdTypes.Float, _window:stdgo._internal.time.Time_duration.Duration):Bool {
        final _acc = (_acc : stdgo.Ref<_internal.internal.trace_.Trace_t_accumulator.T_accumulator>);
        final _time = (_time : stdgo.GoInt64);
        final _mu = (_mu : stdgo.GoFloat64);
        return _internal.internal.trace_.Trace__T_accumulator_static_extension.T_accumulator_static_extension._addMU(_acc, _time, _mu, _window);
    }
    static public function _resetTime(_acc:T_accumulator):Void {
        final _acc = (_acc : stdgo.Ref<_internal.internal.trace_.Trace_t_accumulator.T_accumulator>);
        _internal.internal.trace_.Trace__T_accumulator_static_extension.T_accumulator_static_extension._resetTime(_acc);
    }
}
typedef T_integratorPointer = _internal.internal.trace_.Trace__T_integratorPointer.T_integratorPointer;
class T_integrator_static_extension {
    static public function _next(_in:T_integrator, _time:haxe.Int64):haxe.Int64 {
        final _in = (_in : stdgo.Ref<_internal.internal.trace_.Trace_t_integrator.T_integrator>);
        final _time = (_time : stdgo.GoInt64);
        return _internal.internal.trace_.Trace__T_integrator_static_extension.T_integrator_static_extension._next(_in, _time);
    }
    static public function _advance(_in:T_integrator, _time:haxe.Int64):T_totalUtil {
        final _in = (_in : stdgo.Ref<_internal.internal.trace_.Trace_t_integrator.T_integrator>);
        final _time = (_time : stdgo.GoInt64);
        return _internal.internal.trace_.Trace__T_integrator_static_extension.T_integrator_static_extension._advance(_in, _time);
    }
}
typedef GDescPointer = _internal.internal.trace_.Trace__GDescPointer.GDescPointer;
class GDesc_static_extension {
    static public function _finalize(_g:GDesc, _lastTs:haxe.Int64, _activeGCStartTime:haxe.Int64, _trigger:Event):Void {
        final _g = (_g : stdgo.Ref<_internal.internal.trace_.Trace_gdesc.GDesc>);
        final _lastTs = (_lastTs : stdgo.GoInt64);
        final _activeGCStartTime = (_activeGCStartTime : stdgo.GoInt64);
        final _trigger = (_trigger : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>);
        _internal.internal.trace_.Trace__GDesc_static_extension.GDesc_static_extension._finalize(_g, _lastTs, _activeGCStartTime, _trigger);
    }
    static public function _snapshotStat(_g:GDesc, _lastTs:haxe.Int64, _activeGCStartTime:haxe.Int64):GExecutionStat {
        final _g = (_g : stdgo.Ref<_internal.internal.trace_.Trace_gdesc.GDesc>);
        final _lastTs = (_lastTs : stdgo.GoInt64);
        final _activeGCStartTime = (_activeGCStartTime : stdgo.GoInt64);
        return _internal.internal.trace_.Trace__GDesc_static_extension.GDesc_static_extension._snapshotStat(_g, _lastTs, _activeGCStartTime);
    }
    public static function _sub(__self__:_internal.internal.trace_.Trace__gdesc.GDesc, _0:GExecutionStat):GExecutionStat {
        return _internal.internal.trace_.Trace__GDesc_static_extension.GDesc_static_extension._sub(__self__, _0);
    }
}
typedef UserRegionDescPointer = _internal.internal.trace_.Trace__UserRegionDescPointer.UserRegionDescPointer;
class UserRegionDesc_static_extension {
    public static function _sub(__self__:_internal.internal.trace_.Trace__userregiondesc.UserRegionDesc, _0:GExecutionStat):GExecutionStat {
        return _internal.internal.trace_.Trace__UserRegionDesc_static_extension.UserRegionDesc_static_extension._sub(__self__, _0);
    }
}
typedef GExecutionStatPointer = _internal.internal.trace_.Trace__GExecutionStatPointer.GExecutionStatPointer;
class GExecutionStat_static_extension {
    static public function _sub(_s:GExecutionStat, _v:GExecutionStat):GExecutionStat {
        return _internal.internal.trace_.Trace__GExecutionStat_static_extension.GExecutionStat_static_extension._sub(_s, _v);
    }
}
typedef T_gdescPointer = _internal.internal.trace_.Trace__T_gdescPointer.T_gdescPointer;
class T_gdesc_static_extension {

}
typedef T_mudPointer = _internal.internal.trace_.Trace__T_mudPointer.T_mudPointer;
class T_mud_static_extension {
    static public function _invCumulativeSum(_d:T_mud, _y:StdTypes.Float):stdgo.Tuple<StdTypes.Float, Bool> {
        final _d = (_d : stdgo.Ref<_internal.internal.trace_.Trace_t_mud.T_mud>);
        final _y = (_y : stdgo.GoFloat64);
        return {
            final obj = _internal.internal.trace_.Trace__T_mud_static_extension.T_mud_static_extension._invCumulativeSum(_d, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _approxInvCumulativeSum(_d:T_mud):stdgo.Tuple.Tuple3<StdTypes.Float, StdTypes.Float, Bool> {
        final _d = (_d : stdgo.Ref<_internal.internal.trace_.Trace_t_mud.T_mud>);
        return {
            final obj = _internal.internal.trace_.Trace__T_mud_static_extension.T_mud_static_extension._approxInvCumulativeSum(_d);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _setTrackMass(_d:T_mud, _mass:StdTypes.Float):Void {
        final _d = (_d : stdgo.Ref<_internal.internal.trace_.Trace_t_mud.T_mud>);
        final _mass = (_mass : stdgo.GoFloat64);
        _internal.internal.trace_.Trace__T_mud_static_extension.T_mud_static_extension._setTrackMass(_d, _mass);
    }
    static public function _add(_d:T_mud, _l:StdTypes.Float, _r:StdTypes.Float, _area:StdTypes.Float):Void {
        final _d = (_d : stdgo.Ref<_internal.internal.trace_.Trace_t_mud.T_mud>);
        final _l = (_l : stdgo.GoFloat64);
        final _r = (_r : stdgo.GoFloat64);
        final _area = (_area : stdgo.GoFloat64);
        _internal.internal.trace_.Trace__T_mud_static_extension.T_mud_static_extension._add(_d, _l, _r, _area);
    }
}
typedef T_edgePointer = _internal.internal.trace_.Trace__T_edgePointer.T_edgePointer;
class T_edge_static_extension {

}
typedef T_eventBatchPointer = _internal.internal.trace_.Trace__T_eventBatchPointer.T_eventBatchPointer;
class T_eventBatch_static_extension {

}
typedef T_orderEventPointer = _internal.internal.trace_.Trace__T_orderEventPointer.T_orderEventPointer;
class T_orderEvent_static_extension {

}
typedef T_gStatePointer = _internal.internal.trace_.Trace__T_gStatePointer.T_gStatePointer;
class T_gState_static_extension {

}
typedef EventPointer = _internal.internal.trace_.Trace__EventPointer.EventPointer;
class Event_static_extension {
    static public function string(_ev:Event):String {
        final _ev = (_ev : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>);
        return _internal.internal.trace_.Trace__Event_static_extension.Event_static_extension.string(_ev);
    }
}
typedef FramePointer = _internal.internal.trace_.Trace__FramePointer.FramePointer;
class Frame_static_extension {

}
typedef ParseResultPointer = _internal.internal.trace_.Trace__ParseResultPointer.ParseResultPointer;
class ParseResult_static_extension {

}
typedef T_rawEventPointer = _internal.internal.trace_.Trace__T_rawEventPointer.T_rawEventPointer;
class T_rawEvent_static_extension {

}
typedef WriterPointer = _internal.internal.trace_.Trace__WriterPointer.WriterPointer;
class Writer_static_extension {
    static public function emit(_w:Writer, _typ:std.UInt, _args:haxe.Rest<haxe.UInt64>):Void {
        final _w = (_w : stdgo.Ref<_internal.internal.trace_.Trace_writer.Writer>);
        final _typ = (_typ : stdgo.GoUInt8);
        _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.emit(_w, _typ, ...[for (i in _args) i]);
    }
    public static function _tryGrowByReslice(__self__:_internal.internal.trace_.Trace__writer.Writer, _0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, Bool> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension._tryGrowByReslice(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _readSlice(__self__:_internal.internal.trace_.Trace__writer.Writer, _0:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension._readSlice(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function _grow(__self__:_internal.internal.trace_.Trace__writer.Writer, _0:StdTypes.Int):StdTypes.Int {
        final _0 = (_0 : stdgo.GoInt);
        return _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension._grow(__self__, _0);
    }
    public static function _empty(__self__:_internal.internal.trace_.Trace__writer.Writer):Bool {
        return _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension._empty(__self__);
    }
    public static function writeTo(__self__:_internal.internal.trace_.Trace__writer.Writer, _0:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.writeTo(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeString(__self__:_internal.internal.trace_.Trace__writer.Writer, _0:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.writeString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeRune(__self__:_internal.internal.trace_.Trace__writer.Writer, _0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt32);
        return {
            final obj = _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.writeRune(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeByte(__self__:_internal.internal.trace_.Trace__writer.Writer, _0:std.UInt):stdgo.Error {
        final _0 = (_0 : stdgo.GoUInt8);
        return _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.writeByte(__self__, _0);
    }
    public static function write(__self__:_internal.internal.trace_.Trace__writer.Writer, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function unreadRune(__self__:_internal.internal.trace_.Trace__writer.Writer):stdgo.Error {
        return _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.unreadRune(__self__);
    }
    public static function unreadByte(__self__:_internal.internal.trace_.Trace__writer.Writer):stdgo.Error {
        return _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.unreadByte(__self__);
    }
    public static function truncate(__self__:_internal.internal.trace_.Trace__writer.Writer, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt);
        _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.truncate(__self__, _0);
    }
    public static function string(__self__:_internal.internal.trace_.Trace__writer.Writer):String {
        return _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.string(__self__);
    }
    public static function reset(__self__:_internal.internal.trace_.Trace__writer.Writer):Void {
        _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.reset(__self__);
    }
    public static function readString(__self__:_internal.internal.trace_.Trace__writer.Writer, _0:std.UInt):stdgo.Tuple<String, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.readString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readRune(__self__:_internal.internal.trace_.Trace__writer.Writer):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.readRune(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function readFrom(__self__:_internal.internal.trace_.Trace__writer.Writer, _0:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.readFrom(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readBytes(__self__:_internal.internal.trace_.Trace__writer.Writer, _0:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.readBytes(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readByte(__self__:_internal.internal.trace_.Trace__writer.Writer):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.readByte(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:_internal.internal.trace_.Trace__writer.Writer, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function next(__self__:_internal.internal.trace_.Trace__writer.Writer, _0:StdTypes.Int):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoInt);
        return [for (i in _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.next(__self__, _0)) i];
    }
    public static function len(__self__:_internal.internal.trace_.Trace__writer.Writer):StdTypes.Int {
        return _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.len(__self__);
    }
    public static function grow(__self__:_internal.internal.trace_.Trace__writer.Writer, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt);
        _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.grow(__self__, _0);
    }
    public static function cap(__self__:_internal.internal.trace_.Trace__writer.Writer):StdTypes.Int {
        return _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.cap(__self__);
    }
    public static function bytes(__self__:_internal.internal.trace_.Trace__writer.Writer):Array<std.UInt> {
        return [for (i in _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.bytes(__self__)) i];
    }
    public static function availableBuffer(__self__:_internal.internal.trace_.Trace__writer.Writer):Array<std.UInt> {
        return [for (i in _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.availableBuffer(__self__)) i];
    }
    public static function available(__self__:_internal.internal.trace_.Trace__writer.Writer):StdTypes.Int {
        return _internal.internal.trace_.Trace__Writer_static_extension.Writer_static_extension.available(__self__);
    }
}
typedef T__struct_0PointerPointer = _internal.internal.trace_.Trace__T__struct_0PointerPointer.T__struct_0PointerPointer;
class T__struct_0Pointer_static_extension {

}
typedef UtilFlagsPointer = _internal.internal.trace_.Trace__UtilFlagsPointer.UtilFlagsPointer;
class UtilFlags_static_extension {

}
typedef T_totalUtilPointer = _internal.internal.trace_.Trace__T_totalUtilPointer.T_totalUtilPointer;
class T_totalUtil_static_extension {
    static public function _mean(_u:T_totalUtil, _dur:stdgo._internal.time.Time_duration.Duration):StdTypes.Float {
        return _internal.internal.trace_.Trace__T_totalUtil_static_extension.T_totalUtil_static_extension._mean(_u, _dur);
    }
}
typedef T_bandUtilHeapPointer = _internal.internal.trace_.Trace__T_bandUtilHeapPointer.T_bandUtilHeapPointer;
class T_bandUtilHeap_static_extension {
    static public function pop(_h:T_bandUtilHeap):stdgo.AnyInterface {
        final _h = (_h : stdgo.Ref<_internal.internal.trace_.Trace_t_bandutilheap.T_bandUtilHeap>);
        return _internal.internal.trace_.Trace__T_bandUtilHeap_static_extension.T_bandUtilHeap_static_extension.pop(_h);
    }
    static public function push(_h:T_bandUtilHeap, _x:stdgo.AnyInterface):Void {
        final _h = (_h : stdgo.Ref<_internal.internal.trace_.Trace_t_bandutilheap.T_bandUtilHeap>);
        final _x = (_x : stdgo.AnyInterface);
        _internal.internal.trace_.Trace__T_bandUtilHeap_static_extension.T_bandUtilHeap_static_extension.push(_h, _x);
    }
    static public function swap(_h:T_bandUtilHeap, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        _internal.internal.trace_.Trace__T_bandUtilHeap_static_extension.T_bandUtilHeap_static_extension.swap(_h, _i, _j);
    }
    static public function less(_h:T_bandUtilHeap, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return _internal.internal.trace_.Trace__T_bandUtilHeap_static_extension.T_bandUtilHeap_static_extension.less(_h, _i, _j);
    }
    static public function len(_h:T_bandUtilHeap):StdTypes.Int {
        return _internal.internal.trace_.Trace__T_bandUtilHeap_static_extension.T_bandUtilHeap_static_extension.len(_h);
    }
}
typedef T_utilHeapPointer = _internal.internal.trace_.Trace__T_utilHeapPointer.T_utilHeapPointer;
class T_utilHeap_static_extension {
    static public function pop(_h:T_utilHeap):stdgo.AnyInterface {
        final _h = (_h : stdgo.Ref<_internal.internal.trace_.Trace_t_utilheap.T_utilHeap>);
        return _internal.internal.trace_.Trace__T_utilHeap_static_extension.T_utilHeap_static_extension.pop(_h);
    }
    static public function push(_h:T_utilHeap, _x:stdgo.AnyInterface):Void {
        final _h = (_h : stdgo.Ref<_internal.internal.trace_.Trace_t_utilheap.T_utilHeap>);
        final _x = (_x : stdgo.AnyInterface);
        _internal.internal.trace_.Trace__T_utilHeap_static_extension.T_utilHeap_static_extension.push(_h, _x);
    }
    static public function swap(_h:T_utilHeap, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        _internal.internal.trace_.Trace__T_utilHeap_static_extension.T_utilHeap_static_extension.swap(_h, _i, _j);
    }
    static public function less(_h:T_utilHeap, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return _internal.internal.trace_.Trace__T_utilHeap_static_extension.T_utilHeap_static_extension.less(_h, _i, _j);
    }
    static public function len(_h:T_utilHeap):StdTypes.Int {
        return _internal.internal.trace_.Trace__T_utilHeap_static_extension.T_utilHeap_static_extension.len(_h);
    }
}
typedef T_gStatusPointer = _internal.internal.trace_.Trace__T_gStatusPointer.T_gStatusPointer;
class T_gStatus_static_extension {

}
typedef T_orderEventListPointer = _internal.internal.trace_.Trace__T_orderEventListPointer.T_orderEventListPointer;
class T_orderEventList_static_extension {
    static public function swap(_l:T_orderEventList, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        _internal.internal.trace_.Trace__T_orderEventList_static_extension.T_orderEventList_static_extension.swap(_l, _i, _j);
    }
    static public function less(_l:T_orderEventList, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return _internal.internal.trace_.Trace__T_orderEventList_static_extension.T_orderEventList_static_extension.less(_l, _i, _j);
    }
    static public function len(_l:T_orderEventList):StdTypes.Int {
        return _internal.internal.trace_.Trace__T_orderEventList_static_extension.T_orderEventList_static_extension.len(_l);
    }
}
typedef T_eventListPointer = _internal.internal.trace_.Trace__T_eventListPointer.T_eventListPointer;
class T_eventList_static_extension {
    static public function swap(_l:T_eventList, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        _internal.internal.trace_.Trace__T_eventList_static_extension.T_eventList_static_extension.swap(_l, _i, _j);
    }
    static public function less(_l:T_eventList, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return _internal.internal.trace_.Trace__T_eventList_static_extension.T_eventList_static_extension.less(_l, _i, _j);
    }
    static public function len(_l:T_eventList):StdTypes.Int {
        return _internal.internal.trace_.Trace__T_eventList_static_extension.T_eventList_static_extension.len(_l);
    }
}
typedef T_eventSeqListPointer = _internal.internal.trace_.Trace__T_eventSeqListPointer.T_eventSeqListPointer;
class T_eventSeqList_static_extension {
    static public function swap(_l:T_eventSeqList, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        _internal.internal.trace_.Trace__T_eventSeqList_static_extension.T_eventSeqList_static_extension.swap(_l, _i, _j);
    }
    static public function less(_l:T_eventSeqList, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return _internal.internal.trace_.Trace__T_eventSeqList_static_extension.T_eventSeqList_static_extension.less(_l, _i, _j);
    }
    static public function len(_l:T_eventSeqList):StdTypes.Int {
        return _internal.internal.trace_.Trace__T_eventSeqList_static_extension.T_eventSeqList_static_extension.len(_l);
    }
}
typedef T_mutatorUtilization___localname___perP_1775Pointer = _internal.internal.trace_.Trace__T_mutatorUtilization___localname___perP_1775Pointer.T_mutatorUtilization___localname___perP_1775Pointer;
class T_mutatorUtilization___localname___perP_1775_static_extension {

}
typedef T__removeFutile___localname___G_15736Pointer = _internal.internal.trace_.Trace__T__removeFutile___localname___G_15736Pointer.T__removeFutile___localname___G_15736Pointer;
class T__removeFutile___localname___G_15736_static_extension {

}
typedef T__postProcessTrace___localname___gdesc_17207Pointer = _internal.internal.trace_.Trace__T__postProcessTrace___localname___gdesc_17207Pointer.T__postProcessTrace___localname___gdesc_17207Pointer;
class T__postProcessTrace___localname___gdesc_17207_static_extension {

}
typedef T__postProcessTrace___localname___pdesc_17338Pointer = _internal.internal.trace_.Trace__T__postProcessTrace___localname___pdesc_17338Pointer.T__postProcessTrace___localname___pdesc_17338Pointer;
class T__postProcessTrace___localname___pdesc_17338_static_extension {

}
class Trace_ {
    /**
        * MutatorUtilization returns a set of mutator utilization functions
        * for the given trace. Each function will always end with 0
        * utilization. The bounds of each function are implicit in the first
        * and last event; outside of these bounds each function is undefined.
        * 
        * If the UtilPerProc flag is not given, this always returns a single
        * utilization function. Otherwise, it returns one function per P.
    **/
    static public inline function mutatorUtilization(_events:Array<Event>, _flags:UtilFlags):Array<Array<MutatorUtil>> {
        final _events = ([for (i in _events) (i : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>)] : stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_event.Event>>);
        return [for (i in _internal.internal.trace_.Trace__mutatorUtilization.mutatorUtilization(_events, _flags)) [for (i in i) i]];
    }
    /**
        * NewMMUCurve returns an MMU curve for the given mutator utilization
        * function.
    **/
    static public inline function newMMUCurve(_utils:Array<Array<MutatorUtil>>):MMUCurve {
        final _utils = ([for (i in _utils) ([for (i in i) i] : stdgo.Slice<_internal.internal.trace_.Trace_mutatorutil.MutatorUtil>)] : stdgo.Slice<stdgo.Slice<_internal.internal.trace_.Trace_mutatorutil.MutatorUtil>>);
        return _internal.internal.trace_.Trace__newMMUCurve.newMMUCurve(_utils);
    }
    /**
        * GoroutineStats generates statistics for all goroutines in the trace.
    **/
    static public inline function goroutineStats(_events:Array<Event>):stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<_internal.internal.trace_.Trace_gdesc.GDesc>> {
        final _events = ([for (i in _events) (i : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>)] : stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_event.Event>>);
        return _internal.internal.trace_.Trace__goroutineStats.goroutineStats(_events);
    }
    /**
        * RelatedGoroutines finds a set of goroutines related to goroutine goid.
    **/
    static public inline function relatedGoroutines(_events:Array<Event>, _goid:haxe.UInt64):stdgo.GoMap<stdgo.GoUInt64, Bool> {
        final _events = ([for (i in _events) (i : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>)] : stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_event.Event>>);
        final _goid = (_goid : stdgo.GoUInt64);
        return _internal.internal.trace_.Trace__relatedGoroutines.relatedGoroutines(_events, _goid);
    }
    static public inline function isSystemGoroutine(_entryFn:String):Bool {
        final _entryFn = (_entryFn : stdgo.GoString);
        return _internal.internal.trace_.Trace__isSystemGoroutine.isSystemGoroutine(_entryFn);
    }
    /**
        * Parse parses, post-processes and verifies the trace.
    **/
    static public inline function parse(_r:stdgo._internal.io.Io_reader.Reader, _bin:String):stdgo.Tuple<ParseResult, stdgo.Error> {
        final _bin = (_bin : stdgo.GoString);
        return {
            final obj = _internal.internal.trace_.Trace__parse.parse(_r, _bin);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Print dumps events to stdout. For debugging.
    **/
    static public inline function print(_events:Array<Event>):Void {
        final _events = ([for (i in _events) (i : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>)] : stdgo.Slice<stdgo.Ref<_internal.internal.trace_.Trace_event.Event>>);
        _internal.internal.trace_.Trace__print.print(_events);
    }
    /**
        * PrintEvent dumps the event to stdout. For debugging.
    **/
    static public inline function printEvent(_ev:Event):Void {
        final _ev = (_ev : stdgo.Ref<_internal.internal.trace_.Trace_event.Event>);
        _internal.internal.trace_.Trace__printEvent.printEvent(_ev);
    }
    static public inline function newWriter():Writer {
        return _internal.internal.trace_.Trace__newWriter.newWriter();
    }
}
