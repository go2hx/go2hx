package stdgo.text.template.parse;
var nodeText : NodeType = 0i64;
var nodeAction : NodeType = 1i64;
var nodeBool : NodeType = 2i64;
var nodeChain : NodeType = 3i64;
var nodeCommand : NodeType = 4i64;
var nodeDot : NodeType = 5i64;
var nodeField : NodeType = 8i64;
var nodeIdentifier : NodeType = 9i64;
var nodeIf : NodeType = 10i64;
var nodeList : NodeType = 11i64;
var nodeNil : NodeType = 12i64;
var nodeNumber : NodeType = 13i64;
var nodePipe : NodeType = 14i64;
var nodeRange : NodeType = 15i64;
var nodeString : NodeType = 16i64;
var nodeTemplate : NodeType = 17i64;
var nodeVariable : NodeType = 18i64;
var nodeWith : NodeType = 19i64;
var nodeComment : NodeType = 20i64;
var nodeBreak : NodeType = 21i64;
var nodeContinue : NodeType = 22i64;
var parseComments : Mode = 1i64;
var skipFuncCheck : Mode = 2i64;
typedef Node = stdgo._internal.text.template.parse.Parse_node.Node;
typedef ListNode = stdgo._internal.text.template.parse.Parse_listnode.ListNode;
typedef TextNode = stdgo._internal.text.template.parse.Parse_textnode.TextNode;
typedef CommentNode = stdgo._internal.text.template.parse.Parse_commentnode.CommentNode;
typedef PipeNode = stdgo._internal.text.template.parse.Parse_pipenode.PipeNode;
typedef ActionNode = stdgo._internal.text.template.parse.Parse_actionnode.ActionNode;
typedef CommandNode = stdgo._internal.text.template.parse.Parse_commandnode.CommandNode;
typedef IdentifierNode = stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode;
typedef VariableNode = stdgo._internal.text.template.parse.Parse_variablenode.VariableNode;
typedef DotNode = stdgo._internal.text.template.parse.Parse_dotnode.DotNode;
typedef NilNode = stdgo._internal.text.template.parse.Parse_nilnode.NilNode;
typedef FieldNode = stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode;
typedef ChainNode = stdgo._internal.text.template.parse.Parse_chainnode.ChainNode;
typedef BoolNode = stdgo._internal.text.template.parse.Parse_boolnode.BoolNode;
typedef NumberNode = stdgo._internal.text.template.parse.Parse_numbernode.NumberNode;
typedef StringNode = stdgo._internal.text.template.parse.Parse_stringnode.StringNode;
typedef BranchNode = stdgo._internal.text.template.parse.Parse_branchnode.BranchNode;
typedef IfNode = stdgo._internal.text.template.parse.Parse_ifnode.IfNode;
typedef BreakNode = stdgo._internal.text.template.parse.Parse_breaknode.BreakNode;
typedef ContinueNode = stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode;
typedef RangeNode = stdgo._internal.text.template.parse.Parse_rangenode.RangeNode;
typedef WithNode = stdgo._internal.text.template.parse.Parse_withnode.WithNode;
typedef TemplateNode = stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode;
typedef Tree = stdgo._internal.text.template.parse.Parse_tree.Tree;
typedef NodeType = stdgo._internal.text.template.parse.Parse_nodetype.NodeType;
typedef Pos = stdgo._internal.text.template.parse.Parse_pos.Pos;
typedef Mode = stdgo._internal.text.template.parse.Parse_mode.Mode;
typedef ListNodePointer = stdgo._internal.text.template.parse.Parse_listnodepointer.ListNodePointer;
typedef TextNodePointer = stdgo._internal.text.template.parse.Parse_textnodepointer.TextNodePointer;
typedef CommentNodePointer = stdgo._internal.text.template.parse.Parse_commentnodepointer.CommentNodePointer;
typedef PipeNodePointer = stdgo._internal.text.template.parse.Parse_pipenodepointer.PipeNodePointer;
typedef ActionNodePointer = stdgo._internal.text.template.parse.Parse_actionnodepointer.ActionNodePointer;
typedef CommandNodePointer = stdgo._internal.text.template.parse.Parse_commandnodepointer.CommandNodePointer;
typedef IdentifierNodePointer = stdgo._internal.text.template.parse.Parse_identifiernodepointer.IdentifierNodePointer;
typedef VariableNodePointer = stdgo._internal.text.template.parse.Parse_variablenodepointer.VariableNodePointer;
typedef DotNodePointer = stdgo._internal.text.template.parse.Parse_dotnodepointer.DotNodePointer;
typedef NilNodePointer = stdgo._internal.text.template.parse.Parse_nilnodepointer.NilNodePointer;
typedef FieldNodePointer = stdgo._internal.text.template.parse.Parse_fieldnodepointer.FieldNodePointer;
typedef ChainNodePointer = stdgo._internal.text.template.parse.Parse_chainnodepointer.ChainNodePointer;
typedef BoolNodePointer = stdgo._internal.text.template.parse.Parse_boolnodepointer.BoolNodePointer;
typedef NumberNodePointer = stdgo._internal.text.template.parse.Parse_numbernodepointer.NumberNodePointer;
typedef StringNodePointer = stdgo._internal.text.template.parse.Parse_stringnodepointer.StringNodePointer;
typedef BranchNodePointer = stdgo._internal.text.template.parse.Parse_branchnodepointer.BranchNodePointer;
typedef IfNodePointer = stdgo._internal.text.template.parse.Parse_ifnodepointer.IfNodePointer;
typedef BreakNodePointer = stdgo._internal.text.template.parse.Parse_breaknodepointer.BreakNodePointer;
typedef ContinueNodePointer = stdgo._internal.text.template.parse.Parse_continuenodepointer.ContinueNodePointer;
typedef RangeNodePointer = stdgo._internal.text.template.parse.Parse_rangenodepointer.RangeNodePointer;
typedef WithNodePointer = stdgo._internal.text.template.parse.Parse_withnodepointer.WithNodePointer;
typedef TemplateNodePointer = stdgo._internal.text.template.parse.Parse_templatenodepointer.TemplateNodePointer;
typedef TreePointer = stdgo._internal.text.template.parse.Parse_treepointer.TreePointer;
typedef NodeTypePointer = stdgo._internal.text.template.parse.Parse_nodetypepointer.NodeTypePointer;
typedef PosPointer = stdgo._internal.text.template.parse.Parse_pospointer.PosPointer;
typedef ModePointer = stdgo._internal.text.template.parse.Parse_modepointer.ModePointer;
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
    static public inline function newIdentifier(_ident:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode> return stdgo._internal.text.template.parse.Parse_newidentifier.newIdentifier(_ident);
    /**
        * Parse returns a map from template name to parse.Tree, created by parsing the
        * templates described in the argument string. The top-level template will be
        * given the specified name. If an error is encountered, parsing stops and an
        * empty map is returned with the error.
    **/
    static public inline function parse(_name:stdgo.GoString, _text:stdgo.GoString, _leftDelim:stdgo.GoString, _rightDelim:stdgo.GoString, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):{ var _0 : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>>; var _1 : stdgo.Error; } return stdgo._internal.text.template.parse.Parse_parse.parse(_name, _text, _leftDelim, _rightDelim, ...[for (i in _funcs) i]);
    /**
        * New allocates a new parse tree with the given name.
    **/
    static public inline function new_(_name:stdgo.GoString, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> return stdgo._internal.text.template.parse.Parse_new_.new_(_name, ...[for (i in _funcs) i]);
    /**
        * IsEmptyTree reports whether this tree (node) is empty of everything but space or comments.
    **/
    static public inline function isEmptyTree(_n:Node):Bool return stdgo._internal.text.template.parse.Parse_isemptytree.isEmptyTree(_n);
}
