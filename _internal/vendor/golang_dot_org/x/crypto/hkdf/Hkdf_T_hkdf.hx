package _internal.vendor.golang_dot_org.x.crypto.hkdf;
@:structInit @:using(_internal.vendor.golang_dot_org.x.crypto.hkdf.Hkdf_T_hkdf_static_extension.T_hkdf_static_extension) class T_hkdf {
    public var _expander : stdgo._internal.hash.Hash_Hash.Hash = (null : stdgo._internal.hash.Hash_Hash.Hash);
    public var _size : stdgo.GoInt = 0;
    public var _info : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _counter : stdgo.GoUInt8 = 0;
    public var _prev : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_expander:stdgo._internal.hash.Hash_Hash.Hash, ?_size:stdgo.GoInt, ?_info:stdgo.Slice<stdgo.GoUInt8>, ?_counter:stdgo.GoUInt8, ?_prev:stdgo.Slice<stdgo.GoUInt8>, ?_buf:stdgo.Slice<stdgo.GoUInt8>) {
        if (_expander != null) this._expander = _expander;
        if (_size != null) this._size = _size;
        if (_info != null) this._info = _info;
        if (_counter != null) this._counter = _counter;
        if (_prev != null) this._prev = _prev;
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_hkdf(_expander, _size, _info, _counter, _prev, _buf);
    }
}
