package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_t_matcher_static_extension.T_matcher_static_extension) class T_matcher {
    public var _filter : stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch = (null : stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch);
    public var _skip : stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch = (null : stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch);
    public var _matchFunc : (stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; } = null;
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _subNames : stdgo.GoMap<stdgo.GoString, stdgo.GoInt32> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt32>);
    public function new(?_filter:stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch, ?_skip:stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch, ?_matchFunc:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_subNames:stdgo.GoMap<stdgo.GoString, stdgo.GoInt32>) {
        if (_filter != null) this._filter = _filter;
        if (_skip != null) this._skip = _skip;
        if (_matchFunc != null) this._matchFunc = _matchFunc;
        if (_mu != null) this._mu = _mu;
        if (_subNames != null) this._subNames = _subNames;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_matcher(_filter, _skip, _matchFunc, _mu, _subNames);
    }
}
