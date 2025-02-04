package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_stringstruct_static_extension.T_stringStruct_static_extension) class T_stringStruct {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stringStruct();
    }
}
