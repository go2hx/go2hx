package stdgo.testing.internal.testdeps;

import stdgo.StdGoTypes;

var importPath:GoString = "";

@:structInit
class TestDeps {
	public function new() {}

	public function __underlying__():AnyInterface
		return null;

	public function __copy__()
		return new TestDeps();

	public function startTestLog() {}

	public function startCPUProfile() {}

	public function stopTestLog() {}

	public function writeProfileTo() {}

	public function checkCorpus() {}

	public function coordinateFuzzing() {}

	public function importPath() {}
}

class TestDeps_wrapper {
    @:keep
    public var snapshotCoverage : () -> Void = null;
    @:keep
    public var resetCoverage : () -> Void = null;
    @:keep
    public var checkCorpus : (Slice<AnyInterface>, Slice<stdgo.reflect.Reflect.Type>) -> Error = null;
    @:keep
    public var readCorpus : (GoString, Slice<stdgo.reflect.Reflect.Type>) -> { var _0 : Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>; var _1 : Error; } = null;
    @:keep
    public var runFuzzWorker : (({ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }) -> Error) -> Error = null;
    @:keep
    public var coordinateFuzzing : (stdgo.time.Time.Duration, GoInt64, stdgo.time.Time.Duration, GoInt64, GoInt, Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>, Slice<stdgo.reflect.Reflect.Type>, GoString, GoString) -> Error = null;
    /**
        // SetPanicOnExit0 tells the os package whether to panic on os.Exit(0).
    **/
    @:keep
    public var setPanicOnExit0 : Bool -> Void = null;
    @:keep
    public var stopTestLog : () -> Error = null;
    @:keep
    public var startTestLog : stdgo.io.Io.Writer -> Void = null;
    @:keep
    public var importPath : () -> GoString = null;
    @:keep
    public var writeProfileTo : (GoString, stdgo.io.Io.Writer, GoInt) -> Error = null;
    @:keep
    public var stopCPUProfile : () -> Void = null;
    @:keep
    public var startCPUProfile : stdgo.io.Io.Writer -> Error = null;
    @:keep
    public var matchString : (GoString, GoString) -> { var _0 : Bool; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : TestDeps;
}