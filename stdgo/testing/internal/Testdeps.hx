package stdgo.testing.internal;
/**
    Package testdeps provides access to dependencies needed by test execution.
    
    This package is imported by the generated main package, which passes
    TestDeps into testing.Main. This allows tests to use packages at run time
    without making those packages direct dependencies of package testing.
    Direct dependencies of package testing are harder to write tests for.
**/
private var __go2hxdoc__package : Bool;
var importPath(get, set) : String;
private function get_importPath():String return stdgo._internal.testing.internal.testdeps.Testdeps.importPath;
private function set_importPath(v:String):String {
        stdgo._internal.testing.internal.testdeps.Testdeps.importPath = v;
        return v;
    }
abstract TestDeps(stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps) from stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps to stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps {
    public function new() this = new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testLog(stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog) from stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog to stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog {
    public var _mu(get, set) : stdgo._internal.sync.Sync.Mutex;
    function get__mu():stdgo._internal.sync.Sync.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync.Mutex):stdgo._internal.sync.Sync.Mutex {
        this._mu = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.bufio.Bufio.Writer;
    function get__w():stdgo._internal.bufio.Bufio.Writer return this._w;
    function set__w(v:stdgo._internal.bufio.Bufio.Writer):stdgo._internal.bufio.Bufio.Writer {
        this._w = v;
        return v;
    }
    public var _set(get, set) : Bool;
    function get__set():Bool return this._set;
    function set__set(v:Bool):Bool {
        this._set = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync.Mutex, ?_w:stdgo._internal.bufio.Bufio.Writer, ?_set:Bool) this = new stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog(_mu, _w, _set);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Testdeps {

}
