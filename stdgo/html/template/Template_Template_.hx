package stdgo.html.template;
@:structInit @:using(stdgo.html.template.Template.Template_static_extension) abstract Template_(stdgo._internal.html.template.Template_Template.Template) from stdgo._internal.html.template.Template_Template.Template to stdgo._internal.html.template.Template_Template.Template {
    public var _escapeErr(get, set) : stdgo.Error;
    function get__escapeErr():stdgo.Error return this._escapeErr;
    function set__escapeErr(v:stdgo.Error):stdgo.Error {
        this._escapeErr = (v : stdgo.Error);
        return v;
    }
    public var _text(get, set) : stdgo._internal.text.template.Template_Template.Template;
    function get__text():stdgo._internal.text.template.Template_Template.Template return this._text;
    function set__text(v:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.Template_Template.Template {
        this._text = (v : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        return v;
    }
    public var tree(get, set) : stdgo._internal.text.template.parse.Parse_Tree.Tree;
    function get_tree():stdgo._internal.text.template.parse.Parse_Tree.Tree return this.tree;
    function set_tree(v:stdgo._internal.text.template.parse.Parse_Tree.Tree):stdgo._internal.text.template.parse.Parse_Tree.Tree {
        this.tree = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return v;
    }
    public var _nameSpace(get, set) : T_nameSpace;
    function get__nameSpace():T_nameSpace return this._nameSpace;
    function set__nameSpace(v:T_nameSpace):T_nameSpace {
        this._nameSpace = (v : stdgo.Ref<stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace>);
        return v;
    }
    public function new(?_escapeErr:stdgo.Error, ?_text:stdgo._internal.text.template.Template_Template.Template, ?tree:stdgo._internal.text.template.parse.Parse_Tree.Tree, ?_nameSpace:T_nameSpace) this = new stdgo._internal.html.template.Template_Template.Template((_escapeErr : stdgo.Error), (_text : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), (tree : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>), (_nameSpace : stdgo.Ref<stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
