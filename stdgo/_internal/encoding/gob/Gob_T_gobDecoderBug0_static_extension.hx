package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_gobDecoderBug0_asInterface) class T_gobDecoderBug0_static_extension {
    @:keep
    static public function gobDecode( _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0> = _br;
        _br._foo = ("foo" : stdgo.GoString);
        _br._bar = ("bar" : stdgo.GoString);
        return (null : stdgo.Error);
    }
    @:keep
    static public function gobEncode( _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0> = _br;
        return { _0 : ((_br.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function string( _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>):stdgo.GoString {
        @:recv var _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0> = _br;
        return ((_br._foo + ("-" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _br._bar?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
