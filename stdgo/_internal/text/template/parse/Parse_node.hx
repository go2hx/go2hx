package stdgo._internal.text.template.parse;
@:interface typedef Node = stdgo.StructType & {
    @:interfacetypeffun
    function type():stdgo._internal.text.template.parse.Parse_nodetype.NodeType;
    @:interfacetypeffun
    function string():stdgo.GoString;
    @:interfacetypeffun
    function copy():stdgo._internal.text.template.parse.Parse_node.Node;
    @:interfacetypeffun
    function position():stdgo._internal.text.template.parse.Parse_pos.Pos;
    @:interfacetypeffun
    function _tree():stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>;
    @:interfacetypeffun
    function _writeTo(_0:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void;
};
