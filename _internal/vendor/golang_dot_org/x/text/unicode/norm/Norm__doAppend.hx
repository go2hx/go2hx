package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _doAppend(_rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _out:stdgo.Slice<stdgo.GoUInt8>, _p:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        _rb._setFlusher(_out, _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__appendFlush._appendFlush);
        var __0 = (_rb._src?.__copy__() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input), __1 = (_rb._nsrc : stdgo.GoInt);
var _n = __1, _src = __0;
        var _doMerge = ((_out.length) > (0 : stdgo.GoInt) : Bool);
        {
            var _q = (_src._skipContinuationBytes(_p) : stdgo.GoInt);
            if ((_q > _p : Bool)) {
                _rb._out = _src._appendSlice(_rb._out, _p, _q);
                _p = _q;
                _doMerge = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__patchTail._patchTail(_rb);
            };
        };
        var _fd = (stdgo.Go.setRef(_rb._f) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo>);
        if (_doMerge) {
            var _info:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = ({} : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
            if ((_p < _n : Bool)) {
                _info = _fd._info(_src?.__copy__(), _p)?.__copy__();
                if ((!_info.boundaryBefore() || (_info._nLeadingNonStarters() > (0 : stdgo.GoUInt8) : Bool) : Bool)) {
                    if (_p == ((0 : stdgo.GoInt))) {
                        _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__decomposeToLastBoundary._decomposeToLastBoundary(_rb);
                    };
                    _p = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__decomposeSegment._decomposeSegment(_rb, _p, true);
                };
            };
            if (_info._size == ((0 : stdgo.GoUInt8))) {
                _rb._doFlush();
                return _src._appendSlice(_rb._out, _p, _n);
            };
            if ((_rb._nrune > (0 : stdgo.GoInt) : Bool)) {
                return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__doAppendInner._doAppendInner(_rb, _p);
            };
        };
        _p = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__appendQuick._appendQuick(_rb, _p);
        return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__doAppendInner._doAppendInner(_rb, _p);
    }
