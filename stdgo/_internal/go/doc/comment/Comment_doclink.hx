package stdgo._internal.go.doc.comment;
@:structInit @:using(stdgo._internal.go.doc.comment.Comment_doclink_static_extension.DocLink_static_extension) class DocLink {
    public var text : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text> = (null : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
    public var importPath : stdgo.GoString = "";
    public var recv : stdgo.GoString = "";
    public var name : stdgo.GoString = "";
    public function new(?text:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>, ?importPath:stdgo.GoString, ?recv:stdgo.GoString, ?name:stdgo.GoString) {
        if (text != null) this.text = text;
        if (importPath != null) this.importPath = importPath;
        if (recv != null) this.recv = recv;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DocLink(text, importPath, recv, name);
    }
}
