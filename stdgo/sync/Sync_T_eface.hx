package stdgo.sync;
@:structInit @:using(stdgo.sync.Sync.T_eface_static_extension) abstract T_eface(stdgo._internal.sync.Sync_T_eface.T_eface) from stdgo._internal.sync.Sync_T_eface.T_eface to stdgo._internal.sync.Sync_T_eface.T_eface {
    public var _typ(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__typ():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._typ;
    function set__typ(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._typ = v;
        return v;
    }
    public var _val(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__val():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._val;
    function set__val(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._val = v;
        return v;
    }
    public function new(?_typ:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_val:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.sync.Sync_T_eface.T_eface(_typ, _val);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
