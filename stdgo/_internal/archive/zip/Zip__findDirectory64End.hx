package stdgo._internal.archive.zip;
function _findDirectory64End(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt, _directoryEndOffset:stdgo.GoInt64):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _locOffset = (_directoryEndOffset - (20i64 : stdgo.GoInt64) : stdgo.GoInt64);
        if ((_locOffset < (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : (-1i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _r.readAt(_buf, _locOffset), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (-1i64 : stdgo.GoInt64), _1 : _err };
            };
        };
        var _b = (_buf : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
        {
            var _sig = (_b._uint32() : stdgo.GoUInt32);
            if (_sig != ((117853008u32 : stdgo.GoUInt32))) {
                return { _0 : (-1i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
            };
        };
        if (_b._uint32() != ((0u32 : stdgo.GoUInt32))) {
            return { _0 : (-1i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        var _p = (_b._uint64() : stdgo.GoUInt64);
        if (_b._uint32() != ((1u32 : stdgo.GoUInt32))) {
            return { _0 : (-1i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        return { _0 : (_p : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
