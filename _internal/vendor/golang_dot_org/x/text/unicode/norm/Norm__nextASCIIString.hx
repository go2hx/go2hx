package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _nextASCIIString(_i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        var _p = (_i._p + (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_p >= _i._rb._nsrc : Bool)) {
            _i._buf[(0 : stdgo.GoInt)] = _i._rb._src._str[(_i._p : stdgo.GoInt)];
            _i._setDone();
            return (_i._buf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((_i._rb._src._str[(_p : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
            _i._buf[(0 : stdgo.GoInt)] = _i._rb._src._str[(_i._p : stdgo.GoInt)];
            _i._p = _p;
            return (_i._buf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _i._info = _i._rb._f._info(_i._rb._src?.__copy__(), _i._p)?.__copy__();
        _i._next = _i._rb._f._nextMain;
        return _i._next(_i);
    }
