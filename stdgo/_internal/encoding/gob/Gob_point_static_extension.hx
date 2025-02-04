package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.Point_asInterface) class Point_static_extension {
    @:keep
    @:tdfield
    static public function square( _p:stdgo._internal.encoding.gob.Gob_point.Point):stdgo.GoInt {
        @:recv var _p:stdgo._internal.encoding.gob.Gob_point.Point = _p?.__copy__();
        return ((_p.x * _p.x : stdgo.GoInt) + (_p.y * _p.y : stdgo.GoInt) : stdgo.GoInt);
    }
}
