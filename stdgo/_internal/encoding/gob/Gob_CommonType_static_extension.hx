package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.CommonType_asInterface) class CommonType_static_extension {
    @:keep
    static public function _name( _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType> = _t;
        return _t.name?.__copy__();
    }
    @:keep
    static public function _safeString( _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType>, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType> = _t;
        return _t.name?.__copy__();
    }
    @:keep
    static public function _string( _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType> = _t;
        return _t.name?.__copy__();
    }
    @:keep
    static public function _setId( _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType>, _id:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType> = _t;
        _t.id = _id;
    }
    @:keep
    static public function _id( _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType>):stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType> = _t;
        return _t.id;
    }
}