package stdgo.encoding.gob;
class T_arrayType_static_extension {
    static public function _string(_a:T_arrayType):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType>);
        return stdgo._internal.encoding.gob.Gob_T_arrayType_static_extension.T_arrayType_static_extension._string(_a);
    }
    static public function _safeString(_a:T_arrayType, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType>);
        final _seen = (_seen : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>);
        return stdgo._internal.encoding.gob.Gob_T_arrayType_static_extension.T_arrayType_static_extension._safeString(_a, _seen);
    }
    static public function _init(_a:T_arrayType, _elem:T_gobType, _len:StdTypes.Int):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType>);
        final _len = (_len : stdgo.GoInt);
        stdgo._internal.encoding.gob.Gob_T_arrayType_static_extension.T_arrayType_static_extension._init(_a, _elem, _len);
    }
    public static function _setId(__self__:stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType, _0:T_typeId):Void {
        stdgo._internal.encoding.gob.Gob_T_arrayType_static_extension.T_arrayType_static_extension._setId(__self__, _0);
    }
    public static function _name(__self__:stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType):String {
        return stdgo._internal.encoding.gob.Gob_T_arrayType_static_extension.T_arrayType_static_extension._name(__self__);
    }
    public static function _id(__self__:stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType):T_typeId {
        return stdgo._internal.encoding.gob.Gob_T_arrayType_static_extension.T_arrayType_static_extension._id(__self__);
    }
}
