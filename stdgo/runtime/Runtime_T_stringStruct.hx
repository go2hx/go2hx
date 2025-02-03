package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_stringStruct_static_extension) abstract T_stringStruct(stdgo._internal.runtime.Runtime_T_stringStruct.T_stringStruct) from stdgo._internal.runtime.Runtime_T_stringStruct.T_stringStruct to stdgo._internal.runtime.Runtime_T_stringStruct.T_stringStruct {
    public function new() this = new stdgo._internal.runtime.Runtime_T_stringStruct.T_stringStruct();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
