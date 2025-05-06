package stdgo._internal.go.doc.comment;
@:structInit @:using(stdgo._internal.go.doc.comment.Comment_listitem_static_extension.ListItem_static_extension) class ListItem {
    public var number : stdgo.GoString = "";
    public var content : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_block.Block> = (null : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_block.Block>);
    public function new(?number:stdgo.GoString, ?content:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_block.Block>) {
        if (number != null) this.number = number;
        if (content != null) this.content = content;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ListItem(number, content);
    }
}
