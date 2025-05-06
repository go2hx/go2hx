package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_interfacetype_static_extension.InterfaceType_static_extension) class InterfaceType {
    public var interface_ : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var methods : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
    public var incomplete : Bool = false;
    public function new(?interface_:stdgo._internal.go.token.Token_pos.Pos, ?methods:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, ?incomplete:Bool) {
        if (interface_ != null) this.interface_ = interface_;
        if (methods != null) this.methods = methods;
        if (incomplete != null) this.incomplete = incomplete;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new InterfaceType(interface_, methods, incomplete);
    }
}
