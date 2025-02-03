package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_atomicScavChunkData_static_extension) abstract T_atomicScavChunkData(stdgo._internal.runtime.Runtime_T_atomicScavChunkData.T_atomicScavChunkData) from stdgo._internal.runtime.Runtime_T_atomicScavChunkData.T_atomicScavChunkData to stdgo._internal.runtime.Runtime_T_atomicScavChunkData.T_atomicScavChunkData {
    public function new() this = new stdgo._internal.runtime.Runtime_T_atomicScavChunkData.T_atomicScavChunkData();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
