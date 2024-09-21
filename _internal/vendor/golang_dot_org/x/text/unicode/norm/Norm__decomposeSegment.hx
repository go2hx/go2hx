package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _decomposeSegment(_rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _sp:stdgo.GoInt, _atEOF:Bool):stdgo.GoInt {
        stdgo._internal.internal.Macro.controlFlow({
            var _info = (_rb._f._info(_rb._src?.__copy__(), _sp)?.__copy__() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
            if (_info._size == ((0 : stdgo.GoUInt8))) {
                return (0 : stdgo.GoInt);
            };
            {
                var _s = (_rb._ss._next(stdgo.Go.pointer(_rb._ss), _info?.__copy__()) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState);
                if (_s == ((1 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                    if ((_rb._nrune > (0 : stdgo.GoInt) : Bool)) {
                        @:goto "end";
                    };
                } else if (_s == ((2 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                    _rb._insertCGJ();
                    @:goto "end";
                };
            };
            {
                var _err = (_rb._insertFlush(_rb._src?.__copy__(), _sp, _info?.__copy__()) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_insertErr.T_insertErr);
                if (_err != ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_insertErr.T_insertErr))) {
                    return (_err : stdgo.GoInt);
                };
            };
            while (true) {
                _sp = (_sp + ((_info._size : stdgo.GoInt)) : stdgo.GoInt);
                if ((_sp >= _rb._nsrc : Bool)) {
                    if ((!_atEOF && !_info.boundaryAfter() : Bool)) {
                        return ((-2 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_insertErr.T_insertErr) : stdgo.GoInt);
                    };
                    break;
                };
                _info = _rb._f._info(_rb._src?.__copy__(), _sp)?.__copy__();
                if (_info._size == ((0 : stdgo.GoUInt8))) {
                    if (!_atEOF) {
                        return ((-2 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_insertErr.T_insertErr) : stdgo.GoInt);
                    };
                    break;
                };
                {
                    var _s = (_rb._ss._next(stdgo.Go.pointer(_rb._ss), _info?.__copy__()) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState);
                    if (_s == ((1 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                        break;
                    } else if (_s == ((2 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                        _rb._insertCGJ();
                        break;
                    };
                };
                {
                    var _err = (_rb._insertFlush(_rb._src?.__copy__(), _sp, _info?.__copy__()) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_insertErr.T_insertErr);
                    if (_err != ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_insertErr.T_insertErr))) {
                        return (_err : stdgo.GoInt);
                    };
                };
            };
            @:label("end") if (!_rb._doFlush()) {
                return ((-1 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_insertErr.T_insertErr) : stdgo.GoInt);
            };
            return _sp;
        });
    }
