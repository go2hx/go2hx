package stdgo._internal.encoding.gob;
@:structInit class T_fieldType {
    public var name : stdgo.GoString = "";
    public var id : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId = ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
    public function new(?name:stdgo.GoString, ?id:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) {
        if (name != null) this.name = name;
        if (id != null) this.id = id;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fieldType(name, id);
    }
}
