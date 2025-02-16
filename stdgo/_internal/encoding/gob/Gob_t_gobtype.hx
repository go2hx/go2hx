package stdgo._internal.encoding.gob;
@:interface typedef T_gobType = stdgo.StructType & {
    @:interfacetypeffun
    function _id():stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId;
    @:interfacetypeffun
    function _setId(_id:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):Void;
    @:interfacetypeffun
    function _name():stdgo.GoString;
    @:interfacetypeffun
    function _string():stdgo.GoString;
    @:interfacetypeffun
    function _safeString(_seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>):stdgo.GoString;
};
