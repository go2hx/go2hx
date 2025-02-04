package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_func_static_extension.Func_static_extension) class Func {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Func();
    }
}
