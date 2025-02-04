package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_tree_static_extension.Tree_static_extension) class Tree {
    public var val : stdgo.GoInt = 0;
    public var left : stdgo.Ref<stdgo._internal.text.template.Template_tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.Template_tree.Tree>);
    public var right : stdgo.Ref<stdgo._internal.text.template.Template_tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.Template_tree.Tree>);
    public function new(?val:stdgo.GoInt, ?left:stdgo.Ref<stdgo._internal.text.template.Template_tree.Tree>, ?right:stdgo.Ref<stdgo._internal.text.template.Template_tree.Tree>) {
        if (val != null) this.val = val;
        if (left != null) this.left = left;
        if (right != null) this.right = right;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Tree(val, left, right);
    }
}
