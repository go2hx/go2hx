package stdgo._internal.encoding.base32;
@:keep @:allow(stdgo._internal.encoding.base32.Base32.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    static public function read( _d:stdgo.Ref<stdgo._internal.encoding.base32.Base32_T_decoder.T_decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.base32.Base32_T_decoder.T_decoder> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_d._out.length) > (0 : stdgo.GoInt) : Bool)) {
            _n = stdgo.Go.copySlice(_p, _d._out);
            _d._out = (_d._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            if ((_d._out.length) == ((0 : stdgo.GoInt))) {
                return { _0 : _n, _1 : _d._err };
            };
            return { _0 : _n, _1 : (null : stdgo.Error) };
        };
        if (_d._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
        };
        var _nn = (((_p.length) / (5 : stdgo.GoInt) : stdgo.GoInt) * (8 : stdgo.GoInt) : stdgo.GoInt);
        if ((_nn < (8 : stdgo.GoInt) : Bool)) {
            _nn = (8 : stdgo.GoInt);
        };
        if ((_nn > (_d._buf.length) : Bool)) {
            _nn = (_d._buf.length);
        };
        var _min:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expectsPadding:Bool = false;
        if (_d._enc._padChar == ((-1 : stdgo.GoInt32))) {
            _min = (1 : stdgo.GoInt);
            _expectsPadding = false;
        } else {
            _min = ((8 : stdgo.GoInt) - _d._nbuf : stdgo.GoInt);
            _expectsPadding = true;
        };
        {
            var __tmp__ = stdgo._internal.encoding.base32.Base32__readEncodedData._readEncodedData(_d._r, (_d._buf.__slice__(_d._nbuf, _nn) : stdgo.Slice<stdgo.GoUInt8>), _min, _expectsPadding);
            _nn = __tmp__._0;
            _d._err = __tmp__._1;
        };
        _d._nbuf = (_d._nbuf + (_nn) : stdgo.GoInt);
        if ((_d._nbuf < _min : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
        };
        if (((_nn > (0 : stdgo.GoInt) : Bool) && _d._end : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((0i64 : stdgo._internal.encoding.base32.Base32_CorruptInputError.CorruptInputError)) };
        };
        var _nr:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_d._enc._padChar == ((-1 : stdgo.GoInt32))) {
            _nr = _d._nbuf;
        } else {
            _nr = ((_d._nbuf / (8 : stdgo.GoInt) : stdgo.GoInt) * (8 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _nw = (_d._enc.decodedLen(_d._nbuf) : stdgo.GoInt);
        if ((_nw > (_p.length) : Bool)) {
            {
                var __tmp__ = _d._enc._decode((_d._outbuf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_d._buf.__slice__((0 : stdgo.GoInt), _nr) : stdgo.Slice<stdgo.GoUInt8>));
                _nw = __tmp__._0;
                _d._end = __tmp__._1;
                _err = __tmp__._2;
            };
            _d._out = (_d._outbuf.__slice__((0 : stdgo.GoInt), _nw) : stdgo.Slice<stdgo.GoUInt8>);
            _n = stdgo.Go.copySlice(_p, _d._out);
            _d._out = (_d._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            {
                var __tmp__ = _d._enc._decode(_p, (_d._buf.__slice__((0 : stdgo.GoInt), _nr) : stdgo.Slice<stdgo.GoUInt8>));
                _n = __tmp__._0;
                _d._end = __tmp__._1;
                _err = __tmp__._2;
            };
        };
        _d._nbuf = (_d._nbuf - (_nr) : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _d._nbuf : Bool)) {
                _d._buf[(_i : stdgo.GoInt)] = _d._buf[(_i + _nr : stdgo.GoInt)];
                _i++;
            };
        };
        if (((_err != null) && (((_d._err == null) || (stdgo.Go.toInterface(_d._err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) : Bool)) {
            _d._err = _err;
        };
        if (((_d._out.length) > (0 : stdgo.GoInt) : Bool)) {
            return { _0 : _n, _1 : (null : stdgo.Error) };
        };
        return { _0 : _n, _1 : _d._err };
    }
}
