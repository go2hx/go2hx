package stdgo.text.template.parse;
final nodeText : NodeType = stdgo._internal.text.template.parse.Parse_nodetext.nodeText;
final nodeAction = stdgo._internal.text.template.parse.Parse_nodeaction.nodeAction;
final nodeBool = stdgo._internal.text.template.parse.Parse_nodebool.nodeBool;
final nodeChain = stdgo._internal.text.template.parse.Parse_nodechain.nodeChain;
final nodeCommand = stdgo._internal.text.template.parse.Parse_nodecommand.nodeCommand;
final nodeDot = stdgo._internal.text.template.parse.Parse_nodedot.nodeDot;
final nodeField = stdgo._internal.text.template.parse.Parse_nodefield.nodeField;
final nodeIdentifier = stdgo._internal.text.template.parse.Parse_nodeidentifier.nodeIdentifier;
final nodeIf = stdgo._internal.text.template.parse.Parse_nodeif.nodeIf;
final nodeList = stdgo._internal.text.template.parse.Parse_nodelist.nodeList;
final nodeNil = stdgo._internal.text.template.parse.Parse_nodenil.nodeNil;
final nodeNumber = stdgo._internal.text.template.parse.Parse_nodenumber.nodeNumber;
final nodePipe = stdgo._internal.text.template.parse.Parse_nodepipe.nodePipe;
final nodeRange = stdgo._internal.text.template.parse.Parse_noderange.nodeRange;
final nodeString = stdgo._internal.text.template.parse.Parse_nodestring.nodeString;
final nodeTemplate = stdgo._internal.text.template.parse.Parse_nodetemplate.nodeTemplate;
final nodeVariable = stdgo._internal.text.template.parse.Parse_nodevariable.nodeVariable;
final nodeWith = stdgo._internal.text.template.parse.Parse_nodewith.nodeWith;
final nodeComment = stdgo._internal.text.template.parse.Parse_nodecomment.nodeComment;
final nodeBreak = stdgo._internal.text.template.parse.Parse_nodebreak.nodeBreak;
final nodeContinue = stdgo._internal.text.template.parse.Parse_nodecontinue.nodeContinue;
final parseComments : Mode = stdgo._internal.text.template.parse.Parse_parsecomments.parseComments;
final skipFuncCheck = stdgo._internal.text.template.parse.Parse_skipfunccheck.skipFuncCheck;
class Node_static_extension {
    static public function _writeTo(t:stdgo._internal.text.template.parse.Parse_node.Node, _0:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_node_static_extension.Node_static_extension._writeTo(t, _0);
    }
    static public function _tree(t:stdgo._internal.text.template.parse.Parse_node.Node):Tree {
        return stdgo._internal.text.template.parse.Parse_node_static_extension.Node_static_extension._tree(t);
    }
    static public function position(t:stdgo._internal.text.template.parse.Parse_node.Node):Pos {
        return stdgo._internal.text.template.parse.Parse_node_static_extension.Node_static_extension.position(t);
    }
    static public function copy(t:stdgo._internal.text.template.parse.Parse_node.Node):Node {
        return stdgo._internal.text.template.parse.Parse_node_static_extension.Node_static_extension.copy(t);
    }
    static public function string(t:stdgo._internal.text.template.parse.Parse_node.Node):String {
        return stdgo._internal.text.template.parse.Parse_node_static_extension.Node_static_extension.string(t);
    }
    static public function type(t:stdgo._internal.text.template.parse.Parse_node.Node):NodeType {
        return stdgo._internal.text.template.parse.Parse_node_static_extension.Node_static_extension.type(t);
    }
}
@:interface @:forward abstract Node(stdgo._internal.text.template.parse.Parse_node.Node) from stdgo._internal.text.template.parse.Parse_node.Node to stdgo._internal.text.template.parse.Parse_node.Node {
    @:from
    static function fromHaxeInterface(x:{ function type():NodeType; function string():String; function copy():Node; function position():Pos; function _tree():Tree; function _writeTo(_0:stdgo._internal.strings.Strings_builder.Builder):Void; }):Node {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Node = { type : () -> x.type(), string : () -> x.string(), copy : () -> x.copy(), position : () -> x.position(), _tree : () -> x._tree(), _writeTo : _0 -> x._writeTo(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.text.template.parse.Parse.T_item_static_extension) @:dox(hide) abstract T_item(stdgo._internal.text.template.parse.Parse_t_item.T_item) from stdgo._internal.text.template.parse.Parse_t_item.T_item to stdgo._internal.text.template.parse.Parse_t_item.T_item {
    public var _typ(get, set) : T_itemType;
    function get__typ():T_itemType return this._typ;
    function set__typ(v:T_itemType):T_itemType {
        this._typ = v;
        return v;
    }
    public var _pos(get, set) : Pos;
    function get__pos():Pos return this._pos;
    function set__pos(v:Pos):Pos {
        this._pos = v;
        return v;
    }
    public var _val(get, set) : String;
    function get__val():String return this._val;
    function set__val(v:String):String {
        this._val = (v : stdgo.GoString);
        return v;
    }
    public var _line(get, set) : StdTypes.Int;
    function get__line():StdTypes.Int return this._line;
    function set__line(v:StdTypes.Int):StdTypes.Int {
        this._line = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_typ:T_itemType, ?_pos:Pos, ?_val:String, ?_line:StdTypes.Int) this = new stdgo._internal.text.template.parse.Parse_t_item.T_item(_typ, _pos, (_val : stdgo.GoString), (_line : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.T_lexer_static_extension) @:dox(hide) abstract T_lexer(stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer) from stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer to stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = (v : stdgo.GoString);
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
    public var _pos(get, set) : Pos;
    function get__pos():Pos return this._pos;
    function set__pos(v:Pos):Pos {
        this._pos = v;
        return v;
    }
    public var _start(get, set) : Pos;
    function get__start():Pos return this._start;
    function set__start(v:Pos):Pos {
        this._start = v;
        return v;
    }
    public var _atEOF(get, set) : Bool;
    function get__atEOF():Bool return this._atEOF;
    function set__atEOF(v:Bool):Bool {
        this._atEOF = v;
        return v;
    }
    public var _parenDepth(get, set) : StdTypes.Int;
    function get__parenDepth():StdTypes.Int return this._parenDepth;
    function set__parenDepth(v:StdTypes.Int):StdTypes.Int {
        this._parenDepth = (v : stdgo.GoInt);
        return v;
    }
    public var _line(get, set) : StdTypes.Int;
    function get__line():StdTypes.Int return this._line;
    function set__line(v:StdTypes.Int):StdTypes.Int {
        this._line = (v : stdgo.GoInt);
        return v;
    }
    public var _startLine(get, set) : StdTypes.Int;
    function get__startLine():StdTypes.Int return this._startLine;
    function set__startLine(v:StdTypes.Int):StdTypes.Int {
        this._startLine = (v : stdgo.GoInt);
        return v;
    }
    public var _item(get, set) : T_item;
    function get__item():T_item return this._item;
    function set__item(v:T_item):T_item {
        this._item = v;
        return v;
    }
    public var _insideAction(get, set) : Bool;
    function get__insideAction():Bool return this._insideAction;
    function set__insideAction(v:Bool):Bool {
        this._insideAction = v;
        return v;
    }
    public var _options(get, set) : T_lexOptions;
    function get__options():T_lexOptions return this._options;
    function set__options(v:T_lexOptions):T_lexOptions {
        this._options = v;
        return v;
    }
    public function new(?_name:String, ?_input:String, ?_leftDelim:String, ?_rightDelim:String, ?_pos:Pos, ?_start:Pos, ?_atEOF:Bool, ?_parenDepth:StdTypes.Int, ?_line:StdTypes.Int, ?_startLine:StdTypes.Int, ?_item:T_item, ?_insideAction:Bool, ?_options:T_lexOptions) this = new stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer(
(_name : stdgo.GoString),
(_input : stdgo.GoString),
(_leftDelim : stdgo.GoString),
(_rightDelim : stdgo.GoString),
_pos,
_start,
_atEOF,
(_parenDepth : stdgo.GoInt),
(_line : stdgo.GoInt),
(_startLine : stdgo.GoInt),
_item,
_insideAction,
_options);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.T_lexOptions_static_extension) @:dox(hide) abstract T_lexOptions(stdgo._internal.text.template.parse.Parse_t_lexoptions.T_lexOptions) from stdgo._internal.text.template.parse.Parse_t_lexoptions.T_lexOptions to stdgo._internal.text.template.parse.Parse_t_lexoptions.T_lexOptions {
    public var _emitComment(get, set) : Bool;
    function get__emitComment():Bool return this._emitComment;
    function set__emitComment(v:Bool):Bool {
        this._emitComment = v;
        return v;
    }
    public var _breakOK(get, set) : Bool;
    function get__breakOK():Bool return this._breakOK;
    function set__breakOK(v:Bool):Bool {
        this._breakOK = v;
        return v;
    }
    public var _continueOK(get, set) : Bool;
    function get__continueOK():Bool return this._continueOK;
    function set__continueOK(v:Bool):Bool {
        this._continueOK = v;
        return v;
    }
    public function new(?_emitComment:Bool, ?_breakOK:Bool, ?_continueOK:Bool) this = new stdgo._internal.text.template.parse.Parse_t_lexoptions.T_lexOptions(_emitComment, _breakOK, _continueOK);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.ListNode_static_extension) abstract ListNode(stdgo._internal.text.template.parse.Parse_listnode.ListNode) from stdgo._internal.text.template.parse.Parse_listnode.ListNode to stdgo._internal.text.template.parse.Parse_listnode.ListNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var nodes(get, set) : Array<Node>;
    function get_nodes():Array<Node> return [for (i in this.nodes) i];
    function set_nodes(v:Array<Node>):Array<Node> {
        this.nodes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?nodes:Array<Node>) this = new stdgo._internal.text.template.parse.Parse_listnode.ListNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), ([for (i in nodes) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.TextNode_static_extension) abstract TextNode(stdgo._internal.text.template.parse.Parse_textnode.TextNode) from stdgo._internal.text.template.parse.Parse_textnode.TextNode to stdgo._internal.text.template.parse.Parse_textnode.TextNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var text(get, set) : Array<std.UInt>;
    function get_text():Array<std.UInt> return [for (i in this.text) i];
    function set_text(v:Array<std.UInt>):Array<std.UInt> {
        this.text = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?text:Array<std.UInt>) this = new stdgo._internal.text.template.parse.Parse_textnode.TextNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), ([for (i in text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.CommentNode_static_extension) abstract CommentNode(stdgo._internal.text.template.parse.Parse_commentnode.CommentNode) from stdgo._internal.text.template.parse.Parse_commentnode.CommentNode to stdgo._internal.text.template.parse.Parse_commentnode.CommentNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var text(get, set) : String;
    function get_text():String return this.text;
    function set_text(v:String):String {
        this.text = (v : stdgo.GoString);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?text:String) this = new stdgo._internal.text.template.parse.Parse_commentnode.CommentNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), (text : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.PipeNode_static_extension) abstract PipeNode(stdgo._internal.text.template.parse.Parse_pipenode.PipeNode) from stdgo._internal.text.template.parse.Parse_pipenode.PipeNode to stdgo._internal.text.template.parse.Parse_pipenode.PipeNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public var isAssign(get, set) : Bool;
    function get_isAssign():Bool return this.isAssign;
    function set_isAssign(v:Bool):Bool {
        this.isAssign = v;
        return v;
    }
    public var decl(get, set) : Array<VariableNode>;
    function get_decl():Array<VariableNode> return [for (i in this.decl) i];
    function set_decl(v:Array<VariableNode>):Array<VariableNode> {
        this.decl = ([for (i in v) (i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>>);
        return v;
    }
    public var cmds(get, set) : Array<CommandNode>;
    function get_cmds():Array<CommandNode> return [for (i in this.cmds) i];
    function set_cmds(v:Array<CommandNode>):Array<CommandNode> {
        this.cmds = ([for (i in v) (i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?line:StdTypes.Int, ?isAssign:Bool, ?decl:Array<VariableNode>, ?cmds:Array<CommandNode>) this = new stdgo._internal.text.template.parse.Parse_pipenode.PipeNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), (line : stdgo.GoInt), isAssign, ([for (i in decl) (i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>>), ([for (i in cmds) (i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.ActionNode_static_extension) abstract ActionNode(stdgo._internal.text.template.parse.Parse_actionnode.ActionNode) from stdgo._internal.text.template.parse.Parse_actionnode.ActionNode to stdgo._internal.text.template.parse.Parse_actionnode.ActionNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public var pipe(get, set) : PipeNode;
    function get_pipe():PipeNode return this.pipe;
    function set_pipe(v:PipeNode):PipeNode {
        this.pipe = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?line:StdTypes.Int, ?pipe:PipeNode) this = new stdgo._internal.text.template.parse.Parse_actionnode.ActionNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), (line : stdgo.GoInt), (pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.CommandNode_static_extension) abstract CommandNode(stdgo._internal.text.template.parse.Parse_commandnode.CommandNode) from stdgo._internal.text.template.parse.Parse_commandnode.CommandNode to stdgo._internal.text.template.parse.Parse_commandnode.CommandNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var args(get, set) : Array<Node>;
    function get_args():Array<Node> return [for (i in this.args) i];
    function set_args(v:Array<Node>):Array<Node> {
        this.args = ([for (i in v) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?args:Array<Node>) this = new stdgo._internal.text.template.parse.Parse_commandnode.CommandNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), ([for (i in args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.IdentifierNode_static_extension) abstract IdentifierNode(stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode) from stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode to stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var ident(get, set) : String;
    function get_ident():String return this.ident;
    function set_ident(v:String):String {
        this.ident = (v : stdgo.GoString);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?ident:String) this = new stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), (ident : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.VariableNode_static_extension) abstract VariableNode(stdgo._internal.text.template.parse.Parse_variablenode.VariableNode) from stdgo._internal.text.template.parse.Parse_variablenode.VariableNode to stdgo._internal.text.template.parse.Parse_variablenode.VariableNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var ident(get, set) : Array<String>;
    function get_ident():Array<String> return [for (i in this.ident) i];
    function set_ident(v:Array<String>):Array<String> {
        this.ident = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?ident:Array<String>) this = new stdgo._internal.text.template.parse.Parse_variablenode.VariableNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), ([for (i in ident) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.DotNode_static_extension) abstract DotNode(stdgo._internal.text.template.parse.Parse_dotnode.DotNode) from stdgo._internal.text.template.parse.Parse_dotnode.DotNode to stdgo._internal.text.template.parse.Parse_dotnode.DotNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree) this = new stdgo._internal.text.template.parse.Parse_dotnode.DotNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.NilNode_static_extension) abstract NilNode(stdgo._internal.text.template.parse.Parse_nilnode.NilNode) from stdgo._internal.text.template.parse.Parse_nilnode.NilNode to stdgo._internal.text.template.parse.Parse_nilnode.NilNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree) this = new stdgo._internal.text.template.parse.Parse_nilnode.NilNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.FieldNode_static_extension) abstract FieldNode(stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode) from stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode to stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var ident(get, set) : Array<String>;
    function get_ident():Array<String> return [for (i in this.ident) i];
    function set_ident(v:Array<String>):Array<String> {
        this.ident = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?ident:Array<String>) this = new stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), ([for (i in ident) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.ChainNode_static_extension) abstract ChainNode(stdgo._internal.text.template.parse.Parse_chainnode.ChainNode) from stdgo._internal.text.template.parse.Parse_chainnode.ChainNode to stdgo._internal.text.template.parse.Parse_chainnode.ChainNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var node(get, set) : Node;
    function get_node():Node return this.node;
    function set_node(v:Node):Node {
        this.node = v;
        return v;
    }
    public var field(get, set) : Array<String>;
    function get_field():Array<String> return [for (i in this.field) i];
    function set_field(v:Array<String>):Array<String> {
        this.field = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?node:Node, ?field:Array<String>) this = new stdgo._internal.text.template.parse.Parse_chainnode.ChainNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), node, ([for (i in field) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.BoolNode_static_extension) abstract BoolNode(stdgo._internal.text.template.parse.Parse_boolnode.BoolNode) from stdgo._internal.text.template.parse.Parse_boolnode.BoolNode to stdgo._internal.text.template.parse.Parse_boolnode.BoolNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var __True(get, set) : Bool;
    function get___True():Bool return this.__True;
    function set___True(v:Bool):Bool {
        this.__True = v;
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?__True:Bool) this = new stdgo._internal.text.template.parse.Parse_boolnode.BoolNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), __True);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.NumberNode_static_extension) abstract NumberNode(stdgo._internal.text.template.parse.Parse_numbernode.NumberNode) from stdgo._internal.text.template.parse.Parse_numbernode.NumberNode to stdgo._internal.text.template.parse.Parse_numbernode.NumberNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var isInt(get, set) : Bool;
    function get_isInt():Bool return this.isInt;
    function set_isInt(v:Bool):Bool {
        this.isInt = v;
        return v;
    }
    public var isUint(get, set) : Bool;
    function get_isUint():Bool return this.isUint;
    function set_isUint(v:Bool):Bool {
        this.isUint = v;
        return v;
    }
    public var isFloat(get, set) : Bool;
    function get_isFloat():Bool return this.isFloat;
    function set_isFloat(v:Bool):Bool {
        this.isFloat = v;
        return v;
    }
    public var isComplex(get, set) : Bool;
    function get_isComplex():Bool return this.isComplex;
    function set_isComplex(v:Bool):Bool {
        this.isComplex = v;
        return v;
    }
    public var int64(get, set) : haxe.Int64;
    function get_int64():haxe.Int64 return this.int64;
    function set_int64(v:haxe.Int64):haxe.Int64 {
        this.int64 = (v : stdgo.GoInt64);
        return v;
    }
    public var uint64(get, set) : haxe.UInt64;
    function get_uint64():haxe.UInt64 return this.uint64;
    function set_uint64(v:haxe.UInt64):haxe.UInt64 {
        this.uint64 = (v : stdgo.GoUInt64);
        return v;
    }
    public var float64(get, set) : StdTypes.Float;
    function get_float64():StdTypes.Float return this.float64;
    function set_float64(v:StdTypes.Float):StdTypes.Float {
        this.float64 = (v : stdgo.GoFloat64);
        return v;
    }
    public var complex128(get, set) : stdgo.GoComplex128;
    function get_complex128():stdgo.GoComplex128 return this.complex128;
    function set_complex128(v:stdgo.GoComplex128):stdgo.GoComplex128 {
        this.complex128 = (v : stdgo.GoComplex128);
        return v;
    }
    public var text(get, set) : String;
    function get_text():String return this.text;
    function set_text(v:String):String {
        this.text = (v : stdgo.GoString);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?isInt:Bool, ?isUint:Bool, ?isFloat:Bool, ?isComplex:Bool, ?int64:haxe.Int64, ?uint64:haxe.UInt64, ?float64:StdTypes.Float, ?complex128:stdgo.GoComplex128, ?text:String) this = new stdgo._internal.text.template.parse.Parse_numbernode.NumberNode(
nodeType,
pos,
(_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>),
isInt,
isUint,
isFloat,
isComplex,
(int64 : stdgo.GoInt64),
(uint64 : stdgo.GoUInt64),
(float64 : stdgo.GoFloat64),
(complex128 : stdgo.GoComplex128),
(text : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.StringNode_static_extension) abstract StringNode(stdgo._internal.text.template.parse.Parse_stringnode.StringNode) from stdgo._internal.text.template.parse.Parse_stringnode.StringNode to stdgo._internal.text.template.parse.Parse_stringnode.StringNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var quoted(get, set) : String;
    function get_quoted():String return this.quoted;
    function set_quoted(v:String):String {
        this.quoted = (v : stdgo.GoString);
        return v;
    }
    public var text(get, set) : String;
    function get_text():String return this.text;
    function set_text(v:String):String {
        this.text = (v : stdgo.GoString);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?quoted:String, ?text:String) this = new stdgo._internal.text.template.parse.Parse_stringnode.StringNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), (quoted : stdgo.GoString), (text : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.T_endNode_static_extension) @:dox(hide) abstract T_endNode(stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode) from stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode to stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree) this = new stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.T_elseNode_static_extension) @:dox(hide) abstract T_elseNode(stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode) from stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode to stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?line:StdTypes.Int) this = new stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), (line : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.BranchNode_static_extension) abstract BranchNode(stdgo._internal.text.template.parse.Parse_branchnode.BranchNode) from stdgo._internal.text.template.parse.Parse_branchnode.BranchNode to stdgo._internal.text.template.parse.Parse_branchnode.BranchNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public var pipe(get, set) : PipeNode;
    function get_pipe():PipeNode return this.pipe;
    function set_pipe(v:PipeNode):PipeNode {
        this.pipe = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        return v;
    }
    public var list(get, set) : ListNode;
    function get_list():ListNode return this.list;
    function set_list(v:ListNode):ListNode {
        this.list = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        return v;
    }
    public var elseList(get, set) : ListNode;
    function get_elseList():ListNode return this.elseList;
    function set_elseList(v:ListNode):ListNode {
        this.elseList = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?line:StdTypes.Int, ?pipe:PipeNode, ?list:ListNode, ?elseList:ListNode) this = new stdgo._internal.text.template.parse.Parse_branchnode.BranchNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), (line : stdgo.GoInt), (pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>), (list : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>), (elseList : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.IfNode_static_extension) abstract IfNode(stdgo._internal.text.template.parse.Parse_ifnode.IfNode) from stdgo._internal.text.template.parse.Parse_ifnode.IfNode to stdgo._internal.text.template.parse.Parse_ifnode.IfNode {
    public var branchNode(get, set) : BranchNode;
    function get_branchNode():BranchNode return this.branchNode;
    function set_branchNode(v:BranchNode):BranchNode {
        this.branchNode = v;
        return v;
    }
    public function new(?branchNode:BranchNode) this = new stdgo._internal.text.template.parse.Parse_ifnode.IfNode(branchNode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.BreakNode_static_extension) abstract BreakNode(stdgo._internal.text.template.parse.Parse_breaknode.BreakNode) from stdgo._internal.text.template.parse.Parse_breaknode.BreakNode to stdgo._internal.text.template.parse.Parse_breaknode.BreakNode {
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_tr:Tree, ?nodeType:NodeType, ?pos:Pos, ?line:StdTypes.Int) this = new stdgo._internal.text.template.parse.Parse_breaknode.BreakNode((_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), nodeType, pos, (line : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.ContinueNode_static_extension) abstract ContinueNode(stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode) from stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode to stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode {
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_tr:Tree, ?nodeType:NodeType, ?pos:Pos, ?line:StdTypes.Int) this = new stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode((_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), nodeType, pos, (line : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.RangeNode_static_extension) abstract RangeNode(stdgo._internal.text.template.parse.Parse_rangenode.RangeNode) from stdgo._internal.text.template.parse.Parse_rangenode.RangeNode to stdgo._internal.text.template.parse.Parse_rangenode.RangeNode {
    public var branchNode(get, set) : BranchNode;
    function get_branchNode():BranchNode return this.branchNode;
    function set_branchNode(v:BranchNode):BranchNode {
        this.branchNode = v;
        return v;
    }
    public function new(?branchNode:BranchNode) this = new stdgo._internal.text.template.parse.Parse_rangenode.RangeNode(branchNode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.WithNode_static_extension) abstract WithNode(stdgo._internal.text.template.parse.Parse_withnode.WithNode) from stdgo._internal.text.template.parse.Parse_withnode.WithNode to stdgo._internal.text.template.parse.Parse_withnode.WithNode {
    public var branchNode(get, set) : BranchNode;
    function get_branchNode():BranchNode return this.branchNode;
    function set_branchNode(v:BranchNode):BranchNode {
        this.branchNode = v;
        return v;
    }
    public function new(?branchNode:BranchNode) this = new stdgo._internal.text.template.parse.Parse_withnode.WithNode(branchNode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.TemplateNode_static_extension) abstract TemplateNode(stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode) from stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode to stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var pipe(get, set) : PipeNode;
    function get_pipe():PipeNode return this.pipe;
    function set_pipe(v:PipeNode):PipeNode {
        this.pipe = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?line:StdTypes.Int, ?name:String, ?pipe:PipeNode) this = new stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), (line : stdgo.GoInt), (name : stdgo.GoString), (pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.Tree_static_extension) abstract Tree(stdgo._internal.text.template.parse.Parse_tree.Tree) from stdgo._internal.text.template.parse.Parse_tree.Tree to stdgo._internal.text.template.parse.Parse_tree.Tree {
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
        this.root = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
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
    public var _funcs(get, set) : Array<Map<String, stdgo.AnyInterface>>;
    function get__funcs():Array<Map<String, stdgo.AnyInterface>> return [for (i in this._funcs) {
        final __obj__:Map<String, stdgo.AnyInterface> = [];
        for (key => value in i) {
            __obj__[key] = value;
        };
        __obj__;
    }];
    function set__funcs(v:Array<Map<String, stdgo.AnyInterface>>):Array<Map<String, stdgo.AnyInterface>> {
        this._funcs = ([for (i in v) {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>();
            for (key => value in i) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.AnyInterface);
            };
            __obj__;
        }] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>);
        return v;
    }
    public var _lex(get, set) : T_lexer;
    function get__lex():T_lexer return this._lex;
    function set__lex(v:T_lexer):T_lexer {
        this._lex = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        return v;
    }
    public var _token(get, set) : haxe.ds.Vector<T_item>;
    function get__token():haxe.ds.Vector<T_item> return haxe.ds.Vector.fromArrayCopy([for (i in this._token) i]);
    function set__token(v:haxe.ds.Vector<T_item>):haxe.ds.Vector<T_item> {
        this._token = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.text.template.parse.Parse_t_item.T_item>);
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
    public var _treeSet(get, set) : Map<String, Tree>;
    function get__treeSet():Map<String, Tree> return {
        final __obj__:Map<String, Tree> = [];
        for (key => value in this._treeSet) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__treeSet(v:Map<String, Tree>):Map<String, Tree> {
        this._treeSet = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
            };
            __obj__;
        };
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
    public function new(?name:String, ?parseName:String, ?root:ListNode, ?mode:Mode, ?_text:String, ?_funcs:Array<Map<String, stdgo.AnyInterface>>, ?_lex:T_lexer, ?_token:haxe.ds.Vector<T_item>, ?_peekCount:StdTypes.Int, ?_vars:Array<String>, ?_treeSet:Map<String, Tree>, ?_actionLine:StdTypes.Int, ?_rangeDepth:StdTypes.Int) this = new stdgo._internal.text.template.parse.Parse_tree.Tree(
(name : stdgo.GoString),
(parseName : stdgo.GoString),
(root : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>),
mode,
(_text : stdgo.GoString),
([for (i in _funcs) {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>();
        for (key => value in i) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.AnyInterface);
        };
        __obj__;
    }] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>),
(_lex : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>),
([for (i in _token) i] : stdgo.GoArray<stdgo._internal.text.template.parse.Parse_t_item.T_item>),
(_peekCount : stdgo.GoInt),
([for (i in _vars) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>>();
        for (key => value in _treeSet) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        };
        __obj__;
    },
(_actionLine : stdgo.GoInt),
(_rangeDepth : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_itemType = stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType;
@:dox(hide) typedef T_stateFn = stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn;
typedef NodeType = stdgo._internal.text.template.parse.Parse_nodetype.NodeType;
typedef Pos = stdgo._internal.text.template.parse.Parse_pos.Pos;
typedef Mode = stdgo._internal.text.template.parse.Parse_mode.Mode;
@:dox(hide) typedef T_itemPointer = stdgo._internal.text.template.parse.Parse_t_itempointer.T_itemPointer;
@:dox(hide) class T_item_static_extension {
    static public function string(_i:T_item):String {
        return stdgo._internal.text.template.parse.Parse_t_item_static_extension.T_item_static_extension.string(_i);
    }
}
@:dox(hide) typedef T_lexerPointer = stdgo._internal.text.template.parse.Parse_t_lexerpointer.T_lexerPointer;
@:dox(hide) class T_lexer_static_extension {
    static public function _scanNumber(_l:T_lexer):Bool {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        return stdgo._internal.text.template.parse.Parse_t_lexer_static_extension.T_lexer_static_extension._scanNumber(_l);
    }
    static public function _atTerminator(_l:T_lexer):Bool {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        return stdgo._internal.text.template.parse.Parse_t_lexer_static_extension.T_lexer_static_extension._atTerminator(_l);
    }
    static public function _atRightDelim(_l:T_lexer):stdgo.Tuple<Bool, Bool> {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        return {
            final obj = stdgo._internal.text.template.parse.Parse_t_lexer_static_extension.T_lexer_static_extension._atRightDelim(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _nextItem(_l:T_lexer):T_item {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        return stdgo._internal.text.template.parse.Parse_t_lexer_static_extension.T_lexer_static_extension._nextItem(_l);
    }
    static public function _errorf(_l:T_lexer, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):T_stateFn {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        final _format = (_format : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_t_lexer_static_extension.T_lexer_static_extension._errorf(_l, _format, ...[for (i in _args) i]);
    }
    static public function _acceptRun(_l:T_lexer, _valid:String):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        final _valid = (_valid : stdgo.GoString);
        stdgo._internal.text.template.parse.Parse_t_lexer_static_extension.T_lexer_static_extension._acceptRun(_l, _valid);
    }
    static public function _accept(_l:T_lexer, _valid:String):Bool {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        final _valid = (_valid : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_t_lexer_static_extension.T_lexer_static_extension._accept(_l, _valid);
    }
    static public function _ignore(_l:T_lexer):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        stdgo._internal.text.template.parse.Parse_t_lexer_static_extension.T_lexer_static_extension._ignore(_l);
    }
    static public function _emitItem(_l:T_lexer, _i:T_item):T_stateFn {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        return stdgo._internal.text.template.parse.Parse_t_lexer_static_extension.T_lexer_static_extension._emitItem(_l, _i);
    }
    static public function _emit(_l:T_lexer, _t:T_itemType):T_stateFn {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        return stdgo._internal.text.template.parse.Parse_t_lexer_static_extension.T_lexer_static_extension._emit(_l, _t);
    }
    static public function _thisItem(_l:T_lexer, _t:T_itemType):T_item {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        return stdgo._internal.text.template.parse.Parse_t_lexer_static_extension.T_lexer_static_extension._thisItem(_l, _t);
    }
    static public function _backup(_l:T_lexer):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        stdgo._internal.text.template.parse.Parse_t_lexer_static_extension.T_lexer_static_extension._backup(_l);
    }
    static public function _peek(_l:T_lexer):StdTypes.Int {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        return stdgo._internal.text.template.parse.Parse_t_lexer_static_extension.T_lexer_static_extension._peek(_l);
    }
    static public function _next(_l:T_lexer):StdTypes.Int {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        return stdgo._internal.text.template.parse.Parse_t_lexer_static_extension.T_lexer_static_extension._next(_l);
    }
}
@:dox(hide) typedef T_lexOptionsPointer = stdgo._internal.text.template.parse.Parse_t_lexoptionspointer.T_lexOptionsPointer;
@:dox(hide) class T_lexOptions_static_extension {

}
typedef ListNodePointer = stdgo._internal.text.template.parse.Parse_listnodepointer.ListNodePointer;
class ListNode_static_extension {
    static public function copy(_l:ListNode):Node {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        return stdgo._internal.text.template.parse.Parse_listnode_static_extension.ListNode_static_extension.copy(_l);
    }
    static public function copyList(_l:ListNode):ListNode {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        return stdgo._internal.text.template.parse.Parse_listnode_static_extension.ListNode_static_extension.copyList(_l);
    }
    static public function _writeTo(_l:ListNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_listnode_static_extension.ListNode_static_extension._writeTo(_l, _sb);
    }
    static public function string(_l:ListNode):String {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        return stdgo._internal.text.template.parse.Parse_listnode_static_extension.ListNode_static_extension.string(_l);
    }
    static public function _tree(_l:ListNode):Tree {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        return stdgo._internal.text.template.parse.Parse_listnode_static_extension.ListNode_static_extension._tree(_l);
    }
    static public function _append(_l:ListNode, _n:Node):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        stdgo._internal.text.template.parse.Parse_listnode_static_extension.ListNode_static_extension._append(_l, _n);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_listnode.ListNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_listnode_static_extension.ListNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_listnode.ListNode):Pos {
        return stdgo._internal.text.template.parse.Parse_listnode_static_extension.ListNode_static_extension.position(__self__);
    }
}
typedef TextNodePointer = stdgo._internal.text.template.parse.Parse_textnodepointer.TextNodePointer;
class TextNode_static_extension {
    static public function copy(_t:TextNode):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>);
        return stdgo._internal.text.template.parse.Parse_textnode_static_extension.TextNode_static_extension.copy(_t);
    }
    static public function _tree(_t:TextNode):Tree {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>);
        return stdgo._internal.text.template.parse.Parse_textnode_static_extension.TextNode_static_extension._tree(_t);
    }
    static public function _writeTo(_t:TextNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_textnode_static_extension.TextNode_static_extension._writeTo(_t, _sb);
    }
    static public function string(_t:TextNode):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>);
        return stdgo._internal.text.template.parse.Parse_textnode_static_extension.TextNode_static_extension.string(_t);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_textnode.TextNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_textnode_static_extension.TextNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_textnode.TextNode):Pos {
        return stdgo._internal.text.template.parse.Parse_textnode_static_extension.TextNode_static_extension.position(__self__);
    }
}
typedef CommentNodePointer = stdgo._internal.text.template.parse.Parse_commentnodepointer.CommentNodePointer;
class CommentNode_static_extension {
    static public function copy(_c:CommentNode):Node {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>);
        return stdgo._internal.text.template.parse.Parse_commentnode_static_extension.CommentNode_static_extension.copy(_c);
    }
    static public function _tree(_c:CommentNode):Tree {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>);
        return stdgo._internal.text.template.parse.Parse_commentnode_static_extension.CommentNode_static_extension._tree(_c);
    }
    static public function _writeTo(_c:CommentNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_commentnode_static_extension.CommentNode_static_extension._writeTo(_c, _sb);
    }
    static public function string(_c:CommentNode):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>);
        return stdgo._internal.text.template.parse.Parse_commentnode_static_extension.CommentNode_static_extension.string(_c);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_commentnode.CommentNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_commentnode_static_extension.CommentNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_commentnode.CommentNode):Pos {
        return stdgo._internal.text.template.parse.Parse_commentnode_static_extension.CommentNode_static_extension.position(__self__);
    }
}
typedef PipeNodePointer = stdgo._internal.text.template.parse.Parse_pipenodepointer.PipeNodePointer;
class PipeNode_static_extension {
    static public function copy(_p:PipeNode):Node {
        final _p = (_p : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        return stdgo._internal.text.template.parse.Parse_pipenode_static_extension.PipeNode_static_extension.copy(_p);
    }
    static public function copyPipe(_p:PipeNode):PipeNode {
        final _p = (_p : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        return stdgo._internal.text.template.parse.Parse_pipenode_static_extension.PipeNode_static_extension.copyPipe(_p);
    }
    static public function _tree(_p:PipeNode):Tree {
        final _p = (_p : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        return stdgo._internal.text.template.parse.Parse_pipenode_static_extension.PipeNode_static_extension._tree(_p);
    }
    static public function _writeTo(_p:PipeNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_pipenode_static_extension.PipeNode_static_extension._writeTo(_p, _sb);
    }
    static public function string(_p:PipeNode):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        return stdgo._internal.text.template.parse.Parse_pipenode_static_extension.PipeNode_static_extension.string(_p);
    }
    static public function _append(_p:PipeNode, _command:CommandNode):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        final _command = (_command : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>);
        stdgo._internal.text.template.parse.Parse_pipenode_static_extension.PipeNode_static_extension._append(_p, _command);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_pipenode.PipeNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_pipenode_static_extension.PipeNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_pipenode.PipeNode):Pos {
        return stdgo._internal.text.template.parse.Parse_pipenode_static_extension.PipeNode_static_extension.position(__self__);
    }
}
typedef ActionNodePointer = stdgo._internal.text.template.parse.Parse_actionnodepointer.ActionNodePointer;
class ActionNode_static_extension {
    static public function copy(_a:ActionNode):Node {
        final _a = (_a : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>);
        return stdgo._internal.text.template.parse.Parse_actionnode_static_extension.ActionNode_static_extension.copy(_a);
    }
    static public function _tree(_a:ActionNode):Tree {
        final _a = (_a : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>);
        return stdgo._internal.text.template.parse.Parse_actionnode_static_extension.ActionNode_static_extension._tree(_a);
    }
    static public function _writeTo(_a:ActionNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_actionnode_static_extension.ActionNode_static_extension._writeTo(_a, _sb);
    }
    static public function string(_a:ActionNode):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>);
        return stdgo._internal.text.template.parse.Parse_actionnode_static_extension.ActionNode_static_extension.string(_a);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_actionnode.ActionNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_actionnode_static_extension.ActionNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_actionnode.ActionNode):Pos {
        return stdgo._internal.text.template.parse.Parse_actionnode_static_extension.ActionNode_static_extension.position(__self__);
    }
}
typedef CommandNodePointer = stdgo._internal.text.template.parse.Parse_commandnodepointer.CommandNodePointer;
class CommandNode_static_extension {
    static public function copy(_c:CommandNode):Node {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>);
        return stdgo._internal.text.template.parse.Parse_commandnode_static_extension.CommandNode_static_extension.copy(_c);
    }
    static public function _tree(_c:CommandNode):Tree {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>);
        return stdgo._internal.text.template.parse.Parse_commandnode_static_extension.CommandNode_static_extension._tree(_c);
    }
    static public function _writeTo(_c:CommandNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_commandnode_static_extension.CommandNode_static_extension._writeTo(_c, _sb);
    }
    static public function string(_c:CommandNode):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>);
        return stdgo._internal.text.template.parse.Parse_commandnode_static_extension.CommandNode_static_extension.string(_c);
    }
    static public function _append(_c:CommandNode, _arg:Node):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>);
        stdgo._internal.text.template.parse.Parse_commandnode_static_extension.CommandNode_static_extension._append(_c, _arg);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_commandnode.CommandNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_commandnode_static_extension.CommandNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_commandnode.CommandNode):Pos {
        return stdgo._internal.text.template.parse.Parse_commandnode_static_extension.CommandNode_static_extension.position(__self__);
    }
}
typedef IdentifierNodePointer = stdgo._internal.text.template.parse.Parse_identifiernodepointer.IdentifierNodePointer;
class IdentifierNode_static_extension {
    static public function copy(_i:IdentifierNode):Node {
        final _i = (_i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>);
        return stdgo._internal.text.template.parse.Parse_identifiernode_static_extension.IdentifierNode_static_extension.copy(_i);
    }
    static public function _tree(_i:IdentifierNode):Tree {
        final _i = (_i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>);
        return stdgo._internal.text.template.parse.Parse_identifiernode_static_extension.IdentifierNode_static_extension._tree(_i);
    }
    static public function _writeTo(_i:IdentifierNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _i = (_i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_identifiernode_static_extension.IdentifierNode_static_extension._writeTo(_i, _sb);
    }
    static public function string(_i:IdentifierNode):String {
        final _i = (_i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>);
        return stdgo._internal.text.template.parse.Parse_identifiernode_static_extension.IdentifierNode_static_extension.string(_i);
    }
    static public function setTree(_i:IdentifierNode, _t:Tree):IdentifierNode {
        final _i = (_i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>);
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_identifiernode_static_extension.IdentifierNode_static_extension.setTree(_i, _t);
    }
    static public function setPos(_i:IdentifierNode, _pos:Pos):IdentifierNode {
        final _i = (_i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>);
        return stdgo._internal.text.template.parse.Parse_identifiernode_static_extension.IdentifierNode_static_extension.setPos(_i, _pos);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_identifiernode_static_extension.IdentifierNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode):Pos {
        return stdgo._internal.text.template.parse.Parse_identifiernode_static_extension.IdentifierNode_static_extension.position(__self__);
    }
}
typedef VariableNodePointer = stdgo._internal.text.template.parse.Parse_variablenodepointer.VariableNodePointer;
class VariableNode_static_extension {
    static public function copy(_v:VariableNode):Node {
        final _v = (_v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>);
        return stdgo._internal.text.template.parse.Parse_variablenode_static_extension.VariableNode_static_extension.copy(_v);
    }
    static public function _tree(_v:VariableNode):Tree {
        final _v = (_v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>);
        return stdgo._internal.text.template.parse.Parse_variablenode_static_extension.VariableNode_static_extension._tree(_v);
    }
    static public function _writeTo(_v:VariableNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_variablenode_static_extension.VariableNode_static_extension._writeTo(_v, _sb);
    }
    static public function string(_v:VariableNode):String {
        final _v = (_v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>);
        return stdgo._internal.text.template.parse.Parse_variablenode_static_extension.VariableNode_static_extension.string(_v);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_variablenode.VariableNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_variablenode_static_extension.VariableNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_variablenode.VariableNode):Pos {
        return stdgo._internal.text.template.parse.Parse_variablenode_static_extension.VariableNode_static_extension.position(__self__);
    }
}
typedef DotNodePointer = stdgo._internal.text.template.parse.Parse_dotnodepointer.DotNodePointer;
class DotNode_static_extension {
    static public function copy(_d:DotNode):Node {
        final _d = (_d : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>);
        return stdgo._internal.text.template.parse.Parse_dotnode_static_extension.DotNode_static_extension.copy(_d);
    }
    static public function _tree(_d:DotNode):Tree {
        final _d = (_d : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>);
        return stdgo._internal.text.template.parse.Parse_dotnode_static_extension.DotNode_static_extension._tree(_d);
    }
    static public function _writeTo(_d:DotNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_dotnode_static_extension.DotNode_static_extension._writeTo(_d, _sb);
    }
    static public function string(_d:DotNode):String {
        final _d = (_d : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>);
        return stdgo._internal.text.template.parse.Parse_dotnode_static_extension.DotNode_static_extension.string(_d);
    }
    static public function type(_d:DotNode):NodeType {
        final _d = (_d : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>);
        return stdgo._internal.text.template.parse.Parse_dotnode_static_extension.DotNode_static_extension.type(_d);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_dotnode.DotNode):Pos {
        return stdgo._internal.text.template.parse.Parse_dotnode_static_extension.DotNode_static_extension.position(__self__);
    }
}
typedef NilNodePointer = stdgo._internal.text.template.parse.Parse_nilnodepointer.NilNodePointer;
class NilNode_static_extension {
    static public function copy(_n:NilNode):Node {
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>);
        return stdgo._internal.text.template.parse.Parse_nilnode_static_extension.NilNode_static_extension.copy(_n);
    }
    static public function _tree(_n:NilNode):Tree {
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>);
        return stdgo._internal.text.template.parse.Parse_nilnode_static_extension.NilNode_static_extension._tree(_n);
    }
    static public function _writeTo(_n:NilNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_nilnode_static_extension.NilNode_static_extension._writeTo(_n, _sb);
    }
    static public function string(_n:NilNode):String {
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>);
        return stdgo._internal.text.template.parse.Parse_nilnode_static_extension.NilNode_static_extension.string(_n);
    }
    static public function type(_n:NilNode):NodeType {
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>);
        return stdgo._internal.text.template.parse.Parse_nilnode_static_extension.NilNode_static_extension.type(_n);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_nilnode.NilNode):Pos {
        return stdgo._internal.text.template.parse.Parse_nilnode_static_extension.NilNode_static_extension.position(__self__);
    }
}
typedef FieldNodePointer = stdgo._internal.text.template.parse.Parse_fieldnodepointer.FieldNodePointer;
class FieldNode_static_extension {
    static public function copy(_f:FieldNode):Node {
        final _f = (_f : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>);
        return stdgo._internal.text.template.parse.Parse_fieldnode_static_extension.FieldNode_static_extension.copy(_f);
    }
    static public function _tree(_f:FieldNode):Tree {
        final _f = (_f : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>);
        return stdgo._internal.text.template.parse.Parse_fieldnode_static_extension.FieldNode_static_extension._tree(_f);
    }
    static public function _writeTo(_f:FieldNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_fieldnode_static_extension.FieldNode_static_extension._writeTo(_f, _sb);
    }
    static public function string(_f:FieldNode):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>);
        return stdgo._internal.text.template.parse.Parse_fieldnode_static_extension.FieldNode_static_extension.string(_f);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_fieldnode_static_extension.FieldNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode):Pos {
        return stdgo._internal.text.template.parse.Parse_fieldnode_static_extension.FieldNode_static_extension.position(__self__);
    }
}
typedef ChainNodePointer = stdgo._internal.text.template.parse.Parse_chainnodepointer.ChainNodePointer;
class ChainNode_static_extension {
    static public function copy(_c:ChainNode):Node {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>);
        return stdgo._internal.text.template.parse.Parse_chainnode_static_extension.ChainNode_static_extension.copy(_c);
    }
    static public function _tree(_c:ChainNode):Tree {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>);
        return stdgo._internal.text.template.parse.Parse_chainnode_static_extension.ChainNode_static_extension._tree(_c);
    }
    static public function _writeTo(_c:ChainNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_chainnode_static_extension.ChainNode_static_extension._writeTo(_c, _sb);
    }
    static public function string(_c:ChainNode):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>);
        return stdgo._internal.text.template.parse.Parse_chainnode_static_extension.ChainNode_static_extension.string(_c);
    }
    static public function add(_c:ChainNode, _field:String):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>);
        final _field = (_field : stdgo.GoString);
        stdgo._internal.text.template.parse.Parse_chainnode_static_extension.ChainNode_static_extension.add(_c, _field);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_chainnode.ChainNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_chainnode_static_extension.ChainNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_chainnode.ChainNode):Pos {
        return stdgo._internal.text.template.parse.Parse_chainnode_static_extension.ChainNode_static_extension.position(__self__);
    }
}
typedef BoolNodePointer = stdgo._internal.text.template.parse.Parse_boolnodepointer.BoolNodePointer;
class BoolNode_static_extension {
    static public function copy(_b:BoolNode):Node {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>);
        return stdgo._internal.text.template.parse.Parse_boolnode_static_extension.BoolNode_static_extension.copy(_b);
    }
    static public function _tree(_b:BoolNode):Tree {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>);
        return stdgo._internal.text.template.parse.Parse_boolnode_static_extension.BoolNode_static_extension._tree(_b);
    }
    static public function _writeTo(_b:BoolNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_boolnode_static_extension.BoolNode_static_extension._writeTo(_b, _sb);
    }
    static public function string(_b:BoolNode):String {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>);
        return stdgo._internal.text.template.parse.Parse_boolnode_static_extension.BoolNode_static_extension.string(_b);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_boolnode.BoolNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_boolnode_static_extension.BoolNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_boolnode.BoolNode):Pos {
        return stdgo._internal.text.template.parse.Parse_boolnode_static_extension.BoolNode_static_extension.position(__self__);
    }
}
typedef NumberNodePointer = stdgo._internal.text.template.parse.Parse_numbernodepointer.NumberNodePointer;
class NumberNode_static_extension {
    static public function copy(_n:NumberNode):Node {
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>);
        return stdgo._internal.text.template.parse.Parse_numbernode_static_extension.NumberNode_static_extension.copy(_n);
    }
    static public function _tree(_n:NumberNode):Tree {
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>);
        return stdgo._internal.text.template.parse.Parse_numbernode_static_extension.NumberNode_static_extension._tree(_n);
    }
    static public function _writeTo(_n:NumberNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_numbernode_static_extension.NumberNode_static_extension._writeTo(_n, _sb);
    }
    static public function string(_n:NumberNode):String {
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>);
        return stdgo._internal.text.template.parse.Parse_numbernode_static_extension.NumberNode_static_extension.string(_n);
    }
    static public function _simplifyComplex(_n:NumberNode):Void {
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>);
        stdgo._internal.text.template.parse.Parse_numbernode_static_extension.NumberNode_static_extension._simplifyComplex(_n);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_numbernode.NumberNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_numbernode_static_extension.NumberNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_numbernode.NumberNode):Pos {
        return stdgo._internal.text.template.parse.Parse_numbernode_static_extension.NumberNode_static_extension.position(__self__);
    }
}
typedef StringNodePointer = stdgo._internal.text.template.parse.Parse_stringnodepointer.StringNodePointer;
class StringNode_static_extension {
    static public function copy(_s:StringNode):Node {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>);
        return stdgo._internal.text.template.parse.Parse_stringnode_static_extension.StringNode_static_extension.copy(_s);
    }
    static public function _tree(_s:StringNode):Tree {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>);
        return stdgo._internal.text.template.parse.Parse_stringnode_static_extension.StringNode_static_extension._tree(_s);
    }
    static public function _writeTo(_s:StringNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_stringnode_static_extension.StringNode_static_extension._writeTo(_s, _sb);
    }
    static public function string(_s:StringNode):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>);
        return stdgo._internal.text.template.parse.Parse_stringnode_static_extension.StringNode_static_extension.string(_s);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_stringnode.StringNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_stringnode_static_extension.StringNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_stringnode.StringNode):Pos {
        return stdgo._internal.text.template.parse.Parse_stringnode_static_extension.StringNode_static_extension.position(__self__);
    }
}
@:dox(hide) typedef T_endNodePointer = stdgo._internal.text.template.parse.Parse_t_endnodepointer.T_endNodePointer;
@:dox(hide) class T_endNode_static_extension {
    static public function copy(_e:T_endNode):Node {
        final _e = (_e : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode>);
        return stdgo._internal.text.template.parse.Parse_t_endnode_static_extension.T_endNode_static_extension.copy(_e);
    }
    static public function _tree(_e:T_endNode):Tree {
        final _e = (_e : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode>);
        return stdgo._internal.text.template.parse.Parse_t_endnode_static_extension.T_endNode_static_extension._tree(_e);
    }
    static public function _writeTo(_e:T_endNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_t_endnode_static_extension.T_endNode_static_extension._writeTo(_e, _sb);
    }
    static public function string(_e:T_endNode):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode>);
        return stdgo._internal.text.template.parse.Parse_t_endnode_static_extension.T_endNode_static_extension.string(_e);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_t_endnode_static_extension.T_endNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode):Pos {
        return stdgo._internal.text.template.parse.Parse_t_endnode_static_extension.T_endNode_static_extension.position(__self__);
    }
}
@:dox(hide) typedef T_elseNodePointer = stdgo._internal.text.template.parse.Parse_t_elsenodepointer.T_elseNodePointer;
@:dox(hide) class T_elseNode_static_extension {
    static public function copy(_e:T_elseNode):Node {
        final _e = (_e : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode>);
        return stdgo._internal.text.template.parse.Parse_t_elsenode_static_extension.T_elseNode_static_extension.copy(_e);
    }
    static public function _tree(_e:T_elseNode):Tree {
        final _e = (_e : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode>);
        return stdgo._internal.text.template.parse.Parse_t_elsenode_static_extension.T_elseNode_static_extension._tree(_e);
    }
    static public function _writeTo(_e:T_elseNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_t_elsenode_static_extension.T_elseNode_static_extension._writeTo(_e, _sb);
    }
    static public function string(_e:T_elseNode):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode>);
        return stdgo._internal.text.template.parse.Parse_t_elsenode_static_extension.T_elseNode_static_extension.string(_e);
    }
    static public function type(_e:T_elseNode):NodeType {
        final _e = (_e : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode>);
        return stdgo._internal.text.template.parse.Parse_t_elsenode_static_extension.T_elseNode_static_extension.type(_e);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode):Pos {
        return stdgo._internal.text.template.parse.Parse_t_elsenode_static_extension.T_elseNode_static_extension.position(__self__);
    }
}
typedef BranchNodePointer = stdgo._internal.text.template.parse.Parse_branchnodepointer.BranchNodePointer;
class BranchNode_static_extension {
    static public function copy(_b:BranchNode):Node {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>);
        return stdgo._internal.text.template.parse.Parse_branchnode_static_extension.BranchNode_static_extension.copy(_b);
    }
    static public function _tree(_b:BranchNode):Tree {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>);
        return stdgo._internal.text.template.parse.Parse_branchnode_static_extension.BranchNode_static_extension._tree(_b);
    }
    static public function _writeTo(_b:BranchNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_branchnode_static_extension.BranchNode_static_extension._writeTo(_b, _sb);
    }
    static public function string(_b:BranchNode):String {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>);
        return stdgo._internal.text.template.parse.Parse_branchnode_static_extension.BranchNode_static_extension.string(_b);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_branchnode.BranchNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_branchnode_static_extension.BranchNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_branchnode.BranchNode):Pos {
        return stdgo._internal.text.template.parse.Parse_branchnode_static_extension.BranchNode_static_extension.position(__self__);
    }
}
typedef IfNodePointer = stdgo._internal.text.template.parse.Parse_ifnodepointer.IfNodePointer;
class IfNode_static_extension {
    static public function copy(_i:IfNode):Node {
        final _i = (_i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>);
        return stdgo._internal.text.template.parse.Parse_ifnode_static_extension.IfNode_static_extension.copy(_i);
    }
    public static function _writeTo(__self__:stdgo._internal.text.template.parse.Parse_ifnode.IfNode, _0:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_ifnode_static_extension.IfNode_static_extension._writeTo(__self__, _0);
    }
    public static function _tree(__self__:stdgo._internal.text.template.parse.Parse_ifnode.IfNode):Tree {
        return stdgo._internal.text.template.parse.Parse_ifnode_static_extension.IfNode_static_extension._tree(__self__);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_ifnode.IfNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_ifnode_static_extension.IfNode_static_extension.type(__self__);
    }
    public static function string(__self__:stdgo._internal.text.template.parse.Parse_ifnode.IfNode):String {
        return stdgo._internal.text.template.parse.Parse_ifnode_static_extension.IfNode_static_extension.string(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_ifnode.IfNode):Pos {
        return stdgo._internal.text.template.parse.Parse_ifnode_static_extension.IfNode_static_extension.position(__self__);
    }
}
typedef BreakNodePointer = stdgo._internal.text.template.parse.Parse_breaknodepointer.BreakNodePointer;
class BreakNode_static_extension {
    static public function _writeTo(_b:BreakNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_breaknode_static_extension.BreakNode_static_extension._writeTo(_b, _sb);
    }
    static public function _tree(_b:BreakNode):Tree {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>);
        return stdgo._internal.text.template.parse.Parse_breaknode_static_extension.BreakNode_static_extension._tree(_b);
    }
    static public function string(_b:BreakNode):String {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>);
        return stdgo._internal.text.template.parse.Parse_breaknode_static_extension.BreakNode_static_extension.string(_b);
    }
    static public function copy(_b:BreakNode):Node {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>);
        return stdgo._internal.text.template.parse.Parse_breaknode_static_extension.BreakNode_static_extension.copy(_b);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_breaknode.BreakNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_breaknode_static_extension.BreakNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_breaknode.BreakNode):Pos {
        return stdgo._internal.text.template.parse.Parse_breaknode_static_extension.BreakNode_static_extension.position(__self__);
    }
}
typedef ContinueNodePointer = stdgo._internal.text.template.parse.Parse_continuenodepointer.ContinueNodePointer;
class ContinueNode_static_extension {
    static public function _writeTo(_c:ContinueNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_continuenode_static_extension.ContinueNode_static_extension._writeTo(_c, _sb);
    }
    static public function _tree(_c:ContinueNode):Tree {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>);
        return stdgo._internal.text.template.parse.Parse_continuenode_static_extension.ContinueNode_static_extension._tree(_c);
    }
    static public function string(_c:ContinueNode):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>);
        return stdgo._internal.text.template.parse.Parse_continuenode_static_extension.ContinueNode_static_extension.string(_c);
    }
    static public function copy(_c:ContinueNode):Node {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>);
        return stdgo._internal.text.template.parse.Parse_continuenode_static_extension.ContinueNode_static_extension.copy(_c);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_continuenode_static_extension.ContinueNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode):Pos {
        return stdgo._internal.text.template.parse.Parse_continuenode_static_extension.ContinueNode_static_extension.position(__self__);
    }
}
typedef RangeNodePointer = stdgo._internal.text.template.parse.Parse_rangenodepointer.RangeNodePointer;
class RangeNode_static_extension {
    static public function copy(_r:RangeNode):Node {
        final _r = (_r : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>);
        return stdgo._internal.text.template.parse.Parse_rangenode_static_extension.RangeNode_static_extension.copy(_r);
    }
    public static function _writeTo(__self__:stdgo._internal.text.template.parse.Parse_rangenode.RangeNode, _0:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_rangenode_static_extension.RangeNode_static_extension._writeTo(__self__, _0);
    }
    public static function _tree(__self__:stdgo._internal.text.template.parse.Parse_rangenode.RangeNode):Tree {
        return stdgo._internal.text.template.parse.Parse_rangenode_static_extension.RangeNode_static_extension._tree(__self__);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_rangenode.RangeNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_rangenode_static_extension.RangeNode_static_extension.type(__self__);
    }
    public static function string(__self__:stdgo._internal.text.template.parse.Parse_rangenode.RangeNode):String {
        return stdgo._internal.text.template.parse.Parse_rangenode_static_extension.RangeNode_static_extension.string(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_rangenode.RangeNode):Pos {
        return stdgo._internal.text.template.parse.Parse_rangenode_static_extension.RangeNode_static_extension.position(__self__);
    }
}
typedef WithNodePointer = stdgo._internal.text.template.parse.Parse_withnodepointer.WithNodePointer;
class WithNode_static_extension {
    static public function copy(_w:WithNode):Node {
        final _w = (_w : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>);
        return stdgo._internal.text.template.parse.Parse_withnode_static_extension.WithNode_static_extension.copy(_w);
    }
    public static function _writeTo(__self__:stdgo._internal.text.template.parse.Parse_withnode.WithNode, _0:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_withnode_static_extension.WithNode_static_extension._writeTo(__self__, _0);
    }
    public static function _tree(__self__:stdgo._internal.text.template.parse.Parse_withnode.WithNode):Tree {
        return stdgo._internal.text.template.parse.Parse_withnode_static_extension.WithNode_static_extension._tree(__self__);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_withnode.WithNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_withnode_static_extension.WithNode_static_extension.type(__self__);
    }
    public static function string(__self__:stdgo._internal.text.template.parse.Parse_withnode.WithNode):String {
        return stdgo._internal.text.template.parse.Parse_withnode_static_extension.WithNode_static_extension.string(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_withnode.WithNode):Pos {
        return stdgo._internal.text.template.parse.Parse_withnode_static_extension.WithNode_static_extension.position(__self__);
    }
}
typedef TemplateNodePointer = stdgo._internal.text.template.parse.Parse_templatenodepointer.TemplateNodePointer;
class TemplateNode_static_extension {
    static public function copy(_t:TemplateNode):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>);
        return stdgo._internal.text.template.parse.Parse_templatenode_static_extension.TemplateNode_static_extension.copy(_t);
    }
    static public function _tree(_t:TemplateNode):Tree {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>);
        return stdgo._internal.text.template.parse.Parse_templatenode_static_extension.TemplateNode_static_extension._tree(_t);
    }
    static public function _writeTo(_t:TemplateNode, _sb:stdgo._internal.strings.Strings_builder.Builder):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.text.template.parse.Parse_templatenode_static_extension.TemplateNode_static_extension._writeTo(_t, _sb);
    }
    static public function string(_t:TemplateNode):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>);
        return stdgo._internal.text.template.parse.Parse_templatenode_static_extension.TemplateNode_static_extension.string(_t);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_templatenode_static_extension.TemplateNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode):Pos {
        return stdgo._internal.text.template.parse.Parse_templatenode_static_extension.TemplateNode_static_extension.position(__self__);
    }
}
typedef TreePointer = stdgo._internal.text.template.parse.Parse_treepointer.TreePointer;
class Tree_static_extension {
    static public function _useVar(_t:Tree, _pos:Pos, _name:String):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._useVar(_t, _pos, _name);
    }
    static public function _popVars(_t:Tree, _n:StdTypes.Int):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._popVars(_t, _n);
    }
    static public function _hasFunction(_t:Tree, _name:String):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._hasFunction(_t, _name);
    }
    static public function _term(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._term(_t);
    }
    static public function _operand(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._operand(_t);
    }
    static public function _command(_t:Tree):CommandNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._command(_t);
    }
    static public function _parseTemplateName(_t:Tree, _token:T_item, _context:String):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _context = (_context : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._parseTemplateName(_t, _token, _context);
    }
    static public function _templateControl(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._templateControl(_t);
    }
    static public function _blockControl(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._blockControl(_t);
    }
    static public function _elseControl(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._elseControl(_t);
    }
    static public function _endControl(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._endControl(_t);
    }
    static public function _withControl(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._withControl(_t);
    }
    static public function _rangeControl(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._rangeControl(_t);
    }
    static public function _ifControl(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._ifControl(_t);
    }
    static public function _parseControl(_t:Tree, _allowElseIf:Bool, _context:String):stdgo.Tuple.Tuple5<Pos, StdTypes.Int, PipeNode, ListNode, ListNode> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _context = (_context : stdgo.GoString);
        return {
            final obj = stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._parseControl(_t, _allowElseIf, _context);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function _checkPipeline(_t:Tree, _pipe:PipeNode, _context:String):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _pipe = (_pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        final _context = (_context : stdgo.GoString);
        stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._checkPipeline(_t, _pipe, _context);
    }
    static public function _pipeline(_t:Tree, _context:String, _end:T_itemType):PipeNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _context = (_context : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._pipeline(_t, _context, _end);
    }
    static public function _continueControl(_t:Tree, _pos:Pos, _line:StdTypes.Int):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._continueControl(_t, _pos, _line);
    }
    static public function _breakControl(_t:Tree, _pos:Pos, _line:StdTypes.Int):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._breakControl(_t, _pos, _line);
    }
    static public function _action(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._action(_t);
    }
    static public function _clearActionLine(_t:Tree):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._clearActionLine(_t);
    }
    static public function _textOrAction(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._textOrAction(_t);
    }
    static public function _itemList(_t:Tree):stdgo.Tuple<ListNode, Node> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return {
            final obj = stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._itemList(_t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseDefinition(_t:Tree):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._parseDefinition(_t);
    }
    static public function _parse(_t:Tree):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._parse(_t);
    }
    static public function _add(_t:Tree):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._add(_t);
    }
    static public function parse(_t:Tree, _text:String, _leftDelim:String, _rightDelim:String, _treeSet:Map<String, Tree>, _funcs:haxe.Rest<Map<String, stdgo.AnyInterface>>):stdgo.Tuple<Tree, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _text = (_text : stdgo.GoString);
        final _leftDelim = (_leftDelim : stdgo.GoString);
        final _rightDelim = (_rightDelim : stdgo.GoString);
        final _treeSet = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>>();
            for (key => value in _treeSet) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
            };
            __obj__;
        };
        return {
            final obj = stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension.parse(_t, _text, _leftDelim, _rightDelim, _treeSet, ...[for (i in _funcs) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _stopParse(_t:Tree):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._stopParse(_t);
    }
    static public function _startParse(_t:Tree, _funcs:Array<Map<String, stdgo.AnyInterface>>, _lex:T_lexer, _treeSet:Map<String, Tree>):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _funcs = ([for (i in _funcs) {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>();
            for (key => value in i) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.AnyInterface);
            };
            __obj__;
        }] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>);
        final _lex = (_lex : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        final _treeSet = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>>();
            for (key => value in _treeSet) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
            };
            __obj__;
        };
        stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._startParse(_t, _funcs, _lex, _treeSet);
    }
    static public function _recover(_t:Tree, _errp:stdgo.Error):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _errp = (_errp : stdgo.Ref<stdgo.Error>);
        stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._recover(_t, _errp);
    }
    static public function _unexpected(_t:Tree, _token:T_item, _context:String):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _context = (_context : stdgo.GoString);
        stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._unexpected(_t, _token, _context);
    }
    static public function _expectOneOf(_t:Tree, _expected1:T_itemType, _expected2:T_itemType, _context:String):T_item {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _context = (_context : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._expectOneOf(_t, _expected1, _expected2, _context);
    }
    static public function _expect(_t:Tree, _expected:T_itemType, _context:String):T_item {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _context = (_context : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._expect(_t, _expected, _context);
    }
    static public function _error(_t:Tree, _err:stdgo.Error):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._error(_t, _err);
    }
    static public function _errorf(_t:Tree, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._errorf(_t, _format, ...[for (i in _args) i]);
    }
    static public function errorContext(_t:Tree, _n:Node):stdgo.Tuple<String, String> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return {
            final obj = stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension.errorContext(_t, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _peekNonSpace(_t:Tree):T_item {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._peekNonSpace(_t);
    }
    static public function _nextNonSpace(_t:Tree):T_item {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._nextNonSpace(_t);
    }
    static public function _peek(_t:Tree):T_item {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._peek(_t);
    }
    static public function _backup3(_t:Tree, _t2:T_item, _t1:T_item):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._backup3(_t, _t2, _t1);
    }
    static public function _backup2(_t:Tree, _t1:T_item):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._backup2(_t, _t1);
    }
    static public function _backup(_t:Tree):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._backup(_t);
    }
    static public function _next(_t:Tree):T_item {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._next(_t);
    }
    static public function copy(_t:Tree):Tree {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension.copy(_t);
    }
    static public function _newTemplate(_t:Tree, _pos:Pos, _line:StdTypes.Int, _name:String, _pipe:PipeNode):TemplateNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        final _name = (_name : stdgo.GoString);
        final _pipe = (_pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newTemplate(_t, _pos, _line, _name, _pipe);
    }
    static public function _newWith(_t:Tree, _pos:Pos, _line:StdTypes.Int, _pipe:PipeNode, _list:ListNode, _elseList:ListNode):WithNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        final _pipe = (_pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        final _list = (_list : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        final _elseList = (_elseList : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newWith(_t, _pos, _line, _pipe, _list, _elseList);
    }
    static public function _newRange(_t:Tree, _pos:Pos, _line:StdTypes.Int, _pipe:PipeNode, _list:ListNode, _elseList:ListNode):RangeNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        final _pipe = (_pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        final _list = (_list : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        final _elseList = (_elseList : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newRange(_t, _pos, _line, _pipe, _list, _elseList);
    }
    static public function _newContinue(_t:Tree, _pos:Pos, _line:StdTypes.Int):ContinueNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newContinue(_t, _pos, _line);
    }
    static public function _newBreak(_t:Tree, _pos:Pos, _line:StdTypes.Int):BreakNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newBreak(_t, _pos, _line);
    }
    static public function _newIf(_t:Tree, _pos:Pos, _line:StdTypes.Int, _pipe:PipeNode, _list:ListNode, _elseList:ListNode):IfNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        final _pipe = (_pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        final _list = (_list : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        final _elseList = (_elseList : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newIf(_t, _pos, _line, _pipe, _list, _elseList);
    }
    static public function _newElse(_t:Tree, _pos:Pos, _line:StdTypes.Int):T_elseNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newElse(_t, _pos, _line);
    }
    static public function _newEnd(_t:Tree, _pos:Pos):T_endNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newEnd(_t, _pos);
    }
    static public function _newString(_t:Tree, _pos:Pos, _orig:String, _text:String):StringNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _orig = (_orig : stdgo.GoString);
        final _text = (_text : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newString(_t, _pos, _orig, _text);
    }
    static public function _newNumber(_t:Tree, _pos:Pos, _text:String, _typ:T_itemType):stdgo.Tuple<NumberNode, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _text = (_text : stdgo.GoString);
        return {
            final obj = stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newNumber(_t, _pos, _text, _typ);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _newBool(_t:Tree, _pos:Pos, __true:Bool):BoolNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newBool(_t, _pos, __true);
    }
    static public function _newChain(_t:Tree, _pos:Pos, _node:Node):ChainNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newChain(_t, _pos, _node);
    }
    static public function _newField(_t:Tree, _pos:Pos, _ident:String):FieldNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _ident = (_ident : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newField(_t, _pos, _ident);
    }
    static public function _newNil(_t:Tree, _pos:Pos):NilNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newNil(_t, _pos);
    }
    static public function _newDot(_t:Tree, _pos:Pos):DotNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newDot(_t, _pos);
    }
    static public function _newVariable(_t:Tree, _pos:Pos, _ident:String):VariableNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _ident = (_ident : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newVariable(_t, _pos, _ident);
    }
    static public function _newCommand(_t:Tree, _pos:Pos):CommandNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newCommand(_t, _pos);
    }
    static public function _newAction(_t:Tree, _pos:Pos, _line:StdTypes.Int, _pipe:PipeNode):ActionNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        final _pipe = (_pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newAction(_t, _pos, _line, _pipe);
    }
    static public function _newPipeline(_t:Tree, _pos:Pos, _line:StdTypes.Int, _vars:Array<VariableNode>):PipeNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        final _vars = ([for (i in _vars) (i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newPipeline(_t, _pos, _line, _vars);
    }
    static public function _newComment(_t:Tree, _pos:Pos, _text:String):CommentNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _text = (_text : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newComment(_t, _pos, _text);
    }
    static public function _newText(_t:Tree, _pos:Pos, _text:String):TextNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        final _text = (_text : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newText(_t, _pos, _text);
    }
    static public function _newList(_t:Tree, _pos:Pos):ListNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_tree_static_extension.Tree_static_extension._newList(_t, _pos);
    }
}
@:dox(hide) typedef T_itemTypePointer = stdgo._internal.text.template.parse.Parse_t_itemtypepointer.T_itemTypePointer;
@:dox(hide) class T_itemType_static_extension {

}
@:dox(hide) typedef T_stateFnPointer = stdgo._internal.text.template.parse.Parse_t_statefnpointer.T_stateFnPointer;
@:dox(hide) class T_stateFn_static_extension {

}
typedef NodeTypePointer = stdgo._internal.text.template.parse.Parse_nodetypepointer.NodeTypePointer;
class NodeType_static_extension {
    static public function type(_t:NodeType):NodeType {
        return stdgo._internal.text.template.parse.Parse_nodetype_static_extension.NodeType_static_extension.type(_t);
    }
}
typedef PosPointer = stdgo._internal.text.template.parse.Parse_pospointer.PosPointer;
class Pos_static_extension {
    static public function position(_p:Pos):Pos {
        return stdgo._internal.text.template.parse.Parse_pos_static_extension.Pos_static_extension.position(_p);
    }
}
typedef ModePointer = stdgo._internal.text.template.parse.Parse_modepointer.ModePointer;
class Mode_static_extension {

}
/**
    * Package parse builds parse trees for templates as defined by text/template
    * and html/template. Clients should use those packages to construct templates
    * rather than this one, which provides shared internal data structures not
    * intended for general use.
**/
class Parse {
    /**
        * NewIdentifier returns a new IdentifierNode with the given identifier name.
    **/
    static public inline function newIdentifier(_ident:String):IdentifierNode {
        final _ident = (_ident : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_newidentifier.newIdentifier(_ident);
    }
    /**
        * Parse returns a map from template name to parse.Tree, created by parsing the
        * templates described in the argument string. The top-level template will be
        * given the specified name. If an error is encountered, parsing stops and an
        * empty map is returned with the error.
    **/
    static public inline function parse(_name:String, _text:String, _leftDelim:String, _rightDelim:String, _funcs:haxe.Rest<Map<String, stdgo.AnyInterface>>):stdgo.Tuple<Map<String, Tree>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        final _text = (_text : stdgo.GoString);
        final _leftDelim = (_leftDelim : stdgo.GoString);
        final _rightDelim = (_rightDelim : stdgo.GoString);
        return {
            final obj = stdgo._internal.text.template.parse.Parse_parse.parse(_name, _text, _leftDelim, _rightDelim, ...[for (i in _funcs) i]);
            { _0 : {
                final __obj__:Map<String, Tree> = [];
                for (key => value in obj._0) {
                    __obj__[key] = value;
                };
                __obj__;
            }, _1 : obj._1 };
        };
    }
    /**
        * New allocates a new parse tree with the given name.
    **/
    static public inline function new_(_name:String, _funcs:haxe.Rest<Map<String, stdgo.AnyInterface>>):Tree {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_new_.new_(_name, ...[for (i in _funcs) i]);
    }
    /**
        * IsEmptyTree reports whether this tree (node) is empty of everything but space or comments.
    **/
    static public inline function isEmptyTree(_n:Node):Bool {
        return stdgo._internal.text.template.parse.Parse_isemptytree.isEmptyTree(_n);
    }
}
