package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_panicnilerror_static_extension.PanicNilError_static_extension) class PanicNilError {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PanicNilError();
    }
}
