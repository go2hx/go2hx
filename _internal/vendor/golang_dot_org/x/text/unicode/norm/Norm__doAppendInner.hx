package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _doAppendInner(_rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _p:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        {
            var _n = (_rb._nsrc : stdgo.GoInt);
            while ((_p < _n : Bool)) {
                _p = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__decomposeSegment._decomposeSegment(_rb, _p, true);
                _p = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__appendQuick._appendQuick(_rb, _p);
            };
        };
        return _rb._out;
    }
