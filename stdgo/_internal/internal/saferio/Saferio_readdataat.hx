package stdgo._internal.internal.saferio;
function readDataAt(_r:stdgo._internal.io.Io_readerat.ReaderAt, _n:stdgo.GoUInt64, _off:stdgo.GoInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L68"
        if ((((_n : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool) || (_n != ((_n : stdgo.GoInt) : stdgo.GoUInt64)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L71"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L74"
        if ((_n < (10485760i64 : stdgo.GoUInt64) : Bool)) {
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _r.readAt(_buf, _off), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L77"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L80"
                if (((stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) || (_n > (0i64 : stdgo.GoUInt64) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L81"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L84"
            return { _0 : _buf, _1 : (null : stdgo.Error) };
        };
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _buf1 = (new stdgo.Slice<stdgo.GoUInt8>((10485760 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L89"
        while ((_n > (0i64 : stdgo.GoUInt64) : Bool)) {
            var _next = (_n : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L91"
            if ((_next > (10485760i64 : stdgo.GoUInt64) : Bool)) {
                _next = (10485760i64 : stdgo.GoUInt64);
            };
            var __tmp__ = _r.readAt((_buf1.__slice__(0, _next) : stdgo.Slice<stdgo.GoUInt8>), _off), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L95"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L96"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            _buf = (_buf.__append__(...((_buf1.__slice__(0, _next) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            _n = (_n - (_next) : stdgo.GoUInt64);
            _off = (_off + ((_next : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L102"
        return { _0 : _buf, _1 : (null : stdgo.Error) };
    }
