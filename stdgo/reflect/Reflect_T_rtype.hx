package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.T_rtype_static_extension) abstract T_rtype(stdgo._internal.reflect.Reflect_T_rtype.T_rtype) from stdgo._internal.reflect.Reflect_T_rtype.T_rtype to stdgo._internal.reflect.Reflect_T_rtype.T_rtype {
    public function new() this = new stdgo._internal.reflect.Reflect_T_rtype.T_rtype();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
