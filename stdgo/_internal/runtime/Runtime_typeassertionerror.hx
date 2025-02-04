package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_typeassertionerror_static_extension.TypeAssertionError_static_extension) class TypeAssertionError {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TypeAssertionError();
    }
}
