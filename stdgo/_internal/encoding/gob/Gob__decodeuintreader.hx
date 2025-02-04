package stdgo._internal.encoding.gob;
function _decodeUintReader(_r:stdgo._internal.io.Io_reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _x = (0 : stdgo.GoUInt64), _width = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _width = (1 : stdgo.GoInt);
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, (_buf.__slice__((0 : stdgo.GoInt), _width) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n == ((0 : stdgo.GoInt))) {
            return { _0 : _x, _1 : _width, _2 : _err };
        };
        var _b = (_buf[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_b <= (127 : stdgo.GoUInt8) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (_b : stdgo.GoUInt64), _1 : _width, _2 : (null : stdgo.Error) };
                _x = __tmp__._0;
                _width = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        _n = -((_b : stdgo.GoInt8) : stdgo.GoInt);
        if ((_n > (8 : stdgo.GoInt) : Bool)) {
            _err = stdgo._internal.encoding.gob.Gob__errbaduint._errBadUint;
            return { _0 : _x, _1 : _width, _2 : _err };
        };
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, (_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>));
            _width = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
            };
            return { _0 : _x, _1 : _width, _2 : _err };
        };
        for (__8 => _b in (_buf.__slice__((0 : stdgo.GoInt), _width) : stdgo.Slice<stdgo.GoUInt8>)) {
            _x = ((_x << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_b : stdgo.GoUInt64) : stdgo.GoUInt64);
        };
        _width++;
        return { _0 : _x, _1 : _width, _2 : _err };
    }
