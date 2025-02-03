package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.PanicNilError_static_extension) abstract PanicNilError(stdgo._internal.runtime.Runtime_PanicNilError.PanicNilError) from stdgo._internal.runtime.Runtime_PanicNilError.PanicNilError to stdgo._internal.runtime.Runtime_PanicNilError.PanicNilError {
    public function new() this = new stdgo._internal.runtime.Runtime_PanicNilError.PanicNilError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
