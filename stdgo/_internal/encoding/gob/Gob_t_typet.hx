package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_typet_static_extension.T_typeT_static_extension) class T_typeT {
    public var _id : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId = ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
    public var _str : stdgo.GoString = "";
    public function new(?_id:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, ?_str:stdgo.GoString) {
        if (_id != null) this._id = _id;
        if (_str != null) this._str = _str;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_typeT(_id, _str);
    }
}
