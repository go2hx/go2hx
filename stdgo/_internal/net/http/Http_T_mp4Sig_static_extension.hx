package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_mp4Sig_asInterface) class T_mp4Sig_static_extension {
    @:keep
    static public function _match( _:stdgo._internal.net.http.Http_T_mp4Sig.T_mp4Sig, _data:stdgo.Slice<stdgo.GoUInt8>, _firstNonWS:stdgo.GoInt):stdgo.GoString {
        @:recv var _:stdgo._internal.net.http.Http_T_mp4Sig.T_mp4Sig = _?.__copy__();
        if (((_data.length) < (12 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        var _boxSize = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_data.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        if ((((_data.length) < _boxSize : Bool) || ((_boxSize % (4 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        if (!stdgo._internal.bytes.Bytes_equal.equal((_data.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.net.http.Http__mp4ftype._mp4ftype)) {
            return stdgo.Go.str()?.__copy__();
        };
        {
            var _st = (8 : stdgo.GoInt);
            while ((_st < _boxSize : Bool)) {
                if (_st == ((12 : stdgo.GoInt))) {
                    {
                        _st = (_st + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                        continue;
                    };
                };
if (stdgo._internal.bytes.Bytes_equal.equal((_data.__slice__(_st, (_st + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.net.http.Http__mp4._mp4)) {
                    return ("video/mp4" : stdgo.GoString);
                };
                _st = (_st + ((4 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
}
