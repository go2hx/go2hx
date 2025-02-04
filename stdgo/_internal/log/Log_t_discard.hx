package stdgo._internal.log;
@:structInit @:using(stdgo._internal.log.Log_t_discard_static_extension.T_discard_static_extension) class T_discard {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_discard();
    }
}
