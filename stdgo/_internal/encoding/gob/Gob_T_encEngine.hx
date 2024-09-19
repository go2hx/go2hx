package stdgo._internal.encoding.gob;
@:structInit class T_encEngine {
    public var _instr : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr> = (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>);
    public function new(?_instr:stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>) {
        if (_instr != null) this._instr = _instr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encEngine(_instr);
    }
}
