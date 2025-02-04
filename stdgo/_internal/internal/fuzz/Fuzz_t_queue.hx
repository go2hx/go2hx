package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_queue_static_extension.T_queue_static_extension) class T_queue {
    public var _elems : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public var _head : stdgo.GoInt = 0;
    public var _len : stdgo.GoInt = 0;
    public function new(?_elems:stdgo.Slice<stdgo.AnyInterface>, ?_head:stdgo.GoInt, ?_len:stdgo.GoInt) {
        if (_elems != null) this._elems = _elems;
        if (_head != null) this._head = _head;
        if (_len != null) this._len = _len;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_queue(_elems, _head, _len);
    }
}
