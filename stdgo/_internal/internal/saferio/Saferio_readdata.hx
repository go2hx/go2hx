package stdgo._internal.internal.saferio;
function readData(_r:stdgo._internal.io.Io_reader.Reader, _n:stdgo.GoUInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if ((((_n : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool) || (_n != ((_n : stdgo.GoInt) : stdgo.GoUInt64)) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF };
        };
        if ((_n < (10485760i64 : stdgo.GoUInt64) : Bool)) {
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, _buf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            return { _0 : _buf, _1 : (null : stdgo.Error) };
        };
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _buf1 = (new stdgo.Slice<stdgo.GoUInt8>((10485760 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while ((_n > (0i64 : stdgo.GoUInt64) : Bool)) {
            var _next = (_n : stdgo.GoUInt64);
            if ((_next > (10485760i64 : stdgo.GoUInt64) : Bool)) {
                _next = (10485760i64 : stdgo.GoUInt64);
            };
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, (_buf1.__slice__(0, _next) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if ((((_buf.length) > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                    _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                };
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            _buf = (_buf.__append__(...((_buf1.__slice__(0, _next) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            _n = (_n - (_next) : stdgo.GoUInt64);
        };
        return { _0 : _buf, _1 : (null : stdgo.Error) };
    }
