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
    public var _id(get, never) : () -> stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId;
    @:embedded
    @:embeddededffieldsffun
    public function get__id():() -> stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId return @:check3 this.commonType._id;
    public var _name(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__name():() -> stdgo.GoString return @:check3 this.commonType._name;
    public var _setId(get, never) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__setId():stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId -> Void return @:check3 this.commonType._setId;
    public function __copy__() {
        return new T_structType(commonType, field);
    }
}
