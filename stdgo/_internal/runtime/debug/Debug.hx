package stdgo._internal.runtime.debug;
private var __go2hxdoc__package : Bool;
@:structInit class GCStats {
    public var lastGC : stdgo._internal.time.Time.Time = ({} : stdgo._internal.time.Time.Time);
    public var numGC : stdgo.GoInt64 = 0;
    public var pauseTotal : stdgo._internal.time.Time.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration);
    public var pause : stdgo.Slice<stdgo._internal.time.Time.Duration> = (null : stdgo.Slice<stdgo._internal.time.Time.Duration>);
    public var pauseEnd : stdgo.Slice<stdgo._internal.time.Time.Time> = (null : stdgo.Slice<stdgo._internal.time.Time.Time>);
    public var pauseQuantiles : stdgo.Slice<stdgo._internal.time.Time.Duration> = (null : stdgo.Slice<stdgo._internal.time.Time.Duration>);
    public function new(?lastGC:stdgo._internal.time.Time.Time, ?numGC:stdgo.GoInt64, ?pauseTotal:stdgo._internal.time.Time.Duration, ?pause:stdgo.Slice<stdgo._internal.time.Time.Duration>, ?pauseEnd:stdgo.Slice<stdgo._internal.time.Time.Time>, ?pauseQuantiles:stdgo.Slice<stdgo._internal.time.Time.Duration>) {
        if (lastGC != null) this.lastGC = lastGC;
        if (numGC != null) this.numGC = numGC;
        if (pauseTotal != null) this.pauseTotal = pauseTotal;
        if (pause != null) this.pause = pause;
        if (pauseEnd != null) this.pauseEnd = pauseEnd;
        if (pauseQuantiles != null) this.pauseQuantiles = pauseQuantiles;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GCStats(lastGC, numGC, pauseTotal, pause, pauseEnd, pauseQuantiles);
    }
}
@:structInit @:using(stdgo._internal.runtime.debug.Debug.BuildInfo_static_extension) class BuildInfo {
    public var goVersion : stdgo.GoString = "";
    public var path : stdgo.GoString = "";
    public var _Main : stdgo._internal.runtime.debug.Debug.Module = ({} : stdgo._internal.runtime.debug.Debug.Module);
    public var deps : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Debug.Module>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Debug.Module>>);
    public var settings : stdgo.Slice<stdgo._internal.runtime.debug.Debug.BuildSetting> = (null : stdgo.Slice<stdgo._internal.runtime.debug.Debug.BuildSetting>);
    public function new(?goVersion:stdgo.GoString, ?path:stdgo.GoString, ?_Main:stdgo._internal.runtime.debug.Debug.Module, ?deps:stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Debug.Module>>, ?settings:stdgo.Slice<stdgo._internal.runtime.debug.Debug.BuildSetting>) {
        if (goVersion != null) this.goVersion = goVersion;
        if (path != null) this.path = path;
        if (_Main != null) this._Main = _Main;
        if (deps != null) this.deps = deps;
        if (settings != null) this.settings = settings;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BuildInfo(goVersion, path, _Main, deps, settings);
    }
}
@:structInit class Module {
    public var path : stdgo.GoString = "";
    public var version : stdgo.GoString = "";
    public var sum : stdgo.GoString = "";
    public var replace : stdgo.Ref<stdgo._internal.runtime.debug.Debug.Module> = (null : stdgo.Ref<stdgo._internal.runtime.debug.Debug.Module>);
    public function new(?path:stdgo.GoString, ?version:stdgo.GoString, ?sum:stdgo.GoString, ?replace:stdgo.Ref<stdgo._internal.runtime.debug.Debug.Module>) {
        if (path != null) this.path = path;
        if (version != null) this.version = version;
        if (sum != null) this.sum = sum;
        if (replace != null) this.replace = replace;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Module(path, version, sum, replace);
    }
}
@:structInit class BuildSetting {
    public var key : stdgo.GoString = "";
    public var value : stdgo.GoString = "";
    public function new(?key:stdgo.GoString, ?value:stdgo.GoString) {
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BuildSetting(key, value);
    }
}
function readGCStats(_stats:stdgo.Ref<GCStats>):Void throw ":runtime.debug.readGCStats is not yet implemented";
function setGCPercent(_percent:stdgo.GoInt):stdgo.GoInt throw ":runtime.debug.setGCPercent is not yet implemented";
function freeOSMemory():Void throw ":runtime.debug.freeOSMemory is not yet implemented";
function setMaxStack(_bytes:stdgo.GoInt):stdgo.GoInt throw ":runtime.debug.setMaxStack is not yet implemented";
function setMaxThreads(_threads:stdgo.GoInt):stdgo.GoInt throw ":runtime.debug.setMaxThreads is not yet implemented";
function setPanicOnFault(_enabled:Bool):Bool throw ":runtime.debug.setPanicOnFault is not yet implemented";
function writeHeapDump(_fd:stdgo.GoUIntptr):Void throw ":runtime.debug.writeHeapDump is not yet implemented";
function setTraceback(_level:stdgo.GoString):Void throw ":runtime.debug.setTraceback is not yet implemented";
function setMemoryLimit(_limit:stdgo.GoInt64):stdgo.GoInt64 throw ":runtime.debug.setMemoryLimit is not yet implemented";
function readBuildInfo():{ var _0 : stdgo.Ref<BuildInfo>; var _1 : Bool; } throw ":runtime.debug.readBuildInfo is not yet implemented";
function parseBuildInfo(_data:stdgo.GoString):{ var _0 : stdgo.Ref<BuildInfo>; var _1 : stdgo.Error; } throw ":runtime.debug.parseBuildInfo is not yet implemented";
function printStack():Void throw ":runtime.debug.printStack is not yet implemented";
function stack():stdgo.Slice<stdgo.GoByte> throw ":runtime.debug.stack is not yet implemented";
class BuildInfo_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<BuildInfo>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.runtime.debug.Debug.BuildInfo_asInterface) class BuildInfo_static_extension {
    @:keep
    static public function string( _bi:stdgo.Ref<BuildInfo>):stdgo.GoString throw "BuildInfo:runtime.debug.string is not yet implemented";
}
