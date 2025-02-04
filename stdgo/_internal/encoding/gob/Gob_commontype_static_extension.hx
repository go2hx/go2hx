package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.CommonType_asInterface) class CommonType_static_extension {
    @:keep
    @:tdfield
    static public function _name( _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType> = _t;
        return (@:checkr _t ?? throw "null pointer dereference").name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _safeString( _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType>, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType> = _t;
        return (@:checkr _t ?? throw "null pointer dereference").name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _string( _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType> = _t;
        return (@:checkr _t ?? throw "null pointer dereference").name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _setId( _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType>, _id:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType> = _t;
        (@:checkr _t ?? throw "null pointer dereference").id = _id;
    }
    @:keep
    @:tdfield
    static public function _id( _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType>):stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType> = _t;
        return (@:checkr _t ?? throw "null pointer dereference").id;
    }
}
