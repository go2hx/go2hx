package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_typeId_asInterface) class T_typeId_static_extension {
    @:keep
    static public function _name( _t:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):stdgo.GoString {
        @:recv var _t:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId = _t;
        if (_t._gobType() == null) {
            return ("<nil>" : stdgo.GoString);
        };
        return _t._gobType()._name()?.__copy__();
    }
    @:keep
    static public function _string( _t:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):stdgo.GoString {
        @:recv var _t:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId = _t;
        if (_t._gobType() == null) {
            return ("<nil>" : stdgo.GoString);
        };
        return _t._gobType()._string()?.__copy__();
    }
    @:keep
    static public function _gobType( _t:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType {
        @:recv var _t:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId = _t;
        if (_t == ((0 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId))) {
            return (null : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        };
        return stdgo._internal.encoding.gob.Gob__idToType._idToType(_t);
    }
}