package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_scavChunkData_static_extension) abstract T_scavChunkData(stdgo._internal.runtime.Runtime_T_scavChunkData.T_scavChunkData) from stdgo._internal.runtime.Runtime_T_scavChunkData.T_scavChunkData to stdgo._internal.runtime.Runtime_T_scavChunkData.T_scavChunkData {
    public function new() this = new stdgo._internal.runtime.Runtime_T_scavChunkData.T_scavChunkData();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
