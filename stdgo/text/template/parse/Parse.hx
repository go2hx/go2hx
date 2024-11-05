package stdgo.text.template.parse;
final nodeText : NodeType = stdgo._internal.text.template.parse.Parse_nodeText.nodeText;
final nodeAction = stdgo._internal.text.template.parse.Parse_nodeAction.nodeAction;
final nodeBool = stdgo._internal.text.template.parse.Parse_nodeBool.nodeBool;
final nodeChain = stdgo._internal.text.template.parse.Parse_nodeChain.nodeChain;
final nodeCommand = stdgo._internal.text.template.parse.Parse_nodeCommand.nodeCommand;
final nodeDot = stdgo._internal.text.template.parse.Parse_nodeDot.nodeDot;
final nodeField = stdgo._internal.text.template.parse.Parse_nodeField.nodeField;
final nodeIdentifier = stdgo._internal.text.template.parse.Parse_nodeIdentifier.nodeIdentifier;
final nodeIf = stdgo._internal.text.template.parse.Parse_nodeIf.nodeIf;
final nodeList = stdgo._internal.text.template.parse.Parse_nodeList.nodeList;
final nodeNil = stdgo._internal.text.template.parse.Parse_nodeNil.nodeNil;
final nodeNumber = stdgo._internal.text.template.parse.Parse_nodeNumber.nodeNumber;
final nodePipe = stdgo._internal.text.template.parse.Parse_nodePipe.nodePipe;
final nodeRange = stdgo._internal.text.template.parse.Parse_nodeRange.nodeRange;
final nodeString = stdgo._internal.text.template.parse.Parse_nodeString.nodeString;
final nodeTemplate = stdgo._internal.text.template.parse.Parse_nodeTemplate.nodeTemplate;
final nodeVariable = stdgo._internal.text.template.parse.Parse_nodeVariable.nodeVariable;
final nodeWith = stdgo._internal.text.template.parse.Parse_nodeWith.nodeWith;
final nodeComment = stdgo._internal.text.template.parse.Parse_nodeComment.nodeComment;
final nodeBreak = stdgo._internal.text.template.parse.Parse_nodeBreak.nodeBreak;
final nodeContinue = stdgo._internal.text.template.parse.Parse_nodeContinue.nodeContinue;
final parseComments : Mode = stdgo._internal.text.template.parse.Parse_parseComments.parseComments;
final skipFuncCheck = stdgo._internal.text.template.parse.Parse_skipFuncCheck.skipFuncCheck;
class Node_static_extension {
    static public function _writeTo(t:stdgo._internal.text.template.parse.Parse_Node.Node, _0:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_Node_static_extension.Node_static_extension._writeTo(t, _0);
    }
    static public function _tree(t:stdgo._internal.text.template.parse.Parse_Node.Node):Tree {
        return stdgo._internal.text.template.parse.Parse_Node_static_extension.Node_static_extension._tree(t);
    }
    static public function position(t:stdgo._internal.text.template.parse.Parse_Node.Node):Pos {
        return stdgo._internal.text.template.parse.Parse_Node_static_extension.Node_static_extension.position(t);
    }
    static public function copy(t:stdgo._internal.text.template.parse.Parse_Node.Node):Node {
        return stdgo._internal.text.template.parse.Parse_Node_static_extension.Node_static_extension.copy(t);
    }
    static public function string(t:stdgo._internal.text.template.parse.Parse_Node.Node):String {
        return stdgo._internal.text.template.parse.Parse_Node_static_extension.Node_static_extension.string(t);
    }
    static public function type(t:stdgo._internal.text.template.parse.Parse_Node.Node):NodeType {
        return stdgo._internal.text.template.parse.Parse_Node_static_extension.Node_static_extension.type(t);
    }
}
typedef Node = stdgo._internal.text.template.parse.Parse_Node.Node;
@:structInit @:using(stdgo.text.template.parse.Parse.T_item_static_extension) abstract T_item(stdgo._internal.text.template.parse.Parse_T_item.T_item) from stdgo._internal.text.template.parse.Parse_T_item.T_item to stdgo._internal.text.template.parse.Parse_T_item.T_item {
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
        this._val = v;
        return v;
    }
    public var _line(get, set) : StdTypes.Int;
    function get__line():StdTypes.Int return this._line;
    function set__line(v:StdTypes.Int):StdTypes.Int {
        this._line = v;
        return v;
    }
    public function new(?_typ:T_itemType, ?_pos:Pos, ?_val:String, ?_line:StdTypes.Int) this = new stdgo._internal.text.template.parse.Parse_T_item.T_item(_typ, _pos, _val, _line);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.T_lexer_static_extension) abstract T_lexer(stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer) from stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer to stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = v;
        return v;
    }
    public var _leftDelim(get, set) : String;
    function get__leftDelim():String return this._leftDelim;
    function set__leftDelim(v:String):String {
        this._leftDelim = v;
        return v;
    }
    public var _rightDelim(get, set) : String;
    function get__rightDelim():String return this._rightDelim;
    function set__rightDelim(v:String):String {
        this._rightDelim = v;
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
        this._parenDepth = v;
        return v;
    }
    public var _line(get, set) : StdTypes.Int;
    function get__line():StdTypes.Int return this._line;
    function set__line(v:StdTypes.Int):StdTypes.Int {
        this._line = v;
        return v;
    }
    public var _startLine(get, set) : StdTypes.Int;
    function get__startLine():StdTypes.Int return this._startLine;
    function set__startLine(v:StdTypes.Int):StdTypes.Int {
        this._startLine = v;
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
    public function new(?_name:String, ?_input:String, ?_leftDelim:String, ?_rightDelim:String, ?_pos:Pos, ?_start:Pos, ?_atEOF:Bool, ?_parenDepth:StdTypes.Int, ?_line:StdTypes.Int, ?_startLine:StdTypes.Int, ?_item:T_item, ?_insideAction:Bool, ?_options:T_lexOptions) this = new stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer(
_name,
_input,
_leftDelim,
_rightDelim,
_pos,
_start,
_atEOF,
_parenDepth,
_line,
_startLine,
_item,
_insideAction,
_options);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_lexOptions(stdgo._internal.text.template.parse.Parse_T_lexOptions.T_lexOptions) from stdgo._internal.text.template.parse.Parse_T_lexOptions.T_lexOptions to stdgo._internal.text.template.parse.Parse_T_lexOptions.T_lexOptions {
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
    public function new(?_emitComment:Bool, ?_breakOK:Bool, ?_continueOK:Bool) this = new stdgo._internal.text.template.parse.Parse_T_lexOptions.T_lexOptions(_emitComment, _breakOK, _continueOK);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.ListNode_static_extension) abstract ListNode(stdgo._internal.text.template.parse.Parse_ListNode.ListNode) from stdgo._internal.text.template.parse.Parse_ListNode.ListNode to stdgo._internal.text.template.parse.Parse_ListNode.ListNode {
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
        this._tr = v;
        return v;
    }
    public var nodes(get, set) : Array<Node>;
    function get_nodes():Array<Node> return [for (i in this.nodes) i];
    function set_nodes(v:Array<Node>):Array<Node> {
        this.nodes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?nodes:Array<Node>) this = new stdgo._internal.text.template.parse.Parse_ListNode.ListNode(nodeType, pos, _tr, ([for (i in nodes) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.TextNode_static_extension) abstract TextNode(stdgo._internal.text.template.parse.Parse_TextNode.TextNode) from stdgo._internal.text.template.parse.Parse_TextNode.TextNode to stdgo._internal.text.template.parse.Parse_TextNode.TextNode {
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
        this._tr = v;
        return v;
    }
    public var text(get, set) : Array<std.UInt>;
    function get_text():Array<std.UInt> return [for (i in this.text) i];
    function set_text(v:Array<std.UInt>):Array<std.UInt> {
        this.text = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?text:Array<std.UInt>) this = new stdgo._internal.text.template.parse.Parse_TextNode.TextNode(nodeType, pos, _tr, ([for (i in text) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.CommentNode_static_extension) abstract CommentNode(stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode) from stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode to stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode {
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
        this._tr = v;
        return v;
    }
    public var text(get, set) : String;
    function get_text():String return this.text;
    function set_text(v:String):String {
        this.text = v;
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?text:String) this = new stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode(nodeType, pos, _tr, text);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.PipeNode_static_extension) abstract PipeNode(stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode) from stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode to stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode {
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
        this._tr = v;
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = v;
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
        this.decl = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>);
        return v;
    }
    public var cmds(get, set) : Array<CommandNode>;
    function get_cmds():Array<CommandNode> return [for (i in this.cmds) i];
    function set_cmds(v:Array<CommandNode>):Array<CommandNode> {
        this.cmds = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?line:StdTypes.Int, ?isAssign:Bool, ?decl:Array<VariableNode>, ?cmds:Array<CommandNode>) this = new stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode(nodeType, pos, _tr, line, isAssign, ([for (i in decl) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>), ([for (i in cmds) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.ActionNode_static_extension) abstract ActionNode(stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode) from stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode to stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode {
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
        this._tr = v;
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = v;
        return v;
    }
    public var pipe(get, set) : PipeNode;
    function get_pipe():PipeNode return this.pipe;
    function set_pipe(v:PipeNode):PipeNode {
        this.pipe = v;
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?line:StdTypes.Int, ?pipe:PipeNode) this = new stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode(nodeType, pos, _tr, line, pipe);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.CommandNode_static_extension) abstract CommandNode(stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode) from stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode to stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode {
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
        this._tr = v;
        return v;
    }
    public var args(get, set) : Array<Node>;
    function get_args():Array<Node> return [for (i in this.args) i];
    function set_args(v:Array<Node>):Array<Node> {
        this.args = ([for (i in v) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?args:Array<Node>) this = new stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode(nodeType, pos, _tr, ([for (i in args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.IdentifierNode_static_extension) abstract IdentifierNode(stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode) from stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode to stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode {
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
        this._tr = v;
        return v;
    }
    public var ident(get, set) : String;
    function get_ident():String return this.ident;
    function set_ident(v:String):String {
        this.ident = v;
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?ident:String) this = new stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode(nodeType, pos, _tr, ident);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.VariableNode_static_extension) abstract VariableNode(stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode) from stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode to stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode {
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
        this._tr = v;
        return v;
    }
    public var ident(get, set) : Array<String>;
    function get_ident():Array<String> return [for (i in this.ident) i];
    function set_ident(v:Array<String>):Array<String> {
        this.ident = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?ident:Array<String>) this = new stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode(nodeType, pos, _tr, ([for (i in ident) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.DotNode_static_extension) abstract DotNode(stdgo._internal.text.template.parse.Parse_DotNode.DotNode) from stdgo._internal.text.template.parse.Parse_DotNode.DotNode to stdgo._internal.text.template.parse.Parse_DotNode.DotNode {
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
        this._tr = v;
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree) this = new stdgo._internal.text.template.parse.Parse_DotNode.DotNode(nodeType, pos, _tr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.NilNode_static_extension) abstract NilNode(stdgo._internal.text.template.parse.Parse_NilNode.NilNode) from stdgo._internal.text.template.parse.Parse_NilNode.NilNode to stdgo._internal.text.template.parse.Parse_NilNode.NilNode {
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
        this._tr = v;
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree) this = new stdgo._internal.text.template.parse.Parse_NilNode.NilNode(nodeType, pos, _tr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.FieldNode_static_extension) abstract FieldNode(stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode) from stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode to stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode {
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
        this._tr = v;
        return v;
    }
    public var ident(get, set) : Array<String>;
    function get_ident():Array<String> return [for (i in this.ident) i];
    function set_ident(v:Array<String>):Array<String> {
        this.ident = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?ident:Array<String>) this = new stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode(nodeType, pos, _tr, ([for (i in ident) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.ChainNode_static_extension) abstract ChainNode(stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode) from stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode to stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode {
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
        this._tr = v;
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
        this.field = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?node:Node, ?field:Array<String>) this = new stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode(nodeType, pos, _tr, node, ([for (i in field) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.BoolNode_static_extension) abstract BoolNode(stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode) from stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode to stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode {
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
        this._tr = v;
        return v;
    }
    public var __True(get, set) : Bool;
    function get___True():Bool return this.__True;
    function set___True(v:Bool):Bool {
        this.__True = v;
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?__True:Bool) this = new stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode(nodeType, pos, _tr, __True);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.NumberNode_static_extension) abstract NumberNode(stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode) from stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode to stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode {
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
        this._tr = v;
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
        this.int64 = v;
        return v;
    }
    public var uint64(get, set) : haxe.UInt64;
    function get_uint64():haxe.UInt64 return this.uint64;
    function set_uint64(v:haxe.UInt64):haxe.UInt64 {
        this.uint64 = v;
        return v;
    }
    public var float64(get, set) : StdTypes.Float;
    function get_float64():StdTypes.Float return this.float64;
    function set_float64(v:StdTypes.Float):StdTypes.Float {
        this.float64 = v;
        return v;
    }
    public var complex128(get, set) : stdgo.GoComplex128;
    function get_complex128():stdgo.GoComplex128 return this.complex128;
    function set_complex128(v:stdgo.GoComplex128):stdgo.GoComplex128 {
        this.complex128 = v;
        return v;
    }
    public var text(get, set) : String;
    function get_text():String return this.text;
    function set_text(v:String):String {
        this.text = v;
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?isInt:Bool, ?isUint:Bool, ?isFloat:Bool, ?isComplex:Bool, ?int64:haxe.Int64, ?uint64:haxe.UInt64, ?float64:StdTypes.Float, ?complex128:stdgo.GoComplex128, ?text:String) this = new stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode(
nodeType,
pos,
_tr,
isInt,
isUint,
isFloat,
isComplex,
int64,
uint64,
float64,
complex128,
text);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.StringNode_static_extension) abstract StringNode(stdgo._internal.text.template.parse.Parse_StringNode.StringNode) from stdgo._internal.text.template.parse.Parse_StringNode.StringNode to stdgo._internal.text.template.parse.Parse_StringNode.StringNode {
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
        this._tr = v;
        return v;
    }
    public var quoted(get, set) : String;
    function get_quoted():String return this.quoted;
    function set_quoted(v:String):String {
        this.quoted = v;
        return v;
    }
    public var text(get, set) : String;
    function get_text():String return this.text;
    function set_text(v:String):String {
        this.text = v;
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?quoted:String, ?text:String) this = new stdgo._internal.text.template.parse.Parse_StringNode.StringNode(nodeType, pos, _tr, quoted, text);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.T_endNode_static_extension) abstract T_endNode(stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode) from stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode to stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode {
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
        this._tr = v;
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree) this = new stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode(nodeType, pos, _tr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.T_elseNode_static_extension) abstract T_elseNode(stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode) from stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode to stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode {
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
        this._tr = v;
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = v;
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?line:StdTypes.Int) this = new stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode(nodeType, pos, _tr, line);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.BranchNode_static_extension) abstract BranchNode(stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode) from stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode to stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode {
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
        this._tr = v;
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = v;
        return v;
    }
    public var pipe(get, set) : PipeNode;
    function get_pipe():PipeNode return this.pipe;
    function set_pipe(v:PipeNode):PipeNode {
        this.pipe = v;
        return v;
    }
    public var list(get, set) : ListNode;
    function get_list():ListNode return this.list;
    function set_list(v:ListNode):ListNode {
        this.list = v;
        return v;
    }
    public var elseList(get, set) : ListNode;
    function get_elseList():ListNode return this.elseList;
    function set_elseList(v:ListNode):ListNode {
        this.elseList = v;
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?line:StdTypes.Int, ?pipe:PipeNode, ?list:ListNode, ?elseList:ListNode) this = new stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode(nodeType, pos, _tr, line, pipe, list, elseList);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.IfNode_static_extension) abstract IfNode(stdgo._internal.text.template.parse.Parse_IfNode.IfNode) from stdgo._internal.text.template.parse.Parse_IfNode.IfNode to stdgo._internal.text.template.parse.Parse_IfNode.IfNode {
    public var branchNode(get, set) : BranchNode;
    function get_branchNode():BranchNode return this.branchNode;
    function set_branchNode(v:BranchNode):BranchNode {
        this.branchNode = v;
        return v;
    }
    public function new(?branchNode:BranchNode) this = new stdgo._internal.text.template.parse.Parse_IfNode.IfNode(branchNode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.BreakNode_static_extension) abstract BreakNode(stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode) from stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode to stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode {
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = v;
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
        this.line = v;
        return v;
    }
    public function new(?_tr:Tree, ?nodeType:NodeType, ?pos:Pos, ?line:StdTypes.Int) this = new stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode(_tr, nodeType, pos, line);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.ContinueNode_static_extension) abstract ContinueNode(stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode) from stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode to stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode {
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = v;
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
        this.line = v;
        return v;
    }
    public function new(?_tr:Tree, ?nodeType:NodeType, ?pos:Pos, ?line:StdTypes.Int) this = new stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode(_tr, nodeType, pos, line);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.RangeNode_static_extension) abstract RangeNode(stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode) from stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode to stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode {
    public var branchNode(get, set) : BranchNode;
    function get_branchNode():BranchNode return this.branchNode;
    function set_branchNode(v:BranchNode):BranchNode {
        this.branchNode = v;
        return v;
    }
    public function new(?branchNode:BranchNode) this = new stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode(branchNode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.WithNode_static_extension) abstract WithNode(stdgo._internal.text.template.parse.Parse_WithNode.WithNode) from stdgo._internal.text.template.parse.Parse_WithNode.WithNode to stdgo._internal.text.template.parse.Parse_WithNode.WithNode {
    public var branchNode(get, set) : BranchNode;
    function get_branchNode():BranchNode return this.branchNode;
    function set_branchNode(v:BranchNode):BranchNode {
        this.branchNode = v;
        return v;
    }
    public function new(?branchNode:BranchNode) this = new stdgo._internal.text.template.parse.Parse_WithNode.WithNode(branchNode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.TemplateNode_static_extension) abstract TemplateNode(stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode) from stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode to stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode {
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
        this._tr = v;
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var pipe(get, set) : PipeNode;
    function get_pipe():PipeNode return this.pipe;
    function set_pipe(v:PipeNode):PipeNode {
        this.pipe = v;
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?line:StdTypes.Int, ?name:String, ?pipe:PipeNode) this = new stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode(nodeType, pos, _tr, line, name, pipe);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.parse.Parse.Tree_static_extension) abstract Tree(stdgo._internal.text.template.parse.Parse_Tree.Tree) from stdgo._internal.text.template.parse.Parse_Tree.Tree to stdgo._internal.text.template.parse.Parse_Tree.Tree {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var parseName(get, set) : String;
    function get_parseName():String return this.parseName;
    function set_parseName(v:String):String {
        this.parseName = v;
        return v;
    }
    public var root(get, set) : ListNode;
    function get_root():ListNode return this.root;
    function set_root(v:ListNode):ListNode {
        this.root = v;
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
        this._text = v;
        return v;
    }
    public var _funcs(get, set) : Array<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>;
    function get__funcs():Array<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>> return [for (i in this._funcs) i];
    function set__funcs(v:Array<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):Array<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>> {
        this._funcs = ([for (i in v) i] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>);
        return v;
    }
    public var _lex(get, set) : T_lexer;
    function get__lex():T_lexer return this._lex;
    function set__lex(v:T_lexer):T_lexer {
        this._lex = v;
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
        this._peekCount = v;
        return v;
    }
    public var _vars(get, set) : Array<String>;
    function get__vars():Array<String> return [for (i in this._vars) i];
    function set__vars(v:Array<String>):Array<String> {
        this._vars = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _treeSet(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>;
    function get__treeSet():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>> return this._treeSet;
    function set__treeSet(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>> {
        this._treeSet = v;
        return v;
    }
    public var _actionLine(get, set) : StdTypes.Int;
    function get__actionLine():StdTypes.Int return this._actionLine;
    function set__actionLine(v:StdTypes.Int):StdTypes.Int {
        this._actionLine = v;
        return v;
    }
    public var _rangeDepth(get, set) : StdTypes.Int;
    function get__rangeDepth():StdTypes.Int return this._rangeDepth;
    function set__rangeDepth(v:StdTypes.Int):StdTypes.Int {
        this._rangeDepth = v;
        return v;
    }
    public function new(?name:String, ?parseName:String, ?root:ListNode, ?mode:Mode, ?_text:String, ?_funcs:Array<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, ?_lex:T_lexer, ?_token:haxe.ds.Vector<T_item>, ?_peekCount:StdTypes.Int, ?_vars:Array<String>, ?_treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>, ?_actionLine:StdTypes.Int, ?_rangeDepth:StdTypes.Int) this = new stdgo._internal.text.template.parse.Parse_Tree.Tree(
name,
parseName,
root,
mode,
_text,
([for (i in _funcs) i] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>),
_lex,
([for (i in _token) i] : stdgo.GoArray<stdgo._internal.text.template.parse.Parse_T_item.T_item>),
_peekCount,
([for (i in _vars) i] : stdgo.Slice<stdgo.GoString>),
_treeSet,
_actionLine,
_rangeDepth);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_itemType = stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType;
typedef T_stateFn = stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn;
typedef NodeType = stdgo._internal.text.template.parse.Parse_NodeType.NodeType;
typedef Pos = stdgo._internal.text.template.parse.Parse_Pos.Pos;
typedef Mode = stdgo._internal.text.template.parse.Parse_Mode.Mode;
class T_item_static_extension {
    static public function string(_i:T_item):String {
        return stdgo._internal.text.template.parse.Parse_T_item_static_extension.T_item_static_extension.string(_i);
    }
}
class T_lexer_static_extension {
    static public function _scanNumber(_l:T_lexer):Bool {
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._scanNumber(_l);
    }
    static public function _atTerminator(_l:T_lexer):Bool {
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._atTerminator(_l);
    }
    static public function _atRightDelim(_l:T_lexer):stdgo.Tuple<Bool, Bool> {
        return {
            final obj = stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._atRightDelim(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _nextItem(_l:T_lexer):T_item {
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._nextItem(_l);
    }
    static public function _errorf(_l:T_lexer, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):T_stateFn {
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._errorf(_l, _format, ...[for (i in _args) i]);
    }
    static public function _acceptRun(_l:T_lexer, _valid:String):Void {
        stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._acceptRun(_l, _valid);
    }
    static public function _accept(_l:T_lexer, _valid:String):Bool {
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._accept(_l, _valid);
    }
    static public function _ignore(_l:T_lexer):Void {
        stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._ignore(_l);
    }
    static public function _emitItem(_l:T_lexer, _i:T_item):T_stateFn {
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._emitItem(_l, _i);
    }
    static public function _emit(_l:T_lexer, _t:T_itemType):T_stateFn {
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._emit(_l, _t);
    }
    static public function _thisItem(_l:T_lexer, _t:T_itemType):T_item {
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._thisItem(_l, _t);
    }
    static public function _backup(_l:T_lexer):Void {
        stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._backup(_l);
    }
    static public function _peek(_l:T_lexer):StdTypes.Int {
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._peek(_l);
    }
    static public function _next(_l:T_lexer):StdTypes.Int {
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._next(_l);
    }
}
class ListNode_static_extension {
    static public function copy(_l:ListNode):Node {
        return stdgo._internal.text.template.parse.Parse_ListNode_static_extension.ListNode_static_extension.copy(_l);
    }
    static public function copyList(_l:ListNode):ListNode {
        return stdgo._internal.text.template.parse.Parse_ListNode_static_extension.ListNode_static_extension.copyList(_l);
    }
    static public function _writeTo(_l:ListNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_ListNode_static_extension.ListNode_static_extension._writeTo(_l, _sb);
    }
    static public function string(_l:ListNode):String {
        return stdgo._internal.text.template.parse.Parse_ListNode_static_extension.ListNode_static_extension.string(_l);
    }
    static public function _tree(_l:ListNode):Tree {
        return stdgo._internal.text.template.parse.Parse_ListNode_static_extension.ListNode_static_extension._tree(_l);
    }
    static public function _append(_l:ListNode, _n:Node):Void {
        stdgo._internal.text.template.parse.Parse_ListNode_static_extension.ListNode_static_extension._append(_l, _n);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_ListNode.ListNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_ListNode_static_extension.ListNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_ListNode.ListNode):Pos {
        return stdgo._internal.text.template.parse.Parse_ListNode_static_extension.ListNode_static_extension.position(__self__);
    }
}
class TextNode_static_extension {
    static public function copy(_t:TextNode):Node {
        return stdgo._internal.text.template.parse.Parse_TextNode_static_extension.TextNode_static_extension.copy(_t);
    }
    static public function _tree(_t:TextNode):Tree {
        return stdgo._internal.text.template.parse.Parse_TextNode_static_extension.TextNode_static_extension._tree(_t);
    }
    static public function _writeTo(_t:TextNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_TextNode_static_extension.TextNode_static_extension._writeTo(_t, _sb);
    }
    static public function string(_t:TextNode):String {
        return stdgo._internal.text.template.parse.Parse_TextNode_static_extension.TextNode_static_extension.string(_t);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_TextNode.TextNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_TextNode_static_extension.TextNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_TextNode.TextNode):Pos {
        return stdgo._internal.text.template.parse.Parse_TextNode_static_extension.TextNode_static_extension.position(__self__);
    }
}
class CommentNode_static_extension {
    static public function copy(_c:CommentNode):Node {
        return stdgo._internal.text.template.parse.Parse_CommentNode_static_extension.CommentNode_static_extension.copy(_c);
    }
    static public function _tree(_c:CommentNode):Tree {
        return stdgo._internal.text.template.parse.Parse_CommentNode_static_extension.CommentNode_static_extension._tree(_c);
    }
    static public function _writeTo(_c:CommentNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_CommentNode_static_extension.CommentNode_static_extension._writeTo(_c, _sb);
    }
    static public function string(_c:CommentNode):String {
        return stdgo._internal.text.template.parse.Parse_CommentNode_static_extension.CommentNode_static_extension.string(_c);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_CommentNode_static_extension.CommentNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode):Pos {
        return stdgo._internal.text.template.parse.Parse_CommentNode_static_extension.CommentNode_static_extension.position(__self__);
    }
}
class PipeNode_static_extension {
    static public function copy(_p:PipeNode):Node {
        return stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension.copy(_p);
    }
    static public function copyPipe(_p:PipeNode):PipeNode {
        return stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension.copyPipe(_p);
    }
    static public function _tree(_p:PipeNode):Tree {
        return stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension._tree(_p);
    }
    static public function _writeTo(_p:PipeNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension._writeTo(_p, _sb);
    }
    static public function string(_p:PipeNode):String {
        return stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension.string(_p);
    }
    static public function _append(_p:PipeNode, _command:CommandNode):Void {
        stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension._append(_p, _command);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode):Pos {
        return stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension.position(__self__);
    }
}
class ActionNode_static_extension {
    static public function copy(_a:ActionNode):Node {
        return stdgo._internal.text.template.parse.Parse_ActionNode_static_extension.ActionNode_static_extension.copy(_a);
    }
    static public function _tree(_a:ActionNode):Tree {
        return stdgo._internal.text.template.parse.Parse_ActionNode_static_extension.ActionNode_static_extension._tree(_a);
    }
    static public function _writeTo(_a:ActionNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_ActionNode_static_extension.ActionNode_static_extension._writeTo(_a, _sb);
    }
    static public function string(_a:ActionNode):String {
        return stdgo._internal.text.template.parse.Parse_ActionNode_static_extension.ActionNode_static_extension.string(_a);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_ActionNode_static_extension.ActionNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode):Pos {
        return stdgo._internal.text.template.parse.Parse_ActionNode_static_extension.ActionNode_static_extension.position(__self__);
    }
}
class CommandNode_static_extension {
    static public function copy(_c:CommandNode):Node {
        return stdgo._internal.text.template.parse.Parse_CommandNode_static_extension.CommandNode_static_extension.copy(_c);
    }
    static public function _tree(_c:CommandNode):Tree {
        return stdgo._internal.text.template.parse.Parse_CommandNode_static_extension.CommandNode_static_extension._tree(_c);
    }
    static public function _writeTo(_c:CommandNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_CommandNode_static_extension.CommandNode_static_extension._writeTo(_c, _sb);
    }
    static public function string(_c:CommandNode):String {
        return stdgo._internal.text.template.parse.Parse_CommandNode_static_extension.CommandNode_static_extension.string(_c);
    }
    static public function _append(_c:CommandNode, _arg:Node):Void {
        stdgo._internal.text.template.parse.Parse_CommandNode_static_extension.CommandNode_static_extension._append(_c, _arg);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_CommandNode_static_extension.CommandNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode):Pos {
        return stdgo._internal.text.template.parse.Parse_CommandNode_static_extension.CommandNode_static_extension.position(__self__);
    }
}
class IdentifierNode_static_extension {
    static public function copy(_i:IdentifierNode):Node {
        return stdgo._internal.text.template.parse.Parse_IdentifierNode_static_extension.IdentifierNode_static_extension.copy(_i);
    }
    static public function _tree(_i:IdentifierNode):Tree {
        return stdgo._internal.text.template.parse.Parse_IdentifierNode_static_extension.IdentifierNode_static_extension._tree(_i);
    }
    static public function _writeTo(_i:IdentifierNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_IdentifierNode_static_extension.IdentifierNode_static_extension._writeTo(_i, _sb);
    }
    static public function string(_i:IdentifierNode):String {
        return stdgo._internal.text.template.parse.Parse_IdentifierNode_static_extension.IdentifierNode_static_extension.string(_i);
    }
    static public function setTree(_i:IdentifierNode, _t:Tree):IdentifierNode {
        return stdgo._internal.text.template.parse.Parse_IdentifierNode_static_extension.IdentifierNode_static_extension.setTree(_i, _t);
    }
    static public function setPos(_i:IdentifierNode, _pos:Pos):IdentifierNode {
        return stdgo._internal.text.template.parse.Parse_IdentifierNode_static_extension.IdentifierNode_static_extension.setPos(_i, _pos);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_IdentifierNode_static_extension.IdentifierNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode):Pos {
        return stdgo._internal.text.template.parse.Parse_IdentifierNode_static_extension.IdentifierNode_static_extension.position(__self__);
    }
}
class VariableNode_static_extension {
    static public function copy(_v:VariableNode):Node {
        return stdgo._internal.text.template.parse.Parse_VariableNode_static_extension.VariableNode_static_extension.copy(_v);
    }
    static public function _tree(_v:VariableNode):Tree {
        return stdgo._internal.text.template.parse.Parse_VariableNode_static_extension.VariableNode_static_extension._tree(_v);
    }
    static public function _writeTo(_v:VariableNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_VariableNode_static_extension.VariableNode_static_extension._writeTo(_v, _sb);
    }
    static public function string(_v:VariableNode):String {
        return stdgo._internal.text.template.parse.Parse_VariableNode_static_extension.VariableNode_static_extension.string(_v);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_VariableNode_static_extension.VariableNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode):Pos {
        return stdgo._internal.text.template.parse.Parse_VariableNode_static_extension.VariableNode_static_extension.position(__self__);
    }
}
class DotNode_static_extension {
    static public function copy(_d:DotNode):Node {
        return stdgo._internal.text.template.parse.Parse_DotNode_static_extension.DotNode_static_extension.copy(_d);
    }
    static public function _tree(_d:DotNode):Tree {
        return stdgo._internal.text.template.parse.Parse_DotNode_static_extension.DotNode_static_extension._tree(_d);
    }
    static public function _writeTo(_d:DotNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_DotNode_static_extension.DotNode_static_extension._writeTo(_d, _sb);
    }
    static public function string(_d:DotNode):String {
        return stdgo._internal.text.template.parse.Parse_DotNode_static_extension.DotNode_static_extension.string(_d);
    }
    static public function type(_d:DotNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_DotNode_static_extension.DotNode_static_extension.type(_d);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_DotNode.DotNode):Pos {
        return stdgo._internal.text.template.parse.Parse_DotNode_static_extension.DotNode_static_extension.position(__self__);
    }
}
class NilNode_static_extension {
    static public function copy(_n:NilNode):Node {
        return stdgo._internal.text.template.parse.Parse_NilNode_static_extension.NilNode_static_extension.copy(_n);
    }
    static public function _tree(_n:NilNode):Tree {
        return stdgo._internal.text.template.parse.Parse_NilNode_static_extension.NilNode_static_extension._tree(_n);
    }
    static public function _writeTo(_n:NilNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_NilNode_static_extension.NilNode_static_extension._writeTo(_n, _sb);
    }
    static public function string(_n:NilNode):String {
        return stdgo._internal.text.template.parse.Parse_NilNode_static_extension.NilNode_static_extension.string(_n);
    }
    static public function type(_n:NilNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_NilNode_static_extension.NilNode_static_extension.type(_n);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_NilNode.NilNode):Pos {
        return stdgo._internal.text.template.parse.Parse_NilNode_static_extension.NilNode_static_extension.position(__self__);
    }
}
class FieldNode_static_extension {
    static public function copy(_f:FieldNode):Node {
        return stdgo._internal.text.template.parse.Parse_FieldNode_static_extension.FieldNode_static_extension.copy(_f);
    }
    static public function _tree(_f:FieldNode):Tree {
        return stdgo._internal.text.template.parse.Parse_FieldNode_static_extension.FieldNode_static_extension._tree(_f);
    }
    static public function _writeTo(_f:FieldNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_FieldNode_static_extension.FieldNode_static_extension._writeTo(_f, _sb);
    }
    static public function string(_f:FieldNode):String {
        return stdgo._internal.text.template.parse.Parse_FieldNode_static_extension.FieldNode_static_extension.string(_f);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_FieldNode_static_extension.FieldNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode):Pos {
        return stdgo._internal.text.template.parse.Parse_FieldNode_static_extension.FieldNode_static_extension.position(__self__);
    }
}
class ChainNode_static_extension {
    static public function copy(_c:ChainNode):Node {
        return stdgo._internal.text.template.parse.Parse_ChainNode_static_extension.ChainNode_static_extension.copy(_c);
    }
    static public function _tree(_c:ChainNode):Tree {
        return stdgo._internal.text.template.parse.Parse_ChainNode_static_extension.ChainNode_static_extension._tree(_c);
    }
    static public function _writeTo(_c:ChainNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_ChainNode_static_extension.ChainNode_static_extension._writeTo(_c, _sb);
    }
    static public function string(_c:ChainNode):String {
        return stdgo._internal.text.template.parse.Parse_ChainNode_static_extension.ChainNode_static_extension.string(_c);
    }
    static public function add(_c:ChainNode, _field:String):Void {
        stdgo._internal.text.template.parse.Parse_ChainNode_static_extension.ChainNode_static_extension.add(_c, _field);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_ChainNode_static_extension.ChainNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode):Pos {
        return stdgo._internal.text.template.parse.Parse_ChainNode_static_extension.ChainNode_static_extension.position(__self__);
    }
}
class BoolNode_static_extension {
    static public function copy(_b:BoolNode):Node {
        return stdgo._internal.text.template.parse.Parse_BoolNode_static_extension.BoolNode_static_extension.copy(_b);
    }
    static public function _tree(_b:BoolNode):Tree {
        return stdgo._internal.text.template.parse.Parse_BoolNode_static_extension.BoolNode_static_extension._tree(_b);
    }
    static public function _writeTo(_b:BoolNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_BoolNode_static_extension.BoolNode_static_extension._writeTo(_b, _sb);
    }
    static public function string(_b:BoolNode):String {
        return stdgo._internal.text.template.parse.Parse_BoolNode_static_extension.BoolNode_static_extension.string(_b);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_BoolNode_static_extension.BoolNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode):Pos {
        return stdgo._internal.text.template.parse.Parse_BoolNode_static_extension.BoolNode_static_extension.position(__self__);
    }
}
class NumberNode_static_extension {
    static public function copy(_n:NumberNode):Node {
        return stdgo._internal.text.template.parse.Parse_NumberNode_static_extension.NumberNode_static_extension.copy(_n);
    }
    static public function _tree(_n:NumberNode):Tree {
        return stdgo._internal.text.template.parse.Parse_NumberNode_static_extension.NumberNode_static_extension._tree(_n);
    }
    static public function _writeTo(_n:NumberNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_NumberNode_static_extension.NumberNode_static_extension._writeTo(_n, _sb);
    }
    static public function string(_n:NumberNode):String {
        return stdgo._internal.text.template.parse.Parse_NumberNode_static_extension.NumberNode_static_extension.string(_n);
    }
    static public function _simplifyComplex(_n:NumberNode):Void {
        stdgo._internal.text.template.parse.Parse_NumberNode_static_extension.NumberNode_static_extension._simplifyComplex(_n);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_NumberNode_static_extension.NumberNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode):Pos {
        return stdgo._internal.text.template.parse.Parse_NumberNode_static_extension.NumberNode_static_extension.position(__self__);
    }
}
class StringNode_static_extension {
    static public function copy(_s:StringNode):Node {
        return stdgo._internal.text.template.parse.Parse_StringNode_static_extension.StringNode_static_extension.copy(_s);
    }
    static public function _tree(_s:StringNode):Tree {
        return stdgo._internal.text.template.parse.Parse_StringNode_static_extension.StringNode_static_extension._tree(_s);
    }
    static public function _writeTo(_s:StringNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_StringNode_static_extension.StringNode_static_extension._writeTo(_s, _sb);
    }
    static public function string(_s:StringNode):String {
        return stdgo._internal.text.template.parse.Parse_StringNode_static_extension.StringNode_static_extension.string(_s);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_StringNode.StringNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_StringNode_static_extension.StringNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_StringNode.StringNode):Pos {
        return stdgo._internal.text.template.parse.Parse_StringNode_static_extension.StringNode_static_extension.position(__self__);
    }
}
class T_endNode_static_extension {
    static public function copy(_e:T_endNode):Node {
        return stdgo._internal.text.template.parse.Parse_T_endNode_static_extension.T_endNode_static_extension.copy(_e);
    }
    static public function _tree(_e:T_endNode):Tree {
        return stdgo._internal.text.template.parse.Parse_T_endNode_static_extension.T_endNode_static_extension._tree(_e);
    }
    static public function _writeTo(_e:T_endNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_T_endNode_static_extension.T_endNode_static_extension._writeTo(_e, _sb);
    }
    static public function string(_e:T_endNode):String {
        return stdgo._internal.text.template.parse.Parse_T_endNode_static_extension.T_endNode_static_extension.string(_e);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_T_endNode_static_extension.T_endNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode):Pos {
        return stdgo._internal.text.template.parse.Parse_T_endNode_static_extension.T_endNode_static_extension.position(__self__);
    }
}
class T_elseNode_static_extension {
    static public function copy(_e:T_elseNode):Node {
        return stdgo._internal.text.template.parse.Parse_T_elseNode_static_extension.T_elseNode_static_extension.copy(_e);
    }
    static public function _tree(_e:T_elseNode):Tree {
        return stdgo._internal.text.template.parse.Parse_T_elseNode_static_extension.T_elseNode_static_extension._tree(_e);
    }
    static public function _writeTo(_e:T_elseNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_T_elseNode_static_extension.T_elseNode_static_extension._writeTo(_e, _sb);
    }
    static public function string(_e:T_elseNode):String {
        return stdgo._internal.text.template.parse.Parse_T_elseNode_static_extension.T_elseNode_static_extension.string(_e);
    }
    static public function type(_e:T_elseNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_T_elseNode_static_extension.T_elseNode_static_extension.type(_e);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode):Pos {
        return stdgo._internal.text.template.parse.Parse_T_elseNode_static_extension.T_elseNode_static_extension.position(__self__);
    }
}
class BranchNode_static_extension {
    static public function copy(_b:BranchNode):Node {
        return stdgo._internal.text.template.parse.Parse_BranchNode_static_extension.BranchNode_static_extension.copy(_b);
    }
    static public function _tree(_b:BranchNode):Tree {
        return stdgo._internal.text.template.parse.Parse_BranchNode_static_extension.BranchNode_static_extension._tree(_b);
    }
    static public function _writeTo(_b:BranchNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_BranchNode_static_extension.BranchNode_static_extension._writeTo(_b, _sb);
    }
    static public function string(_b:BranchNode):String {
        return stdgo._internal.text.template.parse.Parse_BranchNode_static_extension.BranchNode_static_extension.string(_b);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_BranchNode_static_extension.BranchNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode):Pos {
        return stdgo._internal.text.template.parse.Parse_BranchNode_static_extension.BranchNode_static_extension.position(__self__);
    }
}
class IfNode_static_extension {
    static public function copy(_i:IfNode):Node {
        return stdgo._internal.text.template.parse.Parse_IfNode_static_extension.IfNode_static_extension.copy(_i);
    }
    public static function _writeTo(__self__:stdgo._internal.text.template.parse.Parse_IfNode.IfNode, _sb:stdgo._internal.strings.Strings_Builder.Builder) {
        stdgo._internal.text.template.parse.Parse_IfNode_static_extension.IfNode_static_extension._writeTo(__self__, _sb);
    }
    public static function _tree(__self__:stdgo._internal.text.template.parse.Parse_IfNode.IfNode):Tree {
        return stdgo._internal.text.template.parse.Parse_IfNode_static_extension.IfNode_static_extension._tree(__self__);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_IfNode.IfNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_IfNode_static_extension.IfNode_static_extension.type(__self__);
    }
    public static function string(__self__:stdgo._internal.text.template.parse.Parse_IfNode.IfNode):String {
        return stdgo._internal.text.template.parse.Parse_IfNode_static_extension.IfNode_static_extension.string(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_IfNode.IfNode):Pos {
        return stdgo._internal.text.template.parse.Parse_IfNode_static_extension.IfNode_static_extension.position(__self__);
    }
}
class BreakNode_static_extension {
    static public function _writeTo(_b:BreakNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_BreakNode_static_extension.BreakNode_static_extension._writeTo(_b, _sb);
    }
    static public function _tree(_b:BreakNode):Tree {
        return stdgo._internal.text.template.parse.Parse_BreakNode_static_extension.BreakNode_static_extension._tree(_b);
    }
    static public function string(_b:BreakNode):String {
        return stdgo._internal.text.template.parse.Parse_BreakNode_static_extension.BreakNode_static_extension.string(_b);
    }
    static public function copy(_b:BreakNode):Node {
        return stdgo._internal.text.template.parse.Parse_BreakNode_static_extension.BreakNode_static_extension.copy(_b);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_BreakNode_static_extension.BreakNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode):Pos {
        return stdgo._internal.text.template.parse.Parse_BreakNode_static_extension.BreakNode_static_extension.position(__self__);
    }
}
class ContinueNode_static_extension {
    static public function _writeTo(_c:ContinueNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_ContinueNode_static_extension.ContinueNode_static_extension._writeTo(_c, _sb);
    }
    static public function _tree(_c:ContinueNode):Tree {
        return stdgo._internal.text.template.parse.Parse_ContinueNode_static_extension.ContinueNode_static_extension._tree(_c);
    }
    static public function string(_c:ContinueNode):String {
        return stdgo._internal.text.template.parse.Parse_ContinueNode_static_extension.ContinueNode_static_extension.string(_c);
    }
    static public function copy(_c:ContinueNode):Node {
        return stdgo._internal.text.template.parse.Parse_ContinueNode_static_extension.ContinueNode_static_extension.copy(_c);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_ContinueNode_static_extension.ContinueNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode):Pos {
        return stdgo._internal.text.template.parse.Parse_ContinueNode_static_extension.ContinueNode_static_extension.position(__self__);
    }
}
class RangeNode_static_extension {
    static public function copy(_r:RangeNode):Node {
        return stdgo._internal.text.template.parse.Parse_RangeNode_static_extension.RangeNode_static_extension.copy(_r);
    }
    public static function _writeTo(__self__:stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode, _sb:stdgo._internal.strings.Strings_Builder.Builder) {
        stdgo._internal.text.template.parse.Parse_RangeNode_static_extension.RangeNode_static_extension._writeTo(__self__, _sb);
    }
    public static function _tree(__self__:stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode):Tree {
        return stdgo._internal.text.template.parse.Parse_RangeNode_static_extension.RangeNode_static_extension._tree(__self__);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_RangeNode_static_extension.RangeNode_static_extension.type(__self__);
    }
    public static function string(__self__:stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode):String {
        return stdgo._internal.text.template.parse.Parse_RangeNode_static_extension.RangeNode_static_extension.string(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode):Pos {
        return stdgo._internal.text.template.parse.Parse_RangeNode_static_extension.RangeNode_static_extension.position(__self__);
    }
}
class WithNode_static_extension {
    static public function copy(_w:WithNode):Node {
        return stdgo._internal.text.template.parse.Parse_WithNode_static_extension.WithNode_static_extension.copy(_w);
    }
    public static function _writeTo(__self__:stdgo._internal.text.template.parse.Parse_WithNode.WithNode, _sb:stdgo._internal.strings.Strings_Builder.Builder) {
        stdgo._internal.text.template.parse.Parse_WithNode_static_extension.WithNode_static_extension._writeTo(__self__, _sb);
    }
    public static function _tree(__self__:stdgo._internal.text.template.parse.Parse_WithNode.WithNode):Tree {
        return stdgo._internal.text.template.parse.Parse_WithNode_static_extension.WithNode_static_extension._tree(__self__);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_WithNode.WithNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_WithNode_static_extension.WithNode_static_extension.type(__self__);
    }
    public static function string(__self__:stdgo._internal.text.template.parse.Parse_WithNode.WithNode):String {
        return stdgo._internal.text.template.parse.Parse_WithNode_static_extension.WithNode_static_extension.string(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_WithNode.WithNode):Pos {
        return stdgo._internal.text.template.parse.Parse_WithNode_static_extension.WithNode_static_extension.position(__self__);
    }
}
class TemplateNode_static_extension {
    static public function copy(_t:TemplateNode):Node {
        return stdgo._internal.text.template.parse.Parse_TemplateNode_static_extension.TemplateNode_static_extension.copy(_t);
    }
    static public function _tree(_t:TemplateNode):Tree {
        return stdgo._internal.text.template.parse.Parse_TemplateNode_static_extension.TemplateNode_static_extension._tree(_t);
    }
    static public function _writeTo(_t:TemplateNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        stdgo._internal.text.template.parse.Parse_TemplateNode_static_extension.TemplateNode_static_extension._writeTo(_t, _sb);
    }
    static public function string(_t:TemplateNode):String {
        return stdgo._internal.text.template.parse.Parse_TemplateNode_static_extension.TemplateNode_static_extension.string(_t);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_TemplateNode_static_extension.TemplateNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode):Pos {
        return stdgo._internal.text.template.parse.Parse_TemplateNode_static_extension.TemplateNode_static_extension.position(__self__);
    }
}
class Tree_static_extension {
    static public function _useVar(_t:Tree, _pos:Pos, _name:String):Node {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._useVar(_t, _pos, _name);
    }
    static public function _popVars(_t:Tree, _n:StdTypes.Int):Void {
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._popVars(_t, _n);
    }
    static public function _hasFunction(_t:Tree, _name:String):Bool {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._hasFunction(_t, _name);
    }
    static public function _term(_t:Tree):Node {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._term(_t);
    }
    static public function _operand(_t:Tree):Node {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._operand(_t);
    }
    static public function _command(_t:Tree):CommandNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._command(_t);
    }
    static public function _parseTemplateName(_t:Tree, _token:T_item, _context:String):String {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._parseTemplateName(_t, _token, _context);
    }
    static public function _templateControl(_t:Tree):Node {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._templateControl(_t);
    }
    static public function _blockControl(_t:Tree):Node {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._blockControl(_t);
    }
    static public function _elseControl(_t:Tree):Node {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._elseControl(_t);
    }
    static public function _endControl(_t:Tree):Node {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._endControl(_t);
    }
    static public function _withControl(_t:Tree):Node {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._withControl(_t);
    }
    static public function _rangeControl(_t:Tree):Node {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._rangeControl(_t);
    }
    static public function _ifControl(_t:Tree):Node {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._ifControl(_t);
    }
    static public function _parseControl(_t:Tree, _allowElseIf:Bool, _context:String):stdgo.Tuple.Tuple5<Pos, StdTypes.Int, PipeNode, ListNode, ListNode> {
        return {
            final obj = stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._parseControl(_t, _allowElseIf, _context);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function _checkPipeline(_t:Tree, _pipe:PipeNode, _context:String):Void {
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._checkPipeline(_t, _pipe, _context);
    }
    static public function _pipeline(_t:Tree, _context:String, _end:T_itemType):PipeNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._pipeline(_t, _context, _end);
    }
    static public function _continueControl(_t:Tree, _pos:Pos, _line:StdTypes.Int):Node {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._continueControl(_t, _pos, _line);
    }
    static public function _breakControl(_t:Tree, _pos:Pos, _line:StdTypes.Int):Node {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._breakControl(_t, _pos, _line);
    }
    static public function _action(_t:Tree):Node {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._action(_t);
    }
    static public function _clearActionLine(_t:Tree):Void {
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._clearActionLine(_t);
    }
    static public function _textOrAction(_t:Tree):Node {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._textOrAction(_t);
    }
    static public function _itemList(_t:Tree):stdgo.Tuple<ListNode, Node> {
        return {
            final obj = stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._itemList(_t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseDefinition(_t:Tree):Void {
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._parseDefinition(_t);
    }
    static public function _parse(_t:Tree):Void {
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._parse(_t);
    }
    static public function _add(_t:Tree):Void {
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._add(_t);
    }
    static public function parse(_t:Tree, _text:String, _leftDelim:String, _rightDelim:String, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):stdgo.Tuple<Tree, stdgo.Error> {
        return {
            final obj = stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension.parse(_t, _text, _leftDelim, _rightDelim, _treeSet, ...[for (i in _funcs) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _stopParse(_t:Tree):Void {
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._stopParse(_t);
    }
    static public function _startParse(_t:Tree, _funcs:Array<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, _lex:T_lexer, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>):Void {
        final _funcs = ([for (i in _funcs) i] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>);
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._startParse(_t, _funcs, _lex, _treeSet);
    }
    static public function _recover(_t:Tree, _errp:stdgo.Error):Void {
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._recover(_t, _errp);
    }
    static public function _unexpected(_t:Tree, _token:T_item, _context:String):Void {
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._unexpected(_t, _token, _context);
    }
    static public function _expectOneOf(_t:Tree, _expected1:T_itemType, _expected2:T_itemType, _context:String):T_item {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._expectOneOf(_t, _expected1, _expected2, _context);
    }
    static public function _expect(_t:Tree, _expected:T_itemType, _context:String):T_item {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._expect(_t, _expected, _context);
    }
    static public function _error(_t:Tree, _err:stdgo.Error):Void {
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._error(_t, _err);
    }
    static public function _errorf(_t:Tree, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._errorf(_t, _format, ...[for (i in _args) i]);
    }
    static public function errorContext(_t:Tree, _n:Node):stdgo.Tuple<String, String> {
        return {
            final obj = stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension.errorContext(_t, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _peekNonSpace(_t:Tree):T_item {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._peekNonSpace(_t);
    }
    static public function _nextNonSpace(_t:Tree):T_item {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._nextNonSpace(_t);
    }
    static public function _peek(_t:Tree):T_item {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._peek(_t);
    }
    static public function _backup3(_t:Tree, _t2:T_item, _t1:T_item):Void {
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._backup3(_t, _t2, _t1);
    }
    static public function _backup2(_t:Tree, _t1:T_item):Void {
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._backup2(_t, _t1);
    }
    static public function _backup(_t:Tree):Void {
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._backup(_t);
    }
    static public function _next(_t:Tree):T_item {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._next(_t);
    }
    static public function copy(_t:Tree):Tree {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension.copy(_t);
    }
    static public function _newTemplate(_t:Tree, _pos:Pos, _line:StdTypes.Int, _name:String, _pipe:PipeNode):TemplateNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newTemplate(_t, _pos, _line, _name, _pipe);
    }
    static public function _newWith(_t:Tree, _pos:Pos, _line:StdTypes.Int, _pipe:PipeNode, _list:ListNode, _elseList:ListNode):WithNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newWith(_t, _pos, _line, _pipe, _list, _elseList);
    }
    static public function _newRange(_t:Tree, _pos:Pos, _line:StdTypes.Int, _pipe:PipeNode, _list:ListNode, _elseList:ListNode):RangeNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newRange(_t, _pos, _line, _pipe, _list, _elseList);
    }
    static public function _newContinue(_t:Tree, _pos:Pos, _line:StdTypes.Int):ContinueNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newContinue(_t, _pos, _line);
    }
    static public function _newBreak(_t:Tree, _pos:Pos, _line:StdTypes.Int):BreakNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newBreak(_t, _pos, _line);
    }
    static public function _newIf(_t:Tree, _pos:Pos, _line:StdTypes.Int, _pipe:PipeNode, _list:ListNode, _elseList:ListNode):IfNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newIf(_t, _pos, _line, _pipe, _list, _elseList);
    }
    static public function _newElse(_t:Tree, _pos:Pos, _line:StdTypes.Int):T_elseNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newElse(_t, _pos, _line);
    }
    static public function _newEnd(_t:Tree, _pos:Pos):T_endNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newEnd(_t, _pos);
    }
    static public function _newString(_t:Tree, _pos:Pos, _orig:String, _text:String):StringNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newString(_t, _pos, _orig, _text);
    }
    static public function _newNumber(_t:Tree, _pos:Pos, _text:String, _typ:T_itemType):stdgo.Tuple<NumberNode, stdgo.Error> {
        return {
            final obj = stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newNumber(_t, _pos, _text, _typ);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _newBool(_t:Tree, _pos:Pos, __true:Bool):BoolNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newBool(_t, _pos, __true);
    }
    static public function _newChain(_t:Tree, _pos:Pos, _node:Node):ChainNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newChain(_t, _pos, _node);
    }
    static public function _newField(_t:Tree, _pos:Pos, _ident:String):FieldNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newField(_t, _pos, _ident);
    }
    static public function _newNil(_t:Tree, _pos:Pos):NilNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newNil(_t, _pos);
    }
    static public function _newDot(_t:Tree, _pos:Pos):DotNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newDot(_t, _pos);
    }
    static public function _newVariable(_t:Tree, _pos:Pos, _ident:String):VariableNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newVariable(_t, _pos, _ident);
    }
    static public function _newCommand(_t:Tree, _pos:Pos):CommandNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newCommand(_t, _pos);
    }
    static public function _newAction(_t:Tree, _pos:Pos, _line:StdTypes.Int, _pipe:PipeNode):ActionNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newAction(_t, _pos, _line, _pipe);
    }
    static public function _newPipeline(_t:Tree, _pos:Pos, _line:StdTypes.Int, _vars:Array<VariableNode>):PipeNode {
        final _vars = ([for (i in _vars) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newPipeline(_t, _pos, _line, _vars);
    }
    static public function _newComment(_t:Tree, _pos:Pos, _text:String):CommentNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newComment(_t, _pos, _text);
    }
    static public function _newText(_t:Tree, _pos:Pos, _text:String):TextNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newText(_t, _pos, _text);
    }
    static public function _newList(_t:Tree, _pos:Pos):ListNode {
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newList(_t, _pos);
    }
}
class NodeType_static_extension {
    static public function type(_t:NodeType):NodeType {
        return stdgo._internal.text.template.parse.Parse_NodeType_static_extension.NodeType_static_extension.type(_t);
    }
}
class Pos_static_extension {
    static public function position(_p:Pos):Pos {
        return stdgo._internal.text.template.parse.Parse_Pos_static_extension.Pos_static_extension.position(_p);
    }
}
/**
    /|*{
    	token_3617924 = t.peekNonSpace()
    	pipe = t.newPipeline(token_3617924.pos, token_3617924.line, nil)
    	gotoNext = 3618043
    	_ = gotoNext == 3618043
    	if v_3618054 = t.peekNonSpace(); v_3618054.typ == 21 {
    		gotoNext = 3618099
    		_ = gotoNext == 3618099
    		t.next()
    		tokenAfterVariable_3618415 = t.peek()
    		next_3618448 = t.peekNonSpace()
    		_ = 0
    		gotoNext = 3618475
    		_ = gotoNext == 3618475
    		switch {
    		case next_3618448.typ == 6, next_3618448.typ == 7:
    			gotoNext = 3618486
    			_ = gotoNext == 3618486
    			pipe.IsAssign = next_3618448.typ == 6
    			t.nextNonSpace()
    			pipe.Decl = append(pipe.Decl, t.newVariable(v_3618054.pos, v_3618054.val))
    			t.vars = append(t.vars, v_3618054.val)
    			gotoNext = 3619316
    		case next_3618448.typ == 2 && next_3618448.val == ",":
    			gotoNext = 3618700
    			_ = gotoNext == 3618700
    			t.nextNonSpace()
    			pipe.Decl = append(pipe.Decl, t.newVariable(v_3618054.pos, v_3618054.val))
    			t.vars = append(t.vars, v_3618054.val)
    			if context == "range" && len(pipe.Decl) < 2 {
    				gotoNext = 3618909
    				_ = gotoNext == 3618909
    				_ = 0
    				gotoNext = 3618915
    				_ = gotoNext == 3618915
    				switch t.peekNonSpace().typ {
    				case 21, 16, 17:
    					gotoNext = 3618949
    					_ = gotoNext == 3618949
    					gotoNext = 3618043
    					gotoNext = 3619152
    				default:
    					gotoNext = 3619076
    					_ = gotoNext == 3619076
    					t.errorf("range can only initialize variables")
    					gotoNext = 3619152
    				}
    				gotoNext = 3619152
    			} else {
    				gotoNext = 3619152
    			}
    			_ = gotoNext == 3619152
    			t.errorf("too many declarations in %s", context)
    			gotoNext = 3619316
    		case tokenAfterVariable_3618415.typ == 18:
    			gotoNext = 3619203
    			_ = gotoNext == 3619203
    			t.backup3(v_3618054, tokenAfterVariable_3618415)
    			gotoNext = 3619316
    		default:
    			gotoNext = 3619283
    			_ = gotoNext == 3619283
    			t.backup2(v_3618054)
    			gotoNext = 3619316
    		}
    		gotoNext = 3619316
    	} else {
    		gotoNext = 3619316
    	}
    	_ = gotoNext == 3619316
    	_ = 0
    	gotoNext = 3619316
    	_ = gotoNext == 3619316
    	if true {
    		gotoNext = 3619320
    		_ = gotoNext == 3619320
    		token_3619331 = t.nextNonSpace()
    		gotoNext = 3619324
    		_ = gotoNext == 3619324
    		switch token_3619331 = t.nextNonSpace(); token_3619331.typ {
    		case end:
    			gotoNext = 3619372
    			_ = gotoNext == 3619372
    			t.checkPipeline(pipe, context)
    			return
    			gotoNext = 3619728
    		case 1, 3, 5, 26, 9, 10, 13, 31, 15, 19, 21, 12:
    			gotoNext = 3619474
    			_ = gotoNext == 3619474
    			t.backup()
    			pipe.append(t.command())
    			gotoNext = 3619728
    		default:
    			gotoNext = 3619680
    			_ = gotoNext == 3619680
    			t.unexpected(token_3619331, context)
    			gotoNext = 3619728
    		}
    		gotoNext = 3619316
    	} else {
    		gotoNext = 3619728
    	}
    	_ = gotoNext == 3619728
    	gotoNext = -1
    }*|/
**/
class Parse {
    /**
        NewIdentifier returns a new IdentifierNode with the given identifier name.
    **/
    static public function newIdentifier(_ident:String):IdentifierNode {
        return stdgo._internal.text.template.parse.Parse_newIdentifier.newIdentifier(_ident);
    }
    /**
        Parse returns a map from template name to parse.Tree, created by parsing the
        templates described in the argument string. The top-level template will be
        given the specified name. If an error is encountered, parsing stops and an
        empty map is returned with the error.
    **/
    static public function parse(_name:String, _text:String, _leftDelim:String, _rightDelim:String, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):stdgo.Tuple<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>, stdgo.Error> {
        return {
            final obj = stdgo._internal.text.template.parse.Parse_parse.parse(_name, _text, _leftDelim, _rightDelim, ...[for (i in _funcs) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        New allocates a new parse tree with the given name.
    **/
    static public function new_(_name:String, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):Tree {
        return stdgo._internal.text.template.parse.Parse_new_.new_(_name, ...[for (i in _funcs) i]);
    }
    /**
        IsEmptyTree reports whether this tree (node) is empty of everything but space or comments.
    **/
    static public function isEmptyTree(_n:Node):Bool {
        return stdgo._internal.text.template.parse.Parse_isEmptyTree.isEmptyTree(_n);
    }
}
