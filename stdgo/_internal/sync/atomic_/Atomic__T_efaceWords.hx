package stdgo._internal.sync.atomic_;
@:structInit class T_efaceWords {
    public var _typ : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public var _data : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?_typ:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_data:stdgo._internal.unsafe.Unsafe.UnsafePointer) {
        if (_typ != null) this._typ = _typ;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_efaceWords(_typ, _data);
    }
}
