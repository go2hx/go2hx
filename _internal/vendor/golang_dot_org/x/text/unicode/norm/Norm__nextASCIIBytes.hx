package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _nextASCIIBytes(_i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        var _p = (_i._p + (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_p >= _i._rb._nsrc : Bool)) {
            var _p0 = (_i._p : stdgo.GoInt);
            _i._setDone();
            return (_i._rb._src._bytes.__slice__(_p0, _p) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((_i._rb._src._bytes[(_p : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
            var _p0 = (_i._p : stdgo.GoInt);
            _i._p = _p;
            return (_i._rb._src._bytes.__slice__(_p0, _p) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _i._info = _i._rb._f._info(_i._rb._src?.__copy__(), _i._p)?.__copy__();
        _i._next = _i._rb._f._nextMain;
        return _i._next(_i);
    }
