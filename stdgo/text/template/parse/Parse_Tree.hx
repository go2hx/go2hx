package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.Tree_static_extension) abstract Tree(stdgo._internal.text.template.parse.Parse_Tree.Tree) from stdgo._internal.text.template.parse.Parse_Tree.Tree to stdgo._internal.text.template.parse.Parse_Tree.Tree {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var parseName(get, set) : String;
    function get_parseName():String return this.parseName;
    function set_parseName(v:String):String {
        this.parseName = (v : stdgo.GoString);
        return v;
    }
    public var root(get, set) : ListNode;
    function get_root():ListNode return this.root;
    function set_root(v:ListNode):ListNode {
        this.root = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        return v;
    }
    public var mode(get, set) : Mode;
    function get_mode():Mode return this.mode;
    function set_mode(v:Mode):Mode {
        this.mode = v;
        return v;
    }
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = (v : stdgo.GoString);
        return v;
    }
    public var _funcs(get, set) : Array<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>;
    function get__funcs():Array<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>> return [for (i in this._funcs) i];
    function set__funcs(v:Array<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):Array<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>> {
        this._funcs = ([for (i in v) (i : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>);
        return v;
    }
    public var _lex(get, set) : T_lexer;
    function get__lex():T_lexer return this._lex;
    function set__lex(v:T_lexer):T_lexer {
        this._lex = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        return v;
    }
    public var _token(get, set) : haxe.ds.Vector<T_item>;
    function get__token():haxe.ds.Vector<T_item> return haxe.ds.Vector.fromArrayCopy([for (i in this._token) i]);
    function set__token(v:haxe.ds.Vector<T_item>):haxe.ds.Vector<T_item> {
        this._token = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.text.template.parse.Parse_T_item.T_item>);
        return v;
    }
    public var _peekCount(get, set) : StdTypes.Int;
    function get__peekCount():StdTypes.Int return this._peekCount;
    function set__peekCount(v:StdTypes.Int):StdTypes.Int {
        this._peekCount = (v : stdgo.GoInt);
        return v;
    }
    public var _vars(get, set) : Array<String>;
    function get__vars():Array<String> return [for (i in this._vars) i];
    function set__vars(v:Array<String>):Array<String> {
        this._vars = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _treeSet(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>;
    function get__treeSet():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>> return this._treeSet;
    function set__treeSet(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>> {
        this._treeSet = (v : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>);
        return v;
    }
    public var _actionLine(get, set) : StdTypes.Int;
    function get__actionLine():StdTypes.Int return this._actionLine;
    function set__actionLine(v:StdTypes.Int):StdTypes.Int {
        this._actionLine = (v : stdgo.GoInt);
        return v;
    }
    public var _rangeDepth(get, set) : StdTypes.Int;
    function get__rangeDepth():StdTypes.Int return this._rangeDepth;
    function set__rangeDepth(v:StdTypes.Int):StdTypes.Int {
        this._rangeDepth = (v : stdgo.GoInt);
        return v;
    }
    public function new(?name:String, ?parseName:String, ?root:ListNode, ?mode:Mode, ?_text:String, ?_funcs:Array<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, ?_lex:T_lexer, ?_token:haxe.ds.Vector<T_item>, ?_peekCount:StdTypes.Int, ?_vars:Array<String>, ?_treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>, ?_actionLine:StdTypes.Int, ?_rangeDepth:StdTypes.Int) this = new stdgo._internal.text.template.parse.Parse_Tree.Tree(
(name : stdgo.GoString),
(parseName : stdgo.GoString),
(root : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>),
mode,
(_text : stdgo.GoString),
([for (i in _funcs) (i : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>),
(_lex : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>),
([for (i in _token) i] : stdgo.GoArray<stdgo._internal.text.template.parse.Parse_T_item.T_item>),
(_peekCount : stdgo.GoInt),
([for (i in _vars) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(_treeSet : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>),
(_actionLine : stdgo.GoInt),
(_rangeDepth : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
