package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_stackfreelist_static_extension.T_stackfreelist_static_extension) class T_stackfreelist {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stackfreelist();
    }
}
