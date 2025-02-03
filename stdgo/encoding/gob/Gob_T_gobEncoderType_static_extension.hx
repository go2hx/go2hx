package stdgo.encoding.gob;
class T_gobEncoderType_static_extension {
    static public function _string(_g:T_gobEncoderType):String {
        final _g = (_g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>);
        return stdgo._internal.encoding.gob.Gob_T_gobEncoderType_static_extension.T_gobEncoderType_static_extension._string(_g);
    }
    static public function _safeString(_g:T_gobEncoderType, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):String {
        final _g = (_g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>);
        final _seen = (_seen : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>);
        return stdgo._internal.encoding.gob.Gob_T_gobEncoderType_static_extension.T_gobEncoderType_static_extension._safeString(_g, _seen);
    }
    public static function _setId(__self__:stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType, _0:T_typeId):Void {
        stdgo._internal.encoding.gob.Gob_T_gobEncoderType_static_extension.T_gobEncoderType_static_extension._setId(__self__, _0);
    }
    public static function _name(__self__:stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType):String {
        return stdgo._internal.encoding.gob.Gob_T_gobEncoderType_static_extension.T_gobEncoderType_static_extension._name(__self__);
    }
    public static function _id(__self__:stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType):T_typeId {
        return stdgo._internal.encoding.gob.Gob_T_gobEncoderType_static_extension.T_gobEncoderType_static_extension._id(__self__);
    }
}
