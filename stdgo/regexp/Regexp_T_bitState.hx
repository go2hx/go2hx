package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_bitState_static_extension) abstract T_bitState(stdgo._internal.regexp.Regexp_T_bitState.T_bitState) from stdgo._internal.regexp.Regexp_T_bitState.T_bitState to stdgo._internal.regexp.Regexp_T_bitState.T_bitState {
    public var _end(get, set) : StdTypes.Int;
    function get__end():StdTypes.Int return this._end;
    function set__end(v:StdTypes.Int):StdTypes.Int {
        this._end = (v : stdgo.GoInt);
        return v;
    }
    public var _cap(get, set) : Array<StdTypes.Int>;
    function get__cap():Array<StdTypes.Int> return [for (i in this._cap) i];
    function set__cap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._cap = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _matchcap(get, set) : Array<StdTypes.Int>;
    function get__matchcap():Array<StdTypes.Int> return [for (i in this._matchcap) i];
    function set__matchcap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._matchcap = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _jobs(get, set) : Array<T_job>;
    function get__jobs():Array<T_job> return [for (i in this._jobs) i];
    function set__jobs(v:Array<T_job>):Array<T_job> {
        this._jobs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_T_job.T_job>);
        return v;
    }
    public var _visited(get, set) : Array<std.UInt>;
    function get__visited():Array<std.UInt> return [for (i in this._visited) i];
    function set__visited(v:Array<std.UInt>):Array<std.UInt> {
        this._visited = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _inputs(get, set) : T_inputs;
    function get__inputs():T_inputs return this._inputs;
    function set__inputs(v:T_inputs):T_inputs {
        this._inputs = v;
        return v;
    }
    public function new(?_end:StdTypes.Int, ?_cap:Array<StdTypes.Int>, ?_matchcap:Array<StdTypes.Int>, ?_jobs:Array<T_job>, ?_visited:Array<std.UInt>, ?_inputs:T_inputs) this = new stdgo._internal.regexp.Regexp_T_bitState.T_bitState((_end : stdgo.GoInt), ([for (i in _cap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), ([for (i in _matchcap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), ([for (i in _jobs) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_T_job.T_job>), ([for (i in _visited) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>), _inputs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
