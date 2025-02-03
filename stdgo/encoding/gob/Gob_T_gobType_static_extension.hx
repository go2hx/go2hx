package stdgo.encoding.gob;
class T_gobType_static_extension {
    static public function _safeString(t:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):String {
        final _seen = (_seen : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>);
        return stdgo._internal.encoding.gob.Gob_T_gobType_static_extension.T_gobType_static_extension._safeString(t, _seen);
    }
    static public function _string(t:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType):String {
        return stdgo._internal.encoding.gob.Gob_T_gobType_static_extension.T_gobType_static_extension._string(t);
    }
    static public function _name(t:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType):String {
        return stdgo._internal.encoding.gob.Gob_T_gobType_static_extension.T_gobType_static_extension._name(t);
    }
    static public function _setId(t:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType, _id:T_typeId):Void {
        stdgo._internal.encoding.gob.Gob_T_gobType_static_extension.T_gobType_static_extension._setId(t, _id);
    }
    static public function _id(t:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType):T_typeId {
        return stdgo._internal.encoding.gob.Gob_T_gobType_static_extension.T_gobType_static_extension._id(t);
    }
}
