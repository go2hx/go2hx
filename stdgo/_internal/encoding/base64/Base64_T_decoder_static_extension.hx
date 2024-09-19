package stdgo._internal.encoding.base64;
@:keep @:allow(stdgo._internal.encoding.base64.Base64.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    static public function read( _d:stdgo.Ref<stdgo._internal.encoding.base64.Base64_T_decoder.T_decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.base64.Base64_T_decoder.T_decoder> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_d._out.length) > (0 : stdgo.GoInt) : Bool)) {
            _n = stdgo.Go.copySlice(_p, _d._out);
            _d._out = (_d._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            return { _0 : _n, _1 : (null : stdgo.Error) };
        };
        if (_d._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
        };
        while (((_d._nbuf < (4 : stdgo.GoInt) : Bool) && (_d._readErr == null) : Bool)) {
            var _nn = (((_p.length) / (3 : stdgo.GoInt) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt);
            if ((_nn < (4 : stdgo.GoInt) : Bool)) {
                _nn = (4 : stdgo.GoInt);
            };
            if ((_nn > (_d._buf.length) : Bool)) {
                _nn = (_d._buf.length);
            };
            {
                var __tmp__ = _d._r.read((_d._buf.__slice__(_d._nbuf, _nn) : stdgo.Slice<stdgo.GoUInt8>));
                _nn = __tmp__._0;
                _d._readErr = __tmp__._1;
            };
            _d._nbuf = (_d._nbuf + (_nn) : stdgo.GoInt);
        };
        if ((_d._nbuf < (4 : stdgo.GoInt) : Bool)) {
            if (((_d._enc._padChar == (-1 : stdgo.GoInt32)) && (_d._nbuf > (0 : stdgo.GoInt) : Bool) : Bool)) {
                var _nw:stdgo.GoInt = (0 : stdgo.GoInt);
                {
                    var __tmp__ = _d._enc.decode((_d._outbuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_d._buf.__slice__(0, _d._nbuf) : stdgo.Slice<stdgo.GoUInt8>));
                    _nw = __tmp__._0;
                    _d._err = __tmp__._1;
                };
                _d._nbuf = (0 : stdgo.GoInt);
                _d._out = (_d._outbuf.__slice__(0, _nw) : stdgo.Slice<stdgo.GoUInt8>);
                _n = stdgo.Go.copySlice(_p, _d._out);
                _d._out = (_d._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_n > (0 : stdgo.GoInt) : Bool) || ((_p.length) == ((0 : stdgo.GoInt)) && ((_d._out.length) > (0 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                };
                if (_d._err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
                };
            };
            _d._err = _d._readErr;
            if (((stdgo.Go.toInterface(_d._err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) && (_d._nbuf > (0 : stdgo.GoInt) : Bool) : Bool)) {
                _d._err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
            };
            return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
        };
        var _nr = ((_d._nbuf / (4 : stdgo.GoInt) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _nw = ((_d._nbuf / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt);
        if ((_nw > (_p.length) : Bool)) {
            {
                var __tmp__ = _d._enc.decode((_d._outbuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_d._buf.__slice__(0, _nr) : stdgo.Slice<stdgo.GoUInt8>));
                _nw = __tmp__._0;
                _d._err = __tmp__._1;
            };
            _d._out = (_d._outbuf.__slice__(0, _nw) : stdgo.Slice<stdgo.GoUInt8>);
            _n = stdgo.Go.copySlice(_p, _d._out);
            _d._out = (_d._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            {
                var __tmp__ = _d._enc.decode(_p, (_d._buf.__slice__(0, _nr) : stdgo.Slice<stdgo.GoUInt8>));
                _n = __tmp__._0;
                _d._err = __tmp__._1;
            };
        };
        _d._nbuf = (_d._nbuf - (_nr) : stdgo.GoInt);
        stdgo.Go.copySlice((_d._buf.__slice__(0, _d._nbuf) : stdgo.Slice<stdgo.GoUInt8>), (_d._buf.__slice__(_nr) : stdgo.Slice<stdgo.GoUInt8>));
        return { _0 : _n, _1 : _d._err };
    }
}
