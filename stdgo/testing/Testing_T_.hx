package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.T__static_extension) abstract T_(stdgo._internal.testing.Testing_T_.T_) from stdgo._internal.testing.Testing_T_.T_ to stdgo._internal.testing.Testing_T_.T_ {
    public var _common(get, set) : T_common;
    function get__common():T_common return this._common;
    function set__common(v:T_common):T_common {
        this._common = v;
        return v;
    }
    public var _isEnvSet(get, set) : Bool;
    function get__isEnvSet():Bool return this._isEnvSet;
    function set__isEnvSet(v:Bool):Bool {
        this._isEnvSet = v;
        return v;
    }
    public var _context(get, set) : T_testContext;
    function get__context():T_testContext return this._context;
    function set__context(v:T_testContext):T_testContext {
        this._context = (v : stdgo.Ref<stdgo._internal.testing.Testing_T_testContext.T_testContext>);
        return v;
    }
    public function new(?_common:T_common, ?_isEnvSet:Bool, ?_context:T_testContext, ?output:StringBuf) this = new stdgo._internal.testing.Testing_T_.T_(_common, _isEnvSet, (_context : stdgo.Ref<stdgo._internal.testing.Testing_T_testContext.T_testContext>), output);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
