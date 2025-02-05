package stdgo._internal.testing;
@:interface typedef T_filterMatch = stdgo.StructType & {
    /**
        * matches checks the name against the receiver's pattern strings using the
        * given match function.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _matches(_name:stdgo.Slice<stdgo.GoString>, _matchString:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }):{ var _0 : Bool; var _1 : Bool; };
    /**
        * verify checks that the receiver's pattern strings are valid filters by
        * calling the given match function.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _verify(_name:stdgo.GoString, _matchString:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }):stdgo.Error;
};
