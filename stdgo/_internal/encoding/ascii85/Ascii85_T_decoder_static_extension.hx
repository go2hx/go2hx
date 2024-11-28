package stdgo._internal.encoding.ascii85;
@:keep @:allow(stdgo._internal.encoding.ascii85.Ascii85.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    static public function read( _d:stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_T_decoder.T_decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_T_decoder.T_decoder> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = (null : stdgo.Error) };
        };
        if (_d._err != null) {
            return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = _d._err };
        };
        while (true) {
            if (((_d._out.length) > (0 : stdgo.GoInt) : Bool)) {
                _n = stdgo.Go.copySlice(_p, _d._out);
                _d._out = (_d._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                return { _0 : _n, _1 : _err };
            };
            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt);
var _ndst = __2, _nsrc = __1, _nn = __0;
            if ((_d._nbuf > (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.encoding.ascii85.Ascii85_decode.decode((_d._outbuf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_d._buf.__slice__((0 : stdgo.GoInt), _d._nbuf) : stdgo.Slice<stdgo.GoUInt8>), _d._readErr != null);
                    _ndst = __tmp__._0;
                    _nsrc = __tmp__._1;
                    _d._err = __tmp__._2;
                };
                if ((_ndst > (0 : stdgo.GoInt) : Bool)) {
                    _d._out = (_d._outbuf.__slice__((0 : stdgo.GoInt), _ndst) : stdgo.Slice<stdgo.GoUInt8>);
                    _d._nbuf = stdgo.Go.copySlice((_d._buf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_d._buf.__slice__(_nsrc, _d._nbuf) : stdgo.Slice<stdgo.GoUInt8>));
                    continue;
                };
                if (((_ndst == (0 : stdgo.GoInt)) && (_d._err == null) : Bool)) {
                    var _off = (0 : stdgo.GoInt);
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _d._nbuf : Bool)) {
                            if ((_d._buf[(_i : stdgo.GoInt)] > (32 : stdgo.GoUInt8) : Bool)) {
                                _d._buf[(_off : stdgo.GoInt)] = _d._buf[(_i : stdgo.GoInt)];
                                _off++;
                            };
                            _i++;
                        };
                    };
                    _d._nbuf = _off;
                };
            };
            if (_d._err != null) {
                return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = _d._err };
            };
            if (_d._readErr != null) {
                _d._err = _d._readErr;
                return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = _d._err };
            };
            {
                var __tmp__ = _d._r.read((_d._buf.__slice__(_d._nbuf) : stdgo.Slice<stdgo.GoUInt8>));
                _nn = __tmp__._0;
                _d._readErr = __tmp__._1;
            };
            _d._nbuf = (_d._nbuf + (_nn) : stdgo.GoInt);
        };
    }
}
