package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _lastBoundary(_fd:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _i = (_b.length : stdgo.GoInt);
        var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__lastRuneStart._lastRuneStart(_fd, _b), _info:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = __tmp__._0, _p:stdgo.GoInt = __tmp__._1;
        if (_p == ((-1 : stdgo.GoInt))) {
            return (-1 : stdgo.GoInt);
        };
        if (_info._size == ((0 : stdgo.GoUInt8))) {
            if (_p == ((0 : stdgo.GoInt))) {
                return (-1 : stdgo.GoInt);
            };
            _i = _p;
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__lastRuneStart._lastRuneStart(_fd, (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
                _info = __tmp__._0?.__copy__();
                _p = __tmp__._1;
            };
            if (_p == ((-1 : stdgo.GoInt))) {
                return _i;
            };
        };
        if ((_p + (_info._size : stdgo.GoInt) : stdgo.GoInt) != (_i)) {
            return _i;
        };
        if (_info.boundaryAfter()) {
            return _i;
        };
        var _ss = ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
        var _v = (_ss._backwards(stdgo.Go.pointer(_ss), _info?.__copy__()) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState);
        {
            _i = _p;
            stdgo.Go.cfor(((_i >= (0 : stdgo.GoInt) : Bool) && (_v != (1 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState)) : Bool), _i = _p, {
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__lastRuneStart._lastRuneStart(_fd, (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
                    _info = __tmp__._0?.__copy__();
                    _p = __tmp__._1;
                };
                {
                    _v = _ss._backwards(stdgo.Go.pointer(_ss), _info?.__copy__());
                    if (_v == ((2 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                        break;
                    };
                };
                if ((_p + (_info._size : stdgo.GoInt) : stdgo.GoInt) != (_i)) {
                    if (_p == ((-1 : stdgo.GoInt))) {
                        return (-1 : stdgo.GoInt);
                    };
                    return _i;
                };
            });
        };
        return _i;
    }
