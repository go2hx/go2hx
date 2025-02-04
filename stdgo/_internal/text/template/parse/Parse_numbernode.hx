package stdgo._internal.text.template.parse;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_numbernode_static_extension.NumberNode_static_extension) class NumberNode {
    @:embedded
    public var nodeType : stdgo._internal.text.template.parse.Parse_nodetype.NodeType = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_nodetype.NodeType);
    @:embedded
    public var pos : stdgo._internal.text.template.parse.Parse_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_pos.Pos);
    public var _tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
    public var isInt : Bool = false;
    public var isUint : Bool = false;
    public var isFloat : Bool = false;
    public var isComplex : Bool = false;
    public var int64 : stdgo.GoInt64 = 0;
    public var uint64 : stdgo.GoUInt64 = 0;
    public var float64 : stdgo.GoFloat64 = 0;
    public var complex128 : stdgo.GoComplex128 = new stdgo.GoComplex128(0, 0);
    public var text : stdgo.GoString = "";
    public function new(?nodeType:stdgo._internal.text.template.parse.Parse_nodetype.NodeType, ?pos:stdgo._internal.text.template.parse.Parse_pos.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, ?isInt:Bool, ?isUint:Bool, ?isFloat:Bool, ?isComplex:Bool, ?int64:stdgo.GoInt64, ?uint64:stdgo.GoUInt64, ?float64:stdgo.GoFloat64, ?complex128:stdgo.GoComplex128, ?text:stdgo.GoString) {
        if (nodeType != null) this.nodeType = nodeType;
        if (pos != null) this.pos = pos;
        if (_tr != null) this._tr = _tr;
        if (isInt != null) this.isInt = isInt;
        if (isUint != null) this.isUint = isUint;
        if (isFloat != null) this.isFloat = isFloat;
        if (isComplex != null) this.isComplex = isComplex;
        if (int64 != null) this.int64 = int64;
        if (uint64 != null) this.uint64 = uint64;
        if (float64 != null) this.float64 = float64;
        if (complex128 != null) this.complex128 = complex128;
        if (text != null) this.text = text;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var position(get, never) : () -> stdgo._internal.text.template.parse.Parse_pos.Pos;
    @:embedded
    @:embeddededffieldsffun
    public function get_position():() -> stdgo._internal.text.template.parse.Parse_pos.Pos return @:check31 (this.pos ?? throw "null pointer dereference").position;
    public var type(get, never) : () -> stdgo._internal.text.template.parse.Parse_nodetype.NodeType;
    @:embedded
    @:embeddededffieldsffun
    public function get_type():() -> stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:check31 (this.nodeType ?? throw "null pointer dereference").type;
    public function __copy__() {
        return new NumberNode(
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
    }
}
