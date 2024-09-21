package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _patchTail(_rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>):Bool {
        var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__lastRuneStart._lastRuneStart((stdgo.Go.setRef(_rb._f) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo>), _rb._out), _info:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = __tmp__._0, _p:stdgo.GoInt = __tmp__._1;
        if (((_p == (-1 : stdgo.GoInt)) || (_info._size == (0 : stdgo.GoUInt8)) : Bool)) {
            return true;
        };
        var _end = (_p + (_info._size : stdgo.GoInt) : stdgo.GoInt);
        var _extra = ((_rb._out.length) - _end : stdgo.GoInt);
        if ((_extra > (0 : stdgo.GoInt) : Bool)) {
            var _x = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _x = (_x.__append__(...((_rb._out.__slice__(((_rb._out.length) - _extra : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            _rb._out = (_rb._out.__slice__(0, _end) : stdgo.Slice<stdgo.GoUInt8>);
            _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__decomposeToLastBoundary._decomposeToLastBoundary(_rb);
            _rb._doFlush();
            _rb._out = (_rb._out.__append__(...(_x : Array<stdgo.GoUInt8>)));
            return false;
        };
        var _buf = (_rb._out.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>);
        _rb._out = (_rb._out.__slice__(0, _p) : stdgo.Slice<stdgo.GoUInt8>);
        _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__decomposeToLastBoundary._decomposeToLastBoundary(_rb);
        {
            var _s = (_rb._ss._next(stdgo.Go.pointer(_rb._ss), _info?.__copy__()) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState);
            if (_s == ((1 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                _rb._doFlush();
                _rb._ss._first(stdgo.Go.pointer(_rb._ss), _info?.__copy__());
            } else if (_s == ((2 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                _rb._doFlush();
                _rb._insertCGJ();
                _rb._ss = (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
            };
        };
        _rb._insertUnsafe(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputBytes._inputBytes(_buf)?.__copy__(), (0 : stdgo.GoInt), _info?.__copy__());
        return true;
    }
