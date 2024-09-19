package _internal.encoding.gob_test;
@:keep @:allow(_internal.encoding.gob_test.Gob_test.Point_asInterface) class Point_static_extension {
    @:keep
    static public function hypotenuse( _p:_internal.encoding.gob_test.Gob_test_Point.Point):stdgo.GoFloat64 {
        @:recv var _p:_internal.encoding.gob_test.Gob_test_Point.Point = _p?.__copy__();
        return stdgo._internal.math.Math_hypot.hypot((_p.x : stdgo.GoFloat64), (_p.y : stdgo.GoFloat64));
    }
}
