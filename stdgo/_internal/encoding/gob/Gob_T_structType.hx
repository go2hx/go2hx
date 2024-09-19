package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_T_structType_static_extension.T_structType_static_extension) class T_structType {
    @:embedded
    public var commonType : stdgo._internal.encoding.gob.Gob_CommonType.CommonType = ({} : stdgo._internal.encoding.gob.Gob_CommonType.CommonType);
    public var field : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_fieldType.T_fieldType> = (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_fieldType.T_fieldType>);
    public function new(?commonType:stdgo._internal.encoding.gob.Gob_CommonType.CommonType, ?field:stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_fieldType.T_fieldType>) {
        if (commonType != null) this.commonType = commonType;
        if (field != null) this.field = field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _id():stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId return this.commonType._id();
    @:embedded
    public function _name():stdgo.GoString return this.commonType._name();
    @:embedded
    public function _setId(__0:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) this.commonType._setId(__0);
    public function __copy__() {
        return new T_structType(commonType, field);
    }
}
