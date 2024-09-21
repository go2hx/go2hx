package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _nextHangul(_i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        var _p = (_i._p : stdgo.GoInt);
        var _next = (_p + (3 : stdgo.GoInt) : stdgo.GoInt);
        if ((_next >= _i._rb._nsrc : Bool)) {
            _i._setDone();
        } else if (_i._rb._src._hangul(_next) == ((0 : stdgo.GoInt32))) {
            _i._rb._ss._next(stdgo.Go.pointer(_i._rb._ss), _i._info?.__copy__());
            _i._info = _i._rb._f._info(_i._rb._src?.__copy__(), _i._p)?.__copy__();
            _i._next = _i._rb._f._nextMain;
            return _i._next(_i);
        };
        _i._p = _next;
        return (_i._buf.__slice__(0, _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__decomposeHangul._decomposeHangul((_i._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _i._rb._src._hangul(_p))) : stdgo.Slice<stdgo.GoUInt8>);
    }
