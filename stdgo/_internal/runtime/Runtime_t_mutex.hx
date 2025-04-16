package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_mutex_static_extension.T_mutex_static_extension) class T_mutex {
    @:embedded
    public var _lockRankStruct : stdgo._internal.runtime.Runtime_t_lockrankstruct.T_lockRankStruct = ({} : stdgo._internal.runtime.Runtime_t_lockrankstruct.T_lockRankStruct);
    public function new(?_lockRankStruct:stdgo._internal.runtime.Runtime_t_lockrankstruct.T_lockRankStruct) {
        if (_lockRankStruct != null) this._lockRankStruct = _lockRankStruct;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mutex(_lockRankStruct);
    }
}
