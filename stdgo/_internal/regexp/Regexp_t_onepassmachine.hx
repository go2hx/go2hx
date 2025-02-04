package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_onepassmachine_static_extension.T_onePassMachine_static_extension) class T_onePassMachine {
    public var _inputs : stdgo._internal.regexp.Regexp_t_inputs.T_inputs = ({} : stdgo._internal.regexp.Regexp_t_inputs.T_inputs);
    public var _matchcap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_inputs:stdgo._internal.regexp.Regexp_t_inputs.T_inputs, ?_matchcap:stdgo.Slice<stdgo.GoInt>) {
        if (_inputs != null) this._inputs = _inputs;
        if (_matchcap != null) this._matchcap = _matchcap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_onePassMachine(_inputs, _matchcap);
    }
}
