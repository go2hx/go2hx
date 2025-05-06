package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_context_static_extension.Context_static_extension) class Context {
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _typeMap : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry>>);
    public var _nextID : stdgo.GoInt = 0;
    public var _originIDs : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, stdgo.GoInt> = (null : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, stdgo.GoInt>);
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_typeMap:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry>>, ?_nextID:stdgo.GoInt, ?_originIDs:stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, stdgo.GoInt>) {
        if (_mu != null) this._mu = _mu;
        if (_typeMap != null) this._typeMap = _typeMap;
        if (_nextID != null) this._nextID = _nextID;
        if (_originIDs != null) this._originIDs = _originIDs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Context(_mu, _typeMap, _nextID, _originIDs);
    }
}
