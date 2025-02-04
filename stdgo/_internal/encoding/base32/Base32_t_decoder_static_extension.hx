package stdgo._internal.encoding.base32;
@:keep @:allow(stdgo._internal.encoding.base32.Base32.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    @:tdfield
    static public function read( _d:stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_decoder.T_decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_decoder.T_decoder> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((((@:checkr _d ?? throw "null pointer dereference")._out.length) > (0 : stdgo.GoInt) : Bool)) {
            _n = _p.__copyTo__((@:checkr _d ?? throw "null pointer dereference")._out);
            (@:checkr _d ?? throw "null pointer dereference")._out = ((@:checkr _d ?? throw "null pointer dereference")._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            if (((@:checkr _d ?? throw "null pointer dereference")._out.length) == ((0 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _nn = (((_p.length) / (5 : stdgo.GoInt) : stdgo.GoInt) * (8 : stdgo.GoInt) : stdgo.GoInt);
        if ((_nn < (8 : stdgo.GoInt) : Bool)) {
            _nn = (8 : stdgo.GoInt);
        };
        if ((_nn > ((@:checkr _d ?? throw "null pointer dereference")._buf.length) : Bool)) {
            _nn = ((@:checkr _d ?? throw "null pointer dereference")._buf.length);
        };
        var _min:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expectsPadding:Bool = false;
        if ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._enc ?? throw "null pointer dereference")._padChar == ((-1 : stdgo.GoInt32))) {
            _min = (1 : stdgo.GoInt);
            _expectsPadding = false;
        } else {
            _min = ((8 : stdgo.GoInt) - (@:checkr _d ?? throw "null pointer dereference")._nbuf : stdgo.GoInt);
            _expectsPadding = true;
        };
        {
            var __tmp__ = stdgo._internal.encoding.base32.Base32__readencodeddata._readEncodedData((@:checkr _d ?? throw "null pointer dereference")._r, ((@:checkr _d ?? throw "null pointer dereference")._buf.__slice__((@:checkr _d ?? throw "null pointer dereference")._nbuf, _nn) : stdgo.Slice<stdgo.GoUInt8>), _min, _expectsPadding);
            _nn = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        (@:checkr _d ?? throw "null pointer dereference")._nbuf = ((@:checkr _d ?? throw "null pointer dereference")._nbuf + (_nn) : stdgo.GoInt);
        if (((@:checkr _d ?? throw "null pointer dereference")._nbuf < _min : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (((_nn > (0 : stdgo.GoInt) : Bool) && (@:checkr _d ?? throw "null pointer dereference")._end : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((0i64 : stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError)) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _nr:stdgo.GoInt = (0 : stdgo.GoInt);
        if ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._enc ?? throw "null pointer dereference")._padChar == ((-1 : stdgo.GoInt32))) {
            _nr = (@:checkr _d ?? throw "null pointer dereference")._nbuf;
        } else {
            _nr = (((@:checkr _d ?? throw "null pointer dereference")._nbuf / (8 : stdgo.GoInt) : stdgo.GoInt) * (8 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _nw = (@:check2r (@:checkr _d ?? throw "null pointer dereference")._enc.decodedLen((@:checkr _d ?? throw "null pointer dereference")._nbuf) : stdgo.GoInt);
        if ((_nw > (_p.length) : Bool)) {
            {
                var __tmp__ = @:check2r (@:checkr _d ?? throw "null pointer dereference")._enc._decode(((@:checkr _d ?? throw "null pointer dereference")._outbuf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _d ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt), _nr) : stdgo.Slice<stdgo.GoUInt8>));
                _nw = @:tmpset0 __tmp__._0;
                (@:checkr _d ?? throw "null pointer dereference")._end = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            (@:checkr _d ?? throw "null pointer dereference")._out = ((@:checkr _d ?? throw "null pointer dereference")._outbuf.__slice__((0 : stdgo.GoInt), _nw) : stdgo.Slice<stdgo.GoUInt8>);
            _n = _p.__copyTo__((@:checkr _d ?? throw "null pointer dereference")._out);
            (@:checkr _d ?? throw "null pointer dereference")._out = ((@:checkr _d ?? throw "null pointer dereference")._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            {
                var __tmp__ = @:check2r (@:checkr _d ?? throw "null pointer dereference")._enc._decode(_p, ((@:checkr _d ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt), _nr) : stdgo.Slice<stdgo.GoUInt8>));
                _n = @:tmpset0 __tmp__._0;
                (@:checkr _d ?? throw "null pointer dereference")._end = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
        };
        (@:checkr _d ?? throw "null pointer dereference")._nbuf = ((@:checkr _d ?? throw "null pointer dereference")._nbuf - (_nr) : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _d ?? throw "null pointer dereference")._nbuf : Bool)) {
                (@:checkr _d ?? throw "null pointer dereference")._buf[(_i : stdgo.GoInt)] = (@:checkr _d ?? throw "null pointer dereference")._buf[(_i + _nr : stdgo.GoInt)];
                _i++;
            };
        };
        if (((_err != null) && ((((@:checkr _d ?? throw "null pointer dereference")._err == null) || (stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) : Bool)) {
            (@:checkr _d ?? throw "null pointer dereference")._err = _err;
        };
        if ((((@:checkr _d ?? throw "null pointer dereference")._out.length) > (0 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
