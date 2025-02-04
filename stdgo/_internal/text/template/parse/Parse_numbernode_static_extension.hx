package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.NumberNode_asInterface) class NumberNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode> = _n;
        var _nn = (stdgo.Go.setRef(({} : stdgo._internal.text.template.parse.Parse_numbernode.NumberNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>);
        {
            var __tmp__ = (_n : stdgo._internal.text.template.parse.Parse_numbernode.NumberNode)?.__copy__();
            var x = (_nn : stdgo._internal.text.template.parse.Parse_numbernode.NumberNode);
            x.nodeType = __tmp__?.nodeType;
            x.pos = __tmp__?.pos;
            x._tr = __tmp__?._tr;
            x.isInt = __tmp__?.isInt;
            x.isUint = __tmp__?.isUint;
            x.isFloat = __tmp__?.isFloat;
            x.isComplex = __tmp__?.isComplex;
            x.int64 = __tmp__?.int64;
            x.uint64 = __tmp__?.uint64;
            x.float64 = __tmp__?.float64;
            x.complex128 = __tmp__?.complex128;
            x.text = __tmp__?.text;
        };
        return stdgo.Go.asInterface(_nn);
    }
    @:keep
    @:tdfield
    static public function _tree( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode> = _n;
        return (@:checkr _n ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode> = _n;
        @:check2r _sb.writeString((@:check2r _n.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function string( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>):stdgo.GoString {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode> = _n;
        return (@:checkr _n ?? throw "null pointer dereference").text?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _simplifyComplex( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode> = _n;
        (@:checkr _n ?? throw "null pointer dereference").isFloat = ((@:checkr _n ?? throw "null pointer dereference").complex128 : stdgo.GoComplex128).imag == (0 : stdgo.GoFloat64);
        if ((@:checkr _n ?? throw "null pointer dereference").isFloat) {
            (@:checkr _n ?? throw "null pointer dereference").float64 = ((@:checkr _n ?? throw "null pointer dereference").complex128 : stdgo.GoComplex128).real;
            (@:checkr _n ?? throw "null pointer dereference").isInt = (((@:checkr _n ?? throw "null pointer dereference").float64 : stdgo.GoInt64) : stdgo.GoFloat64) == ((@:checkr _n ?? throw "null pointer dereference").float64);
            if ((@:checkr _n ?? throw "null pointer dereference").isInt) {
                (@:checkr _n ?? throw "null pointer dereference").int64 = ((@:checkr _n ?? throw "null pointer dereference").float64 : stdgo.GoInt64);
            };
            (@:checkr _n ?? throw "null pointer dereference").isUint = (((@:checkr _n ?? throw "null pointer dereference").float64 : stdgo.GoUInt64) : stdgo.GoFloat64) == ((@:checkr _n ?? throw "null pointer dereference").float64);
            if ((@:checkr _n ?? throw "null pointer dereference").isUint) {
                (@:checkr _n ?? throw "null pointer dereference").uint64 = ((@:checkr _n ?? throw "null pointer dereference").float64 : stdgo.GoUInt64);
            };
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_numbernode.NumberNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_numbernode.NumberNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
