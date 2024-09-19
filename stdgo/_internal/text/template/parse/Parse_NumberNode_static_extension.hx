package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.NumberNode_asInterface) class NumberNode_static_extension {
    @:keep
    static public function copy( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode> = _n;
        var _nn = (stdgo.Go.setRef(({} : stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>);
        {
            var __tmp__ = (_n : stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode)?.__copy__();
            (_nn : stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode).nodeType = __tmp__.nodeType;
            (_nn : stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode).pos = __tmp__.pos;
            (_nn : stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode)._tr = __tmp__._tr;
            (_nn : stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode).isInt = __tmp__.isInt;
            (_nn : stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode).isUint = __tmp__.isUint;
            (_nn : stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode).isFloat = __tmp__.isFloat;
            (_nn : stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode).isComplex = __tmp__.isComplex;
            (_nn : stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode).int64 = __tmp__.int64;
            (_nn : stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode).uint64 = __tmp__.uint64;
            (_nn : stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode).float64 = __tmp__.float64;
            (_nn : stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode).complex128 = __tmp__.complex128;
            (_nn : stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode).text = __tmp__.text;
        };
        return stdgo.Go.asInterface(_nn);
    }
    @:keep
    static public function _tree( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode> = _n;
        return _n._tr;
    }
    @:keep
    static public function _writeTo( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode> = _n;
        _sb.writeString((_n.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    static public function string( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>):stdgo.GoString {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode> = _n;
        return _n.text?.__copy__();
    }
    @:keep
    static public function _simplifyComplex( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode> = _n;
        _n.isFloat = _n.complex128.imag == (0 : stdgo.GoFloat64);
        if (_n.isFloat) {
            _n.float64 = _n.complex128.real;
            _n.isInt = ((_n.float64 : stdgo.GoInt64) : stdgo.GoFloat64) == (_n.float64);
            if (_n.isInt) {
                _n.int64 = (_n.float64 : stdgo.GoInt64);
            };
            _n.isUint = ((_n.float64 : stdgo.GoUInt64) : stdgo.GoFloat64) == (_n.float64);
            if (_n.isUint) {
                _n.uint64 = (_n.float64 : stdgo.GoUInt64);
            };
        };
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
