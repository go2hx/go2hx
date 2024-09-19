package stdgo._internal.io;
function readAtLeast(_r:stdgo._internal.io.Io_Reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>, _min:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_buf.length) < _min : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_errShortBuffer.errShortBuffer };
        };
        while (((_n < _min : Bool) && (_err == null) : Bool)) {
            var _nn:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _r.read((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>));
                _nn = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = (_n + (_nn) : stdgo.GoInt);
        };
        if ((_n >= _min : Bool)) {
            _err = (null : stdgo.Error);
        } else if (((_n > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
            _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
        };
        return { _0 : _n, _1 : _err };
    }