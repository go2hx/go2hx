package stdgo._internal.encoding.gob;
typedef T_gobType = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _id():stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _setId(_id:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _name():stdgo.GoString;
    /**
        
        
        not public; only for debugging
    **/
    @:interfacetypeffun
    public dynamic function _string():stdgo.GoString;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _safeString(_seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):stdgo.GoString;
};
