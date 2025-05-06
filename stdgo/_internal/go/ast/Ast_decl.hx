package stdgo._internal.go.ast;
@:interface typedef Decl = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _declNode():Void;
    public dynamic function end():stdgo._internal.go.token.Token_pos.Pos;
    public dynamic function pos():stdgo._internal.go.token.Token_pos.Pos;
};
