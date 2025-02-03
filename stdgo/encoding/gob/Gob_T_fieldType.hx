package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_fieldType_static_extension) abstract T_fieldType(stdgo._internal.encoding.gob.Gob_T_fieldType.T_fieldType) from stdgo._internal.encoding.gob.Gob_T_fieldType.T_fieldType to stdgo._internal.encoding.gob.Gob_T_fieldType.T_fieldType {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var id(get, set) : T_typeId;
    function get_id():T_typeId return this.id;
    function set_id(v:T_typeId):T_typeId {
        this.id = v;
        return v;
    }
    public function new(?name:String, ?id:T_typeId) this = new stdgo._internal.encoding.gob.Gob_T_fieldType.T_fieldType((name : stdgo.GoString), id);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
