package stdgo._internal.encoding.binary;
function readUvarint(_r:stdgo._internal.io.Io_bytereader.ByteReader):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _x:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _s:stdgo.GoUInt = (0 : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _r.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    if (((_i > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                        _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    };
                    return { _0 : _x, _1 : _err };
                };
if ((_b < (128 : stdgo.GoUInt8) : Bool)) {
                    if (((_i == (9 : stdgo.GoInt)) && (_b > (1 : stdgo.GoUInt8) : Bool) : Bool)) {
                        return { _0 : _x, _1 : stdgo._internal.encoding.binary.Binary__erroverflow._errOverflow };
                    };
                    return { _0 : (_x | ((_b : stdgo.GoUInt64) << _s : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : (null : stdgo.Error) };
                };
_x = (_x | ((((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _s : stdgo.GoUInt64)) : stdgo.GoUInt64);
_s = (_s + ((7u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                _i++;
            };
        };
        return { _0 : _x, _1 : stdgo._internal.encoding.binary.Binary__erroverflow._errOverflow };
    }
