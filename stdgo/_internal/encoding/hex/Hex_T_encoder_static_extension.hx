package stdgo._internal.encoding.hex;
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    static public function write( _e:stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_encoder.T_encoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_encoder.T_encoder> = _e;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        while ((((_p.length) > (0 : stdgo.GoInt) : Bool) && (_e._err == null) : Bool)) {
            var _chunkSize = (512 : stdgo.GoInt);
            if (((_p.length) < _chunkSize : Bool)) {
                _chunkSize = (_p.length);
            };
            var _written:stdgo.GoInt = (0 : stdgo.GoInt);
            var _encoded = (stdgo._internal.encoding.hex.Hex_encode.encode((_e._out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_p.__slice__(0, _chunkSize) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            {
                var __tmp__ = _e._w.write((_e._out.__slice__(0, _encoded) : stdgo.Slice<stdgo.GoUInt8>));
                _written = __tmp__._0;
                _e._err = __tmp__._1;
            };
            _n = (_n + ((_written / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            _p = (_p.__slice__(_chunkSize) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return { _0 : _n, _1 : _err = _e._err };
    }
}
