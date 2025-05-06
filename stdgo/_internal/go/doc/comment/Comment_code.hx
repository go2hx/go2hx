package stdgo._internal.go.doc.comment;
@:structInit @:using(stdgo._internal.go.doc.comment.Comment_code_static_extension.Code_static_extension) class Code {
    public var text : stdgo.GoString = "";
    public function new(?text:stdgo.GoString) {
        if (text != null) this.text = text;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Code(text);
    }
}
