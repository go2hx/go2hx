package stdgo.text.template.parse;
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
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
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
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?isInt:Bool, ?isUint:Bool, ?isFloat:Bool, ?isComplex:Bool, ?int64:haxe.Int64, ?uint64:haxe.UInt64, ?float64:StdTypes.Float, ?complex128:stdgo.GoComplex128, ?text:String) this = new stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode(
nodeType,
pos,
(_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>),
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
