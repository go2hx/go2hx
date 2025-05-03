package stdgo._internal.internal.pkgbits;
function _readUvarint(_r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _x:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _s:stdgo.GoUInt = (0 : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L261"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _r.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L263"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L264"
                    if (((_i > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                        _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L267"
                    return { _0 : _x, _1 : _err };
                };
//"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L269"
                if ((_b < (128 : stdgo.GoUInt8) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L270"
                    if (((_i == (9 : stdgo.GoInt)) && (_b > (1 : stdgo.GoUInt8) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L271"
                        return { _0 : _x, _1 : stdgo._internal.internal.pkgbits.Pkgbits__overflow._overflow };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L273"
                    return { _0 : (_x | ((_b : stdgo.GoUInt64) << _s : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : (null : stdgo.Error) };
                };
_x = (_x | ((((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _s : stdgo.GoUInt64)) : stdgo.GoUInt64);
_s = (_s + ((7u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/decoder.go#L278"
        return { _0 : _x, _1 : stdgo._internal.internal.pkgbits.Pkgbits__overflow._overflow };
    }
