package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_structtype_static_extension.T_structType_static_extension) class T_structType {
    @:embedded
    public var commonType : stdgo._internal.encoding.gob.Gob_commontype.CommonType = ({} : stdgo._internal.encoding.gob.Gob_commontype.CommonType);
    public var field : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_fieldtype.T_fieldType> = (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_fieldtype.T_fieldType>);
    public function new(?commonType:stdgo._internal.encoding.gob.Gob_commontype.CommonType, ?field:stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_fieldtype.T_fieldType>) {
        if (commonType != null) this.commonType = commonType;
        if (field != null) this.field = field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _id(get, never) : () -> stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId;
    @:embedded
    @:embeddededffieldsffun
    public function get__id():() -> stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId return @:check32 this.commonType._id;
    public var _name(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__name():() -> stdgo.GoString return @:check32 this.commonType._name;
    public var _setId(get, never) : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__setId():stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId -> Void return @:check32 this.commonType._setId;
    public function __copy__() {
        return new T_structType(commonType, field);
    }
}
