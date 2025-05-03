package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.Int__asInterface) class Int__static_extension {
    @:keep
    @:tdfield
    static public function square( _i:stdgo._internal.encoding.gob.Gob_int_.Int_):stdgo.GoInt {
        @:recv var _i:stdgo._internal.encoding.gob.Gob_int_.Int_ = _i;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1085"
        return ((_i * _i : stdgo._internal.encoding.gob.Gob_int_.Int_) : stdgo.GoInt);
    }
}
