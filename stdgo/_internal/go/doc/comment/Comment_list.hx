package stdgo._internal.go.doc.comment;
@:structInit @:using(stdgo._internal.go.doc.comment.Comment_list_static_extension.List_static_extension) class List {
    public var items : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_listitem.ListItem>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_listitem.ListItem>>);
    public var forceBlankBefore : Bool = false;
    public var forceBlankBetween : Bool = false;
    public function new(?items:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_listitem.ListItem>>, ?forceBlankBefore:Bool, ?forceBlankBetween:Bool) {
        if (items != null) this.items = items;
        if (forceBlankBefore != null) this.forceBlankBefore = forceBlankBefore;
        if (forceBlankBetween != null) this.forceBlankBetween = forceBlankBetween;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new List(items, forceBlankBefore, forceBlankBetween);
    }
}
