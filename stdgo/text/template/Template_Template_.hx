package stdgo.text.template;
@:structInit @:using(stdgo.text.template.Template.Template_static_extension) abstract Template_(stdgo._internal.text.template.Template_Template.Template) from stdgo._internal.text.template.Template_Template.Template to stdgo._internal.text.template.Template_Template.Template {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var tree(get, set) : Tree;
    function get_tree():Tree return this.tree;
    function set_tree(v:Tree):Tree {
        this.tree = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return v;
    }
    public var _common(get, set) : T_common;
    function get__common():T_common return this._common;
    function set__common(v:T_common):T_common {
        this._common = (v : stdgo.Ref<stdgo._internal.text.template.Template_T_common.T_common>);
        return v;
    }
    public var _leftDelim(get, set) : String;
    function get__leftDelim():String return this._leftDelim;
    function set__leftDelim(v:String):String {
        this._leftDelim = (v : stdgo.GoString);
        return v;
    }
    public var _rightDelim(get, set) : String;
    function get__rightDelim():String return this._rightDelim;
    function set__rightDelim(v:String):String {
        this._rightDelim = (v : stdgo.GoString);
        return v;
    }
    public function new(?_name:String, ?tree:Tree, ?_common:T_common, ?_leftDelim:String, ?_rightDelim:String) this = new stdgo._internal.text.template.Template_Template.Template((_name : stdgo.GoString), (tree : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>), (_common : stdgo.Ref<stdgo._internal.text.template.Template_T_common.T_common>), (_leftDelim : stdgo.GoString), (_rightDelim : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
