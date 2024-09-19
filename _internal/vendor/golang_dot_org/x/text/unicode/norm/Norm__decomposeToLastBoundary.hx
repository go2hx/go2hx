package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _decomposeToLastBoundary(_rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>):Void {
        var _fd = (stdgo.Go.setRef(_rb._f) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo>);
        var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__lastRuneStart._lastRuneStart(_fd, _rb._out), _info:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = __tmp__._0, _i:stdgo.GoInt = __tmp__._1;
        if ((_info._size : stdgo.GoInt) != (((_rb._out.length) - _i : stdgo.GoInt))) {
            return;
        };
        if (_info.boundaryAfter()) {
            return;
        };
        var _add:stdgo.GoArray<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties> = new stdgo.GoArray<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties>(31, 31, ...[for (i in 0 ... 31) ({} : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties)]);
        var _padd = (0 : stdgo.GoInt);
        var _ss = ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
        var _p = (_rb._out.length : stdgo.GoInt);
        while (true) {
            _add[(_padd : stdgo.GoInt)] = _info?.__copy__();
            var _v = (_ss._backwards(stdgo.Go.pointer(_ss), _info?.__copy__()) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState);
            if (_v == ((2 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                break;
            };
            _padd++;
            _p = (_p - ((_info._size : stdgo.GoInt)) : stdgo.GoInt);
            if (((_v == (1 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState)) || (_p < (0 : stdgo.GoInt) : Bool) : Bool)) {
                break;
            };
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__lastRuneStart._lastRuneStart(_fd, (_rb._out.__slice__(0, _p) : stdgo.Slice<stdgo.GoUInt8>));
                _info = __tmp__._0?.__copy__();
                _i = __tmp__._1;
            };
            if ((_info._size : stdgo.GoInt) != ((_p - _i : stdgo.GoInt))) {
                break;
            };
        };
        _rb._ss = _ss;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(128, 128, ...[for (i in 0 ... 128) (0 : stdgo.GoUInt8)]);
        var _cp = (_buf.__slice__(0, stdgo.Go.copySlice((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_rb._out.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.Slice<stdgo.GoUInt8>);
        _rb._out = (_rb._out.__slice__(0, _p) : stdgo.Slice<stdgo.GoUInt8>);
        {
            _padd--;
            stdgo.Go.cfor((_padd >= (0 : stdgo.GoInt) : Bool), _padd--, {
                _info = _add[(_padd : stdgo.GoInt)];
                _rb._insertUnsafe(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputBytes._inputBytes(_cp)?.__copy__(), (0 : stdgo.GoInt), _info?.__copy__());
                _cp = (_cp.__slice__(_info._size) : stdgo.Slice<stdgo.GoUInt8>);
            });
        };
    }
