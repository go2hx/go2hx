package stdgo._internal.compress.bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.T_moveToFrontDecoder_asInterface) class T_moveToFrontDecoder_static_extension {
    @:keep
    @:tdfield
    static public function first( _m:stdgo._internal.compress.bzip2.Bzip2_T_moveToFrontDecoder.T_moveToFrontDecoder):stdgo.GoUInt8 {
        @:recv var _m:stdgo._internal.compress.bzip2.Bzip2_T_moveToFrontDecoder.T_moveToFrontDecoder = _m;
        return _m[(0 : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function decode( _m:stdgo._internal.compress.bzip2.Bzip2_T_moveToFrontDecoder.T_moveToFrontDecoder, _n:stdgo.GoInt):stdgo.GoUInt8 {
        @:recv var _m:stdgo._internal.compress.bzip2.Bzip2_T_moveToFrontDecoder.T_moveToFrontDecoder = _m;
        var _b = (0 : stdgo.GoUInt8);
        _b = _m[(_n : stdgo.GoInt)];
        (_m.__slice__((1 : stdgo.GoInt)) : stdgo._internal.compress.bzip2.Bzip2_T_moveToFrontDecoder.T_moveToFrontDecoder).__copyTo__((_m.__slice__(0, _n) : stdgo._internal.compress.bzip2.Bzip2_T_moveToFrontDecoder.T_moveToFrontDecoder));
        _m[(0 : stdgo.GoInt)] = _b;
        return _b;
    }
}
