package stdgo._internal.compress.flate;
@:structInit @:using(stdgo._internal.compress.flate.Flate_t_literalnode_static_extension.T_literalNode_static_extension) class T_literalNode {
    public var _literal : stdgo.GoUInt16 = 0;
    public var _freq : stdgo.GoInt32 = 0;
    public function new(?_literal:stdgo.GoUInt16, ?_freq:stdgo.GoInt32) {
        if (_literal != null) this._literal = _literal;
        if (_freq != null) this._freq = _freq;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_literalNode(_literal, _freq);
    }
}
