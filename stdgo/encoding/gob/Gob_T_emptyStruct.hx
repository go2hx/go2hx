package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_emptyStruct_static_extension) abstract T_emptyStruct(stdgo._internal.encoding.gob.Gob_T_emptyStruct.T_emptyStruct) from stdgo._internal.encoding.gob.Gob_T_emptyStruct.T_emptyStruct to stdgo._internal.encoding.gob.Gob_T_emptyStruct.T_emptyStruct {
    public function new() this = new stdgo._internal.encoding.gob.Gob_T_emptyStruct.T_emptyStruct();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
