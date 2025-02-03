package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_liveUserArenaChunk_static_extension) abstract T_liveUserArenaChunk(stdgo._internal.runtime.Runtime_T_liveUserArenaChunk.T_liveUserArenaChunk) from stdgo._internal.runtime.Runtime_T_liveUserArenaChunk.T_liveUserArenaChunk to stdgo._internal.runtime.Runtime_T_liveUserArenaChunk.T_liveUserArenaChunk {
    public function new() this = new stdgo._internal.runtime.Runtime_T_liveUserArenaChunk.T_liveUserArenaChunk();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
