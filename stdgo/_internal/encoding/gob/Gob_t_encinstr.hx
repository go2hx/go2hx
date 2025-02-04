package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_encinstr_static_extension.T_encInstr_static_extension) class T_encInstr {
    public var _op : stdgo._internal.encoding.gob.Gob_t_encop.T_encOp = (null : stdgo._internal.encoding.gob.Gob_t_encop.T_encOp);
    public var _field : stdgo.GoInt = 0;
    public var _index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _indir : stdgo.GoInt = 0;
    public function new(?_op:stdgo._internal.encoding.gob.Gob_t_encop.T_encOp, ?_field:stdgo.GoInt, ?_index:stdgo.Slice<stdgo.GoInt>, ?_indir:stdgo.GoInt) {
        if (_op != null) this._op = _op;
        if (_field != null) this._field = _field;
        if (_index != null) this._index = _index;
        if (_indir != null) this._indir = _indir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encInstr(_op, _field, _index, _indir);
    }
}
