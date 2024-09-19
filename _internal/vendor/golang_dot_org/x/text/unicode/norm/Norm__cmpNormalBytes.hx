package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _cmpNormalBytes(_rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>):Bool {
        var _b = _rb._out;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _rb._nrune : Bool), _i++, {
                var _info = (_rb._rune[(_i : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
                if (((_info._size : stdgo.GoInt) > (_b.length) : Bool)) {
                    return false;
                };
                var _p = (_info._pos : stdgo.GoUInt8);
                var _pe = (_p + _info._size : stdgo.GoUInt8);
                stdgo.Go.cfor((_p < _pe : Bool), _p++, {
                    if (_b[(0 : stdgo.GoInt)] != (_rb._byte[(_p : stdgo.GoInt)])) {
                        return false;
                    };
                    _b = (_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                });
            });
        };
        return true;
    }
