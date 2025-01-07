package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension) class Template {
    public var _name : stdgo.GoString = "";
    @:embedded
    public var tree : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
    @:embedded
    public var _common : stdgo.Ref<stdgo._internal.text.template.Template_T_common.T_common> = (null : stdgo.Ref<stdgo._internal.text.template.Template_T_common.T_common>);
    public var _leftDelim : stdgo.GoString = "";
    public var _rightDelim : stdgo.GoString = "";
    public function new(?_name:stdgo.GoString, ?tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, ?_common:stdgo.Ref<stdgo._internal.text.template.Template_T_common.T_common>, ?_leftDelim:stdgo.GoString, ?_rightDelim:stdgo.GoString) {
        if (_name != null) this._name = _name;
        if (tree != null) this.tree = tree;
        if (_common != null) this._common = _common;
        if (_leftDelim != null) this._leftDelim = _leftDelim;
        if (_rightDelim != null) this._rightDelim = _rightDelim;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var copy(get, never) : () -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>;
    @:embedded
    @:embeddededffieldsffun
    public function get_copy():() -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> return @:check32 this.tree.copy;
    public var errorContext(get, never) : stdgo._internal.text.template.parse.Parse_Node.Node -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; };
    @:embedded
    @:embeddededffieldsffun
    public function get_errorContext():stdgo._internal.text.template.parse.Parse_Node.Node -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return @:check32 this.tree.errorContext;
    public var _action(get, never) : () -> stdgo._internal.text.template.parse.Parse_Node.Node;
    @:embedded
    @:embeddededffieldsffun
    public function get__action():() -> stdgo._internal.text.template.parse.Parse_Node.Node return @:check32 this.tree._action;
    public var _add(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__add():() -> Void return @:check32 this.tree._add;
    public var _backup(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__backup():() -> Void return @:check32 this.tree._backup;
    public var _backup2(get, never) : stdgo._internal.text.template.parse.Parse_T_item.T_item -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__backup2():stdgo._internal.text.template.parse.Parse_T_item.T_item -> Void return @:check32 this.tree._backup2;
    public var _backup3(get, never) : (stdgo._internal.text.template.parse.Parse_T_item.T_item, stdgo._internal.text.template.parse.Parse_T_item.T_item) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__backup3():(stdgo._internal.text.template.parse.Parse_T_item.T_item, stdgo._internal.text.template.parse.Parse_T_item.T_item) -> Void return @:check32 this.tree._backup3;
    public var _blockControl(get, never) : () -> stdgo._internal.text.template.parse.Parse_Node.Node;
    @:embedded
    @:embeddededffieldsffun
    public function get__blockControl():() -> stdgo._internal.text.template.parse.Parse_Node.Node return @:check32 this.tree._blockControl;
    public var _breakControl(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt) -> stdgo._internal.text.template.parse.Parse_Node.Node;
    @:embedded
    @:embeddededffieldsffun
    public function get__breakControl():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt) -> stdgo._internal.text.template.parse.Parse_Node.Node return @:check32 this.tree._breakControl;
    public var _checkPipeline(get, never) : (stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, stdgo.GoString) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__checkPipeline():(stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, stdgo.GoString) -> Void return @:check32 this.tree._checkPipeline;
    public var _clearActionLine(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__clearActionLine():() -> Void return @:check32 this.tree._clearActionLine;
    public var _command(get, never) : () -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__command():() -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> return @:check32 this.tree._command;
    public var _continueControl(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt) -> stdgo._internal.text.template.parse.Parse_Node.Node;
    @:embedded
    @:embeddededffieldsffun
    public function get__continueControl():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt) -> stdgo._internal.text.template.parse.Parse_Node.Node return @:check32 this.tree._continueControl;
    public var _elseControl(get, never) : () -> stdgo._internal.text.template.parse.Parse_Node.Node;
    @:embedded
    @:embeddededffieldsffun
    public function get__elseControl():() -> stdgo._internal.text.template.parse.Parse_Node.Node return @:check32 this.tree._elseControl;
    public var _endControl(get, never) : () -> stdgo._internal.text.template.parse.Parse_Node.Node;
    @:embedded
    @:embeddededffieldsffun
    public function get__endControl():() -> stdgo._internal.text.template.parse.Parse_Node.Node return @:check32 this.tree._endControl;
    public var _error(get, never) : stdgo.Error -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__error():stdgo.Error -> Void return @:check32 this.tree._error;
    public var _errorf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__errorf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check32 this.tree._errorf;
    public var _expect(get, never) : (stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, stdgo.GoString) -> stdgo._internal.text.template.parse.Parse_T_item.T_item;
    @:embedded
    @:embeddededffieldsffun
    public function get__expect():(stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, stdgo.GoString) -> stdgo._internal.text.template.parse.Parse_T_item.T_item return @:check32 this.tree._expect;
    public var _expectOneOf(get, never) : (stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, stdgo.GoString) -> stdgo._internal.text.template.parse.Parse_T_item.T_item;
    @:embedded
    @:embeddededffieldsffun
    public function get__expectOneOf():(stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, stdgo.GoString) -> stdgo._internal.text.template.parse.Parse_T_item.T_item return @:check32 this.tree._expectOneOf;
    public var _hasFunction(get, never) : stdgo.GoString -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__hasFunction():stdgo.GoString -> Bool return @:check32 this.tree._hasFunction;
    public var _ifControl(get, never) : () -> stdgo._internal.text.template.parse.Parse_Node.Node;
    @:embedded
    @:embeddededffieldsffun
    public function get__ifControl():() -> stdgo._internal.text.template.parse.Parse_Node.Node return @:check32 this.tree._ifControl;
    public var _itemList(get, never) : () -> { var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; var _1 : stdgo._internal.text.template.parse.Parse_Node.Node; };
    @:embedded
    @:embeddededffieldsffun
    public function get__itemList():() -> { var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; var _1 : stdgo._internal.text.template.parse.Parse_Node.Node; } return @:check32 this.tree._itemList;
    public var _newAction(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt, stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newAction():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt, stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode> return @:check32 this.tree._newAction;
    public var _newBool(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, Bool) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newBool():(stdgo._internal.text.template.parse.Parse_Pos.Pos, Bool) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode> return @:check32 this.tree._newBool;
    public var _newBreak(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newBreak():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode> return @:check32 this.tree._newBreak;
    public var _newChain(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo._internal.text.template.parse.Parse_Node.Node) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newChain():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo._internal.text.template.parse.Parse_Node.Node) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode> return @:check32 this.tree._newChain;
    public var _newCommand(get, never) : stdgo._internal.text.template.parse.Parse_Pos.Pos -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newCommand():stdgo._internal.text.template.parse.Parse_Pos.Pos -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> return @:check32 this.tree._newCommand;
    public var _newComment(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoString) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newComment():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoString) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode> return @:check32 this.tree._newComment;
    public var _newContinue(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newContinue():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode> return @:check32 this.tree._newContinue;
    public var _newDot(get, never) : stdgo._internal.text.template.parse.Parse_Pos.Pos -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newDot():stdgo._internal.text.template.parse.Parse_Pos.Pos -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> return @:check32 this.tree._newDot;
    public var _newElse(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newElse():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode> return @:check32 this.tree._newElse;
    public var _newEnd(get, never) : stdgo._internal.text.template.parse.Parse_Pos.Pos -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newEnd():stdgo._internal.text.template.parse.Parse_Pos.Pos -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode> return @:check32 this.tree._newEnd;
    public var _newField(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoString) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newField():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoString) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode> return @:check32 this.tree._newField;
    public var _newIf(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt, stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newIf():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt, stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode> return @:check32 this.tree._newIf;
    public var _newList(get, never) : stdgo._internal.text.template.parse.Parse_Pos.Pos -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newList():stdgo._internal.text.template.parse.Parse_Pos.Pos -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> return @:check32 this.tree._newList;
    public var _newNil(get, never) : stdgo._internal.text.template.parse.Parse_Pos.Pos -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newNil():stdgo._internal.text.template.parse.Parse_Pos.Pos -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode> return @:check32 this.tree._newNil;
    public var _newNumber(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoString, stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType) -> { var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__newNumber():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoString, stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType) -> { var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>; var _1 : stdgo.Error; } return @:check32 this.tree._newNumber;
    public var _newPipeline(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt, stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newPipeline():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt, stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> return @:check32 this.tree._newPipeline;
    public var _newRange(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt, stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newRange():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt, stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode> return @:check32 this.tree._newRange;
    public var _newString(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoString, stdgo.GoString) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newString():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoString, stdgo.GoString) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode> return @:check32 this.tree._newString;
    public var _newTemplate(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt, stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newTemplate():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt, stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode> return @:check32 this.tree._newTemplate;
    public var _newText(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoString) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newText():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoString) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode> return @:check32 this.tree._newText;
    public var _newVariable(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoString) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newVariable():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoString) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode> return @:check32 this.tree._newVariable;
    public var _newWith(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt, stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newWith():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoInt, stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode> return @:check32 this.tree._newWith;
    public var _next(get, never) : () -> stdgo._internal.text.template.parse.Parse_T_item.T_item;
    @:embedded
    @:embeddededffieldsffun
    public function get__next():() -> stdgo._internal.text.template.parse.Parse_T_item.T_item return @:check32 this.tree._next;
    public var _nextNonSpace(get, never) : () -> stdgo._internal.text.template.parse.Parse_T_item.T_item;
    @:embedded
    @:embeddededffieldsffun
    public function get__nextNonSpace():() -> stdgo._internal.text.template.parse.Parse_T_item.T_item return @:check32 this.tree._nextNonSpace;
    public var _operand(get, never) : () -> stdgo._internal.text.template.parse.Parse_Node.Node;
    @:embedded
    @:embeddededffieldsffun
    public function get__operand():() -> stdgo._internal.text.template.parse.Parse_Node.Node return @:check32 this.tree._operand;
    public var _parse(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__parse():() -> Void return @:check32 this.tree._parse;
    public var _parseControl(get, never) : (Bool, stdgo.GoString) -> { var _0 : stdgo._internal.text.template.parse.Parse_Pos.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; };
    @:embedded
    @:embeddededffieldsffun
    public function get__parseControl():(Bool, stdgo.GoString) -> { var _0 : stdgo._internal.text.template.parse.Parse_Pos.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; } return @:check32 this.tree._parseControl;
    public var _parseDefinition(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__parseDefinition():() -> Void return @:check32 this.tree._parseDefinition;
    public var _parseTemplateName(get, never) : (stdgo._internal.text.template.parse.Parse_T_item.T_item, stdgo.GoString) -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__parseTemplateName():(stdgo._internal.text.template.parse.Parse_T_item.T_item, stdgo.GoString) -> stdgo.GoString return @:check32 this.tree._parseTemplateName;
    public var _peek(get, never) : () -> stdgo._internal.text.template.parse.Parse_T_item.T_item;
    @:embedded
    @:embeddededffieldsffun
    public function get__peek():() -> stdgo._internal.text.template.parse.Parse_T_item.T_item return @:check32 this.tree._peek;
    public var _peekNonSpace(get, never) : () -> stdgo._internal.text.template.parse.Parse_T_item.T_item;
    @:embedded
    @:embeddededffieldsffun
    public function get__peekNonSpace():() -> stdgo._internal.text.template.parse.Parse_T_item.T_item return @:check32 this.tree._peekNonSpace;
    public var _pipeline(get, never) : (stdgo.GoString, stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>;
    @:embedded
    @:embeddededffieldsffun
    public function get__pipeline():(stdgo.GoString, stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType) -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> return @:check32 this.tree._pipeline;
    public var _popVars(get, never) : stdgo.GoInt -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__popVars():stdgo.GoInt -> Void return @:check32 this.tree._popVars;
    public var _rangeControl(get, never) : () -> stdgo._internal.text.template.parse.Parse_Node.Node;
    @:embedded
    @:embeddededffieldsffun
    public function get__rangeControl():() -> stdgo._internal.text.template.parse.Parse_Node.Node return @:check32 this.tree._rangeControl;
    public var _recover(get, never) : stdgo.Ref<stdgo.Error> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__recover():stdgo.Ref<stdgo.Error> -> Void return @:check32 this.tree._recover;
    public var _startParse(get, never) : (stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>, stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__startParse():(stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>, stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>) -> Void return @:check32 this.tree._startParse;
    public var _stopParse(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__stopParse():() -> Void return @:check32 this.tree._stopParse;
    public var _templateControl(get, never) : () -> stdgo._internal.text.template.parse.Parse_Node.Node;
    @:embedded
    @:embeddededffieldsffun
    public function get__templateControl():() -> stdgo._internal.text.template.parse.Parse_Node.Node return @:check32 this.tree._templateControl;
    public var _term(get, never) : () -> stdgo._internal.text.template.parse.Parse_Node.Node;
    @:embedded
    @:embeddededffieldsffun
    public function get__term():() -> stdgo._internal.text.template.parse.Parse_Node.Node return @:check32 this.tree._term;
    public var _textOrAction(get, never) : () -> stdgo._internal.text.template.parse.Parse_Node.Node;
    @:embedded
    @:embeddededffieldsffun
    public function get__textOrAction():() -> stdgo._internal.text.template.parse.Parse_Node.Node return @:check32 this.tree._textOrAction;
    public var _unexpected(get, never) : (stdgo._internal.text.template.parse.Parse_T_item.T_item, stdgo.GoString) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__unexpected():(stdgo._internal.text.template.parse.Parse_T_item.T_item, stdgo.GoString) -> Void return @:check32 this.tree._unexpected;
    public var _useVar(get, never) : (stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoString) -> stdgo._internal.text.template.parse.Parse_Node.Node;
    @:embedded
    @:embeddededffieldsffun
    public function get__useVar():(stdgo._internal.text.template.parse.Parse_Pos.Pos, stdgo.GoString) -> stdgo._internal.text.template.parse.Parse_Node.Node return @:check32 this.tree._useVar;
    public var _withControl(get, never) : () -> stdgo._internal.text.template.parse.Parse_Node.Node;
    @:embedded
    @:embeddededffieldsffun
    public function get__withControl():() -> stdgo._internal.text.template.parse.Parse_Node.Node return @:check32 this.tree._withControl;
    public function __copy__() {
        return new Template(_name, tree, _common, _leftDelim, _rightDelim);
    }
}
