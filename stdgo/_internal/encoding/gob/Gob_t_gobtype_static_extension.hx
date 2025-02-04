package stdgo._internal.encoding.gob;
@:keep class T_gobType_static_extension {
    @:interfacetypeffun
    static public function _safeString(t:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>):stdgo.GoString return t._safeString(_seen);
    @:interfacetypeffun
    static public function _string(t:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType):stdgo.GoString return t._string();
    @:interfacetypeffun
    static public function _name(t:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType):stdgo.GoString return t._name();
    @:interfacetypeffun
    static public function _setId(t:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType, _id:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):Void t._setId(_id);
    @:interfacetypeffun
    static public function _id(t:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType):stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId return t._id();
}
