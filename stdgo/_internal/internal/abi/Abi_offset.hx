package stdgo._internal.internal.abi;
@:structInit @:using(stdgo._internal.internal.abi.Abi_offset_static_extension.Offset_static_extension) class Offset {
    public var _off : stdgo.GoUInt64 = 0;
    public var _align : stdgo.GoUInt8 = 0;
    public var _ptrSize : stdgo.GoUInt8 = 0;
    public var _sliceAlign : stdgo.GoUInt8 = 0;
    public function new(?_off:stdgo.GoUInt64, ?_align:stdgo.GoUInt8, ?_ptrSize:stdgo.GoUInt8, ?_sliceAlign:stdgo.GoUInt8) {
        if (_off != null) this._off = _off;
        if (_align != null) this._align = _align;
        if (_ptrSize != null) this._ptrSize = _ptrSize;
        if (_sliceAlign != null) this._sliceAlign = _sliceAlign;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Offset(_off, _align, _ptrSize, _sliceAlign);
    }
}
