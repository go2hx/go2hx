package stdgo._internal.text.template;
@:structInit class Tree {
    public var val : stdgo.GoInt = 0;
    public var left : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>);
    public var right : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>);
    public function new(?val:stdgo.GoInt, ?left:stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>, ?right:stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>) {
        if (val != null) this.val = val;
        if (left != null) this.left = left;
        if (right != null) this.right = right;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Tree(val, left, right);
    }
}
