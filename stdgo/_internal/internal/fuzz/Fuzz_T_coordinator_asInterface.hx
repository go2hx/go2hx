package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
class T_coordinator_asInterface {
    @:keep
    public dynamic function _debugLogf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._debugLogf(_format, ..._args);
    @:keep
    public dynamic function _readCache():stdgo.Error return __self__.value._readCache();
    @:keep
    public dynamic function _elapsed():stdgo._internal.time.Time_Duration.Duration return __self__.value._elapsed();
    @:keep
    public dynamic function _canMinimize():Bool return __self__.value._canMinimize();
    @:keep
    public dynamic function _updateCoverage(_newCoverage:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return __self__.value._updateCoverage(_newCoverage);
    @:keep
    public dynamic function _warmupRun():Bool return __self__.value._warmupRun();
    @:keep
    public dynamic function _sentMinimizeInput(_input:stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput):Void __self__.value._sentMinimizeInput(_input);
    @:keep
    public dynamic function _peekMinimizeInput():{ var _0 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput; var _1 : Bool; } return __self__.value._peekMinimizeInput();
    @:keep
    public dynamic function _queueForMinimization(_result:stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult, _keepCoverage:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value._queueForMinimization(_result, _keepCoverage);
    @:keep
    public dynamic function _refillInputQueue():Void __self__.value._refillInputQueue();
    @:keep
    public dynamic function _sentInput(_input:stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput):Void __self__.value._sentInput(_input);
    @:keep
    public dynamic function _peekInput():{ var _0 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput; var _1 : Bool; } return __self__.value._peekInput();
    @:keep
    public dynamic function _logStats():Void __self__.value._logStats();
    @:keep
    public dynamic function _updateStats(_result:stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult):Void __self__.value._updateStats(_result);
    @:keep
    public dynamic function _addCorpusEntries(_addToCache:Bool, _entries:haxe.Rest<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry>):{ var _0 : Bool; var _1 : stdgo.Error; } return __self__.value._addCorpusEntries(_addToCache, ..._entries);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
