package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_lockRankStruct_static_extension) abstract T_lockRankStruct(stdgo._internal.runtime.Runtime_T_lockRankStruct.T_lockRankStruct) from stdgo._internal.runtime.Runtime_T_lockRankStruct.T_lockRankStruct to stdgo._internal.runtime.Runtime_T_lockRankStruct.T_lockRankStruct {
    public function new() this = new stdgo._internal.runtime.Runtime_T_lockRankStruct.T_lockRankStruct();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
