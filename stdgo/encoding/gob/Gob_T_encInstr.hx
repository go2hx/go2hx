package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_encInstr_static_extension) abstract T_encInstr(stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr) from stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr to stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr {
    public var _op(get, set) : T_encOp;
    function get__op():T_encOp return this._op;
    function set__op(v:T_encOp):T_encOp {
        this._op = v;
        return v;
    }
    public var _field(get, set) : StdTypes.Int;
    function get__field():StdTypes.Int return this._field;
    function set__field(v:StdTypes.Int):StdTypes.Int {
        this._field = (v : stdgo.GoInt);
        return v;
    }
    public var _index(get, set) : Array<StdTypes.Int>;
    function get__index():Array<StdTypes.Int> return [for (i in this._index) i];
    function set__index(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._index = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _indir(get, set) : StdTypes.Int;
    function get__indir():StdTypes.Int return this._indir;
    function set__indir(v:StdTypes.Int):StdTypes.Int {
        this._indir = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_op:T_encOp, ?_field:StdTypes.Int, ?_index:Array<StdTypes.Int>, ?_indir:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr(_op, (_field : stdgo.GoInt), ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), (_indir : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
