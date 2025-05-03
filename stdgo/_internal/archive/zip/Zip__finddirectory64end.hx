package stdgo._internal.archive.zip;
function _findDirectory64End(_r:stdgo._internal.io.Io_readerat.ReaderAt, _directoryEndOffset:stdgo.GoInt64):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _locOffset = (_directoryEndOffset - (20i64 : stdgo.GoInt64) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L651"
        if ((_locOffset < (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L652"
            return { _0 : (-1i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L655"
        {
            var __tmp__ = _r.readAt(_buf, _locOffset), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L656"
                return { _0 : (-1i64 : stdgo.GoInt64), _1 : _err };
            };
        };
        var _b = (_buf : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L659"
        {
            var _sig = (_b._uint32() : stdgo.GoUInt32);
            if (_sig != ((117853008u32 : stdgo.GoUInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L660"
                return { _0 : (-1i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L662"
        if (_b._uint32() != ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L663"
            return { _0 : (-1i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        var _p = (_b._uint64() : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L666"
        if (_b._uint32() != ((1u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L667"
            return { _0 : (-1i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L669"
        return { _0 : (_p : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
