package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_commontype_static_extension.CommonType_static_extension) class CommonType {
    public var name : stdgo.GoString = "";
    public var id : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId = ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
    public function new(?name:stdgo.GoString, ?id:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId) {
        if (name != null) this.name = name;
        if (id != null) this.id = id;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CommonType(name, id);
    }
}
