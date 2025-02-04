package stdgo._internal.encoding.binary;
@:structInit @:using(stdgo._internal.encoding.binary.Binary_t_coder_static_extension.T_coder_static_extension) class T_coder {
    public var _order : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder = (null : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _offset : stdgo.GoInt = 0;
    public function new(?_order:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_offset:stdgo.GoInt) {
        if (_order != null) this._order = _order;
        if (_buf != null) this._buf = _buf;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_coder(_order, _buf, _offset);
    }
}
