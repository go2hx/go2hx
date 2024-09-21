package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _nextMulti(_i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        var _j = (0 : stdgo.GoInt);
        var _d = _i._multiSeg;
        {
            _j = (1 : stdgo.GoInt);
            stdgo.Go.cfor(((_j < (_d.length) : Bool) && !stdgo._internal.unicode.utf8.Utf8_runeStart.runeStart(_d[(_j : stdgo.GoInt)]) : Bool), _j++, {});
        };
        while ((_j < (_d.length) : Bool)) {
            var _info = (_i._rb._f._info(({ _bytes : _d } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input), _j)?.__copy__() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
            if (_info.boundaryBefore()) {
                _i._multiSeg = (_d.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>);
                return (_d.__slice__(0, _j) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _j = (_j + ((_info._size : stdgo.GoInt)) : stdgo.GoInt);
        };
        _i._next = _i._rb._f._nextMain;
        return _i._next(_i);
    }
