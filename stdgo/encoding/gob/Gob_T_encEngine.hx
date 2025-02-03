package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_encEngine_static_extension) abstract T_encEngine(stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine) from stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine to stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine {
    public var _instr(get, set) : Array<T_encInstr>;
    function get__instr():Array<T_encInstr> return [for (i in this._instr) i];
    function set__instr(v:Array<T_encInstr>):Array<T_encInstr> {
        this._instr = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>);
        return v;
    }
    public function new(?_instr:Array<T_encInstr>) this = new stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine(([for (i in _instr) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
