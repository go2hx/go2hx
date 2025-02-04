package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_emptystruct_static_extension.T_emptyStruct_static_extension) class T_emptyStruct {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_emptyStruct();
    }
}
