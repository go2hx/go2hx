package stdgo.testing.internal.testdeps;

import stdgo.StdGoTypes;

var _matchPat:GoString = (("" : GoString));

// var _matchRe:stdgo.regexp.Regexp.Regexp = null;
var importPath:GoString = (("" : GoString));
var _log:T_testLog = new T_testLog();

@:structInit @:using(stdgo.testing.internal.testdeps.Testdeps.TestDeps_static_extension) class TestDeps {
	public function new() {}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new TestDeps();
	}
}

@:structInit @:using(stdgo.testing.internal.testdeps.Testdeps.T_testLog_static_extension) class T_testLog {
	public var _mu:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _w:Dynamic = null; // Ref<stdgo.bufio.Bufio.Writer> = null;
	public var _set:Bool = false;

	public function new(?_mu:stdgo.sync.Sync.Mutex, ?_w, ?_set:Bool) {
		if (_mu != null)
			this._mu = _mu;
		if (_w != null)
			this._w = _w;
		if (_set != null)
			this._set = _set;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_testLog(_mu, _w, _set);
	}
}

@:keep class TestDeps_static_extension {
	@:keep
	static public function snapshotCoverage(_:TestDeps):Void
		return;

	@:keep
	static public function resetCoverage(_:TestDeps):Void
		return;

	@:keep
	static public function checkCorpus(_:TestDeps, _vals:Slice<AnyInterface>, _types:Slice<stdgo.reflect.Reflect.Type>):Error
		return ((null : stdgo.Error));

	@:keep
	static public function readCorpus(_:TestDeps, _dir:GoString, _types:Slice<stdgo.reflect.Reflect.Type>):{
		var _0:Slice<{
			var parent:GoString;
			var path:GoString;
			var data:Slice<GoUInt8>;
			var values:Slice<AnyInterface>;
			var generation:GoInt;
			var isSeed:Bool;
		}>;
		var _1:Error;
	}
		return {
			_0: ((null : Slice<{
				var parent:GoString;
				var path:GoString;
				var data:Slice<GoUInt8>;
				var values:Slice<AnyInterface>;
				var generation:GoInt;
				var isSeed:Bool;
			}>)),
			_1: ((null : stdgo.Error))
		};

	@:keep
	static public function runFuzzWorker(_:TestDeps, _fn:({
		var parent:GoString;
		var path:GoString;
		var data:Slice<GoUInt8>;
		var values:Slice<AnyInterface>;
		var generation:GoInt;
		var isSeed:Bool;
	}) -> Error):Error
		return ((null : stdgo.Error));

	@:keep
	static public function coordinateFuzzing(_:TestDeps, _timeout:stdgo.time.Time.Duration, _limit:GoInt64, _minimizeTimeout:stdgo.time.Time.Duration,
			_minimizeLimit:GoInt64, _parallel:GoInt, _seed:Slice<{
			var parent:GoString;
			var path:GoString;
			var data:Slice<GoUInt8>;
			var values:Slice<AnyInterface>;
			var generation:GoInt;
			var isSeed:Bool;
		}>, _types:Slice<stdgo.reflect.Reflect.Type>, _corpusDir:GoString,
			_cacheDir:GoString):Error
		return ((null : stdgo.Error));

	/**
		// SetPanicOnExit0 tells the os package whether to panic on os.Exit(0).
	**/
	@:keep
	static public function setPanicOnExit0(_:TestDeps, _v:Bool):Void
		return;

	@:keep
	static public function stopTestLog(_:TestDeps):Error
		return ((null : stdgo.Error));

	@:keep
	static public function startTestLog(_:TestDeps, _w:stdgo.io.Io.Writer):Void
		return;

	@:keep
	static public function importPath(_:TestDeps):GoString
		return (("" : GoString));

	@:keep
	static public function writeProfileTo(_:TestDeps, _name:GoString, _w:stdgo.io.Io.Writer, _debug:GoInt):Error
		return ((null : stdgo.Error));

	@:keep
	static public function stopCPUProfile(_:TestDeps):Void
		return;

	@:keep
	static public function startCPUProfile(_:TestDeps, _w:stdgo.io.Io.Writer):Error
		return ((null : stdgo.Error));

	@:keep
	static public function matchString(_:TestDeps, _pat:GoString, _str:GoString):{var _0:Bool; var _1:Error;}
		return {_0: false, _1: ((null : stdgo.Error))};
}

class TestDeps_asInterface {
	@:keep
	public var snapshotCoverage:() -> Void = null;
	@:keep
	public var resetCoverage:() -> Void = null;
	@:keep
	public var checkCorpus:(Slice<AnyInterface>, Slice<stdgo.reflect.Reflect.Type>) -> Error = null;
	@:keep
	public var readCorpus:(GoString, Slice<stdgo.reflect.Reflect.Type>) -> {
		var _0:Slice<{
			var parent:GoString;
			var path:GoString;
			var data:Slice<GoUInt8>;
			var values:Slice<AnyInterface>;
			var generation:GoInt;
			var isSeed:Bool;
		}>;
		var _1:Error;
	} = null;
	@:keep
	public var runFuzzWorker:(({
		var parent:GoString;
		var path:GoString;
		var data:Slice<GoUInt8>;
		var values:Slice<AnyInterface>;
		var generation:GoInt;
		var isSeed:Bool;
	}) -> Error) -> Error = null;
	@:keep
	public var coordinateFuzzing:(stdgo.time.Time.Duration, GoInt64, stdgo.time.Time.Duration, GoInt64, GoInt, Slice < {
		var parent:GoString;
		var path:GoString;
		var data:Slice<GoUInt8>;
		var values:Slice<AnyInterface>;
		var generation:GoInt;
		var isSeed:Bool;
	} >, Slice<stdgo.reflect.Reflect.Type>, GoString, GoString) -> Error = null;

	/**
		// SetPanicOnExit0 tells the os package whether to panic on os.Exit(0).
	**/
	@:keep
	public var setPanicOnExit0:Bool->Void = null;

	@:keep
	public var stopTestLog:() -> Error = null;
	@:keep
	public var startTestLog:stdgo.io.Io.Writer->Void = null;
	@:keep
	public var importPath:() -> GoString = null;
	@:keep
	public var writeProfileTo:(GoString, stdgo.io.Io.Writer, GoInt) -> Error = null;
	@:keep
	public var stopCPUProfile:() -> Void = null;
	@:keep
	public var startCPUProfile:stdgo.io.Io.Writer->Error = null;
	@:keep
	public var matchString:(GoString, GoString) -> {
		var _0:Bool;
		var _1:Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:TestDeps;
}

@:keep class T_testLog_static_extension {
	/**
		// add adds the (op, name) pair to the test log.
	**/
	@:keep
	static public function _add(_l:T_testLog, _op:GoString, _name:GoString):Void
		return;

	@:keep
	static public function chdir(_l:T_testLog, _name:GoString):Void
		return;

	@:keep
	static public function stat(_l:T_testLog, _name:GoString):Void
		return;

	@:keep
	static public function open(_l:T_testLog, _name:GoString):Void
		return;

	@:keep
	static public function getenv(_l:T_testLog, _key:GoString):Void
		return;
}

class T_testLog_wrapper {
	/**
		// add adds the (op, name) pair to the test log.
	**/
	@:keep
	public var _add:(GoString, GoString) -> Void = null;

	@:keep
	public var chdir:GoString->Void = null;
	@:keep
	public var stat:GoString->Void = null;
	@:keep
	public var open:GoString->Void = null;
	@:keep
	public var getenv:GoString->Void = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:T_testLog;
}
