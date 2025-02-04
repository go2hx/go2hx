package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_gobEncoderType_asInterface) class T_gobEncoderType_static_extension {
    @:keep
    @:tdfield
    static public function _string( _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType>):stdgo.GoString {
        @:recv var _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType> = _g;
        return (@:checkr _g ?? throw "null pointer dereference").commonType.name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _safeString( _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType>, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>):stdgo.GoString {
        @:recv var _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType> = _g;
        return (@:checkr _g ?? throw "null pointer dereference").commonType.name?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _setId( __self__:stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType, _0:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):Void return @:_5 __self__._setId(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _name( __self__:stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType):stdgo.GoString return @:_5 __self__._name();
    @:embedded
    @:embeddededffieldsffun
    public static function _id( __self__:stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType):stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId return @:_5 __self__._id();
}
