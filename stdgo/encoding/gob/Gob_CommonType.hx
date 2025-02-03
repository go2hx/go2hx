package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.CommonType_static_extension) abstract CommonType(stdgo._internal.encoding.gob.Gob_CommonType.CommonType) from stdgo._internal.encoding.gob.Gob_CommonType.CommonType to stdgo._internal.encoding.gob.Gob_CommonType.CommonType {
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
    public function new(?name:String, ?id:T_typeId) this = new stdgo._internal.encoding.gob.Gob_CommonType.CommonType((name : stdgo.GoString), id);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
