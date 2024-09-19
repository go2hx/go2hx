package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_T_mapType_static_extension.T_mapType_static_extension) class T_mapType {
    @:embedded
    public var commonType : stdgo._internal.encoding.gob.Gob_CommonType.CommonType = ({} : stdgo._internal.encoding.gob.Gob_CommonType.CommonType);
    public var key : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId = ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
    public var elem : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId = ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
    public function new(?commonType:stdgo._internal.encoding.gob.Gob_CommonType.CommonType, ?key:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, ?elem:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) {
        if (commonType != null) this.commonType = commonType;
        if (key != null) this.key = key;
        if (elem != null) this.elem = elem;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _id():stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId return this.commonType._id();
    @:embedded
    public function _name():stdgo.GoString return this.commonType._name();
    @:embedded
    public function _setId(__0:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) this.commonType._setId(__0);
    public function __copy__() {
        return new T_mapType(commonType, key, elem);
    }
}
