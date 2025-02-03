package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.Buffer_static_extension) abstract Buffer(stdgo._internal.reflect.Reflect_Buffer.Buffer) from stdgo._internal.reflect.Reflect_Buffer.Buffer to stdgo._internal.reflect.Reflect_Buffer.Buffer {
    public function new() this = new stdgo._internal.reflect.Reflect_Buffer.Buffer();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
