package stdgo._internal.go.doc.comment;
@:keep @:allow(stdgo._internal.go.doc.comment.Comment.List_asInterface) class List_static_extension {
    @:keep
    @:tdfield
    static public function blankBetween( _l:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>):Bool {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> = _l;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L90"
        if ((@:checkr _l ?? throw "null pointer dereference").forceBlankBetween) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L91"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L93"
        for (__1 => _item in (@:checkr _l ?? throw "null pointer dereference").items) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L94"
            if (((@:checkr _item ?? throw "null pointer dereference").content.length) != ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L99"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L102"
        return false;
    }
    @:keep
    @:tdfield
    static public function blankBefore( _l:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>):Bool {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> = _l;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L80"
        return ((@:checkr _l ?? throw "null pointer dereference").forceBlankBefore || _l.blankBetween() : Bool);
    }
    @:keep
    @:tdfield
    static public function _block( _:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> = _;
    }
}
