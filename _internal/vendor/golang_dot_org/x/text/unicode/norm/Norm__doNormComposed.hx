package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _doNormComposed(_i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        while (true) {
            {
                _i._p = (_i._p + ((_i._info._size : stdgo.GoInt)) : stdgo.GoInt);
                if ((_i._p >= _i._rb._nsrc : Bool)) {
                    _i._setDone();
                    break;
                };
            };
            _i._info = _i._rb._f._info(_i._rb._src?.__copy__(), _i._p)?.__copy__();
            {
                var _s = (_i._rb._ss._next(stdgo.Go.pointer(_i._rb._ss), _i._info?.__copy__()) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState);
                if (_s == ((1 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                    break;
                } else if (_s == ((2 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                    _i._next = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nextCGJCompose._nextCGJCompose;
                    break;
                };
            };
            _i._rb._insertUnsafe(_i._rb._src?.__copy__(), _i._p, _i._info?.__copy__());
        };
        _i._rb._compose();
        var _seg = (_i._buf.__slice__(0, _i._rb._flushCopy((_i._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.Slice<stdgo.GoUInt8>);
        return _seg;
    }