package stdgo.testing.internal.testdeps;
/**
    // Package testdeps provides access to dependencies needed by test execution.
    //
    // This package is imported by the generated main package, which passes
    // TestDeps into testing.Main. This allows tests to use packages at run time
    // without making those packages direct dependencies of package testing.
    // Direct dependencies of package testing are harder to write tests for.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
var _matchPat = ("" : stdgo.GoString);
/**
    
    
    
**/
var _matchRe = (null : stdgo.StdGoTypes.Ref<stdgo.regexp.Regexp.Regexp>);
/**
    // ImportPath is the import path of the testing binary, set by the generated main function.
    
    
**/
var importPath = ("" : stdgo.GoString);
/**
    
    
    
**/
var _log = ({} : stdgo.testing.internal.testdeps.Testdeps.T_testLog);
/**
    // TestDeps is an implementation of the testing.testDeps interface,
    // suitable for passing to testing.MainStart.
    
    
**/
@:structInit @:using(stdgo.testing.internal.testdeps.Testdeps.TestDeps_static_extension) class TestDeps {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TestDeps();
    }
}
/**
    // testLog implements testlog.Interface, logging actions by package os.
    
    
**/
@:structInit @:private @:using(stdgo.testing.internal.testdeps.Testdeps.T_testLog_static_extension) class T_testLog {
    public var _mu : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public var _w : stdgo.StdGoTypes.Ref<stdgo.bufio.Bufio.Writer> = (null : stdgo.StdGoTypes.Ref<stdgo.bufio.Bufio.Writer>);
    public var _set : Bool = false;
    public function new(?_mu:stdgo.sync.Sync.Mutex, ?_w:stdgo.StdGoTypes.Ref<stdgo.bufio.Bufio.Writer>, ?_set:Bool) {
        if (_mu != null) this._mu = _mu;
        if (_w != null) this._w = _w;
        if (_set != null) this._set = _set;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testLog(_mu, _w, _set);
    }
}
class TestDeps_asInterface {
    @:keep
    public dynamic function snapshotCoverage():Void __self__.value.snapshotCoverage();
    @:keep
    public dynamic function resetCoverage():Void __self__.value.resetCoverage();
    @:keep
    public dynamic function checkCorpus(_vals:stdgo.Slice<stdgo.StdGoTypes.AnyInterface>, _types:stdgo.Slice<stdgo.reflect.Reflect.Type>):stdgo.Error return __self__.value.checkCorpus(_vals, _types);
    @:keep
    public dynamic function readCorpus(_dir:stdgo.GoString, _types:stdgo.Slice<stdgo.reflect.Reflect.Type>):{ var _0 : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var values : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>; var generation : stdgo.StdGoTypes.GoInt; var isSeed : Bool; }>; var _1 : stdgo.Error; } return __self__.value.readCorpus(_dir, _types);
    @:keep
    public dynamic function runFuzzWorker(_fn:({ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var values : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>; var generation : stdgo.StdGoTypes.GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error return __self__.value.runFuzzWorker(_fn);
    @:keep
    public dynamic function coordinateFuzzing(_timeout:stdgo.time.Time.Duration, _limit:stdgo.StdGoTypes.GoInt64, _minimizeTimeout:stdgo.time.Time.Duration, _minimizeLimit:stdgo.StdGoTypes.GoInt64, _parallel:stdgo.StdGoTypes.GoInt, _seed:stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var values : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>; var generation : stdgo.StdGoTypes.GoInt; var isSeed : Bool; }>, _types:stdgo.Slice<stdgo.reflect.Reflect.Type>, _corpusDir:stdgo.GoString, _cacheDir:stdgo.GoString):stdgo.Error return __self__.value.coordinateFuzzing(_timeout, _limit, _minimizeTimeout, _minimizeLimit, _parallel, _seed, _types, _corpusDir, _cacheDir);
    /**
        // SetPanicOnExit0 tells the os package whether to panic on os.Exit(0).
    **/
    @:keep
    public dynamic function setPanicOnExit0(_v:Bool):Void __self__.value.setPanicOnExit0(_v);
    @:keep
    public dynamic function stopTestLog():stdgo.Error return __self__.value.stopTestLog();
    @:keep
    public dynamic function startTestLog(_w:stdgo.io.Io.Writer):Void __self__.value.startTestLog(_w);
    @:keep
    public dynamic function importPath():stdgo.GoString return __self__.value.importPath();
    @:keep
    public dynamic function writeProfileTo(_name:stdgo.GoString, _w:stdgo.io.Io.Writer, _debug:stdgo.StdGoTypes.GoInt):stdgo.Error return __self__.value.writeProfileTo(_name, _w, _debug);
    @:keep
    public dynamic function stopCPUProfile():Void __self__.value.stopCPUProfile();
    @:keep
    public dynamic function startCPUProfile(_w:stdgo.io.Io.Writer):stdgo.Error return __self__.value.startCPUProfile(_w);
    @:keep
    public dynamic function matchString(_pat:stdgo.GoString, _str:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return __self__.value.matchString(_pat, _str);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TestDeps>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.internal.testdeps.Testdeps.TestDeps_asInterface) class TestDeps_static_extension {
    @:keep
    static public function snapshotCoverage( _:TestDeps):Void throw "TestDeps:testing.internal.testdeps.snapshotCoverage is not yet implemented";
    @:keep
    static public function resetCoverage( _:TestDeps):Void throw "TestDeps:testing.internal.testdeps.resetCoverage is not yet implemented";
    @:keep
    static public function checkCorpus( _:TestDeps, _vals:stdgo.Slice<stdgo.StdGoTypes.AnyInterface>, _types:stdgo.Slice<stdgo.reflect.Reflect.Type>):stdgo.Error throw "TestDeps:testing.internal.testdeps.checkCorpus is not yet implemented";
    @:keep
    static public function readCorpus( _:TestDeps, _dir:stdgo.GoString, _types:stdgo.Slice<stdgo.reflect.Reflect.Type>):{ var _0 : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var values : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>; var generation : stdgo.StdGoTypes.GoInt; var isSeed : Bool; }>; var _1 : stdgo.Error; } throw "TestDeps:testing.internal.testdeps.readCorpus is not yet implemented";
    @:keep
    static public function runFuzzWorker( _:TestDeps, _fn:({ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var values : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>; var generation : stdgo.StdGoTypes.GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error throw "TestDeps:testing.internal.testdeps.runFuzzWorker is not yet implemented";
    @:keep
    static public function coordinateFuzzing( _:TestDeps, _timeout:stdgo.time.Time.Duration, _limit:stdgo.StdGoTypes.GoInt64, _minimizeTimeout:stdgo.time.Time.Duration, _minimizeLimit:stdgo.StdGoTypes.GoInt64, _parallel:stdgo.StdGoTypes.GoInt, _seed:stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var values : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>; var generation : stdgo.StdGoTypes.GoInt; var isSeed : Bool; }>, _types:stdgo.Slice<stdgo.reflect.Reflect.Type>, _corpusDir:stdgo.GoString, _cacheDir:stdgo.GoString):stdgo.Error throw "TestDeps:testing.internal.testdeps.coordinateFuzzing is not yet implemented";
    /**
        // SetPanicOnExit0 tells the os package whether to panic on os.Exit(0).
    **/
    @:keep
    static public function setPanicOnExit0( _:TestDeps, _v:Bool):Void throw "TestDeps:testing.internal.testdeps.setPanicOnExit0 is not yet implemented";
    @:keep
    static public function stopTestLog( _:TestDeps):stdgo.Error throw "TestDeps:testing.internal.testdeps.stopTestLog is not yet implemented";
    @:keep
    static public function startTestLog( _:TestDeps, _w:stdgo.io.Io.Writer):Void throw "TestDeps:testing.internal.testdeps.startTestLog is not yet implemented";
    @:keep
    static public function importPath( _:TestDeps):stdgo.GoString throw "TestDeps:testing.internal.testdeps.importPath is not yet implemented";
    @:keep
    static public function writeProfileTo( _:TestDeps, _name:stdgo.GoString, _w:stdgo.io.Io.Writer, _debug:stdgo.StdGoTypes.GoInt):stdgo.Error throw "TestDeps:testing.internal.testdeps.writeProfileTo is not yet implemented";
    @:keep
    static public function stopCPUProfile( _:TestDeps):Void throw "TestDeps:testing.internal.testdeps.stopCPUProfile is not yet implemented";
    @:keep
    static public function startCPUProfile( _:TestDeps, _w:stdgo.io.Io.Writer):stdgo.Error throw "TestDeps:testing.internal.testdeps.startCPUProfile is not yet implemented";
    @:keep
    static public function matchString( _:TestDeps, _pat:stdgo.GoString, _str:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } throw "TestDeps:testing.internal.testdeps.matchString is not yet implemented";
}
class T_testLog_asInterface {
    /**
        // add adds the (op, name) pair to the test log.
    **/
    @:keep
    public dynamic function _add(_op:stdgo.GoString, _name:stdgo.GoString):Void __self__.value._add(_op, _name);
    @:keep
    public dynamic function chdir(_name:stdgo.GoString):Void __self__.value.chdir(_name);
    @:keep
    public dynamic function stat(_name:stdgo.GoString):Void __self__.value.stat(_name);
    @:keep
    public dynamic function open(_name:stdgo.GoString):Void __self__.value.open(_name);
    @:keep
    public dynamic function getenv(_key:stdgo.GoString):Void __self__.value.getenv(_key);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testLog>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.internal.testdeps.Testdeps.T_testLog_asInterface) class T_testLog_static_extension {
    /**
        // add adds the (op, name) pair to the test log.
    **/
    @:keep
    static public function _add( _l:stdgo.StdGoTypes.Ref<T_testLog>, _op:stdgo.GoString, _name:stdgo.GoString):Void throw "T_testLog:testing.internal.testdeps._add is not yet implemented";
    @:keep
    static public function chdir( _l:stdgo.StdGoTypes.Ref<T_testLog>, _name:stdgo.GoString):Void throw "T_testLog:testing.internal.testdeps.chdir is not yet implemented";
    @:keep
    static public function stat( _l:stdgo.StdGoTypes.Ref<T_testLog>, _name:stdgo.GoString):Void throw "T_testLog:testing.internal.testdeps.stat is not yet implemented";
    @:keep
    static public function open( _l:stdgo.StdGoTypes.Ref<T_testLog>, _name:stdgo.GoString):Void throw "T_testLog:testing.internal.testdeps.open is not yet implemented";
    @:keep
    static public function getenv( _l:stdgo.StdGoTypes.Ref<T_testLog>, _key:stdgo.GoString):Void throw "T_testLog:testing.internal.testdeps.getenv is not yet implemented";
}
