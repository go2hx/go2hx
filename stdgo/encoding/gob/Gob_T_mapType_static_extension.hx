package stdgo.encoding.gob;
class T_mapType_static_extension {
    static public function _string(_m:T_mapType):String {
        final _m = (_m : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>);
        return stdgo._internal.encoding.gob.Gob_T_mapType_static_extension.T_mapType_static_extension._string(_m);
    }
    static public function _safeString(_m:T_mapType, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):String {
        final _m = (_m : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>);
        final _seen = (_seen : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>);
        return stdgo._internal.encoding.gob.Gob_T_mapType_static_extension.T_mapType_static_extension._safeString(_m, _seen);
    }
    static public function _init(_m:T_mapType, _key:T_gobType, _elem:T_gobType):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>);
        stdgo._internal.encoding.gob.Gob_T_mapType_static_extension.T_mapType_static_extension._init(_m, _key, _elem);
    }
    public static function _setId(__self__:stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType, _0:T_typeId):Void {
        stdgo._internal.encoding.gob.Gob_T_mapType_static_extension.T_mapType_static_extension._setId(__self__, _0);
    }
    public static function _name(__self__:stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType):String {
        return stdgo._internal.encoding.gob.Gob_T_mapType_static_extension.T_mapType_static_extension._name(__self__);
    }
    public static function _id(__self__:stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType):T_typeId {
        return stdgo._internal.encoding.gob.Gob_T_mapType_static_extension.T_mapType_static_extension._id(__self__);
    }
}
