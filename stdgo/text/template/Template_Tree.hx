package stdgo.text.template;
@:structInit @:using(stdgo.text.template.Template.Tree_static_extension) abstract Tree(stdgo._internal.text.template.Template_Tree.Tree) from stdgo._internal.text.template.Template_Tree.Tree to stdgo._internal.text.template.Template_Tree.Tree {
    public var val(get, set) : StdTypes.Int;
    function get_val():StdTypes.Int return this.val;
    function set_val(v:StdTypes.Int):StdTypes.Int {
        this.val = (v : stdgo.GoInt);
        return v;
    }
    public var left(get, set) : Tree;
    function get_left():Tree return this.left;
    function set_left(v:Tree):Tree {
        this.left = (v : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>);
        return v;
    }
    public var right(get, set) : Tree;
    function get_right():Tree return this.right;
    function set_right(v:Tree):Tree {
        this.right = (v : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>);
        return v;
    }
    public function new(?val:StdTypes.Int, ?left:Tree, ?right:Tree) this = new stdgo._internal.text.template.Template_Tree.Tree((val : stdgo.GoInt), (left : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>), (right : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
