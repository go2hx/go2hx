package stdgo._internal.encoding.base32;
function _readEncodedData(_r:stdgo._internal.io.Io_reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>, _min:stdgo.GoInt, _expectsPadding:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L408"
        while (((_n < _min : Bool) && (_err == null) : Bool)) {
            var _nn:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _r.read((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>));
                _nn = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            _n = (_n + (_nn) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L414"
        if ((((_n < _min : Bool) && (_n > (0 : stdgo.GoInt) : Bool) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L420"
        if ((((_expectsPadding && (_min < (8 : stdgo.GoInt) : Bool) : Bool) && _n == ((0 : stdgo.GoInt)) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L423"
        return { _0 : _n, _1 : _err };
    }
