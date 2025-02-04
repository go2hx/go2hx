package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_memrecord_static_extension.T_memRecord_static_extension) class T_memRecord {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_memRecord();
    }
}
