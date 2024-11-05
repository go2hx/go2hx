# Module: `stdgo.text.template.parse`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Parse](<#class-parse>)

  - [`function isEmptyTree(_n:stdgo.text.template.parse.Node):Bool`](<#parse-function-isemptytree>)

  - [`function newIdentifier(_ident:String):stdgo.text.template.parse.IdentifierNode`](<#parse-function-newidentifier>)

  - [`function new_(_name:String, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):stdgo.text.template.parse.Tree`](<#parse-function-new_>)

  - [`function parse(_name:String, _text:String, _leftDelim:String, _rightDelim:String, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):stdgo.Tuple<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Tree>>, stdgo.Error>`](<#parse-function-parse>)

- [typedef Mode](<#typedef-mode>)

- [typedef Node](<#typedef-node>)

- [typedef NodeType](<#typedef-nodetype>)

- [typedef Pos](<#typedef-pos>)

- [typedef T\_itemType](<#typedef-t_itemtype>)

- [typedef T\_stateFn](<#typedef-t_statefn>)

- [abstract T\_item](<#abstract-t_item>)

- [abstract T\_lexer](<#abstract-t_lexer>)

- [abstract T\_lexOptions](<#abstract-t_lexoptions>)

- [abstract ListNode](<#abstract-listnode>)

- [abstract TextNode](<#abstract-textnode>)

- [abstract CommentNode](<#abstract-commentnode>)

- [abstract PipeNode](<#abstract-pipenode>)

- [abstract ActionNode](<#abstract-actionnode>)

- [abstract CommandNode](<#abstract-commandnode>)

- [abstract IdentifierNode](<#abstract-identifiernode>)

- [abstract VariableNode](<#abstract-variablenode>)

- [abstract DotNode](<#abstract-dotnode>)

- [abstract NilNode](<#abstract-nilnode>)

- [abstract FieldNode](<#abstract-fieldnode>)

- [abstract ChainNode](<#abstract-chainnode>)

- [abstract BoolNode](<#abstract-boolnode>)

- [abstract NumberNode](<#abstract-numbernode>)

- [abstract StringNode](<#abstract-stringnode>)

- [abstract T\_endNode](<#abstract-t_endnode>)

- [abstract T\_elseNode](<#abstract-t_elsenode>)

- [abstract BranchNode](<#abstract-branchnode>)

- [abstract IfNode](<#abstract-ifnode>)

- [abstract BreakNode](<#abstract-breaknode>)

- [abstract ContinueNode](<#abstract-continuenode>)

- [abstract RangeNode](<#abstract-rangenode>)

- [abstract WithNode](<#abstract-withnode>)

- [abstract TemplateNode](<#abstract-templatenode>)

- [abstract Tree](<#abstract-tree>)

# Constants


```haxe
import stdgo.text.template.parse.Parse
```


```haxe
final nodeAction:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeAction.nodeAction
```


```haxe
final nodeBool:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeBool.nodeBool
```


```haxe
final nodeBreak:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeBreak.nodeBreak
```


```haxe
final nodeChain:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeChain.nodeChain
```


```haxe
final nodeCommand:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeCommand.nodeCommand
```


```haxe
final nodeComment:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeComment.nodeComment
```


```haxe
final nodeContinue:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeContinue.nodeContinue
```


```haxe
final nodeDot:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeDot.nodeDot
```


```haxe
final nodeField:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeField.nodeField
```


```haxe
final nodeIdentifier:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeIdentifier.nodeIdentifier
```


```haxe
final nodeIf:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeIf.nodeIf
```


```haxe
final nodeList:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeList.nodeList
```


```haxe
final nodeNil:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeNil.nodeNil
```


```haxe
final nodeNumber:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeNumber.nodeNumber
```


```haxe
final nodePipe:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodePipe.nodePipe
```


```haxe
final nodeRange:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeRange.nodeRange
```


```haxe
final nodeString:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeString.nodeString
```


```haxe
final nodeTemplate:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeTemplate.nodeTemplate
```


```haxe
final nodeText:stdgo.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeText.nodeText
```


```haxe
final nodeVariable:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeVariable.nodeVariable
```


```haxe
final nodeWith:stdgo._internal.text.template.parse.NodeType = stdgo._internal.text.template.parse.Parse_nodeWith.nodeWith
```


```haxe
final parseComments:stdgo.text.template.parse.Mode = stdgo._internal.text.template.parse.Parse_parseComments.parseComments
```


```haxe
final skipFuncCheck:stdgo._internal.text.template.parse.Mode = stdgo._internal.text.template.parse.Parse_skipFuncCheck.skipFuncCheck
```


# Classes


```haxe
import stdgo.text.template.parse.*
```


## class Parse


```
Package parse builds parse trees for templates as defined by text/template
    and html/template. Clients should use those packages to construct templates
    rather than this one, which provides shared internal data structures not
    intended for general use.
```
### Parse function isEmptyTree


```haxe
function isEmptyTree(_n:stdgo.text.template.parse.Node):Bool
```



IsEmptyTree reports whether this tree \(node\) is empty of everything but space or comments.  

[\(view code\)](<./Parse.hx#L1865>)


### Parse function newIdentifier


```haxe
function newIdentifier(_ident:String):stdgo.text.template.parse.IdentifierNode
```



NewIdentifier returns a new IdentifierNode with the given identifier name.  

[\(view code\)](<./Parse.hx#L1841>)


### Parse function new\_


```haxe
function new_(_name:String, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):stdgo.text.template.parse.Tree
```



New allocates a new parse tree with the given name.  

[\(view code\)](<./Parse.hx#L1859>)


### Parse function parse


```haxe
function parse(_name:String, _text:String, _leftDelim:String, _rightDelim:String, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):stdgo.Tuple<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Tree>>, stdgo.Error>
```


```
Parse returns a map from template name to parse.Tree, created by parsing the
        templates described in the argument string. The top-level template will be
        given the specified name. If an error is encountered, parsing stops and an
        empty map is returned with the error.
```
[\(view code\)](<./Parse.hx#L1850>)


# Typedefs


```haxe
import stdgo.text.template.parse.*
```


## typedef Mode


```haxe
typedef Mode = stdgo._internal.text.template.parse.Mode;
```


## typedef Node


```haxe
typedef Node = stdgo._internal.text.template.parse.Node;
```


## typedef NodeType


```haxe
typedef NodeType = stdgo._internal.text.template.parse.NodeType;
```


## typedef Pos


```haxe
typedef Pos = stdgo._internal.text.template.parse.Pos;
```


## typedef T\_itemType


```haxe
typedef T_itemType = stdgo._internal.text.template.parse.T_itemType;
```


## typedef T\_stateFn


```haxe
typedef T_stateFn = stdgo._internal.text.template.parse.T_stateFn;
```


# Abstracts


## abstract T\_item


[\(view file containing code\)](<./Parse.hx>)


## abstract T\_lexer


[\(view file containing code\)](<./Parse.hx>)


## abstract T\_lexOptions


[\(view file containing code\)](<./Parse.hx>)


## abstract ListNode


[\(view file containing code\)](<./Parse.hx>)


## abstract TextNode


[\(view file containing code\)](<./Parse.hx>)


## abstract CommentNode


[\(view file containing code\)](<./Parse.hx>)


## abstract PipeNode


[\(view file containing code\)](<./Parse.hx>)


## abstract ActionNode


[\(view file containing code\)](<./Parse.hx>)


## abstract CommandNode


[\(view file containing code\)](<./Parse.hx>)


## abstract IdentifierNode


[\(view file containing code\)](<./Parse.hx>)


## abstract VariableNode


[\(view file containing code\)](<./Parse.hx>)


## abstract DotNode


[\(view file containing code\)](<./Parse.hx>)


## abstract NilNode


[\(view file containing code\)](<./Parse.hx>)


## abstract FieldNode


[\(view file containing code\)](<./Parse.hx>)


## abstract ChainNode


[\(view file containing code\)](<./Parse.hx>)


## abstract BoolNode


[\(view file containing code\)](<./Parse.hx>)


## abstract NumberNode


[\(view file containing code\)](<./Parse.hx>)


## abstract StringNode


[\(view file containing code\)](<./Parse.hx>)


## abstract T\_endNode


[\(view file containing code\)](<./Parse.hx>)


## abstract T\_elseNode


[\(view file containing code\)](<./Parse.hx>)


## abstract BranchNode


[\(view file containing code\)](<./Parse.hx>)


## abstract IfNode


[\(view file containing code\)](<./Parse.hx>)


## abstract BreakNode


[\(view file containing code\)](<./Parse.hx>)


## abstract ContinueNode


[\(view file containing code\)](<./Parse.hx>)


## abstract RangeNode


[\(view file containing code\)](<./Parse.hx>)


## abstract WithNode


[\(view file containing code\)](<./Parse.hx>)


## abstract TemplateNode


[\(view file containing code\)](<./Parse.hx>)


## abstract Tree


[\(view file containing code\)](<./Parse.hx>)


