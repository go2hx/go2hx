package stdgo._internal.go.doc.comment;
@:structInit @:using(stdgo._internal.go.doc.comment.Comment_link_static_extension.Link_static_extension) class Link {
    public var auto : Bool = false;
    public var text : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text> = (null : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
    public var uRL : stdgo.GoString = "";
    public function new(?auto:Bool, ?text:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>, ?uRL:stdgo.GoString) {
        if (auto != null) this.auto = auto;
        if (text != null) this.text = text;
        if (uRL != null) this.uRL = uRL;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Link(auto, text, uRL);
    }
}
