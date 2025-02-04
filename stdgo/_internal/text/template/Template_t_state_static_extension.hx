package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.T_state_asInterface) class T_state_static_extension {
    @:keep
    @:tdfield
    static public function _printValue( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _n:stdgo._internal.text.template.parse.Parse_node.Node, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        @:check2r _s._at(_n);
        var __tmp__ = stdgo._internal.text.template.Template__printablevalue._printableValue(_v?.__copy__()), _iface:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            @:check2r _s._errorf(("can\'t print %s of type %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_v.type()));
        };
        var __tmp__ = stdgo._internal.fmt.Fmt_fprint.fprint((@:checkr _s ?? throw "null pointer dereference")._wr, _iface), __24:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _s._writeError(_err);
        };
    }
    @:keep
    @:tdfield
    static public function _evalEmptyInterface( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        @:check2r _s._at(_n);
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>) : __type__.__underlying__().value;
                return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((@:checkr _n ?? throw "null pointer dereference").__True))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : __type__.__underlying__().value;
                return _dot?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : __type__.__underlying__().value;
                return @:check2r _s._evalFieldNode(_dot?.__copy__(), _n, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>), stdgo._internal.text.template.Template__missingval._missingVal?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : __type__.__underlying__().value;
                return @:check2r _s._evalFunction(_dot?.__copy__(), _n, stdgo.Go.asInterface(_n), (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>), stdgo._internal.text.template.Template__missingval._missingVal?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : __type__.__underlying__().value;
                @:check2r _s._errorf(("evalEmptyInterface: nil (can\'t happen)" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>) : __type__.__underlying__().value;
                return @:check2r _s._idealConstant(_n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>) : __type__.__underlying__().value;
                return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((@:checkr _n ?? throw "null pointer dereference").text))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : __type__.__underlying__().value;
                return @:check2r _s._evalVariableNode(_dot?.__copy__(), _n, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>), stdgo._internal.text.template.Template__missingval._missingVal?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : __type__.__underlying__().value;
                return @:check2r _s._evalPipeline(_dot?.__copy__(), _n)?.__copy__();
            };
        };
        @:check2r _s._errorf(("can\'t handle assignment of %s to empty interface argument" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _evalComplex( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && (@:checkr _n ?? throw "null pointer dereference").isComplex : Bool)) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                _value.setComplex((@:checkr _n ?? throw "null pointer dereference").complex128);
                return _value?.__copy__();
            };
        };
        @:check2r _s._errorf(("expected complex; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _evalFloat( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        @:check2r _s._at(_n);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && (@:checkr _n ?? throw "null pointer dereference").isFloat : Bool)) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                _value.setFloat((@:checkr _n ?? throw "null pointer dereference").float64);
                return _value?.__copy__();
            };
        };
        @:check2r _s._errorf(("expected float; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _evalUnsignedInteger( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        @:check2r _s._at(_n);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && (@:checkr _n ?? throw "null pointer dereference").isUint : Bool)) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                _value.setUint((@:checkr _n ?? throw "null pointer dereference").uint64);
                return _value?.__copy__();
            };
        };
        @:check2r _s._errorf(("expected unsigned integer; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _evalInteger( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        @:check2r _s._at(_n);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && (@:checkr _n ?? throw "null pointer dereference").isInt : Bool)) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                _value.setInt((@:checkr _n ?? throw "null pointer dereference").int64);
                return _value?.__copy__();
            };
        };
        @:check2r _s._errorf(("expected integer; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _evalString( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        @:check2r _s._at(_n);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                _value.setString((@:checkr _n ?? throw "null pointer dereference").text?.__copy__());
                return _value?.__copy__();
            };
        };
        @:check2r _s._errorf(("expected string; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _evalBool( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        @:check2r _s._at(_n);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                _value.setBool((@:checkr _n ?? throw "null pointer dereference").__True);
                return _value?.__copy__();
            };
        };
        @:check2r _s._errorf(("expected bool; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _evalArg( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        @:check2r _s._at(_n);
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : __type__.__underlying__().value;
                return @:check2r _s._validateType(_dot?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : __type__.__underlying__().value;
                if (stdgo._internal.text.template.Template__canbenil._canBeNil(_typ)) {
                    return stdgo._internal.reflect.Reflect_zero.zero(_typ)?.__copy__();
                };
                @:check2r _s._errorf(("cannot assign nil to %s" : stdgo.GoString), stdgo.Go.toInterface(_typ));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : __type__.__underlying__().value;
                return @:check2r _s._validateType(@:check2r _s._evalFieldNode(_dot?.__copy__(), _arg, (new stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>(1, 1, ...[_n]) : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>), stdgo._internal.text.template.Template__missingval._missingVal?.__copy__())?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : __type__.__underlying__().value;
                return @:check2r _s._validateType(@:check2r _s._evalVariableNode(_dot?.__copy__(), _arg, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>), stdgo._internal.text.template.Template__missingval._missingVal?.__copy__())?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : __type__.__underlying__().value;
                return @:check2r _s._validateType(@:check2r _s._evalPipeline(_dot?.__copy__(), _arg)?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : __type__.__underlying__().value;
                return @:check2r _s._validateType(@:check2r _s._evalFunction(_dot?.__copy__(), _arg, stdgo.Go.asInterface(_arg), (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>), stdgo._internal.text.template.Template__missingval._missingVal?.__copy__())?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>) : __type__.__underlying__().value;
                return @:check2r _s._validateType(@:check2r _s._evalChainNode(_dot?.__copy__(), _arg, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>), stdgo._internal.text.template.Template__missingval._missingVal?.__copy__())?.__copy__(), _typ)?.__copy__();
            };
        };
        {
            final __value__ = _typ.kind();
            if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return @:check2r _s._evalBool(_typ, _n)?.__copy__();
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return @:check2r _s._evalComplex(_typ, _n)?.__copy__();
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return @:check2r _s._evalFloat(_typ, _n)?.__copy__();
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return @:check2r _s._evalInteger(_typ, _n)?.__copy__();
            } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                if (_typ.numMethod() == ((0 : stdgo.GoInt))) {
                    return @:check2r _s._evalEmptyInterface(_dot?.__copy__(), _n)?.__copy__();
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                if ((_typ.string() : String) == (stdgo._internal.text.template.Template__reflectvaluetype._reflectValueType.string() : String)) {
                    return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _s._evalEmptyInterface(_dot?.__copy__(), _n))))?.__copy__();
                };
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return @:check2r _s._evalString(_typ, _n)?.__copy__();
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return @:check2r _s._evalUnsignedInteger(_typ, _n)?.__copy__();
            };
        };
        @:check2r _s._errorf(("can\'t handle %s for arg of type %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_typ));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _validateType( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _value:stdgo._internal.reflect.Reflect_value.Value, _typ:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        if (!_value.isValid()) {
            if ((_typ.string() : String) == (null.string() : String)) {
                return stdgo._internal.reflect.Reflect_valueof.valueOf((null : stdgo.AnyInterface))?.__copy__();
            };
            if (stdgo._internal.text.template.Template__canbenil._canBeNil(_typ)) {
                return stdgo._internal.reflect.Reflect_zero.zero(_typ)?.__copy__();
            };
            @:check2r _s._errorf(("invalid value; expected %s" : stdgo.GoString), stdgo.Go.toInterface(_typ));
        };
        if ((((_typ.string() : String) == (stdgo._internal.text.template.Template__reflectvaluetype._reflectValueType.string() : String)) && !((_value.type().string() : String) == (_typ.string() : String)) : Bool)) {
            return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_value)))?.__copy__();
        };
        if ((!((_typ.string() : String) == (null.string() : String)) && !_value.type().assignableTo(_typ) : Bool)) {
            if (((_value.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_value.isNil() : Bool)) {
                _value = _value.elem()?.__copy__();
                if (_value.type().assignableTo(_typ)) {
                    return _value?.__copy__();
                };
            };
            if (((_value.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _value.type().elem().assignableTo(_typ) : Bool)) {
                _value = _value.elem()?.__copy__();
                if (!_value.isValid()) {
                    @:check2r _s._errorf(("dereference of nil pointer of type %s" : stdgo.GoString), stdgo.Go.toInterface(_typ));
                };
            } else if ((stdgo._internal.reflect.Reflect_pointerto.pointerTo(_value.type()).assignableTo(_typ) && _value.canAddr() : Bool)) {
                _value = _value.addr()?.__copy__();
            } else {
                @:check2r _s._errorf(("wrong type for value; expected %s; got %s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_value.type()));
            };
        };
        return _value?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _evalCall( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _fun:stdgo._internal.reflect.Reflect_value.Value, _isBuiltin:Bool, _node:stdgo._internal.text.template.parse.Parse_node.Node, _name:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        if (_args != null) {
            _args = (_args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>);
        };
        var _typ = (_fun.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        var _numIn = (_args.length : stdgo.GoInt);
        if (!stdgo._internal.text.template.Template__ismissing._isMissing(_final?.__copy__())) {
            _numIn++;
        };
        var _numFixed = (_args.length : stdgo.GoInt);
        if (_typ.isVariadic()) {
            _numFixed = (_typ.numIn() - (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_numIn < _numFixed : Bool)) {
                @:check2r _s._errorf(("wrong number of args for %s: want at least %d got %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface((_typ.numIn() - (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface((_args.length)));
            };
        } else if (_numIn != (_typ.numIn())) {
            @:check2r _s._errorf(("wrong number of args for %s: want %d got %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_typ.numIn()), stdgo.Go.toInterface(_numIn));
        };
        if (!stdgo._internal.text.template.Template__goodfunc._goodFunc(_typ)) {
            @:check2r _s._errorf(("can\'t call method/function %q with %d results" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_typ.numOut()));
        };
        var _unwrap = (function(_v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
            if ((_v.type().string() : String) == (stdgo._internal.text.template.Template__reflectvaluetype._reflectValueType.string() : String)) {
                _v = (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.reflect.Reflect_value.Value)) : stdgo._internal.reflect.Reflect_value.Value)?.__copy__();
            };
            return _v?.__copy__();
        } : stdgo._internal.reflect.Reflect_value.Value -> stdgo._internal.reflect.Reflect_value.Value);
        if ((_isBuiltin && (((_name == ("and" : stdgo.GoString)) || (_name == ("or" : stdgo.GoString)) : Bool)) : Bool)) {
            var _argType = (_typ.in_((0 : stdgo.GoInt)) : stdgo._internal.reflect.Reflect_type_.Type_);
            var _v:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
            for (__8 => _arg in _args) {
                _v = (stdgo.Go.typeAssert((@:check2r _s._evalArg(_dot?.__copy__(), _argType, _arg).interface_() : stdgo._internal.reflect.Reflect_value.Value)) : stdgo._internal.reflect.Reflect_value.Value)?.__copy__();
                if (stdgo._internal.text.template.Template__truth._truth(_v?.__copy__()) == ((_name == ("or" : stdgo.GoString)))) {
                    return _v?.__copy__();
                };
            };
            if (stdgo.Go.toInterface(_final) != stdgo.Go.toInterface(stdgo._internal.text.template.Template__missingval._missingVal)) {
                _v = _unwrap(@:check2r _s._validateType(_final?.__copy__(), _argType)?.__copy__())?.__copy__();
            };
            return _v?.__copy__();
        };
        var _argv = (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>((_numIn : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_numIn : stdgo.GoInt).toBasic() > 0 ? (_numIn : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        var _i = (0 : stdgo.GoInt);
        while (((_i < _numFixed : Bool) && (_i < (_args.length) : Bool) : Bool)) {
            _argv[(_i : stdgo.GoInt)] = @:check2r _s._evalArg(_dot.__copy__(), _typ.in_(_i), _args[(_i : stdgo.GoInt)]).__copy__();
            _i++;
        };
        if (_typ.isVariadic()) {
            var _argType = (_typ.in_((_typ.numIn() - (1 : stdgo.GoInt) : stdgo.GoInt)).elem() : stdgo._internal.reflect.Reflect_type_.Type_);
            while ((_i < (_args.length) : Bool)) {
                _argv[(_i : stdgo.GoInt)] = @:check2r _s._evalArg(_dot.__copy__(), _argType, _args[(_i : stdgo.GoInt)]).__copy__();
                _i++;
            };
        };
        if (!stdgo._internal.text.template.Template__ismissing._isMissing(_final?.__copy__())) {
            var _t = (_typ.in_((_typ.numIn() - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.reflect.Reflect_type_.Type_);
            if (_typ.isVariadic()) {
                if (((_numIn - (1 : stdgo.GoInt) : stdgo.GoInt) < _numFixed : Bool)) {
                    _t = _typ.in_((_numIn - (1 : stdgo.GoInt) : stdgo.GoInt));
                } else {
                    _t = _t.elem();
                };
            };
            _argv[(_i : stdgo.GoInt)] = @:check2r _s._validateType(_final?.__copy__(), _t)?.__copy__();
        };
        var __tmp__ = stdgo._internal.text.template.Template__safecall._safeCall(_fun?.__copy__(), _argv), _v:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _s._at(_node);
            @:check2r _s._errorf(("error calling %s: %w" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
        };
        return _unwrap(_v?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _evalField( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _fieldName:stdgo.GoString, _node:stdgo._internal.text.template.parse.Parse_node.Node, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value, _receiver:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        if (!_receiver.isValid()) {
            if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._tmpl ?? throw "null pointer dereference")._common._option._missingKey == ((2 : stdgo._internal.text.template.Template_t_missingkeyaction.T_missingKeyAction))) {
                @:check2r _s._errorf(("nil data; no entry for key %q" : stdgo.GoString), stdgo.Go.toInterface(_fieldName));
            };
            return stdgo._internal.text.template.Template__zero._zero?.__copy__();
        };
        var _typ = (_receiver.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        var __tmp__ = stdgo._internal.text.template.Template__indirect._indirect(_receiver?.__copy__()), _receiver:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _isNil:Bool = __tmp__._1;
        if (((_receiver.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _isNil : Bool)) {
            @:check2r _s._errorf(("nil pointer evaluating %s.%s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_fieldName));
            return stdgo._internal.text.template.Template__zero._zero?.__copy__();
        };
        var _ptr = (_receiver?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        if (((_ptr.kind() != ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _ptr.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool) && _ptr.canAddr() : Bool)) {
            _ptr = _ptr.addr()?.__copy__();
        };
        {
            var _method = (_ptr.methodByName(_fieldName?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            if (_method.isValid()) {
                return @:check2r _s._evalCall(_dot?.__copy__(), _method?.__copy__(), false, _node, _fieldName?.__copy__(), _args, _final?.__copy__())?.__copy__();
            };
        };
        var _hasArgs = (((_args.length) > (1 : stdgo.GoInt) : Bool) || !stdgo._internal.text.template.Template__ismissing._isMissing(_final?.__copy__()) : Bool);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _receiver.kind();
                    if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        var __tmp__ = _receiver.type().fieldByName(_fieldName?.__copy__()), _tField:stdgo._internal.reflect.Reflect_structfield.StructField = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            var __tmp__ = _receiver.fieldByIndexErr(_tField.index), _field:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (!_tField.isExported()) {
                                @:check2r _s._errorf(("%s is an unexported field of struct type %s" : stdgo.GoString), stdgo.Go.toInterface(_fieldName), stdgo.Go.toInterface(_typ));
                            };
                            if (_err != null) {
                                @:check2r _s._errorf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                            if (_hasArgs) {
                                @:check2r _s._errorf(("%s has arguments but cannot be invoked as function" : stdgo.GoString), stdgo.Go.toInterface(_fieldName));
                            };
                            return _field?.__copy__();
                        };
                        break;
                    } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        var _nameVal = (stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_fieldName))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                        if (_nameVal.type().assignableTo(_receiver.type().key())) {
                            if (_hasArgs) {
                                @:check2r _s._errorf(("%s is not a method but has arguments" : stdgo.GoString), stdgo.Go.toInterface(_fieldName));
                            };
                            var _result = (_receiver.mapIndex(_nameVal?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                            if (!_result.isValid()) {
                                {
                                    final __value__ = (@:checkr (@:checkr _s ?? throw "null pointer dereference")._tmpl ?? throw "null pointer dereference")._common._option._missingKey;
                                    if (__value__ == ((0 : stdgo._internal.text.template.Template_t_missingkeyaction.T_missingKeyAction))) {} else if (__value__ == ((1 : stdgo._internal.text.template.Template_t_missingkeyaction.T_missingKeyAction))) {
                                        _result = stdgo._internal.reflect.Reflect_zero.zero(_receiver.type().elem())?.__copy__();
                                    } else if (__value__ == ((2 : stdgo._internal.text.template.Template_t_missingkeyaction.T_missingKeyAction))) {
                                        @:check2r _s._errorf(("map has no entry for key %q" : stdgo.GoString), stdgo.Go.toInterface(_fieldName));
                                    };
                                };
                            };
                            return _result?.__copy__();
                        };
                        break;
                    } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        var _etyp = (_receiver.type().elem() : stdgo._internal.reflect.Reflect_type_.Type_);
                        if (_etyp.kind() == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            {
                                var __tmp__ = _etyp.fieldByName(_fieldName?.__copy__()), __8:stdgo._internal.reflect.Reflect_structfield.StructField = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    break;
                                };
                            };
                        };
                        if (_isNil) {
                            @:check2r _s._errorf(("nil pointer evaluating %s.%s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_fieldName));
                        };
                        break;
                    };
                };
                break;
            };
        };
        @:check2r _s._errorf(("can\'t evaluate field %s in type %s" : stdgo.GoString), stdgo.Go.toInterface(_fieldName), stdgo.Go.toInterface(_typ));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _evalFunction( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>, _cmd:stdgo._internal.text.template.parse.Parse_node.Node, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        @:check2r _s._at(stdgo.Go.asInterface(_node));
        var _name = ((@:checkr _node ?? throw "null pointer dereference").ident?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.text.template.Template__findfunction._findFunction(_name?.__copy__(), (@:checkr _s ?? throw "null pointer dereference")._tmpl), _function:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _isBuiltin:Bool = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            @:check2r _s._errorf(("%q is not a defined function" : stdgo.GoString), stdgo.Go.toInterface(_name));
        };
        return @:check2r _s._evalCall(_dot?.__copy__(), _function?.__copy__(), _isBuiltin, _cmd, _name?.__copy__(), _args, _final?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _evalFieldChain( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _receiver:stdgo._internal.reflect.Reflect_value.Value, _node:stdgo._internal.text.template.parse.Parse_node.Node, _ident:stdgo.Slice<stdgo.GoString>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        var _n = (_ident.length : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_n - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                _receiver = @:check2r _s._evalField(_dot.__copy__(), _ident[(_i : stdgo.GoInt)].__copy__(), _node, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>), stdgo._internal.text.template.Template__missingval._missingVal.__copy__(), _receiver.__copy__()).__copy__();
                _i++;
            };
        };
        return @:check2r _s._evalField(_dot?.__copy__(), _ident[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), _node, _args, _final?.__copy__(), _receiver?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _evalVariableNode( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _variable:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        @:check2r _s._at(stdgo.Go.asInterface(_variable));
        var _value = (@:check2r _s._varValue((@:checkr _variable ?? throw "null pointer dereference").ident[(0 : stdgo.GoInt)]?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        if (((@:checkr _variable ?? throw "null pointer dereference").ident.length) == ((1 : stdgo.GoInt))) {
            @:check2r _s._notAFunction(_args, _final?.__copy__());
            return _value?.__copy__();
        };
        return @:check2r _s._evalFieldChain(_dot?.__copy__(), _value?.__copy__(), stdgo.Go.asInterface(_variable), ((@:checkr _variable ?? throw "null pointer dereference").ident.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>), _args, _final?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _evalChainNode( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _chain:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        @:check2r _s._at(stdgo.Go.asInterface(_chain));
        if (((@:checkr _chain ?? throw "null pointer dereference").field.length) == ((0 : stdgo.GoInt))) {
            @:check2r _s._errorf(("internal error: no fields in evalChainNode" : stdgo.GoString));
        };
        if ((@:checkr _chain ?? throw "null pointer dereference").node.type() == ((12 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
            @:check2r _s._errorf(("indirection through explicit nil in %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_chain)));
        };
        var _pipe = (@:check2r _s._evalArg(_dot?.__copy__(), (null : stdgo._internal.reflect.Reflect_type_.Type_), (@:checkr _chain ?? throw "null pointer dereference").node)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        return @:check2r _s._evalFieldChain(_dot?.__copy__(), _pipe?.__copy__(), stdgo.Go.asInterface(_chain), (@:checkr _chain ?? throw "null pointer dereference").field, _args, _final?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _evalFieldNode( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _field:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        @:check2r _s._at(stdgo.Go.asInterface(_field));
        return @:check2r _s._evalFieldChain(_dot?.__copy__(), _dot?.__copy__(), stdgo.Go.asInterface(_field), (@:checkr _field ?? throw "null pointer dereference").ident, _args, _final?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _idealConstant( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _constant:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        @:check2r _s._at(stdgo.Go.asInterface(_constant));
        if ((@:checkr _constant ?? throw "null pointer dereference").isComplex) {
            return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((@:checkr _constant ?? throw "null pointer dereference").complex128))?.__copy__();
        } else if (((((@:checkr _constant ?? throw "null pointer dereference").isFloat && !stdgo._internal.text.template.Template__ishexint._isHexInt((@:checkr _constant ?? throw "null pointer dereference").text?.__copy__()) : Bool) && !stdgo._internal.text.template.Template__isruneint._isRuneInt((@:checkr _constant ?? throw "null pointer dereference").text?.__copy__()) : Bool) && stdgo._internal.strings.Strings_containsany.containsAny((@:checkr _constant ?? throw "null pointer dereference").text?.__copy__(), (".eEpP" : stdgo.GoString)) : Bool)) {
            return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((@:checkr _constant ?? throw "null pointer dereference").float64))?.__copy__();
        } else if ((@:checkr _constant ?? throw "null pointer dereference").isInt) {
            var _n = ((@:checkr _constant ?? throw "null pointer dereference").int64 : stdgo.GoInt);
            if ((_n : stdgo.GoInt64) != ((@:checkr _constant ?? throw "null pointer dereference").int64)) {
                @:check2r _s._errorf(("%s overflows int" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _constant ?? throw "null pointer dereference").text));
            };
            return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_n))?.__copy__();
        } else if ((@:checkr _constant ?? throw "null pointer dereference").isUint) {
            @:check2r _s._errorf(("%s overflows int" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _constant ?? throw "null pointer dereference").text));
        };
        return stdgo._internal.text.template.Template__zero._zero?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _evalCommand( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _cmd:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        var _firstWord = ((@:checkr _cmd ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)] : stdgo._internal.text.template.parse.Parse_node.Node);
        {
            final __type__ = _firstWord;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : __type__.__underlying__().value;
                return @:check2r _s._evalFieldNode(_dot?.__copy__(), _n, (@:checkr _cmd ?? throw "null pointer dereference").args, _final?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>) : __type__.__underlying__().value;
                return @:check2r _s._evalChainNode(_dot?.__copy__(), _n, (@:checkr _cmd ?? throw "null pointer dereference").args, _final?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : __type__.__underlying__().value;
                return @:check2r _s._evalFunction(_dot?.__copy__(), _n, stdgo.Go.asInterface(_cmd), (@:checkr _cmd ?? throw "null pointer dereference").args, _final?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : __type__.__underlying__().value;
                @:check2r _s._notAFunction((@:checkr _cmd ?? throw "null pointer dereference").args, _final?.__copy__());
                return @:check2r _s._evalPipeline(_dot?.__copy__(), _n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : __type__.__underlying__().value;
                return @:check2r _s._evalVariableNode(_dot?.__copy__(), _n, (@:checkr _cmd ?? throw "null pointer dereference").args, _final?.__copy__())?.__copy__();
            };
        };
        @:check2r _s._at(_firstWord);
        @:check2r _s._notAFunction((@:checkr _cmd ?? throw "null pointer dereference").args, _final?.__copy__());
        {
            final __type__ = _firstWord;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>) : __type__.__underlying__().value;
                return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((@:checkr _word ?? throw "null pointer dereference").__True))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : __type__.__underlying__().value;
                return _dot?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : __type__.__underlying__().value;
                @:check2r _s._errorf(("nil is not a command" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>) : __type__.__underlying__().value;
                return @:check2r _s._idealConstant(_word)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>) : __type__.__underlying__().value;
                return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((@:checkr _word ?? throw "null pointer dereference").text))?.__copy__();
            };
        };
        @:check2r _s._errorf(("can\'t evaluate command %q" : stdgo.GoString), stdgo.Go.toInterface(_firstWord));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _notAFunction( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        if ((((_args.length) > (1 : stdgo.GoInt) : Bool) || !stdgo._internal.text.template.Template__ismissing._isMissing(_final?.__copy__()) : Bool)) {
            @:check2r _s._errorf(("can\'t give argument to non-function %s" : stdgo.GoString), stdgo.Go.toInterface(_args[(0 : stdgo.GoInt)]));
        };
    }
    @:keep
    @:tdfield
    static public function _evalPipeline( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        var _value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        if ((_pipe == null || (_pipe : Dynamic).__nil__)) {
            return _value;
        };
        @:check2r _s._at(stdgo.Go.asInterface(_pipe));
        _value = stdgo._internal.text.template.Template__missingval._missingVal?.__copy__();
        for (__16 => _cmd in (@:checkr _pipe ?? throw "null pointer dereference").cmds) {
            _value = @:check2r _s._evalCommand(_dot?.__copy__(), _cmd, _value?.__copy__())?.__copy__();
            if (((_value.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (_value.type().numMethod() == (0 : stdgo.GoInt)) : Bool)) {
                _value = stdgo._internal.reflect.Reflect_valueof.valueOf(_value.interface_())?.__copy__();
            };
        };
        for (__17 => _variable in (@:checkr _pipe ?? throw "null pointer dereference").decl) {
            if ((@:checkr _pipe ?? throw "null pointer dereference").isAssign) {
                @:check2r _s._setVar((@:checkr _variable ?? throw "null pointer dereference").ident[(0 : stdgo.GoInt)]?.__copy__(), _value?.__copy__());
            } else {
                @:check2r _s._push((@:checkr _variable ?? throw "null pointer dereference").ident[(0 : stdgo.GoInt)]?.__copy__(), _value?.__copy__());
            };
        };
        return _value = _value?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _walkTemplate( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        @:check2r _s._at(stdgo.Go.asInterface(_t));
        var _tmpl = @:check2r (@:checkr _s ?? throw "null pointer dereference")._tmpl.lookup((@:checkr _t ?? throw "null pointer dereference").name?.__copy__());
        if ((_tmpl == null || (_tmpl : Dynamic).__nil__)) {
            @:check2r _s._errorf(("template %q not defined" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference").name));
        };
        if ((@:checkr _s ?? throw "null pointer dereference")._depth == (stdgo._internal.text.template.Template__maxexecdepth._maxExecDepth)) {
            @:check2r _s._errorf(("exceeded maximum template depth (%v)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__maxexecdepth._maxExecDepth));
        };
        _dot = @:check2r _s._evalPipeline(_dot?.__copy__(), (@:checkr _t ?? throw "null pointer dereference").pipe)?.__copy__();
        var _newState = ((_s : stdgo._internal.text.template.Template_t_state.T_state)?.__copy__() : stdgo._internal.text.template.Template_t_state.T_state);
        _newState._depth++;
        _newState._tmpl = _tmpl;
        _newState._vars = (new stdgo.Slice<stdgo._internal.text.template.Template_t_variable.T_variable>(1, 1, ...[(new stdgo._internal.text.template.Template_t_variable.T_variable(("$" : stdgo.GoString), _dot?.__copy__()) : stdgo._internal.text.template.Template_t_variable.T_variable)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.Template_t_variable.T_variable)])) : stdgo.Slice<stdgo._internal.text.template.Template_t_variable.T_variable>);
        @:check2 _newState._walk(_dot?.__copy__(), stdgo.Go.asInterface((@:checkr _tmpl ?? throw "null pointer dereference").tree.root));
    }
    @:keep
    @:tdfield
    static public function _walkRange( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _r:stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2r _s._at(stdgo.Go.asInterface(_r));
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        {
                            var _r = (stdgo._internal.text.template.Template__recover._recover() : stdgo.AnyInterface);
                            if (((_r != null) && (_r != stdgo.Go.toInterface(stdgo._internal.text.template.Template__walkbreak._walkBreak)) : Bool)) {
                                throw stdgo.Go.toInterface(_r);
                            };
                        };
                    };
                    a();
                }) });
            };
            {
                var _a0 = @:check2r _s._mark();
                final __f__ = @:check2r _s._pop;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var __tmp__ = stdgo._internal.text.template.Template__indirect._indirect(@:check2r _s._evalPipeline(_dot?.__copy__(), (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe)?.__copy__()), _val:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, __40:Bool = __tmp__._1;
            var _mark = (@:check2r _s._mark() : stdgo.GoInt);
            var _oneIteration = (function(_index:stdgo._internal.reflect.Reflect_value.Value, _elem:stdgo._internal.reflect.Reflect_value.Value):Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    if ((((@:checkr (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe ?? throw "null pointer dereference").decl.length) > (0 : stdgo.GoInt) : Bool)) {
                        if ((@:checkr (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe ?? throw "null pointer dereference").isAssign) {
                            if ((((@:checkr (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe ?? throw "null pointer dereference").decl.length) > (1 : stdgo.GoInt) : Bool)) {
                                @:check2r _s._setVar((@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe ?? throw "null pointer dereference").decl[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").ident[(0 : stdgo.GoInt)]?.__copy__(), _index?.__copy__());
                            } else {
                                @:check2r _s._setVar((@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe ?? throw "null pointer dereference").decl[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").ident[(0 : stdgo.GoInt)]?.__copy__(), _elem?.__copy__());
                            };
                        } else {
                            @:check2r _s._setTopVar((1 : stdgo.GoInt), _elem?.__copy__());
                        };
                    };
                    if ((((@:checkr (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe ?? throw "null pointer dereference").decl.length) > (1 : stdgo.GoInt) : Bool)) {
                        if ((@:checkr (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe ?? throw "null pointer dereference").isAssign) {
                            @:check2r _s._setVar((@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe ?? throw "null pointer dereference").decl[(1 : stdgo.GoInt)] ?? throw "null pointer dereference").ident[(0 : stdgo.GoInt)]?.__copy__(), _elem?.__copy__());
                        } else {
                            @:check2r _s._setTopVar((2 : stdgo.GoInt), _index?.__copy__());
                        };
                    };
                    {
                        var _a0 = _mark;
                        final __f__ = @:check2r _s._pop;
                        __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                    };
                    {
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            var a = function():Void {
                                {
                                    var _r = (stdgo._internal.text.template.Template__recover._recover() : stdgo.AnyInterface);
                                    if (((_r != null) && (_r != stdgo.Go.toInterface(stdgo._internal.text.template.Template__walkcontinue._walkContinue)) : Bool)) {
                                        throw stdgo.Go.toInterface(_r);
                                    };
                                };
                            };
                            a();
                        }) });
                    };
                    @:check2r _s._walk(_elem?.__copy__(), stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference").branchNode.list));
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        if (stdgo.Go.recover_exception != null) {
                            final e = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            throw e;
                        };
                        return;
                    };
                } catch(__exception__) {
                    {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        {
                            function f() {
                                try {
                                    {
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                    };
                                } catch(__exception__2) {
                                    var exe:Dynamic = __exception__2.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                        if (__exception__.message == "__return__") throw "__return__";
                                        exe = stdgo.Go.toInterface(__exception__.message);
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    f();
                                };
                            };
                            f();
                        };
                        if (stdgo.Go.recover_exception != null) {
                            final e = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            throw e;
                        };
                        return;
                    };
                };
            } : (stdgo._internal.reflect.Reflect_value.Value, stdgo._internal.reflect.Reflect_value.Value) -> Void);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _val.kind();
                        if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            if (_val.len() == ((0 : stdgo.GoInt))) {
                                break;
                            };
                            {
                                var _i = (0 : stdgo.GoInt);
                                while ((_i < _val.len() : Bool)) {
                                    _oneIteration(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_i)).__copy__(), _val.index(_i).__copy__());
                                    _i++;
                                };
                            };
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return;
                            };
                            break;
                        } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            if (_val.len() == ((0 : stdgo.GoInt))) {
                                break;
                            };
                            var _om = stdgo._internal.internal.fmtsort.Fmtsort_sort.sort(_val?.__copy__());
                            for (_i => _key in (@:checkr _om ?? throw "null pointer dereference").key) {
                                _oneIteration(_key?.__copy__(), (@:checkr _om ?? throw "null pointer dereference").value[(_i : stdgo.GoInt)]);
                            };
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return;
                            };
                            break;
                        } else if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            if (_val.isNil()) {
                                break;
                            };
                            if (_val.type().chanDir() == ((2 : stdgo._internal.reflect.Reflect_chandir.ChanDir))) {
                                @:check2r _s._errorf(("range over send-only channel %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_val)));
                                break;
                            };
                            var _i = (0 : stdgo.GoInt);
                            while (true) {
                                var __tmp__ = _val.recv(), _elem:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
if (!_ok) {
                                    break;
                                };
_oneIteration(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_i)).__copy__(), _elem.__copy__());
                                _i++;
                            };
                            if (_i == ((0 : stdgo.GoInt))) {
                                break;
                            };
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return;
                            };
                            break;
                        } else if (__value__ == ((0u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            break;
                            break;
                        } else {
                            @:check2r _s._errorf(("range can\'t iterate over %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_val)));
                        };
                    };
                    break;
                };
            };
            if (((@:checkr _r ?? throw "null pointer dereference").branchNode.elseList != null && (((@:checkr _r ?? throw "null pointer dereference").branchNode.elseList : Dynamic).__nil__ == null || !((@:checkr _r ?? throw "null pointer dereference").branchNode.elseList : Dynamic).__nil__))) {
                @:check2r _s._walk(_dot?.__copy__(), stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference").branchNode.elseList));
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _walkIfOrWith( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _typ:stdgo._internal.text.template.parse.Parse_nodetype.NodeType, _dot:stdgo._internal.reflect.Reflect_value.Value, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = @:check2r _s._mark();
                final __f__ = @:check2r _s._pop;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var _val = (@:check2r _s._evalPipeline(_dot?.__copy__(), _pipe)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var __tmp__ = stdgo._internal.text.template.Template__istrue._isTrue(stdgo._internal.text.template.Template__indirectinterface._indirectInterface(_val?.__copy__())?.__copy__()), _truth:Bool = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                @:check2r _s._errorf(("if/with can\'t use %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_val)));
            };
            if (_truth) {
                if (_typ == ((19 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                    @:check2r _s._walk(_val?.__copy__(), stdgo.Go.asInterface(_list));
                } else {
                    @:check2r _s._walk(_dot?.__copy__(), stdgo.Go.asInterface(_list));
                };
            } else if ((_elseList != null && ((_elseList : Dynamic).__nil__ == null || !(_elseList : Dynamic).__nil__))) {
                @:check2r _s._walk(_dot?.__copy__(), stdgo.Go.asInterface(_elseList));
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _walk( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _node:stdgo._internal.text.template.parse.Parse_node.Node):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        @:check2r _s._at(_node);
        {
            final __type__ = _node;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>) : __type__.__underlying__().value;
                var _val = (@:check2r _s._evalPipeline(_dot?.__copy__(), (@:checkr _node ?? throw "null pointer dereference").pipe)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                if (((@:checkr (@:checkr _node ?? throw "null pointer dereference").pipe ?? throw "null pointer dereference").decl.length) == ((0 : stdgo.GoInt))) {
                    @:check2r _s._printValue(stdgo.Go.asInterface(_node), _val?.__copy__());
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>) : __type__.__underlying__().value;
                throw stdgo.Go.toInterface(stdgo._internal.text.template.Template__walkbreak._walkBreak);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>) : __type__.__underlying__().value;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>) : __type__.__underlying__().value;
                throw stdgo.Go.toInterface(stdgo._internal.text.template.Template__walkcontinue._walkContinue);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>) : __type__.__underlying__().value;
                @:check2r _s._walkIfOrWith((10 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), _dot?.__copy__(), (@:checkr _node ?? throw "null pointer dereference").branchNode.pipe, (@:checkr _node ?? throw "null pointer dereference").branchNode.list, (@:checkr _node ?? throw "null pointer dereference").branchNode.elseList);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>) : __type__.__underlying__().value;
                for (__16 => _node in (@:checkr _node ?? throw "null pointer dereference").nodes) {
                    @:check2r _s._walk(_dot?.__copy__(), _node);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>) : __type__.__underlying__().value;
                @:check2r _s._walkRange(_dot?.__copy__(), _node);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>) : __type__.__underlying__().value;
                @:check2r _s._walkTemplate(_dot?.__copy__(), _node);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>) : __type__.__underlying__().value;
                {
                    var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._wr.write((@:checkr _node ?? throw "null pointer dereference").text), __24:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        @:check2r _s._writeError(_err);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>) : __type__.__underlying__().value;
                @:check2r _s._walkIfOrWith((19 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), _dot?.__copy__(), (@:checkr _node ?? throw "null pointer dereference").branchNode.pipe, (@:checkr _node ?? throw "null pointer dereference").branchNode.list, (@:checkr _node ?? throw "null pointer dereference").branchNode.elseList);
            } else {
                var _node:stdgo._internal.text.template.parse.Parse_node.Node = __type__ == null ? (null : stdgo._internal.text.template.parse.Parse_node.Node) : cast __type__;
                @:check2r _s._errorf(("unknown node: %s" : stdgo.GoString), stdgo.Go.toInterface(_node));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _writeError( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _err:stdgo.Error):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        throw stdgo.Go.toInterface(stdgo.Go.asInterface(({ err : _err } : stdgo._internal.text.template.Template_t_writeerror.T_writeError)));
    }
    @:keep
    @:tdfield
    static public function _errorf( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        var _name = (stdgo._internal.text.template.Template__doublepercent._doublePercent(@:check2r (@:checkr _s ?? throw "null pointer dereference")._tmpl.name()?.__copy__())?.__copy__() : stdgo.GoString);
        if ((@:checkr _s ?? throw "null pointer dereference")._node == null) {
            _format = stdgo._internal.fmt.Fmt_sprintf.sprintf(("template: %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_format))?.__copy__();
        } else {
            var __tmp__ = @:check2r (@:checkr _s ?? throw "null pointer dereference")._tmpl.errorContext((@:checkr _s ?? throw "null pointer dereference")._node), _location:stdgo.GoString = __tmp__._0, _context:stdgo.GoString = __tmp__._1;
            _format = stdgo._internal.fmt.Fmt_sprintf.sprintf(("template: %s: executing %q at <%s>: %s" : stdgo.GoString), stdgo.Go.toInterface(_location), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(stdgo._internal.text.template.Template__doublepercent._doublePercent(_context?.__copy__())), stdgo.Go.toInterface(_format))?.__copy__();
        };
        throw stdgo.Go.toInterface(stdgo.Go.asInterface(({ name : @:check2r (@:checkr _s ?? throw "null pointer dereference")._tmpl.name()?.__copy__(), err : stdgo._internal.fmt.Fmt_errorf.errorf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)) } : stdgo._internal.text.template.Template_execerror.ExecError)));
    }
    @:keep
    @:tdfield
    static public function _at( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _node:stdgo._internal.text.template.parse.Parse_node.Node):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        (@:checkr _s ?? throw "null pointer dereference")._node = _node;
    }
    @:keep
    @:tdfield
    static public function _varValue( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _name:stdgo.GoString):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        {
            var _i = (@:check2r _s._mark() - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                if ((@:checkr _s ?? throw "null pointer dereference")._vars[(_i : stdgo.GoInt)]._name == (_name)) {
                    return (@:checkr _s ?? throw "null pointer dereference")._vars[(_i : stdgo.GoInt)]._value.__copy__();
                };
                _i--;
            };
        };
        @:check2r _s._errorf(("undefined variable: %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
        return stdgo._internal.text.template.Template__zero._zero?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _setTopVar( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _n:stdgo.GoInt, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        (@:checkr _s ?? throw "null pointer dereference")._vars[(((@:checkr _s ?? throw "null pointer dereference")._vars.length) - _n : stdgo.GoInt)]._value = _value?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _setVar( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _name:stdgo.GoString, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        {
            var _i = (@:check2r _s._mark() - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                if ((@:checkr _s ?? throw "null pointer dereference")._vars[(_i : stdgo.GoInt)]._name == (_name)) {
                    (@:checkr _s ?? throw "null pointer dereference")._vars[(_i : stdgo.GoInt)]._value = _value.__copy__();
                    return;
                };
                _i--;
            };
        };
        @:check2r _s._errorf(("undefined variable: %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
    }
    @:keep
    @:tdfield
    static public function _pop( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _mark:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        (@:checkr _s ?? throw "null pointer dereference")._vars = ((@:checkr _s ?? throw "null pointer dereference")._vars.__slice__((0 : stdgo.GoInt), _mark) : stdgo.Slice<stdgo._internal.text.template.Template_t_variable.T_variable>);
    }
    @:keep
    @:tdfield
    static public function _mark( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        return ((@:checkr _s ?? throw "null pointer dereference")._vars.length);
    }
    @:keep
    @:tdfield
    static public function _push( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _name:stdgo.GoString, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        (@:checkr _s ?? throw "null pointer dereference")._vars = ((@:checkr _s ?? throw "null pointer dereference")._vars.__append__((new stdgo._internal.text.template.Template_t_variable.T_variable(_name?.__copy__(), _value?.__copy__()) : stdgo._internal.text.template.Template_t_variable.T_variable)));
    }
}
