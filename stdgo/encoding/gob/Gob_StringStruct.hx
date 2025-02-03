package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.StringStruct_static_extension) abstract StringStruct(stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct) from stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct to stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct {
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = (v : stdgo.GoString);
        return v;
    }
    public function new(?_s:String) this = new stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct((_s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
