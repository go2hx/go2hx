package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _compInfo(_v:stdgo.GoUInt16, _sz:stdgo.GoInt):_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties {
        if (_v == ((0 : stdgo.GoUInt16))) {
            return ({ _size : (_sz : stdgo.GoUInt8) } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
        } else if ((_v >= (32768 : stdgo.GoUInt16) : Bool)) {
            var _p = ({ _size : (_sz : stdgo.GoUInt8), _ccc : (_v : stdgo.GoUInt8), _tccc : (_v : stdgo.GoUInt8), _flags : ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
            if (((_p._ccc > (0 : stdgo.GoUInt8) : Bool) || _p._combinesBackward() : Bool)) {
                _p._nLead = ((_p._flags & (3 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) : stdgo.GoUInt8);
            };
            return _p?.__copy__();
        };
        var _h = (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__decomps._decomps[(_v : stdgo.GoInt)] : stdgo.GoUInt8);
        var _f = (((((_h & (192 : stdgo.GoUInt8) : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) >> (2i64 : stdgo.GoUInt64) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo)) | (4 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo);
        var _p = ({ _size : (_sz : stdgo.GoUInt8), _flags : _f, _index : _v } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
        if ((_v >= (11733 : stdgo.GoUInt16) : Bool)) {
            _v = (_v + ((((_h & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt16) + (1 : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo.GoUInt16);
            var _c = (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__decomps._decomps[(_v : stdgo.GoInt)] : stdgo.GoUInt8);
            _p._tccc = (_c >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
            _p._flags = (_p._flags | (((_c & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo)) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo);
            if ((_v >= (19183 : stdgo.GoUInt16) : Bool)) {
                _p._nLead = (_c & (3 : stdgo.GoUInt8) : stdgo.GoUInt8);
                if ((_v >= (19424 : stdgo.GoUInt16) : Bool)) {
                    _p._flags = (_p._flags & ((3 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo)) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo);
                    _p._index = (0 : stdgo.GoUInt16);
                    return _p?.__copy__();
                };
                _p._ccc = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__decomps._decomps[((_v + (1 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt)];
            };
        };
        return _p?.__copy__();
    }
