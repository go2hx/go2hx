package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_T_sliceType_static_extension.T_sliceType_static_extension) class T_sliceType {
    @:embedded
    public var commonType : stdgo._internal.encoding.gob.Gob_CommonType.CommonType = ({} : stdgo._internal.encoding.gob.Gob_CommonType.CommonType);
    public var elem : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId = ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
    public function new(?commonType:stdgo._internal.encoding.gob.Gob_CommonType.CommonType, ?elem:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) {
        if (commonType != null) this.commonType = commonType;
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
        return new T_sliceType(commonType, elem);
    }
}