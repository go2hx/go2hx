package stdgo.testing.internal.testdeps;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Package testdeps provides access to dependencies needed by test execution.
	//
	// This package is imported by the generated main package, which passes
	// TestDeps into testing.Main. This allows tests to use packages at run time
	// without making those packages direct dependencies of package testing.
	// Direct dependencies of package testing are harder to write tests for.
**/
private var __go2hxdoc__package:Bool;

private var _matchPat:GoString = ("" : GoString);
private var _matchRe:Ref<stdgo.regexp.Regexp.Regexp> = (null : stdgo.regexp.Regexp.Regexp);

/**
	// ImportPath is the import path of the testing binary, set by the generated main function.
**/
var importPath:GoString = ("" : GoString);

private var _log:T_testLog = ({} : T_testLog);

/**
	// TestDeps is an implementation of the testing.testDeps interface,
	// suitable for passing to testing.MainStart.
**/
@:structInit @:using(stdgo.testing.internal.testdeps.Testdeps.TestDeps_static_extension) class TestDeps {
	public function new() {}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new TestDeps();
	}
}

/**
	// testLog implements testlog.Interface, logging actions by package os.
**/
@:structInit @:using(stdgo.testing.internal.testdeps.Testdeps.T_testLog_static_extension) private class T_testLog {
	public var _mu:stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
	public var _w:Ref<stdgo.bufio.Bufio.Writer> = (null : stdgo.bufio.Bufio.Writer);
	public var _set:Bool = false;

	public function new(?_mu:stdgo.sync.Sync.Mutex, ?_w:Ref<stdgo.bufio.Bufio.Writer>, ?_set:Bool) {
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

class TestDeps_asInterface {
	@:keep
	public function snapshotCoverage():Void
		__self__.value.snapshotCoverage();

	@:keep
	public function resetCoverage():Void
		__self__.value.resetCoverage();

	@:keep
	public function checkCorpus(_vals:Slice<AnyInterface>, _types:Slice<stdgo.reflect.Reflect.Type>):Error
		return __self__.value.checkCorpus(_vals, _types);

	@:keep
	public function readCorpus(_dir:GoString, _types:Slice<stdgo.reflect.Reflect.Type>):{var _0:Slice<{
		var parent:GoString;
		var path:GoString;
		var data:Slice<GoUInt8>;
		var values:Slice<AnyInterface>;
		var generation:GoInt;
		var isSeed:Bool;
	}>; var _1:Error;}
		return __self__.value.readCorpus(_dir, _types);

	@:keep
	public function runFuzzWorker(_fn:({
		var parent:GoString;
		var path:GoString;
		var data:Slice<GoUInt8>;
		var values:Slice<AnyInterface>;
		var generation:GoInt;
		var isSeed:Bool;
	}) -> Error):Error
		return __self__.value.runFuzzWorker(_fn);

	@:keep
	public function coordinateFuzzing(_timeout:stdgo.time.Time.Duration, _limit:GoInt64, _minimizeTimeout:stdgo.time.Time.Duration, _minimizeLimit:GoInt64,
			_parallel:GoInt, _seed:Slice<{
			var parent:GoString;
			var path:GoString;
			var data:Slice<GoUInt8>;
			var values:Slice<AnyInterface>;
			var generation:GoInt;
			var isSeed:Bool;
		}>, _types:Slice<stdgo.reflect.Reflect.Type>, _corpusDir:GoString,
			_cacheDir:GoString):Error
		return __self__.value.coordinateFuzzing(_timeout, _limit, _minimizeTimeout, _minimizeLimit, _parallel, _seed, _types, _corpusDir, _cacheDir);

	/**
		// SetPanicOnExit0 tells the os package whether to panic on os.Exit(0).
	**/
	@:keep
	public function setPanicOnExit0(_v:Bool):Void
		__self__.value.setPanicOnExit0(_v);

	@:keep
	public function stopTestLog():Error
		return __self__.value.stopTestLog();

	@:keep
	public function startTestLog(_w:stdgo.io.Io.Writer):Void
		__self__.value.startTestLog(_w);

	@:keep
	public function importPath():GoString
		return __self__.value.importPath();

	@:keep
	public function writeProfileTo(_name:GoString, _w:stdgo.io.Io.Writer, _debug:GoInt):Error
		return __self__.value.writeProfileTo(_name, _w, _debug);

	@:keep
	public function stopCPUProfile():Void
		__self__.value.stopCPUProfile();

	@:keep
	public function startCPUProfile(_w:stdgo.io.Io.Writer):Error
		return __self__.value.startCPUProfile(_w);

	@:keep
	public function matchString(_pat:GoString, _str:GoString):{var _0:Bool; var _1:Error;}
		return __self__.value.matchString(_pat, _str);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? __self__.value : __self__, __type__);

	var __self__:Pointer<TestDeps>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.testing.internal.testdeps.Testdeps.TestDeps_asInterface) class TestDeps_static_extension {
	@:keep
	static public function snapshotCoverage(_:TestDeps):Void
		throw "testing.internal.testdeps.snapshotCoverage is not yet implemented";

	@:keep
	static public function resetCoverage(_:TestDeps):Void
		throw "testing.internal.testdeps.resetCoverage is not yet implemented";

	@:keep
	static public function checkCorpus(_:TestDeps, _vals:Slice<AnyInterface>, _types:Slice<stdgo.reflect.Reflect.Type>):Error
		throw "testing.internal.testdeps.checkCorpus is not yet implemented";

	@:keep
	static public function readCorpus(_:TestDeps, _dir:GoString, _types:Slice<stdgo.reflect.Reflect.Type>):{var _0:Slice<{
		var parent:GoString;
		var path:GoString;
		var data:Slice<GoUInt8>;
		var values:Slice<AnyInterface>;
		var generation:GoInt;
		var isSeed:Bool;
	}>; var _1:Error;}
		throw "testing.internal.testdeps.readCorpus is not yet implemented";

	@:keep
	static public function runFuzzWorker(_:TestDeps, _fn:({
		var parent:GoString;
		var path:GoString;
		var data:Slice<GoUInt8>;
		var values:Slice<AnyInterface>;
		var generation:GoInt;
		var isSeed:Bool;
	}) -> Error):Error
		throw "testing.internal.testdeps.runFuzzWorker is not yet implemented";

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
		throw "testing.internal.testdeps.coordinateFuzzing is not yet implemented";

	/**
		// SetPanicOnExit0 tells the os package whether to panic on os.Exit(0).
	**/
	@:keep
	static public function setPanicOnExit0(_:TestDeps, _v:Bool):Void
		throw "testing.internal.testdeps.setPanicOnExit0 is not yet implemented";

	@:keep
	static public function stopTestLog(_:TestDeps):Error
		throw "testing.internal.testdeps.stopTestLog is not yet implemented";

	@:keep
	static public function startTestLog(_:TestDeps, _w:stdgo.io.Io.Writer):Void
		throw "testing.internal.testdeps.startTestLog is not yet implemented";

	@:keep
	static public function importPath(_:TestDeps):GoString
		throw "testing.internal.testdeps.importPath is not yet implemented";

	@:keep
	static public function writeProfileTo(_:TestDeps, _name:GoString, _w:stdgo.io.Io.Writer, _debug:GoInt):Error
		throw "testing.internal.testdeps.writeProfileTo is not yet implemented";

	@:keep
	static public function stopCPUProfile(_:TestDeps):Void
		throw "testing.internal.testdeps.stopCPUProfile is not yet implemented";

	@:keep
	static public function startCPUProfile(_:TestDeps, _w:stdgo.io.Io.Writer):Error
		throw "testing.internal.testdeps.startCPUProfile is not yet implemented";

	@:keep
	static public function matchString(_:TestDeps, _pat:GoString, _str:GoString):{var _0:Bool; var _1:Error;}
		throw "testing.internal.testdeps.matchString is not yet implemented";
}

private class T_testLog_asInterface {
	/**
		// add adds the (op, name) pair to the test log.
	**/
	@:keep
	public function _add(_op:GoString, _name:GoString):Void
		__self__.value._add(_op, _name);

	@:keep
	public function chdir(_name:GoString):Void
		__self__.value.chdir(_name);

	@:keep
	public function stat(_name:GoString):Void
		__self__.value.stat(_name);

	@:keep
	public function open(_name:GoString):Void
		__self__.value.open(_name);

	@:keep
	public function getenv(_key:GoString):Void
		__self__.value.getenv(_key);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? __self__.value : __self__, __type__);

	var __self__:Pointer<T_testLog>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.testing.internal.testdeps.Testdeps.T_testLog_asInterface) class T_testLog_static_extension {
	/**
		// add adds the (op, name) pair to the test log.
	**/
	@:keep
	static public function _add(_l:Ref<T_testLog>, _op:GoString, _name:GoString):Void
		throw "testing.internal.testdeps._add is not yet implemented";

	@:keep
	static public function chdir(_l:Ref<T_testLog>, _name:GoString):Void
		throw "testing.internal.testdeps.chdir is not yet implemented";

	@:keep
	static public function stat(_l:Ref<T_testLog>, _name:GoString):Void
		throw "testing.internal.testdeps.stat is not yet implemented";

	@:keep
	static public function open(_l:Ref<T_testLog>, _name:GoString):Void
		throw "testing.internal.testdeps.open is not yet implemented";

	@:keep
	static public function getenv(_l:Ref<T_testLog>, _key:GoString):Void
		throw "testing.internal.testdeps.getenv is not yet implemented";
}
