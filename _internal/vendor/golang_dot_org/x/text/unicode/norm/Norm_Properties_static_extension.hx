package _internal.vendor.golang_dot_org.x.text.unicode.norm;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm.Properties_asInterface) class Properties_static_extension {
    @:keep
    static public function trailCCC( _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):stdgo.GoUInt8 {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = _p?.__copy__();
        return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__ccc._ccc[(_p._tccc : stdgo.GoInt)];
    }
    @:keep
    static public function leadCCC( _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):stdgo.GoUInt8 {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = _p?.__copy__();
        return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__ccc._ccc[(_p._ccc : stdgo.GoInt)];
    }
    @:keep
    static public function ccc( _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):stdgo.GoUInt8 {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = _p?.__copy__();
        if ((_p._index >= (19385 : stdgo.GoUInt16) : Bool)) {
            return (0 : stdgo.GoUInt8);
        };
        return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__ccc._ccc[(_p._ccc : stdgo.GoInt)];
    }
    @:keep
    static public function size( _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):stdgo.GoInt {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = _p?.__copy__();
        return (_p._size : stdgo.GoInt);
    }
    @:keep
    static public function decomposition( _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = _p?.__copy__();
        if (_p._index == ((0 : stdgo.GoUInt16))) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _i = (_p._index : stdgo.GoUInt16);
        var _n = (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__decomps._decomps[(_i : stdgo.GoInt)] & (63 : stdgo.GoUInt8) : stdgo.GoUInt8);
        _i++;
        return (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__decomps._decomps.__slice__(_i, (_i + (_n : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function _nTrailingNonStarters( _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):stdgo.GoUInt8 {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = _p?.__copy__();
        return ((_p._flags & (3 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) : stdgo.GoUInt8);
    }
    @:keep
    static public function _nLeadingNonStarters( _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):stdgo.GoUInt8 {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = _p?.__copy__();
        return _p._nLead;
    }
    @:keep
    static public function _multiSegment( _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):Bool {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = _p?.__copy__();
        return ((_p._index >= (6554 : stdgo.GoUInt16) : Bool) && (_p._index < (12449 : stdgo.GoUInt16) : Bool) : Bool);
    }
    @:keep
    static public function _isInert( _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):Bool {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = _p?.__copy__();
        return (((_p._flags & (63 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) == (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo)) && (_p._ccc == (0 : stdgo.GoUInt8)) : Bool);
    }
    @:keep
    static public function _hasDecomposition( _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):Bool {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = _p?.__copy__();
        return (_p._flags & (4 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) != ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo));
    }
    @:keep
    static public function _combinesBackward( _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):Bool {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = _p?.__copy__();
        return (_p._flags & (8 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) != ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo));
    }
    @:keep
    static public function _combinesForward( _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):Bool {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = _p?.__copy__();
        return (_p._flags & (32 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) != ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo));
    }
    @:keep
    static public function _isYesD( _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):Bool {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = _p?.__copy__();
        return (_p._flags & (4 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) == ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo));
    }
    @:keep
    static public function _isYesC( _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):Bool {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = _p?.__copy__();
        return (_p._flags & (16 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo) == ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_qcInfo.T_qcInfo));
    }
    @:keep
    static public function boundaryAfter( _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):Bool {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = _p?.__copy__();
        return _p._isInert();
    }
    @:keep
    static public function boundaryBefore( _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):Bool {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = _p?.__copy__();
        if (((_p._ccc == (0 : stdgo.GoUInt8)) && !_p._combinesBackward() : Bool)) {
            return true;
        };
        return false;
    }
}
