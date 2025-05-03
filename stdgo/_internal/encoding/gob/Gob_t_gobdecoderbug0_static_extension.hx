package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_gobDecoderBug0_asInterface) class T_gobDecoderBug0_static_extension {
    @:keep
    @:tdfield
    static public function gobDecode( _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0> = _br;
        (@:checkr _br ?? throw "null pointer dereference")._foo = ("foo" : stdgo.GoString);
        (@:checkr _br ?? throw "null pointer dereference")._bar = ("bar" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L687"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function gobEncode( _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0> = _br;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L681"
        return { _0 : ((_br.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function string( _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0>):stdgo.GoString {
        @:recv var _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0> = _br;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L677"
        return (((@:checkr _br ?? throw "null pointer dereference")._foo + ("-" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _br ?? throw "null pointer dereference")._bar?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
