package stdgo._internal.compress.bzip2;
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.T_moveToFrontDecoder_asInterface) class T_moveToFrontDecoder_static_extension {
    @:keep
    @:tdfield
    static public function first( _m:stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder):stdgo.GoUInt8 {
        @:recv var _m:stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder = _m;
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/move_to_front.go#L52"
        return _m[(0 : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function decode( _m:stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder, _n:stdgo.GoInt):stdgo.GoUInt8 {
        @:recv var _m:stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder = _m;
        var _b = (0 : stdgo.GoUInt8);
        _b = _m[(_n : stdgo.GoInt)];
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/move_to_front.go#L45"
        (_m.__slice__((1 : stdgo.GoInt)) : stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder).__copyTo__((_m.__slice__(0, _n) : stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder));
        _m[(0 : stdgo.GoInt)] = _b;
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/move_to_front.go#L47"
        return _b;
    }
}
