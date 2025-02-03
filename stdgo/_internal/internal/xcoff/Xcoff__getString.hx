package stdgo._internal.internal.xcoff;
function _getString(_st:stdgo.Slice<stdgo.GoUInt8>, _offset:stdgo.GoUInt32):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        if (((_offset < (4u32 : stdgo.GoUInt32) : Bool) || ((_offset : stdgo.GoInt) >= (_st.length) : Bool) : Bool)) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
        };
        return { _0 : stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_st.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__(), _1 : true };
    }
