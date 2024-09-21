package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _nextCGJCompose(_i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        _i._rb._ss = (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
        _i._rb._insertCGJ();
        _i._next = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nextComposed._nextComposed;
        _i._rb._ss._first(stdgo.Go.pointer(_i._rb._ss), _i._info?.__copy__());
        _i._rb._insertUnsafe(_i._rb._src?.__copy__(), _i._p, _i._info?.__copy__());
        return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__doNormComposed._doNormComposed(_i);
    }
