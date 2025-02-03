package stdgo.encoding.gob;
class T_structType_static_extension {
    static public function _string(_s:T_structType):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>);
        return stdgo._internal.encoding.gob.Gob_T_structType_static_extension.T_structType_static_extension._string(_s);
    }
    static public function _safeString(_s:T_structType, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>);
        final _seen = (_seen : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>);
        return stdgo._internal.encoding.gob.Gob_T_structType_static_extension.T_structType_static_extension._safeString(_s, _seen);
    }
    public static function _setId(__self__:stdgo._internal.encoding.gob.Gob_T_structType.T_structType, _0:T_typeId):Void {
        stdgo._internal.encoding.gob.Gob_T_structType_static_extension.T_structType_static_extension._setId(__self__, _0);
    }
    public static function _name(__self__:stdgo._internal.encoding.gob.Gob_T_structType.T_structType):String {
        return stdgo._internal.encoding.gob.Gob_T_structType_static_extension.T_structType_static_extension._name(__self__);
    }
    public static function _id(__self__:stdgo._internal.encoding.gob.Gob_T_structType.T_structType):T_typeId {
        return stdgo._internal.encoding.gob.Gob_T_structType_static_extension.T_structType_static_extension._id(__self__);
    }
}
