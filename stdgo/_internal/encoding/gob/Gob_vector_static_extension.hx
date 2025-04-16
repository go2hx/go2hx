package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.Vector_asInterface) class Vector_static_extension {
    @:keep
    @:tdfield
    static public function square( _v:stdgo._internal.encoding.gob.Gob_vector.Vector):stdgo.GoInt {
        @:recv var _v:stdgo._internal.encoding.gob.Gob_vector.Vector = _v;
        var _sum = (0 : stdgo.GoInt);
        for (__8 => _x in _v) {
            _sum = (_sum + ((_x * _x : stdgo.GoInt)) : stdgo.GoInt);
        };
        return _sum;
    }
}
