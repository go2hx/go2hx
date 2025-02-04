package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_buffer_static_extension.Buffer_static_extension) class Buffer {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Buffer();
    }
}
