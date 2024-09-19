package stdgo._internal.encoding.gob;
@:structInit class T_decInstr {
    public var _op : stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp = (null : stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp);
    public var _field : stdgo.GoInt = 0;
    public var _index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _ovfl : stdgo.Error = (null : stdgo.Error);
    public function new(?_op:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp, ?_field:stdgo.GoInt, ?_index:stdgo.Slice<stdgo.GoInt>, ?_ovfl:stdgo.Error) {
        if (_op != null) this._op = _op;
        if (_field != null) this._field = _field;
        if (_index != null) this._index = _index;
        if (_ovfl != null) this._ovfl = _ovfl;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decInstr(_op, _field, _index, _ovfl);
    }
}
