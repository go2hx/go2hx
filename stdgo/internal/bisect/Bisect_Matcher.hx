package stdgo.internal.bisect;
@:structInit @:using(stdgo.internal.bisect.Bisect.Matcher_static_extension) abstract Matcher(stdgo._internal.internal.bisect.Bisect_Matcher.Matcher) from stdgo._internal.internal.bisect.Bisect_Matcher.Matcher to stdgo._internal.internal.bisect.Bisect_Matcher.Matcher {
    public var _verbose(get, set) : Bool;
    function get__verbose():Bool return this._verbose;
    function set__verbose(v:Bool):Bool {
        this._verbose = v;
        return v;
    }
    public var _quiet(get, set) : Bool;
    function get__quiet():Bool return this._quiet;
    function set__quiet(v:Bool):Bool {
        this._quiet = v;
        return v;
    }
    public var _enable(get, set) : Bool;
    function get__enable():Bool return this._enable;
    function set__enable(v:Bool):Bool {
        this._enable = v;
        return v;
    }
    public var _list(get, set) : Array<T_cond>;
    function get__list():Array<T_cond> return [for (i in this._list) i];
    function set__list(v:Array<T_cond>):Array<T_cond> {
        this._list = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.bisect.Bisect_T_cond.T_cond>);
        return v;
    }
    public var _dedup(get, set) : T_atomicPointerDedup;
    function get__dedup():T_atomicPointerDedup return this._dedup;
    function set__dedup(v:T_atomicPointerDedup):T_atomicPointerDedup {
        this._dedup = v;
        return v;
    }
    public function new(?_verbose:Bool, ?_quiet:Bool, ?_enable:Bool, ?_list:Array<T_cond>, ?_dedup:T_atomicPointerDedup) this = new stdgo._internal.internal.bisect.Bisect_Matcher.Matcher(_verbose, _quiet, _enable, ([for (i in _list) i] : stdgo.Slice<stdgo._internal.internal.bisect.Bisect_T_cond.T_cond>), _dedup);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
