package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_scavchunkdata_static_extension.T_scavChunkData_static_extension) class T_scavChunkData {
    @:embedded
    public var _scavChunkFlags : stdgo._internal.runtime.Runtime_t_scavchunkflags.T_scavChunkFlags = ((0 : stdgo.GoUInt8) : stdgo._internal.runtime.Runtime_t_scavchunkflags.T_scavChunkFlags);
    public function new(?_scavChunkFlags:stdgo._internal.runtime.Runtime_t_scavchunkflags.T_scavChunkFlags) {
        if (_scavChunkFlags != null) this._scavChunkFlags = _scavChunkFlags;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_scavChunkData(_scavChunkFlags);
    }
}
