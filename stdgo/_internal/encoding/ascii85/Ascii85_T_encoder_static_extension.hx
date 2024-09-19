package stdgo._internal.encoding.ascii85;
@:keep @:allow(stdgo._internal.encoding.ascii85.Ascii85.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    static public function close( _e:stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_T_encoder.T_encoder>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_T_encoder.T_encoder> = _e;
        if (((_e._err == null) && (_e._nbuf > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _nout = (stdgo._internal.encoding.ascii85.Ascii85_encode.encode((_e._out.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_e._buf.__slice__((0 : stdgo.GoInt), _e._nbuf) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            _e._nbuf = (0 : stdgo.GoInt);
            {
                var __tmp__ = _e._w.write((_e._out.__slice__((0 : stdgo.GoInt), _nout) : stdgo.Slice<stdgo.GoUInt8>));
                _e._err = __tmp__._1;
            };
        };
        return _e._err;
    }
    @:keep
    static public function write( _e:stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_T_encoder.T_encoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_T_encoder.T_encoder> = _e;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_e._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _e._err };
        };
        if ((_e._nbuf > (0 : stdgo.GoInt) : Bool)) {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor(((_i < (_p.length) : Bool) && (_e._nbuf < (4 : stdgo.GoInt) : Bool) : Bool), _i++, {
                    _e._buf[(_e._nbuf : stdgo.GoInt)] = _p[(_i : stdgo.GoInt)];
                    _e._nbuf++;
                });
            };
            _n = (_n + (_i) : stdgo.GoInt);
            _p = (_p.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
            if ((_e._nbuf < (4 : stdgo.GoInt) : Bool)) {
                return { _0 : _n, _1 : _err };
            };
            var _nout = (stdgo._internal.encoding.ascii85.Ascii85_encode.encode((_e._out.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_e._buf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            {
                {
                    var __tmp__ = _e._w.write((_e._out.__slice__((0 : stdgo.GoInt), _nout) : stdgo.Slice<stdgo.GoUInt8>));
                    _e._err = __tmp__._1;
                };
                if (_e._err != null) {
                    return { _0 : _n, _1 : _e._err };
                };
            };
            _e._nbuf = (0 : stdgo.GoInt);
        };
        while (((_p.length) >= (4 : stdgo.GoInt) : Bool)) {
            var _nn = (816 : stdgo.GoInt);
            if ((_nn > (_p.length) : Bool)) {
                _nn = (_p.length);
            };
            _nn = (_nn - ((_nn % (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            if ((_nn > (0 : stdgo.GoInt) : Bool)) {
                var _nout = (stdgo._internal.encoding.ascii85.Ascii85_encode.encode((_e._out.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_p.__slice__((0 : stdgo.GoInt), _nn) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                {
                    {
                        var __tmp__ = _e._w.write((_e._out.__slice__((0 : stdgo.GoInt), _nout) : stdgo.Slice<stdgo.GoUInt8>));
                        _e._err = __tmp__._1;
                    };
                    if (_e._err != null) {
                        return { _0 : _n, _1 : _e._err };
                    };
                };
            };
            _n = (_n + (_nn) : stdgo.GoInt);
            _p = (_p.__slice__(_nn) : stdgo.Slice<stdgo.GoUInt8>);
        };
        stdgo.Go.copySlice((_e._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _p);
        _e._nbuf = (_p.length);
        _n = (_n + ((_p.length)) : stdgo.GoInt);
        return { _0 : _n, _1 : _err };
    }
}