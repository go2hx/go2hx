package stdgo._internal.go.ast;
@:interface typedef Node = stdgo.StructType & {
    /**
        
        
        * position of first character belonging to the node
    **/
    @:interfacetypeffun
    public dynamic function pos():stdgo._internal.go.token.Token_pos.Pos;
    /**
        
        
        * position of first character immediately after the node
    **/
    @:interfacetypeffun
    public dynamic function end():stdgo._internal.go.token.Token_pos.Pos;
};
