package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.Float__asInterface) class Float__static_extension {
    @:keep
    @:tdfield
    static public function square( _f:stdgo._internal.encoding.gob.Gob_float_.Float_):stdgo.GoInt {
        @:recv var _f:stdgo._internal.encoding.gob.Gob_float_.Float_ = _f;
        return ((_f * _f : stdgo._internal.encoding.gob.Gob_float_.Float_) : stdgo.GoInt);
    }
}
