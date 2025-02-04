package stdgo._internal.internal.fuzz;
class T_coordinator_asInterface {
    @:keep
    @:tdfield
    public dynamic function _debugLogf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._debugLogf(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _readCache():stdgo.Error return @:_0 __self__.value._readCache();
    @:keep
    @:tdfield
    public dynamic function _elapsed():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._elapsed();
    @:keep
    @:tdfield
    public dynamic function _canMinimize():Bool return @:_0 __self__.value._canMinimize();
    @:keep
    @:tdfield
    public dynamic function _updateCoverage(_newCoverage:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return @:_0 __self__.value._updateCoverage(_newCoverage);
    @:keep
    @:tdfield
    public dynamic function _warmupRun():Bool return @:_0 __self__.value._warmupRun();
    @:keep
    @:tdfield
    public dynamic function _sentMinimizeInput(_input:stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput):Void @:_0 __self__.value._sentMinimizeInput(_input);
    @:keep
    @:tdfield
    public dynamic function _peekMinimizeInput():{ var _0 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput; var _1 : Bool; } return @:_0 __self__.value._peekMinimizeInput();
    @:keep
    @:tdfield
    public dynamic function _queueForMinimization(_result:stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult, _keepCoverage:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._queueForMinimization(_result, _keepCoverage);
    @:keep
    @:tdfield
    public dynamic function _refillInputQueue():Void @:_0 __self__.value._refillInputQueue();
    @:keep
    @:tdfield
    public dynamic function _sentInput(_input:stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput):Void @:_0 __self__.value._sentInput(_input);
    @:keep
    @:tdfield
    public dynamic function _peekInput():{ var _0 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput; var _1 : Bool; } return @:_0 __self__.value._peekInput();
    @:keep
    @:tdfield
    public dynamic function _logStats():Void @:_0 __self__.value._logStats();
    @:keep
    @:tdfield
    public dynamic function _updateStats(_result:stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult):Void @:_0 __self__.value._updateStats(_result);
    @:keep
    @:tdfield
    public dynamic function _addCorpusEntries(_addToCache:Bool, _entries:haxe.Rest<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>):{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value._addCorpusEntries(_addToCache, ..._entries);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.fuzz.Fuzz_t_coordinatorpointer.T_coordinatorPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
