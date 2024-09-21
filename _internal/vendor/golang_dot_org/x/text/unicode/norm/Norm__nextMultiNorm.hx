package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _nextMultiNorm(_i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        var _j = (0 : stdgo.GoInt);
        var _d = _i._multiSeg;
        while ((_j < (_d.length) : Bool)) {
            var _info = (_i._rb._f._info(({ _bytes : _d } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input), _j)?.__copy__() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
            if (_info.boundaryBefore()) {
                _i._rb._compose();
                var _seg = (_i._buf.__slice__(0, _i._rb._flushCopy((_i._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.Slice<stdgo.GoUInt8>);
                _i._rb._insertUnsafe(({ _bytes : _d } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input), _j, _info?.__copy__());
                _i._multiSeg = (_d.__slice__((_j + (_info._size : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                return _seg;
            };
            _i._rb._insertUnsafe(({ _bytes : _d } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input), _j, _info?.__copy__());
            _j = (_j + ((_info._size : stdgo.GoInt)) : stdgo.GoInt);
        };
        _i._multiSeg = (null : stdgo.Slice<stdgo.GoUInt8>);
        _i._next = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nextComposed._nextComposed;
        return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__doNormComposed._doNormComposed(_i);
    }
