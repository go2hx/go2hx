package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.T_fuzzContext_static_extension) abstract T_fuzzContext(stdgo._internal.testing.Testing_T_fuzzContext.T_fuzzContext) from stdgo._internal.testing.Testing_T_fuzzContext.T_fuzzContext to stdgo._internal.testing.Testing_T_fuzzContext.T_fuzzContext {
    public var _deps(get, set) : T_testDeps;
    function get__deps():T_testDeps return this._deps;
    function set__deps(v:T_testDeps):T_testDeps {
        this._deps = v;
        return v;
    }
    public var _mode(get, set) : T_fuzzMode;
    function get__mode():T_fuzzMode return this._mode;
    function set__mode(v:T_fuzzMode):T_fuzzMode {
        this._mode = v;
        return v;
    }
    public function new(?_deps:T_testDeps, ?_mode:T_fuzzMode) this = new stdgo._internal.testing.Testing_T_fuzzContext.T_fuzzContext(_deps, _mode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
