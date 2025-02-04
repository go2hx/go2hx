package stdgo._internal.encoding.asn1;
function _parseInt32(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } {
        {
            var _err = (stdgo._internal.encoding.asn1.Asn1__checkinteger._checkInteger(_bytes) : stdgo.Error);
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt32), _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseint64._parseInt64(_bytes), _ret64:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (0 : stdgo.GoInt32), _1 : _err };
        };
        if (_ret64 != (((_ret64 : stdgo.GoInt32) : stdgo.GoInt64))) {
            return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("integer too large" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError)) };
        };
        return { _0 : (_ret64 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
    }
