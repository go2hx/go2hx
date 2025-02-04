package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_bitstate_static_extension.T_bitState_static_extension) class T_bitState {
    public var _end : stdgo.GoInt = 0;
    public var _cap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _matchcap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _jobs : stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job> = (null : stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job>);
    public var _visited : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _inputs : stdgo._internal.regexp.Regexp_t_inputs.T_inputs = ({} : stdgo._internal.regexp.Regexp_t_inputs.T_inputs);
    public function new(?_end:stdgo.GoInt, ?_cap:stdgo.Slice<stdgo.GoInt>, ?_matchcap:stdgo.Slice<stdgo.GoInt>, ?_jobs:stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job>, ?_visited:stdgo.Slice<stdgo.GoUInt32>, ?_inputs:stdgo._internal.regexp.Regexp_t_inputs.T_inputs) {
        if (_end != null) this._end = _end;
        if (_cap != null) this._cap = _cap;
        if (_matchcap != null) this._matchcap = _matchcap;
        if (_jobs != null) this._jobs = _jobs;
        if (_visited != null) this._visited = _visited;
        if (_inputs != null) this._inputs = _inputs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bitState(_end, _cap, _matchcap, _jobs, _visited, _inputs);
    }
}
