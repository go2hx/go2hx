package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_interfaceindirecttestt_static_extension.T_interfaceIndirectTestT_static_extension) class T_interfaceIndirectTestT {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_interfaceIndirectTestT();
    }
}
