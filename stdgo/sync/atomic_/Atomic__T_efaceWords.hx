package stdgo.sync.atomic_;
@:structInit @:using(stdgo.sync.atomic_.Atomic_.T_efaceWords_static_extension) abstract T_efaceWords(stdgo._internal.sync.atomic_.Atomic__T_efaceWords.T_efaceWords) from stdgo._internal.sync.atomic_.Atomic__T_efaceWords.T_efaceWords to stdgo._internal.sync.atomic_.Atomic__T_efaceWords.T_efaceWords {
    public var _typ(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__typ():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._typ;
    function set__typ(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._typ = v;
        return v;
    }
    public var _data(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__data():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._data;
    function set__data(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._data = v;
        return v;
    }
    public function new(?_typ:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_data:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.sync.atomic_.Atomic__T_efaceWords.T_efaceWords(_typ, _data);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
