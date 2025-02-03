package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_decInstr_static_extension) abstract T_decInstr(stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr) from stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr to stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr {
    public var _op(get, set) : T_decOp;
    function get__op():T_decOp return this._op;
    function set__op(v:T_decOp):T_decOp {
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
    public var _ovfl(get, set) : stdgo.Error;
    function get__ovfl():stdgo.Error return this._ovfl;
    function set__ovfl(v:stdgo.Error):stdgo.Error {
        this._ovfl = (v : stdgo.Error);
        return v;
    }
    public function new(?_op:T_decOp, ?_field:StdTypes.Int, ?_index:Array<StdTypes.Int>, ?_ovfl:stdgo.Error) this = new stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr(_op, (_field : stdgo.GoInt), ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), (_ovfl : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
