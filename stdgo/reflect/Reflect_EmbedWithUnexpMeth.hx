package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.EmbedWithUnexpMeth_static_extension) abstract EmbedWithUnexpMeth(stdgo._internal.reflect.Reflect_EmbedWithUnexpMeth.EmbedWithUnexpMeth) from stdgo._internal.reflect.Reflect_EmbedWithUnexpMeth.EmbedWithUnexpMeth to stdgo._internal.reflect.Reflect_EmbedWithUnexpMeth.EmbedWithUnexpMeth {
    public function new() this = new stdgo._internal.reflect.Reflect_EmbedWithUnexpMeth.EmbedWithUnexpMeth();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
