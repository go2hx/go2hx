package stdgo._internal.go.doc;
@:structInit @:using(stdgo._internal.go.doc.Doc_example_static_extension.Example_static_extension) class Example {
    public var name : stdgo.GoString = "";
    public var suffix : stdgo.GoString = "";
    public var doc : stdgo.GoString = "";
    public var code : stdgo._internal.go.ast.Ast_node.Node = (null : stdgo._internal.go.ast.Ast_node.Node);
    public var play : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
    public var comments : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
    public var output : stdgo.GoString = "";
    public var unordered : Bool = false;
    public var emptyOutput : Bool = false;
    public var order : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?suffix:stdgo.GoString, ?doc:stdgo.GoString, ?code:stdgo._internal.go.ast.Ast_node.Node, ?play:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>, ?comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>, ?output:stdgo.GoString, ?unordered:Bool, ?emptyOutput:Bool, ?order:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (suffix != null) this.suffix = suffix;
        if (doc != null) this.doc = doc;
        if (code != null) this.code = code;
        if (play != null) this.play = play;
        if (comments != null) this.comments = comments;
        if (output != null) this.output = output;
        if (unordered != null) this.unordered = unordered;
        if (emptyOutput != null) this.emptyOutput = emptyOutput;
        if (order != null) this.order = order;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Example(name, suffix, doc, code, play, comments, output, unordered, emptyOutput, order);
    }
}
