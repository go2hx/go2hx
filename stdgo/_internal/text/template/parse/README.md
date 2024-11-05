# Module: `stdgo._internal.text.template.parse`

[(view library index)](../../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _hasLeftTrimMarker(_s:stdgo.GoString):Bool`](<#function-_haslefttrimmarker>)

- [`function _hasRightTrimMarker(_s:stdgo.GoString):Bool`](<#function-_hasrighttrimmarker>)

- [`function _isAlphaNumeric(_r:stdgo.GoInt32):Bool`](<#function-_isalphanumeric>)

- [`function _isSpace(_r:stdgo.GoInt32):Bool`](<#function-_isspace>)

- [`function _leftTrimLength(_s:stdgo.GoString):stdgo._internal.text.template.parse.Pos`](<#function-_lefttrimlength>)

- [`function _lex(_name:stdgo.GoString, _input:stdgo.GoString, _left:stdgo.GoString, _right:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>`](<#function-_lex>)

- [`function _lexChar(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn`](<#function-_lexchar>)

- [`function _lexComment(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn`](<#function-_lexcomment>)

- [`function _lexField(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn`](<#function-_lexfield>)

- [`function _lexFieldOrVariable(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>, _typ:stdgo._internal.text.template.parse.T_itemType):stdgo._internal.text.template.parse.T_stateFn`](<#function-_lexfieldorvariable>)

- [`function _lexIdentifier(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn`](<#function-_lexidentifier>)

- [`function _lexInsideAction(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn`](<#function-_lexinsideaction>)

- [`function _lexLeftDelim(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn`](<#function-_lexleftdelim>)

- [`function _lexNumber(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn`](<#function-_lexnumber>)

- [`function _lexQuote(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn`](<#function-_lexquote>)

- [`function _lexRawQuote(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn`](<#function-_lexrawquote>)

- [`function _lexRightDelim(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn`](<#function-_lexrightdelim>)

- [`function _lexSpace(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn`](<#function-_lexspace>)

- [`function _lexText(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn`](<#function-_lextext>)

- [`function _lexVariable(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn`](<#function-_lexvariable>)

- [`function _rightTrimLength(_s:stdgo.GoString):stdgo._internal.text.template.parse.Pos`](<#function-_righttrimlength>)

- [`function isEmptyTree(_n:stdgo._internal.text.template.parse.Node):Bool`](<#function-isemptytree>)

- [`function newIdentifier(_ident:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.IdentifierNode>`](<#function-newidentifier>)

- [`function new_(_name:stdgo.GoString, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):stdgo.Ref<stdgo._internal.text.template.parse.Tree>`](<#function-new_>)

- [`function parse(_name:stdgo.GoString, _text:stdgo.GoString, _leftDelim:stdgo.GoString, _rightDelim:stdgo.GoString, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):{
	_1:stdgo.Error;
	_0:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Tree>>;
}`](<#function-parse>)

- [class ActionNode](<#class-actionnode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?line:stdgo.GoInt, ?pipe:stdgo.Ref<stdgo._internal.text.template.parse.PipeNode>):Void`](<#actionnode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#actionnode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#actionnode-function-type>)

- [class BoolNode](<#class-boolnode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?__True:Bool):Void`](<#boolnode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#boolnode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#boolnode-function-type>)

- [class BranchNode](<#class-branchnode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?line:stdgo.GoInt, ?pipe:stdgo.Ref<stdgo._internal.text.template.parse.PipeNode>, ?list:stdgo.Ref<stdgo._internal.text.template.parse.ListNode>, ?elseList:stdgo.Ref<stdgo._internal.text.template.parse.ListNode>):Void`](<#branchnode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#branchnode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#branchnode-function-type>)

- [class BreakNode](<#class-breaknode>)

  - [`function new(?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?line:stdgo.GoInt):Void`](<#breaknode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#breaknode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#breaknode-function-type>)

- [class ChainNode](<#class-chainnode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?node:stdgo._internal.text.template.parse.Node, ?field:stdgo.Slice<stdgo.GoString>):Void`](<#chainnode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#chainnode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#chainnode-function-type>)

- [class CommandNode](<#class-commandnode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?args:stdgo.Slice<stdgo._internal.text.template.parse.Node>):Void`](<#commandnode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#commandnode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#commandnode-function-type>)

- [class CommentNode](<#class-commentnode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?text:stdgo.GoString):Void`](<#commentnode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#commentnode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#commentnode-function-type>)

- [class ContinueNode](<#class-continuenode>)

  - [`function new(?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?line:stdgo.GoInt):Void`](<#continuenode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#continuenode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#continuenode-function-type>)

- [class DotNode](<#class-dotnode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>):Void`](<#dotnode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#dotnode-function-position>)

- [class FieldNode](<#class-fieldnode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?ident:stdgo.Slice<stdgo.GoString>):Void`](<#fieldnode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#fieldnode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#fieldnode-function-type>)

- [class IdentifierNode](<#class-identifiernode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?ident:stdgo.GoString):Void`](<#identifiernode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#identifiernode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#identifiernode-function-type>)

- [class IfNode](<#class-ifnode>)

  - [`function _tree():stdgo.Ref<stdgo._internal.text.template.parse.Tree>`](<#ifnode-function-_tree>)

  - [`function _writeTo(_sb:stdgo.Ref<stdgo._internal.strings.Builder>):Void`](<#ifnode-function-_writeto>)

  - [`function new(?branchNode:stdgo._internal.text.template.parse.BranchNode):Void`](<#ifnode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#ifnode-function-position>)

  - [`function string():stdgo.GoString`](<#ifnode-function-string>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#ifnode-function-type>)

- [class ListNode](<#class-listnode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?nodes:stdgo.Slice<stdgo._internal.text.template.parse.Node>):Void`](<#listnode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#listnode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#listnode-function-type>)

- [class NilNode](<#class-nilnode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>):Void`](<#nilnode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#nilnode-function-position>)

- [class NumberNode](<#class-numbernode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?isInt:Bool, ?isUint:Bool, ?isFloat:Bool, ?isComplex:Bool, ?int64:stdgo.GoInt64, ?uint64:stdgo.GoUInt64, ?float64:stdgo.GoFloat64, ?complex128:stdgo.GoComplex128, ?text:stdgo.GoString):Void`](<#numbernode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#numbernode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#numbernode-function-type>)

- [class PipeNode](<#class-pipenode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?line:stdgo.GoInt, ?isAssign:Bool, ?decl:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.VariableNode>>, ?cmds:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.CommandNode>>):Void`](<#pipenode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#pipenode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#pipenode-function-type>)

- [class RangeNode](<#class-rangenode>)

  - [`function _tree():stdgo.Ref<stdgo._internal.text.template.parse.Tree>`](<#rangenode-function-_tree>)

  - [`function _writeTo(_sb:stdgo.Ref<stdgo._internal.strings.Builder>):Void`](<#rangenode-function-_writeto>)

  - [`function new(?branchNode:stdgo._internal.text.template.parse.BranchNode):Void`](<#rangenode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#rangenode-function-position>)

  - [`function string():stdgo.GoString`](<#rangenode-function-string>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#rangenode-function-type>)

- [class StringNode](<#class-stringnode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?quoted:stdgo.GoString, ?text:stdgo.GoString):Void`](<#stringnode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#stringnode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#stringnode-function-type>)

- [class T\_elseNode](<#class-t_elsenode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?line:stdgo.GoInt):Void`](<#t_elsenode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#t_elsenode-function-position>)

- [class T\_endNode](<#class-t_endnode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>):Void`](<#t_endnode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#t_endnode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#t_endnode-function-type>)

- [class T\_item](<#class-t_item>)

  - [`function new(?_typ:stdgo._internal.text.template.parse.T_itemType, ?_pos:stdgo._internal.text.template.parse.Pos, ?_val:stdgo.GoString, ?_line:stdgo.GoInt):Void`](<#t_item-function-new>)

- [class T\_lexOptions](<#class-t_lexoptions>)

  - [`function new(?_emitComment:Bool, ?_breakOK:Bool, ?_continueOK:Bool):Void`](<#t_lexoptions-function-new>)

- [class T\_lexer](<#class-t_lexer>)

  - [`function new(?_name:stdgo.GoString, ?_input:stdgo.GoString, ?_leftDelim:stdgo.GoString, ?_rightDelim:stdgo.GoString, ?_pos:stdgo._internal.text.template.parse.Pos, ?_start:stdgo._internal.text.template.parse.Pos, ?_atEOF:Bool, ?_parenDepth:stdgo.GoInt, ?_line:stdgo.GoInt, ?_startLine:stdgo.GoInt, ?_item:stdgo._internal.text.template.parse.T_item, ?_insideAction:Bool, ?_options:stdgo._internal.text.template.parse.T_lexOptions):Void`](<#t_lexer-function-new>)

- [class TemplateNode](<#class-templatenode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?line:stdgo.GoInt, ?name:stdgo.GoString, ?pipe:stdgo.Ref<stdgo._internal.text.template.parse.PipeNode>):Void`](<#templatenode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#templatenode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#templatenode-function-type>)

- [class TextNode](<#class-textnode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?text:stdgo.Slice<stdgo.GoUInt8>):Void`](<#textnode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#textnode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#textnode-function-type>)

- [class Tree](<#class-tree>)

  - [`function new(?name:stdgo.GoString, ?parseName:stdgo.GoString, ?root:stdgo.Ref<stdgo._internal.text.template.parse.ListNode>, ?mode:stdgo._internal.text.template.parse.Mode, ?_text:stdgo.GoString, ?_funcs:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, ?_lex:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>, ?_token:stdgo.GoArray<stdgo._internal.text.template.parse.T_item>, ?_peekCount:stdgo.GoInt, ?_vars:stdgo.Slice<stdgo.GoString>, ?_treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Tree>>, ?_actionLine:stdgo.GoInt, ?_rangeDepth:stdgo.GoInt):Void`](<#tree-function-new>)

- [class VariableNode](<#class-variablenode>)

  - [`function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?ident:stdgo.Slice<stdgo.GoString>):Void`](<#variablenode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#variablenode-function-position>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#variablenode-function-type>)

- [class WithNode](<#class-withnode>)

  - [`function _tree():stdgo.Ref<stdgo._internal.text.template.parse.Tree>`](<#withnode-function-_tree>)

  - [`function _writeTo(_sb:stdgo.Ref<stdgo._internal.strings.Builder>):Void`](<#withnode-function-_writeto>)

  - [`function new(?branchNode:stdgo._internal.text.template.parse.BranchNode):Void`](<#withnode-function-new>)

  - [`function position():stdgo._internal.text.template.parse.Pos`](<#withnode-function-position>)

  - [`function string():stdgo.GoString`](<#withnode-function-string>)

  - [`function type():stdgo._internal.text.template.parse.NodeType`](<#withnode-function-type>)

- [typedef Mode](<#typedef-mode>)

- [typedef Node](<#typedef-node>)

- [typedef NodeType](<#typedef-nodetype>)

- [typedef Pos](<#typedef-pos>)

- [typedef T\_itemType](<#typedef-t_itemtype>)

- [typedef T\_stateFn](<#typedef-t_statefn>)

# Constants


```haxe
import stdgo._internal.text.template.parse.Parse_skipFuncCheck
```


```haxe
final _eof:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final _itemAssign:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemBlock:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemBool:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemBreak:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemChar:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemCharConstant:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemComment:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemComplex:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemContinue:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemDeclare:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemDefine:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemDot:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemEOF:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemElse:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemEnd:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemError:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemField:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemIdentifier:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemIf:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemKeyword:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemLeftDelim:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemLeftParen:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemNil:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemNumber:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemPipe:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemRange:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemRawString:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemRightDelim:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemRightParen:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemSpace:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemString:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemTemplate:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemText:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemVariable:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _itemWith:stdgo._internal.text.template.parse.T_itemType = ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))
```


```haxe
final _leftComment:stdgo.GoString = (("/*" : stdgo.GoString))
```


```haxe
final _leftDelim:stdgo.GoString = (("{{" : stdgo.GoString))
```


```haxe
final _nodeElse:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final _nodeEnd:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final _rightComment:stdgo.GoString = (("*/" : stdgo.GoString))
```


```haxe
final _rightDelim:stdgo.GoString = (("}}" : stdgo.GoString))
```


```haxe
final _spaceChars:stdgo.GoString = ((" \t\r\n" : stdgo.GoString))
```


```haxe
final _trimMarker:stdgo.GoInt32 = ((45 : stdgo.GoInt32))
```


```haxe
final _trimMarkerLen:stdgo._internal.text.template.parse.Pos = ((2 : stdgo._internal.text.template.parse.Parse_Pos.Pos))
```


```haxe
final nodeAction:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeBool:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeBreak:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeChain:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeCommand:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeComment:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeContinue:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeDot:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeField:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeIdentifier:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeIf:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeList:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeNil:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeNumber:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodePipe:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeRange:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeString:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeTemplate:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeText:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeVariable:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final nodeWith:stdgo._internal.text.template.parse.NodeType = ((22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))
```


```haxe
final parseComments:stdgo._internal.text.template.parse.Mode = ((2u32 : stdgo._internal.text.template.parse.Parse_Mode.Mode))
```


```haxe
final skipFuncCheck:stdgo._internal.text.template.parse.Mode = ((2u32 : stdgo._internal.text.template.parse.Parse_Mode.Mode))
```


# Variables


```haxe
import stdgo._internal.text.template.parse.Parse_skipFuncCheck
```


```haxe
var _key:stdgo.GoMap<stdgo.GoString, stdgo._internal.text.template.parse.T_itemType>
```


```haxe
var _textFormat:stdgo.GoString
```


# Functions


```haxe
import stdgo._internal.text.template.parse.Parse_skipFuncCheck
```


## function \_hasLeftTrimMarker


```haxe
function _hasLeftTrimMarker(_s:stdgo.GoString):Bool
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_hasRightTrimMarker


```haxe
function _hasRightTrimMarker(_s:stdgo.GoString):Bool
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_isAlphaNumeric


```haxe
function _isAlphaNumeric(_r:stdgo.GoInt32):Bool
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_isSpace


```haxe
function _isSpace(_r:stdgo.GoInt32):Bool
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_leftTrimLength


```haxe
function _leftTrimLength(_s:stdgo.GoString):stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_lex


```haxe
function _lex(_name:stdgo.GoString, _input:stdgo.GoString, _left:stdgo.GoString, _right:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_lexChar


```haxe
function _lexChar(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_lexComment


```haxe
function _lexComment(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_lexField


```haxe
function _lexField(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_lexFieldOrVariable


```haxe
function _lexFieldOrVariable(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>, _typ:stdgo._internal.text.template.parse.T_itemType):stdgo._internal.text.template.parse.T_stateFn
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_lexIdentifier


```haxe
function _lexIdentifier(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_lexInsideAction


```haxe
function _lexInsideAction(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_lexLeftDelim


```haxe
function _lexLeftDelim(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_lexNumber


```haxe
function _lexNumber(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_lexQuote


```haxe
function _lexQuote(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_lexRawQuote


```haxe
function _lexRawQuote(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_lexRightDelim


```haxe
function _lexRightDelim(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_lexSpace


```haxe
function _lexSpace(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_lexText


```haxe
function _lexText(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_lexVariable


```haxe
function _lexVariable(_l:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>):stdgo._internal.text.template.parse.T_stateFn
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function \_rightTrimLength


```haxe
function _rightTrimLength(_s:stdgo.GoString):stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function isEmptyTree


```haxe
function isEmptyTree(_n:stdgo._internal.text.template.parse.Node):Bool
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function newIdentifier


```haxe
function newIdentifier(_ident:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.IdentifierNode>
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function new\_


```haxe
function new_(_name:stdgo.GoString, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


## function parse


```haxe
function parse(_name:stdgo.GoString, _text:stdgo.GoString, _leftDelim:stdgo.GoString, _rightDelim:stdgo.GoString, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):{
	_1:stdgo.Error;
	_0:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Tree>>;
}
```


[\(view code\)](<./Parse_skipFuncCheck.hx#L2>)


# Classes


```haxe
import stdgo._internal.text.template.parse.*
```


## class ActionNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var line:stdgo.GoInt
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pipe:stdgo.Ref<stdgo._internal.text.template.parse.PipeNode>
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### ActionNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?line:stdgo.GoInt, ?pipe:stdgo.Ref<stdgo._internal.text.template.parse.PipeNode>):Void
```


[\(view code\)](<./Parse_ActionNode.hx#L10>)


### ActionNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_ActionNode.hx#L19>)


### ActionNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_ActionNode.hx#L21>)


## class BoolNode


```haxe
var __True:Bool
```


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### BoolNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?__True:Bool):Void
```


[\(view code\)](<./Parse_BoolNode.hx#L9>)


### BoolNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_BoolNode.hx#L17>)


### BoolNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_BoolNode.hx#L19>)


## class BranchNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var elseList:stdgo.Ref<stdgo._internal.text.template.parse.ListNode>
```


```haxe
var line:stdgo.GoInt
```


```haxe
var list:stdgo.Ref<stdgo._internal.text.template.parse.ListNode>
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pipe:stdgo.Ref<stdgo._internal.text.template.parse.PipeNode>
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### BranchNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?line:stdgo.GoInt, ?pipe:stdgo.Ref<stdgo._internal.text.template.parse.PipeNode>, ?list:stdgo.Ref<stdgo._internal.text.template.parse.ListNode>, ?elseList:stdgo.Ref<stdgo._internal.text.template.parse.ListNode>):Void
```


[\(view code\)](<./Parse_BranchNode.hx#L12>)


### BranchNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_BranchNode.hx#L23>)


### BranchNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_BranchNode.hx#L25>)


## class BreakNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var line:stdgo.GoInt
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### BreakNode function new


```haxe
function new(?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?line:stdgo.GoInt):Void
```


[\(view code\)](<./Parse_BreakNode.hx#L9>)


### BreakNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_BreakNode.hx#L17>)


### BreakNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_BreakNode.hx#L19>)


## class ChainNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var field:stdgo.Slice<stdgo.GoString>
```


```haxe
var node:stdgo._internal.text.template.parse.Node
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### ChainNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?node:stdgo._internal.text.template.parse.Node, ?field:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Parse_ChainNode.hx#L10>)


### ChainNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_ChainNode.hx#L19>)


### ChainNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_ChainNode.hx#L21>)


## class CommandNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var args:stdgo.Slice<stdgo._internal.text.template.parse.Node>
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### CommandNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?args:stdgo.Slice<stdgo._internal.text.template.parse.Node>):Void
```


[\(view code\)](<./Parse_CommandNode.hx#L9>)


### CommandNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_CommandNode.hx#L17>)


### CommandNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_CommandNode.hx#L19>)


## class CommentNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


```haxe
var text:stdgo.GoString
```


### CommentNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?text:stdgo.GoString):Void
```


[\(view code\)](<./Parse_CommentNode.hx#L9>)


### CommentNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_CommentNode.hx#L17>)


### CommentNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_CommentNode.hx#L19>)


## class ContinueNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var line:stdgo.GoInt
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### ContinueNode function new


```haxe
function new(?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?line:stdgo.GoInt):Void
```


[\(view code\)](<./Parse_ContinueNode.hx#L9>)


### ContinueNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_ContinueNode.hx#L17>)


### ContinueNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_ContinueNode.hx#L19>)


## class DotNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### DotNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>):Void
```


[\(view code\)](<./Parse_DotNode.hx#L8>)


### DotNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_DotNode.hx#L15>)


## class FieldNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var ident:stdgo.Slice<stdgo.GoString>
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### FieldNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?ident:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Parse_FieldNode.hx#L9>)


### FieldNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_FieldNode.hx#L17>)


### FieldNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_FieldNode.hx#L19>)


## class IdentifierNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var ident:stdgo.GoString
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### IdentifierNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?ident:stdgo.GoString):Void
```


[\(view code\)](<./Parse_IdentifierNode.hx#L9>)


### IdentifierNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_IdentifierNode.hx#L17>)


### IdentifierNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_IdentifierNode.hx#L19>)


## class IfNode


```haxe
var branchNode:stdgo._internal.text.template.parse.BranchNode
```


### IfNode function \_tree


```haxe
function _tree():stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


[\(view code\)](<./Parse_IfNode.hx#L16>)


### IfNode function \_writeTo


```haxe
function _writeTo(_sb:stdgo.Ref<stdgo._internal.strings.Builder>):Void
```


[\(view code\)](<./Parse_IfNode.hx#L18>)


### IfNode function new


```haxe
function new(?branchNode:stdgo._internal.text.template.parse.BranchNode):Void
```


[\(view code\)](<./Parse_IfNode.hx#L5>)


### IfNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_IfNode.hx#L10>)


### IfNode function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Parse_IfNode.hx#L12>)


### IfNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_IfNode.hx#L14>)


## class ListNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var nodes:stdgo.Slice<stdgo._internal.text.template.parse.Node>
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### ListNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?nodes:stdgo.Slice<stdgo._internal.text.template.parse.Node>):Void
```


[\(view code\)](<./Parse_ListNode.hx#L9>)


### ListNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_ListNode.hx#L17>)


### ListNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_ListNode.hx#L19>)


## class NilNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### NilNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>):Void
```


[\(view code\)](<./Parse_NilNode.hx#L8>)


### NilNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_NilNode.hx#L15>)


## class NumberNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var complex128:stdgo.GoComplex128
```


```haxe
var float64:stdgo.GoFloat64
```


```haxe
var int64:stdgo.GoInt64
```


```haxe
var isComplex:Bool
```


```haxe
var isFloat:Bool
```


```haxe
var isInt:Bool
```


```haxe
var isUint:Bool
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


```haxe
var text:stdgo.GoString
```


```haxe
var uint64:stdgo.GoUInt64
```


### NumberNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?isInt:Bool, ?isUint:Bool, ?isFloat:Bool, ?isComplex:Bool, ?int64:stdgo.GoInt64, ?uint64:stdgo.GoUInt64, ?float64:stdgo.GoFloat64, ?complex128:stdgo.GoComplex128, ?text:stdgo.GoString):Void
```


[\(view code\)](<./Parse_NumberNode.hx#L17>)


### NumberNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_NumberNode.hx#L33>)


### NumberNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_NumberNode.hx#L35>)


## class PipeNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var cmds:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.CommandNode>>
```


```haxe
var decl:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.VariableNode>>
```


```haxe
var isAssign:Bool
```


```haxe
var line:stdgo.GoInt
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### PipeNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?line:stdgo.GoInt, ?isAssign:Bool, ?decl:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.VariableNode>>, ?cmds:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.CommandNode>>):Void
```


[\(view code\)](<./Parse_PipeNode.hx#L12>)


### PipeNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_PipeNode.hx#L23>)


### PipeNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_PipeNode.hx#L25>)


## class RangeNode


```haxe
var branchNode:stdgo._internal.text.template.parse.BranchNode
```


### RangeNode function \_tree


```haxe
function _tree():stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


[\(view code\)](<./Parse_RangeNode.hx#L16>)


### RangeNode function \_writeTo


```haxe
function _writeTo(_sb:stdgo.Ref<stdgo._internal.strings.Builder>):Void
```


[\(view code\)](<./Parse_RangeNode.hx#L18>)


### RangeNode function new


```haxe
function new(?branchNode:stdgo._internal.text.template.parse.BranchNode):Void
```


[\(view code\)](<./Parse_RangeNode.hx#L5>)


### RangeNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_RangeNode.hx#L10>)


### RangeNode function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Parse_RangeNode.hx#L12>)


### RangeNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_RangeNode.hx#L14>)


## class StringNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


```haxe
var quoted:stdgo.GoString
```


```haxe
var text:stdgo.GoString
```


### StringNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?quoted:stdgo.GoString, ?text:stdgo.GoString):Void
```


[\(view code\)](<./Parse_StringNode.hx#L10>)


### StringNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_StringNode.hx#L19>)


### StringNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_StringNode.hx#L21>)


## class T\_elseNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var line:stdgo.GoInt
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### T\_elseNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?line:stdgo.GoInt):Void
```


[\(view code\)](<./Parse_T_elseNode.hx#L9>)


### T\_elseNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_T_elseNode.hx#L17>)


## class T\_endNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### T\_endNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>):Void
```


[\(view code\)](<./Parse_T_endNode.hx#L8>)


### T\_endNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_T_endNode.hx#L15>)


### T\_endNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_T_endNode.hx#L17>)


## class T\_item


```haxe
var _line:stdgo.GoInt
```


```haxe
var _pos:stdgo._internal.text.template.parse.Pos
```


```haxe
var _typ:stdgo._internal.text.template.parse.T_itemType
```


```haxe
var _val:stdgo.GoString
```


### T\_item function new


```haxe
function new(?_typ:stdgo._internal.text.template.parse.T_itemType, ?_pos:stdgo._internal.text.template.parse.Pos, ?_val:stdgo.GoString, ?_line:stdgo.GoInt):Void
```


[\(view code\)](<./Parse_T_item.hx#L7>)


## class T\_lexOptions


```haxe
var _breakOK:Bool
```


```haxe
var _continueOK:Bool
```


```haxe
var _emitComment:Bool
```


### T\_lexOptions function new


```haxe
function new(?_emitComment:Bool, ?_breakOK:Bool, ?_continueOK:Bool):Void
```


[\(view code\)](<./Parse_T_lexOptions.hx#L6>)


## class T\_lexer


```haxe
var _atEOF:Bool
```


```haxe
var _input:stdgo.GoString
```


```haxe
var _insideAction:Bool
```


```haxe
var _item:stdgo._internal.text.template.parse.T_item
```


```haxe
var _leftDelim:stdgo.GoString
```


```haxe
var _line:stdgo.GoInt
```


```haxe
var _name:stdgo.GoString
```


```haxe
var _options:stdgo._internal.text.template.parse.T_lexOptions
```


```haxe
var _parenDepth:stdgo.GoInt
```


```haxe
var _pos:stdgo._internal.text.template.parse.Pos
```


```haxe
var _rightDelim:stdgo.GoString
```


```haxe
var _start:stdgo._internal.text.template.parse.Pos
```


```haxe
var _startLine:stdgo.GoInt
```


### T\_lexer function new


```haxe
function new(?_name:stdgo.GoString, ?_input:stdgo.GoString, ?_leftDelim:stdgo.GoString, ?_rightDelim:stdgo.GoString, ?_pos:stdgo._internal.text.template.parse.Pos, ?_start:stdgo._internal.text.template.parse.Pos, ?_atEOF:Bool, ?_parenDepth:stdgo.GoInt, ?_line:stdgo.GoInt, ?_startLine:stdgo.GoInt, ?_item:stdgo._internal.text.template.parse.T_item, ?_insideAction:Bool, ?_options:stdgo._internal.text.template.parse.T_lexOptions):Void
```


[\(view code\)](<./Parse_T_lexer.hx#L16>)


## class TemplateNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var line:stdgo.GoInt
```


```haxe
var name:stdgo.GoString
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pipe:stdgo.Ref<stdgo._internal.text.template.parse.PipeNode>
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### TemplateNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?line:stdgo.GoInt, ?name:stdgo.GoString, ?pipe:stdgo.Ref<stdgo._internal.text.template.parse.PipeNode>):Void
```


[\(view code\)](<./Parse_TemplateNode.hx#L11>)


### TemplateNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_TemplateNode.hx#L21>)


### TemplateNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_TemplateNode.hx#L23>)


## class TextNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


```haxe
var text:stdgo.Slice<stdgo.GoUInt8>
```


### TextNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?text:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Parse_TextNode.hx#L9>)


### TextNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_TextNode.hx#L17>)


### TextNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_TextNode.hx#L19>)


## class Tree


```haxe
var _actionLine:stdgo.GoInt
```


```haxe
var _funcs:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>
```


```haxe
var _lex:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>
```


```haxe
var _peekCount:stdgo.GoInt
```


```haxe
var _rangeDepth:stdgo.GoInt
```


```haxe
var _text:stdgo.GoString
```


```haxe
var _token:stdgo.GoArray<stdgo._internal.text.template.parse.T_item>
```


```haxe
var _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Tree>>
```


```haxe
var _vars:stdgo.Slice<stdgo.GoString>
```


```haxe
var mode:stdgo._internal.text.template.parse.Mode
```


```haxe
var name:stdgo.GoString
```


```haxe
var parseName:stdgo.GoString
```


```haxe
var root:stdgo.Ref<stdgo._internal.text.template.parse.ListNode>
```


### Tree function new


```haxe
function new(?name:stdgo.GoString, ?parseName:stdgo.GoString, ?root:stdgo.Ref<stdgo._internal.text.template.parse.ListNode>, ?mode:stdgo._internal.text.template.parse.Mode, ?_text:stdgo.GoString, ?_funcs:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, ?_lex:stdgo.Ref<stdgo._internal.text.template.parse.T_lexer>, ?_token:stdgo.GoArray<stdgo._internal.text.template.parse.T_item>, ?_peekCount:stdgo.GoInt, ?_vars:stdgo.Slice<stdgo.GoString>, ?_treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Tree>>, ?_actionLine:stdgo.GoInt, ?_rangeDepth:stdgo.GoInt):Void
```


[\(view code\)](<./Parse_Tree.hx#L16>)


## class VariableNode


```haxe
var _tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


```haxe
var ident:stdgo.Slice<stdgo.GoString>
```


```haxe
var nodeType:stdgo._internal.text.template.parse.NodeType
```


```haxe
var pos:stdgo._internal.text.template.parse.Pos
```


### VariableNode function new


```haxe
function new(?nodeType:stdgo._internal.text.template.parse.NodeType, ?pos:stdgo._internal.text.template.parse.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Tree>, ?ident:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Parse_VariableNode.hx#L9>)


### VariableNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_VariableNode.hx#L17>)


### VariableNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_VariableNode.hx#L19>)


## class WithNode


```haxe
var branchNode:stdgo._internal.text.template.parse.BranchNode
```


### WithNode function \_tree


```haxe
function _tree():stdgo.Ref<stdgo._internal.text.template.parse.Tree>
```


[\(view code\)](<./Parse_WithNode.hx#L16>)


### WithNode function \_writeTo


```haxe
function _writeTo(_sb:stdgo.Ref<stdgo._internal.strings.Builder>):Void
```


[\(view code\)](<./Parse_WithNode.hx#L18>)


### WithNode function new


```haxe
function new(?branchNode:stdgo._internal.text.template.parse.BranchNode):Void
```


[\(view code\)](<./Parse_WithNode.hx#L5>)


### WithNode function position


```haxe
function position():stdgo._internal.text.template.parse.Pos
```


[\(view code\)](<./Parse_WithNode.hx#L10>)


### WithNode function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Parse_WithNode.hx#L12>)


### WithNode function type


```haxe
function type():stdgo._internal.text.template.parse.NodeType
```


[\(view code\)](<./Parse_WithNode.hx#L14>)


# Typedefs


```haxe
import stdgo._internal.text.template.parse.*
```


## typedef Mode


```haxe
typedef Mode = stdgo.GoUInt;
```


## typedef Node


```haxe
typedef Node = {
	public function type():stdgo._internal.text.template.parse.NodeType;
	public function string():stdgo.GoString;
	public function position():stdgo._internal.text.template.parse.Pos;	// byte position of start of node in full original input string
	public function copy():stdgo._internal.text.template.parse.Node;	// Copy does a deep copy of the Node and all its components. To avoid type assertions, some XxxNodes also have specialized CopyXxx methods that return *XxxNode.
	public function _writeTo(_0:stdgo.Ref<stdgo._internal.strings.Builder>):Void;	// writeTo writes the String output to the builder.
	public function _tree():stdgo.Ref<stdgo._internal.text.template.parse.Tree>;	// tree returns the containing *Tree. It is unexported so all implementations of Node are in this package.
};
```


## typedef NodeType


```haxe
typedef NodeType = stdgo.GoInt;
```


## typedef Pos


```haxe
typedef Pos = stdgo.GoInt;
```


## typedef T\_itemType


```haxe
typedef T_itemType = stdgo.GoInt;
```


## typedef T\_stateFn


```haxe
typedef T_stateFn = ();
```


