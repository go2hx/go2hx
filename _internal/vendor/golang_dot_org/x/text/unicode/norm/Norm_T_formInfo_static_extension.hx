package _internal.vendor.golang_dot_org.x.text.unicode.norm;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm.T_formInfo_asInterface) class T_formInfo_static_extension {
    @:keep
    static public function _quickSpan( _f:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo>, _src:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input, _i:stdgo.GoInt, _end:stdgo.GoInt, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _f:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo> = _f;
        var _n = (0 : stdgo.GoInt), _ok = false;
        var _lastCC:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ss = ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
        var _lastSegStart = (_i : stdgo.GoInt);
        {
            _n = _end;
            while ((_i < _n : Bool)) {
                {
                    var _j = (_src._skipASCII(_i, _n) : stdgo.GoInt);
                    if (_i != (_j)) {
                        _i = _j;
                        _lastSegStart = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        _lastCC = (0 : stdgo.GoUInt8);
                        _ss = (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
                        continue;
                    };
                };
                var _info = (_f._info(_src?.__copy__(), _i)?.__copy__() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
                if (_info._size == ((0 : stdgo.GoUInt8))) {
                    if (_atEOF) {
                        return { _0 : _n, _1 : true };
                    };
                    return { _0 : _lastSegStart, _1 : true };
                };
                {
                    final __value__ = _ss._next(stdgo.Go.pointer(_ss), _info?.__copy__());
                    if (__value__ == ((1 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                        _lastSegStart = _i;
                    } else if (__value__ == ((2 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                        return { _0 : _lastSegStart, _1 : false };
                    } else if (__value__ == ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                        if ((_lastCC > _info._ccc : Bool)) {
                            return { _0 : _lastSegStart, _1 : false };
                        };
                    };
                };
                if (_f._composing) {
                    if (!_info._isYesC()) {
                        break;
                    };
                } else {
                    if (!_info._isYesD()) {
                        break;
                    };
                };
                _lastCC = _info._ccc;
                _i = (_i + ((_info._size : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        if (_i == (_n)) {
            if (!_atEOF) {
                _n = _lastSegStart;
            };
            return { _0 : _n, _1 : true };
        };
        return { _0 : _lastSegStart, _1 : false };
    }
}
