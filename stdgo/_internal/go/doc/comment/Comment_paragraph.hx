package stdgo._internal.go.doc.comment;
@:structInit @:using(stdgo._internal.go.doc.comment.Comment_paragraph_static_extension.Paragraph_static_extension) class Paragraph {
    public var text : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text> = (null : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
    public function new(?text:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>) {
        if (text != null) this.text = text;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Paragraph(text);
    }
}
