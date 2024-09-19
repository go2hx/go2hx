package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_gobEncoderType_asInterface) class T_gobEncoderType_static_extension {
    @:keep
    static public function _string( _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>):stdgo.GoString {
        @:recv var _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType> = _g;
        return _g.commonType.name?.__copy__();
    }
    @:keep
    static public function _safeString( _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):stdgo.GoString {
        @:recv var _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType> = _g;
        return _g.commonType.name?.__copy__();
    }
    @:embedded
    public static function _setId( __self__:stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType, __0:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) __self__._setId(__0);
    @:embedded
    public static function _name( __self__:stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType):stdgo.GoString return __self__._name();
    @:embedded
    public static function _id( __self__:stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType):stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId return __self__._id();
}
