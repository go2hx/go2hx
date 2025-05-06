package stdgo._internal.go.doc.comment;
@:structInit @:using(stdgo._internal.go.doc.comment.Comment_linkdef_static_extension.LinkDef_static_extension) class LinkDef {
    public var text : stdgo.GoString = "";
    public var uRL : stdgo.GoString = "";
    public var used : Bool = false;
    public function new(?text:stdgo.GoString, ?uRL:stdgo.GoString, ?used:Bool) {
        if (text != null) this.text = text;
        if (uRL != null) this.uRL = uRL;
        if (used != null) this.used = used;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LinkDef(text, uRL, used);
    }
}
