package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_encengine_static_extension.T_encEngine_static_extension) class T_encEngine {
    public var _instr : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr> = (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
    public function new(?_instr:stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>) {
        if (_instr != null) this._instr = _instr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encEngine(_instr);
    }
}
