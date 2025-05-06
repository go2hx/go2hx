package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_structtype_static_extension.StructType_static_extension) class StructType {
    public var struct_ : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var fields : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
    public var incomplete : Bool = false;
    public function new(?struct_:stdgo._internal.go.token.Token_pos.Pos, ?fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, ?incomplete:Bool) {
        if (struct_ != null) this.struct_ = struct_;
        if (fields != null) this.fields = fields;
        if (incomplete != null) this.incomplete = incomplete;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StructType(struct_, fields, incomplete);
    }
}
