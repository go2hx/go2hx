package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_stackobjectrecord_static_extension.T_stackObjectRecord_static_extension) class T_stackObjectRecord {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stackObjectRecord();
    }
}
