package stdgo._internal.hash.fnv;
@:structInit @:using(stdgo._internal.hash.fnv.Fnv_t_golden_static_extension.T_golden_static_extension) class T_golden {
    public var _out : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _in : stdgo.GoString = "";
    public var _halfState : stdgo.GoString = "";
    public function new(?_out:stdgo.Slice<stdgo.GoUInt8>, ?_in:stdgo.GoString, ?_halfState:stdgo.GoString) {
        if (_out != null) this._out = _out;
        if (_in != null) this._in = _in;
        if (_halfState != null) this._halfState = _halfState;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_golden(_out, _in, _halfState);
    }
}
