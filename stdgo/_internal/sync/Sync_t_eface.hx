package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_t_eface_static_extension.T_eface_static_extension) class T_eface {
    public var _typ : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public var _val : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?_typ:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_val:stdgo._internal.unsafe.Unsafe.UnsafePointer) {
        if (_typ != null) this._typ = _typ;
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_eface(_typ, _val);
    }
}
