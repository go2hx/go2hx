package stdgo._internal.go.constant;
@:interface typedef Value = stdgo.StructType & {
    /**
        * Kind returns the value kind.
        
        
    **/
    @:interfacetypeffun
    public dynamic function kind():stdgo._internal.go.constant.Constant_kind.Kind;
    /**
        * String returns a short, quoted (human-readable) form of the value.
        * For numeric values, the result may be an approximation;
        * for String values the result may be a shortened string.
        * Use ExactString for a string representing a value exactly.
        
        
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
    /**
        * ExactString returns an exact, quoted (human-readable) form of the value.
        * If the Value is of Kind String, use StringVal to obtain the unquoted string.
        
        
    **/
    @:interfacetypeffun
    public dynamic function exactString():stdgo.GoString;
    /**
        * Prevent external implementations.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _implementsValue():Void;
};
