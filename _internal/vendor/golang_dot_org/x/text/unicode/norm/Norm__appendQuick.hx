package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _appendQuick(_rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _i:stdgo.GoInt):stdgo.GoInt {
        if (_rb._nsrc == (_i)) {
            return _i;
        };
        var __tmp__ = _rb._f._quickSpan(_rb._src?.__copy__(), _i, _rb._nsrc, true), _end:stdgo.GoInt = __tmp__._0, __0:Bool = __tmp__._1;
        _rb._out = _rb._src._appendSlice(_rb._out, _i, _end);
        return _end;
    }
