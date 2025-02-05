package stdgo._internal.encoding.gob;
@:interface typedef T_gobType = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _id():stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _setId(_id:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _name():stdgo.GoString;
    /**
        
        
        * not public; only for debugging
    **/
    @:interfacetypeffun
    public dynamic function _string():stdgo.GoString;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _safeString(_seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>):stdgo.GoString;
};
