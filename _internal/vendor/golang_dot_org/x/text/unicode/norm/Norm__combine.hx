package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _combine(_a:stdgo.GoInt32, _b:stdgo.GoInt32):stdgo.GoInt32 {
        var _key = ((((_a : stdgo.GoUInt16) : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + ((_b : stdgo.GoUInt16) : stdgo.GoUInt32) : stdgo.GoUInt32);
        if (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__recompMap._recompMap == null) {
            throw stdgo.Go.toInterface(("caller error" : stdgo.GoString));
        };
        return (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__recompMap._recompMap[_key] ?? (0 : stdgo.GoInt32));
    }
