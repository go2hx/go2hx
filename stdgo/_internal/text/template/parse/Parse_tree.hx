package stdgo._internal.text.template.parse;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension) class Tree {
    public var name : stdgo.GoString = "";
    public var parseName : stdgo.GoString = "";
    public var root : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
    public var mode : stdgo._internal.text.template.parse.Parse_mode.Mode = ((0 : stdgo.GoUInt) : stdgo._internal.text.template.parse.Parse_mode.Mode);
    public var _text : stdgo.GoString = "";
    public var _funcs : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>> = (null : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>);
    public var _lex : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
    public var _token : stdgo.GoArray<stdgo._internal.text.template.parse.Parse_t_item.T_item> = new stdgo.GoArray<stdgo._internal.text.template.parse.Parse_t_item.T_item>(3, 3, ...[for (i in 0 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.parse.Parse_t_item.T_item)]);
    public var _peekCount : stdgo.GoInt = 0;
    public var _vars : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _treeSet : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>>);
    public var _actionLine : stdgo.GoInt = 0;
    public var _rangeDepth : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?parseName:stdgo.GoString, ?root:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, ?mode:stdgo._internal.text.template.parse.Parse_mode.Mode, ?_text:stdgo.GoString, ?_funcs:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, ?_lex:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, ?_token:stdgo.GoArray<stdgo._internal.text.template.parse.Parse_t_item.T_item>, ?_peekCount:stdgo.GoInt, ?_vars:stdgo.Slice<stdgo.GoString>, ?_treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>>, ?_actionLine:stdgo.GoInt, ?_rangeDepth:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (parseName != null) this.parseName = parseName;
        if (root != null) this.root = root;
        if (mode != null) this.mode = mode;
        if (_text != null) this._text = _text;
        if (_funcs != null) this._funcs = _funcs;
        if (_lex != null) this._lex = _lex;
        if (_token != null) this._token = _token;
        if (_peekCount != null) this._peekCount = _peekCount;
        if (_vars != null) this._vars = _vars;
        if (_treeSet != null) this._treeSet = _treeSet;
        if (_actionLine != null) this._actionLine = _actionLine;
        if (_rangeDepth != null) this._rangeDepth = _rangeDepth;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Tree(
name,
parseName,
root,
mode,
_text,
_funcs,
_lex,
_token,
_peekCount,
_vars,
_treeSet,
_actionLine,
_rangeDepth);
    }
}
