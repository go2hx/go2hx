package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.T_matcher_static_extension) abstract T_matcher(stdgo._internal.testing.Testing_T_matcher.T_matcher) from stdgo._internal.testing.Testing_T_matcher.T_matcher to stdgo._internal.testing.Testing_T_matcher.T_matcher {
    public var _filter(get, set) : T_filterMatch;
    function get__filter():T_filterMatch return this._filter;
    function set__filter(v:T_filterMatch):T_filterMatch {
        this._filter = v;
        return v;
    }
    public var _skip(get, set) : T_filterMatch;
    function get__skip():T_filterMatch return this._skip;
    function set__skip(v:T_filterMatch):T_filterMatch {
        this._skip = v;
        return v;
    }
    public var _matchFunc(get, set) : (stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; };
    function get__matchFunc():(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; } return (_0, _1) -> this._matchFunc(_0, _1);
    function set__matchFunc(v:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; } {
        this._matchFunc = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _subNames(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt32>;
    function get__subNames():stdgo.GoMap<stdgo.GoString, stdgo.GoInt32> return this._subNames;
    function set__subNames(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt32>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt32> {
        this._subNames = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoInt32>);
        return v;
    }
    public function new(?_filter:T_filterMatch, ?_skip:T_filterMatch, ?_matchFunc:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_subNames:stdgo.GoMap<stdgo.GoString, stdgo.GoInt32>) this = new stdgo._internal.testing.Testing_T_matcher.T_matcher(_filter, _skip, _matchFunc, _mu, (_subNames : stdgo.GoMap<stdgo.GoString, stdgo.GoInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
