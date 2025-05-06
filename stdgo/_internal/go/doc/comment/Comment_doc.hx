package stdgo._internal.go.doc.comment;
@:structInit @:using(stdgo._internal.go.doc.comment.Comment_doc_static_extension.Doc_static_extension) class Doc {
    public var content : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_block.Block> = (null : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_block.Block>);
    public var links : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>>);
    public function new(?content:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_block.Block>, ?links:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>>) {
        if (content != null) this.content = content;
        if (links != null) this.links = links;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Doc(content, links);
    }
}
