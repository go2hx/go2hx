package stdgo._internal.testing;
@:structInit class T_fuzzContext {
    public var _deps : stdgo._internal.testing.Testing_T_testDeps.T_testDeps = (null : stdgo._internal.testing.Testing_T_testDeps.T_testDeps);
    public var _mode : stdgo._internal.testing.Testing_T_fuzzMode.T_fuzzMode = ((0 : stdgo.GoUInt8) : stdgo._internal.testing.Testing_T_fuzzMode.T_fuzzMode);
    public function new(?_deps:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, ?_mode:stdgo._internal.testing.Testing_T_fuzzMode.T_fuzzMode) {
        if (_deps != null) this._deps = _deps;
        if (_mode != null) this._mode = _mode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fuzzContext(_deps, _mode);
    }
}
