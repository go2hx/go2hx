package stdgo._internal.encoding.gob;
@:structInit class T_decEngine {
    public var _instr : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr> = (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>);
    public var _numInstr : stdgo.GoInt = 0;
    public function new(?_instr:stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, ?_numInstr:stdgo.GoInt) {
        if (_instr != null) this._instr = _instr;
        if (_numInstr != null) this._numInstr = _numInstr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decEngine(_instr, _numInstr);
    }
}
