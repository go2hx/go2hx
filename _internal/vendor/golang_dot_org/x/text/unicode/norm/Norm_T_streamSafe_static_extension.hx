package _internal.vendor.golang_dot_org.x.text.unicode.norm;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm.T_streamSafe_asInterface) class T_streamSafe_static_extension {
    @:keep
    static public function _isMax( _ss:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe):Bool {
        @:recv var _ss:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe = _ss;
        return _ss == ((30 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe));
    }
    @:keep
    @:pointer
    static public function _backwards(____:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe,  _ss:stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe>, _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState {
        if ((_ss.value > (30 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe) : Bool)) {
            throw stdgo.Go.toInterface(("streamSafe was not reset" : stdgo.GoString));
        };
        var _c = (_ss.value + (_p._nTrailingNonStarters() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
        if ((_c > (30 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe) : Bool)) {
            return (2 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState);
        };
        _ss.value = _c;
        if (_p._nLeadingNonStarters() == ((0 : stdgo.GoUInt8))) {
            return (1 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState);
        };
        return (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState);
    }
    @:keep
    @:pointer
    static public function _next(____:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe,  _ss:stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe>, _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState {
        if ((_ss.value > (30 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe) : Bool)) {
            throw stdgo.Go.toInterface(("streamSafe was not reset" : stdgo.GoString));
        };
        var _n = (_p._nLeadingNonStarters() : stdgo.GoUInt8);
        {
            _ss.value = (_ss.value + ((_n : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe)) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
            if ((_ss.value > (30 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe) : Bool)) {
                _ss.value = (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
                return (2 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState);
            };
        };
        if (_n == ((0 : stdgo.GoUInt8))) {
            _ss.value = (_p._nTrailingNonStarters() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
            return (1 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState);
        };
        return (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState);
    }
    @:keep
    @:pointer
    static public function _first(____:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe,  _ss:stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe>, _p:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):Void {
        _ss.value = (_p._nTrailingNonStarters() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
    }
}
