package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_decEngine_static_extension) abstract T_decEngine(stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine) from stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine to stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine {
    public var _instr(get, set) : Array<T_decInstr>;
    function get__instr():Array<T_decInstr> return [for (i in this._instr) i];
    function set__instr(v:Array<T_decInstr>):Array<T_decInstr> {
        this._instr = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>);
        return v;
    }
    public var _numInstr(get, set) : StdTypes.Int;
    function get__numInstr():StdTypes.Int return this._numInstr;
    function set__numInstr(v:StdTypes.Int):StdTypes.Int {
        this._numInstr = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_instr:Array<T_decInstr>, ?_numInstr:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine(([for (i in _instr) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>), (_numInstr : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
