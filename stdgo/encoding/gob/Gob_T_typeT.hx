package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_typeT_static_extension) abstract T_typeT(stdgo._internal.encoding.gob.Gob_T_typeT.T_typeT) from stdgo._internal.encoding.gob.Gob_T_typeT.T_typeT to stdgo._internal.encoding.gob.Gob_T_typeT.T_typeT {
    public var _id(get, set) : T_typeId;
    function get__id():T_typeId return this._id;
    function set__id(v:T_typeId):T_typeId {
        this._id = v;
        return v;
    }
    public var _str(get, set) : String;
    function get__str():String return this._str;
    function set__str(v:String):String {
        this._str = (v : stdgo.GoString);
        return v;
    }
    public function new(?_id:T_typeId, ?_str:String) this = new stdgo._internal.encoding.gob.Gob_T_typeT.T_typeT(_id, (_str : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
