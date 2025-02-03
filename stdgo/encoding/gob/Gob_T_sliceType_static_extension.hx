package stdgo.encoding.gob;
class T_sliceType_static_extension {
    static public function _string(_s:T_sliceType):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>);
        return stdgo._internal.encoding.gob.Gob_T_sliceType_static_extension.T_sliceType_static_extension._string(_s);
    }
    static public function _safeString(_s:T_sliceType, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>);
        final _seen = (_seen : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>);
        return stdgo._internal.encoding.gob.Gob_T_sliceType_static_extension.T_sliceType_static_extension._safeString(_s, _seen);
    }
    static public function _init(_s:T_sliceType, _elem:T_gobType):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>);
        stdgo._internal.encoding.gob.Gob_T_sliceType_static_extension.T_sliceType_static_extension._init(_s, _elem);
    }
    public static function _setId(__self__:stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType, _0:T_typeId):Void {
        stdgo._internal.encoding.gob.Gob_T_sliceType_static_extension.T_sliceType_static_extension._setId(__self__, _0);
    }
    public static function _name(__self__:stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType):String {
        return stdgo._internal.encoding.gob.Gob_T_sliceType_static_extension.T_sliceType_static_extension._name(__self__);
    }
    public static function _id(__self__:stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType):T_typeId {
        return stdgo._internal.encoding.gob.Gob_T_sliceType_static_extension.T_sliceType_static_extension._id(__self__);
    }
}
