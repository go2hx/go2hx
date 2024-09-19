package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _nextCGJDecompose(_i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        _i._rb._ss = (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
        _i._rb._insertCGJ();
        _i._next = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nextDecomposed._nextDecomposed;
        _i._rb._ss._first(stdgo.Go.pointer(_i._rb._ss), _i._info?.__copy__());
        var _buf = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__doNormDecomposed._doNormDecomposed(_i);
        return _buf;
    }
