package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_onePassMachine_static_extension) abstract T_onePassMachine(stdgo._internal.regexp.Regexp_T_onePassMachine.T_onePassMachine) from stdgo._internal.regexp.Regexp_T_onePassMachine.T_onePassMachine to stdgo._internal.regexp.Regexp_T_onePassMachine.T_onePassMachine {
    public var _inputs(get, set) : T_inputs;
    function get__inputs():T_inputs return this._inputs;
    function set__inputs(v:T_inputs):T_inputs {
        this._inputs = v;
        return v;
    }
    public var _matchcap(get, set) : Array<StdTypes.Int>;
    function get__matchcap():Array<StdTypes.Int> return [for (i in this._matchcap) i];
    function set__matchcap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._matchcap = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_inputs:T_inputs, ?_matchcap:Array<StdTypes.Int>) this = new stdgo._internal.regexp.Regexp_T_onePassMachine.T_onePassMachine(_inputs, ([for (i in _matchcap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
