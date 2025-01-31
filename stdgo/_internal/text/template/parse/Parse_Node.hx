package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:interface typedef Node = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function type():stdgo._internal.text.template.parse.Parse_NodeType.NodeType;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
    /**
        Copy does a deep copy of the Node and all its components.
        To avoid type assertions, some XxxNodes also have specialized
        CopyXxx methods that return *XxxNode.
        
        
    **/
    @:interfacetypeffun
    public dynamic function copy():stdgo._internal.text.template.parse.Parse_Node.Node;
    /**
        
        
        byte position of start of node in full original input string
    **/
    @:interfacetypeffun
    public dynamic function position():stdgo._internal.text.template.parse.Parse_Pos.Pos;
    /**
        tree returns the containing *Tree.
        It is unexported so all implementations of Node are in this package.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _tree():stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>;
    /**
        writeTo writes the String output to the builder.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _writeTo(_0:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void;
};
