package _internal.vendor.golang_dot_org.x.text.unicode.norm;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties_static_extension.Properties_static_extension) class Properties {
    public var _pos : stdgo.GoUInt8 = 0;
    public var _size : stdgo.GoUInt8 = 0;
    public var _ccc : stdgo.GoUInt8 = 0;
    public var _tccc : stdgo.GoUInt8 = 0;
    public var _nLead : stdgo.GoUInt8 = 0;
    public var _flags : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo = ((0 : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo);
    public var _index : stdgo.GoUInt16 = 0;
    public function new(?_pos:stdgo.GoUInt8, ?_size:stdgo.GoUInt8, ?_ccc:stdgo.GoUInt8, ?_tccc:stdgo.GoUInt8, ?_nLead:stdgo.GoUInt8, ?_flags:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo, ?_index:stdgo.GoUInt16) {
        if (_pos != null) this._pos = _pos;
        if (_size != null) this._size = _size;
        if (_ccc != null) this._ccc = _ccc;
        if (_tccc != null) this._tccc = _tccc;
        if (_nLead != null) this._nLead = _nLead;
        if (_flags != null) this._flags = _flags;
        if (_index != null) this._index = _index;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Properties(_pos, _size, _ccc, _tccc, _nLead, _flags, _index);
    }
}
