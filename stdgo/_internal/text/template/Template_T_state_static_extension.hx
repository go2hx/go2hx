package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.T_state_asInterface) class T_state_static_extension {
    @:keep
    static public function _printValue( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _n:stdgo._internal.text.template.parse.Parse_Node.Node, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._at(_n);
        var __tmp__ = stdgo._internal.text.template.Template__printableValue._printableValue(_v?.__copy__()), _iface:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _s._errorf(("can\'t print %s of type %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_v.type()));
        };
        var __tmp__ = stdgo._internal.fmt.Fmt_fprint.fprint(_s._wr, _iface), __24:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _s._writeError(_err);
        };
    }
    @:keep
    static public function _evalEmptyInterface( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _dot:stdgo._internal.reflect.Reflect_Value.Value, _n:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._at(_n);
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>) : __type__.__underlying__().value;
                return stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_n.__True))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>) : __type__.__underlying__().value;
                return _dot?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>) : __type__.__underlying__().value;
                return _s._evalFieldNode(_dot?.__copy__(), _n, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>), stdgo._internal.text.template.Template__missingVal._missingVal?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>) : __type__.__underlying__().value;
                return _s._evalFunction(_dot?.__copy__(), _n, stdgo.Go.asInterface(_n), (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>), stdgo._internal.text.template.Template__missingVal._missingVal?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>) : __type__.__underlying__().value;
                _s._errorf(("evalEmptyInterface: nil (can\'t happen)" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>) : __type__.__underlying__().value;
                return _s._idealConstant(_n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>) : __type__.__underlying__().value;
                return stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_n.text))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>) : __type__.__underlying__().value;
                return _s._evalVariableNode(_dot?.__copy__(), _n, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>), stdgo._internal.text.template.Template__missingVal._missingVal?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>) : __type__.__underlying__().value;
                return _s._evalPipeline(_dot?.__copy__(), _n)?.__copy__();
            };
        };
        _s._errorf(("can\'t handle assignment of %s to empty interface argument" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _evalComplex( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _n:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && _n.isComplex : Bool)) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                _value.setComplex(_n.complex128);
                return _value?.__copy__();
            };
        };
        _s._errorf(("expected complex; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _evalFloat( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _n:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._at(_n);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && _n.isFloat : Bool)) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                _value.setFloat(_n.float64);
                return _value?.__copy__();
            };
        };
        _s._errorf(("expected float; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _evalUnsignedInteger( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _n:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._at(_n);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && _n.isUint : Bool)) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                _value.setUint(_n.uint64);
                return _value?.__copy__();
            };
        };
        _s._errorf(("expected unsigned integer; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _evalInteger( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _n:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._at(_n);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && _n.isInt : Bool)) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                _value.setInt(_n.int64);
                return _value?.__copy__();
            };
        };
        _s._errorf(("expected integer; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _evalString( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _n:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._at(_n);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                _value.setString(_n.text?.__copy__());
                return _value?.__copy__();
            };
        };
        _s._errorf(("expected string; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _evalBool( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _n:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._at(_n);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                _value.setBool(_n.__True);
                return _value?.__copy__();
            };
        };
        _s._errorf(("expected bool; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _evalArg( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _dot:stdgo._internal.reflect.Reflect_Value.Value, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _n:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._at(_n);
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>) : __type__.__underlying__().value;
                return _s._validateType(_dot?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>) : __type__.__underlying__().value;
                if (stdgo._internal.text.template.Template__canBeNil._canBeNil(_typ)) {
                    return stdgo._internal.reflect.Reflect_zero.zero(_typ)?.__copy__();
                };
                _s._errorf(("cannot assign nil to %s" : stdgo.GoString), stdgo.Go.toInterface(_typ));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>) : __type__.__underlying__().value;
                return _s._validateType(_s._evalFieldNode(_dot?.__copy__(), _arg, (new stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>(1, 1, ...[_n]) : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>), stdgo._internal.text.template.Template__missingVal._missingVal?.__copy__())?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>) : __type__.__underlying__().value;
                return _s._validateType(_s._evalVariableNode(_dot?.__copy__(), _arg, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>), stdgo._internal.text.template.Template__missingVal._missingVal?.__copy__())?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>) : __type__.__underlying__().value;
                return _s._validateType(_s._evalPipeline(_dot?.__copy__(), _arg)?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>) : __type__.__underlying__().value;
                return _s._validateType(_s._evalFunction(_dot?.__copy__(), _arg, stdgo.Go.asInterface(_arg), (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>), stdgo._internal.text.template.Template__missingVal._missingVal?.__copy__())?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>) : __type__.__underlying__().value;
                return _s._validateType(_s._evalChainNode(_dot?.__copy__(), _arg, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>), stdgo._internal.text.template.Template__missingVal._missingVal?.__copy__())?.__copy__(), _typ)?.__copy__();
            };
        };
        {
            final __value__ = _typ.kind();
            if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return _s._evalBool(_typ, _n)?.__copy__();
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return _s._evalComplex(_typ, _n)?.__copy__();
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return _s._evalFloat(_typ, _n)?.__copy__();
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return _s._evalInteger(_typ, _n)?.__copy__();
            } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                if (_typ.numMethod() == ((0 : stdgo.GoInt))) {
                    return _s._evalEmptyInterface(_dot?.__copy__(), _n)?.__copy__();
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                if ((_typ.string() : String) == (stdgo._internal.text.template.Template__reflectValueType._reflectValueType.string() : String)) {
                    return stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_s._evalEmptyInterface(_dot?.__copy__(), _n))))?.__copy__();
                };
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return _s._evalString(_typ, _n)?.__copy__();
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return _s._evalUnsignedInteger(_typ, _n)?.__copy__();
            };
        };
        _s._errorf(("can\'t handle %s for arg of type %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_typ));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _validateType( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _value:stdgo._internal.reflect.Reflect_Value.Value, _typ:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        if (!_value.isValid()) {
            if ((_typ.string() : String) == (null.string() : String)) {
                return stdgo._internal.reflect.Reflect_valueOf.valueOf((null : stdgo.AnyInterface))?.__copy__();
            };
            if (stdgo._internal.text.template.Template__canBeNil._canBeNil(_typ)) {
                return stdgo._internal.reflect.Reflect_zero.zero(_typ)?.__copy__();
            };
            _s._errorf(("invalid value; expected %s" : stdgo.GoString), stdgo.Go.toInterface(_typ));
        };
        if ((((_typ.string() : String) == (stdgo._internal.text.template.Template__reflectValueType._reflectValueType.string() : String)) && !((_value.type().string() : String) == (_typ.string() : String)) : Bool)) {
            return stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_value)))?.__copy__();
        };
        if ((!((_typ.string() : String) == (null.string() : String)) && !_value.type().assignableTo(_typ) : Bool)) {
            if (((_value.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_value.isNil() : Bool)) {
                _value = _value.elem()?.__copy__();
                if (_value.type().assignableTo(_typ)) {
                    return _value?.__copy__();
                };
            };
            if (((_value.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _value.type().elem().assignableTo(_typ) : Bool)) {
                _value = _value.elem()?.__copy__();
                if (!_value.isValid()) {
                    _s._errorf(("dereference of nil pointer of type %s" : stdgo.GoString), stdgo.Go.toInterface(_typ));
                };
            } else if ((stdgo._internal.reflect.Reflect_pointerTo.pointerTo(_value.type()).assignableTo(_typ) && _value.canAddr() : Bool)) {
                _value = _value.addr()?.__copy__();
            } else {
                _s._errorf(("wrong type for value; expected %s; got %s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_value.type()));
            };
        };
        return _value?.__copy__();
    }
    @:keep
    static public function _evalCall( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _dot:stdgo._internal.reflect.Reflect_Value.Value, _fun:stdgo._internal.reflect.Reflect_Value.Value, _isBuiltin:Bool, _node:stdgo._internal.text.template.parse.Parse_Node.Node, _name:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>, _final:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        if (_args != null) {
            _args = (_args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>);
        };
        var _typ = (_fun.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _numIn = (_args.length : stdgo.GoInt);
        if (!stdgo._internal.text.template.Template__isMissing._isMissing(_final?.__copy__())) {
            _numIn++;
        };
        var _numFixed = (_args.length : stdgo.GoInt);
        if (_typ.isVariadic()) {
            _numFixed = (_typ.numIn() - (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_numIn < _numFixed : Bool)) {
                _s._errorf(("wrong number of args for %s: want at least %d got %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface((_typ.numIn() - (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface((_args.length)));
            };
        } else if (_numIn != (_typ.numIn())) {
            _s._errorf(("wrong number of args for %s: want %d got %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_typ.numIn()), stdgo.Go.toInterface(_numIn));
        };
        if (!stdgo._internal.text.template.Template__goodFunc._goodFunc(_typ)) {
            _s._errorf(("can\'t call method/function %q with %d results" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_typ.numOut()));
        };
        var _unwrap = (function(_v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
            if ((_v.type().string() : String) == (stdgo._internal.text.template.Template__reflectValueType._reflectValueType.string() : String)) {
                _v = (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.reflect.Reflect_Value.Value)) : stdgo._internal.reflect.Reflect_Value.Value)?.__copy__();
            };
            return _v?.__copy__();
        } : stdgo._internal.reflect.Reflect_Value.Value -> stdgo._internal.reflect.Reflect_Value.Value);
        if ((_isBuiltin && (((_name == ("and" : stdgo.GoString)) || (_name == ("or" : stdgo.GoString)) : Bool)) : Bool)) {
            var _argType = (_typ.in_((0 : stdgo.GoInt)) : stdgo._internal.reflect.Reflect_Type_.Type_);
            var _v:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
            for (__8 => _arg in _args) {
                _v = (stdgo.Go.typeAssert((_s._evalArg(_dot?.__copy__(), _argType, _arg).interface_() : stdgo._internal.reflect.Reflect_Value.Value)) : stdgo._internal.reflect.Reflect_Value.Value)?.__copy__();
                if (stdgo._internal.text.template.Template__truth._truth(_v?.__copy__()) == ((_name == ("or" : stdgo.GoString)))) {
                    return _v?.__copy__();
                };
            };
            if (stdgo.Go.toInterface(_final) != stdgo.Go.toInterface(stdgo._internal.text.template.Template__missingVal._missingVal)) {
                _v = _unwrap(_s._validateType(_final?.__copy__(), _argType)?.__copy__())?.__copy__();
            };
            return _v?.__copy__();
        };
        var _argv = (new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>((_numIn : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_numIn : stdgo.GoInt).toBasic() > 0 ? (_numIn : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        var _i = (0 : stdgo.GoInt);
        stdgo.Go.cfor(((_i < _numFixed : Bool) && (_i < (_args.length) : Bool) : Bool), _i++, {
            _argv[(_i : stdgo.GoInt)] = _s._evalArg(_dot?.__copy__(), _typ.in_(_i), _args[(_i : stdgo.GoInt)])?.__copy__();
        });
        if (_typ.isVariadic()) {
            var _argType = (_typ.in_((_typ.numIn() - (1 : stdgo.GoInt) : stdgo.GoInt)).elem() : stdgo._internal.reflect.Reflect_Type_.Type_);
            stdgo.Go.cfor((_i < (_args.length) : Bool), _i++, {
                _argv[(_i : stdgo.GoInt)] = _s._evalArg(_dot?.__copy__(), _argType, _args[(_i : stdgo.GoInt)])?.__copy__();
            });
        };
        if (!stdgo._internal.text.template.Template__isMissing._isMissing(_final?.__copy__())) {
            var _t = (_typ.in_((_typ.numIn() - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (_typ.isVariadic()) {
                if (((_numIn - (1 : stdgo.GoInt) : stdgo.GoInt) < _numFixed : Bool)) {
                    _t = _typ.in_((_numIn - (1 : stdgo.GoInt) : stdgo.GoInt));
                } else {
                    _t = _t.elem();
                };
            };
            _argv[(_i : stdgo.GoInt)] = _s._validateType(_final?.__copy__(), _t)?.__copy__();
        };
        var __tmp__ = stdgo._internal.text.template.Template__safeCall._safeCall(_fun?.__copy__(), _argv), _v:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _s._at(_node);
            _s._errorf(("error calling %s: %w" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
        };
        return _unwrap(_v?.__copy__())?.__copy__();
    }
    @:keep
    static public function _evalField( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _dot:stdgo._internal.reflect.Reflect_Value.Value, _fieldName:stdgo.GoString, _node:stdgo._internal.text.template.parse.Parse_Node.Node, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>, _final:stdgo._internal.reflect.Reflect_Value.Value, _receiver:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        if (!_receiver.isValid()) {
            if (_s._tmpl._common._option._missingKey == ((2 : stdgo._internal.text.template.Template_T_missingKeyAction.T_missingKeyAction))) {
                _s._errorf(("nil data; no entry for key %q" : stdgo.GoString), stdgo.Go.toInterface(_fieldName));
            };
            return stdgo._internal.text.template.Template__zero._zero?.__copy__();
        };
        var _typ = (_receiver.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        var __tmp__ = stdgo._internal.text.template.Template__indirect._indirect(_receiver?.__copy__()), _receiver:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _isNil:Bool = __tmp__._1;
        if (((_receiver.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _isNil : Bool)) {
            _s._errorf(("nil pointer evaluating %s.%s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_fieldName));
            return stdgo._internal.text.template.Template__zero._zero?.__copy__();
        };
        var _ptr = (_receiver?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (((_ptr.kind() != ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _ptr.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool) && _ptr.canAddr() : Bool)) {
            _ptr = _ptr.addr()?.__copy__();
        };
        {
            var _method = (_ptr.methodByName(_fieldName?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if (_method.isValid()) {
                return _s._evalCall(_dot?.__copy__(), _method?.__copy__(), false, _node, _fieldName?.__copy__(), _args, _final?.__copy__())?.__copy__();
            };
        };
        var _hasArgs = (((_args.length) > (1 : stdgo.GoInt) : Bool) || !stdgo._internal.text.template.Template__isMissing._isMissing(_final?.__copy__()) : Bool);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _receiver.kind();
                    if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        var __tmp__ = _receiver.type().fieldByName(_fieldName?.__copy__()), _tField:stdgo._internal.reflect.Reflect_StructField.StructField = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            var __tmp__ = _receiver.fieldByIndexErr(_tField.index), _field:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (!_tField.isExported()) {
                                _s._errorf(("%s is an unexported field of struct type %s" : stdgo.GoString), stdgo.Go.toInterface(_fieldName), stdgo.Go.toInterface(_typ));
                            };
                            if (_err != null) {
                                _s._errorf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                            if (_hasArgs) {
                                _s._errorf(("%s has arguments but cannot be invoked as function" : stdgo.GoString), stdgo.Go.toInterface(_fieldName));
                            };
                            return _field?.__copy__();
                        };
                        break;
                    } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        var _nameVal = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_fieldName))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                        if (_nameVal.type().assignableTo(_receiver.type().key())) {
                            if (_hasArgs) {
                                _s._errorf(("%s is not a method but has arguments" : stdgo.GoString), stdgo.Go.toInterface(_fieldName));
                            };
                            var _result = (_receiver.mapIndex(_nameVal?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                            if (!_result.isValid()) {
                                {
                                    final __value__ = _s._tmpl._common._option._missingKey;
                                    if (__value__ == ((0 : stdgo._internal.text.template.Template_T_missingKeyAction.T_missingKeyAction))) {} else if (__value__ == ((1 : stdgo._internal.text.template.Template_T_missingKeyAction.T_missingKeyAction))) {
                                        _result = stdgo._internal.reflect.Reflect_zero.zero(_receiver.type().elem())?.__copy__();
                                    } else if (__value__ == ((2 : stdgo._internal.text.template.Template_T_missingKeyAction.T_missingKeyAction))) {
                                        _s._errorf(("map has no entry for key %q" : stdgo.GoString), stdgo.Go.toInterface(_fieldName));
                                    };
                                };
                            };
                            return _result?.__copy__();
                        };
                        break;
                    } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        var _etyp = (_receiver.type().elem() : stdgo._internal.reflect.Reflect_Type_.Type_);
                        if (_etyp.kind() == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            {
                                var __tmp__ = _etyp.fieldByName(_fieldName?.__copy__()), __8:stdgo._internal.reflect.Reflect_StructField.StructField = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    break;
                                };
                            };
                        };
                        if (_isNil) {
                            _s._errorf(("nil pointer evaluating %s.%s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_fieldName));
                        };
                        break;
                    };
                };
                break;
            };
        };
        _s._errorf(("can\'t evaluate field %s in type %s" : stdgo.GoString), stdgo.Go.toInterface(_fieldName), stdgo.Go.toInterface(_typ));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _evalFunction( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _dot:stdgo._internal.reflect.Reflect_Value.Value, _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>, _cmd:stdgo._internal.text.template.parse.Parse_Node.Node, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>, _final:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._at(stdgo.Go.asInterface(_node));
        var _name = (_node.ident?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.text.template.Template__findFunction._findFunction(_name?.__copy__(), _s._tmpl), _function:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _isBuiltin:Bool = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            _s._errorf(("%q is not a defined function" : stdgo.GoString), stdgo.Go.toInterface(_name));
        };
        return _s._evalCall(_dot?.__copy__(), _function?.__copy__(), _isBuiltin, _cmd, _name?.__copy__(), _args, _final?.__copy__())?.__copy__();
    }
    @:keep
    static public function _evalFieldChain( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _dot:stdgo._internal.reflect.Reflect_Value.Value, _receiver:stdgo._internal.reflect.Reflect_Value.Value, _node:stdgo._internal.text.template.parse.Parse_Node.Node, _ident:stdgo.Slice<stdgo.GoString>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>, _final:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        var _n = (_ident.length : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_n - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                _receiver = _s._evalField(_dot?.__copy__(), _ident[(_i : stdgo.GoInt)]?.__copy__(), _node, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>), stdgo._internal.text.template.Template__missingVal._missingVal?.__copy__(), _receiver?.__copy__())?.__copy__();
            });
        };
        return _s._evalField(_dot?.__copy__(), _ident[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), _node, _args, _final?.__copy__(), _receiver?.__copy__())?.__copy__();
    }
    @:keep
    static public function _evalVariableNode( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _dot:stdgo._internal.reflect.Reflect_Value.Value, _variable:stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>, _final:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._at(stdgo.Go.asInterface(_variable));
        var _value = (_s._varValue(_variable.ident[(0 : stdgo.GoInt)]?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if ((_variable.ident.length) == ((1 : stdgo.GoInt))) {
            _s._notAFunction(_args, _final?.__copy__());
            return _value?.__copy__();
        };
        return _s._evalFieldChain(_dot?.__copy__(), _value?.__copy__(), stdgo.Go.asInterface(_variable), (_variable.ident.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>), _args, _final?.__copy__())?.__copy__();
    }
    @:keep
    static public function _evalChainNode( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _dot:stdgo._internal.reflect.Reflect_Value.Value, _chain:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>, _final:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._at(stdgo.Go.asInterface(_chain));
        if ((_chain.field.length) == ((0 : stdgo.GoInt))) {
            _s._errorf(("internal error: no fields in evalChainNode" : stdgo.GoString));
        };
        if (_chain.node.type() == ((12 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
            _s._errorf(("indirection through explicit nil in %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_chain)));
        };
        var _pipe = (_s._evalArg(_dot?.__copy__(), (null : stdgo._internal.reflect.Reflect_Type_.Type_), _chain.node)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        return _s._evalFieldChain(_dot?.__copy__(), _pipe?.__copy__(), stdgo.Go.asInterface(_chain), _chain.field, _args, _final?.__copy__())?.__copy__();
    }
    @:keep
    static public function _evalFieldNode( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _dot:stdgo._internal.reflect.Reflect_Value.Value, _field:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>, _final:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._at(stdgo.Go.asInterface(_field));
        return _s._evalFieldChain(_dot?.__copy__(), _dot?.__copy__(), stdgo.Go.asInterface(_field), _field.ident, _args, _final?.__copy__())?.__copy__();
    }
    @:keep
    static public function _idealConstant( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _constant:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._at(stdgo.Go.asInterface(_constant));
        if (_constant.isComplex) {
            return stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_constant.complex128))?.__copy__();
        } else if ((((_constant.isFloat && !stdgo._internal.text.template.Template__isHexInt._isHexInt(_constant.text?.__copy__()) : Bool) && !stdgo._internal.text.template.Template__isRuneInt._isRuneInt(_constant.text?.__copy__()) : Bool) && stdgo._internal.strings.Strings_containsAny.containsAny(_constant.text?.__copy__(), (".eEpP" : stdgo.GoString)) : Bool)) {
            return stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_constant.float64))?.__copy__();
        } else if (_constant.isInt) {
            var _n = (_constant.int64 : stdgo.GoInt);
            if ((_n : stdgo.GoInt64) != (_constant.int64)) {
                _s._errorf(("%s overflows int" : stdgo.GoString), stdgo.Go.toInterface(_constant.text));
            };
            return stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_n))?.__copy__();
        } else if (_constant.isUint) {
            _s._errorf(("%s overflows int" : stdgo.GoString), stdgo.Go.toInterface(_constant.text));
        };
        return stdgo._internal.text.template.Template__zero._zero?.__copy__();
    }
    @:keep
    static public function _evalCommand( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _dot:stdgo._internal.reflect.Reflect_Value.Value, _cmd:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>, _final:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        var _firstWord = (_cmd.args[(0 : stdgo.GoInt)] : stdgo._internal.text.template.parse.Parse_Node.Node);
        {
            final __type__ = _firstWord;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>) : __type__.__underlying__().value;
                return _s._evalFieldNode(_dot?.__copy__(), _n, _cmd.args, _final?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>) : __type__.__underlying__().value;
                return _s._evalChainNode(_dot?.__copy__(), _n, _cmd.args, _final?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>) : __type__.__underlying__().value;
                return _s._evalFunction(_dot?.__copy__(), _n, stdgo.Go.asInterface(_cmd), _cmd.args, _final?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>) : __type__.__underlying__().value;
                _s._notAFunction(_cmd.args, _final?.__copy__());
                return _s._evalPipeline(_dot?.__copy__(), _n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>) : __type__.__underlying__().value;
                return _s._evalVariableNode(_dot?.__copy__(), _n, _cmd.args, _final?.__copy__())?.__copy__();
            };
        };
        _s._at(_firstWord);
        _s._notAFunction(_cmd.args, _final?.__copy__());
        {
            final __type__ = _firstWord;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>) : __type__.__underlying__().value;
                return stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_word.__True))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>) : __type__.__underlying__().value;
                return _dot?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>) : __type__.__underlying__().value;
                _s._errorf(("nil is not a command" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>) : __type__.__underlying__().value;
                return _s._idealConstant(_word)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>) : __type__.__underlying__().value;
                return stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_word.text))?.__copy__();
            };
        };
        _s._errorf(("can\'t evaluate command %q" : stdgo.GoString), stdgo.Go.toInterface(_firstWord));
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    static public function _notAFunction( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>, _final:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        if ((((_args.length) > (1 : stdgo.GoInt) : Bool) || !stdgo._internal.text.template.Template__isMissing._isMissing(_final?.__copy__()) : Bool)) {
            _s._errorf(("can\'t give argument to non-function %s" : stdgo.GoString), stdgo.Go.toInterface(_args[(0 : stdgo.GoInt)]));
        };
    }
    @:keep
    static public function _evalPipeline( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _dot:stdgo._internal.reflect.Reflect_Value.Value, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        var _value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        if (_pipe == null || (_pipe : Dynamic).__nil__) {
            return _value;
        };
        _s._at(stdgo.Go.asInterface(_pipe));
        _value = stdgo._internal.text.template.Template__missingVal._missingVal?.__copy__();
        for (__16 => _cmd in _pipe.cmds) {
            _value = _s._evalCommand(_dot?.__copy__(), _cmd, _value?.__copy__())?.__copy__();
            if (((_value.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && (_value.type().numMethod() == (0 : stdgo.GoInt)) : Bool)) {
                _value = stdgo._internal.reflect.Reflect_valueOf.valueOf(_value.interface_())?.__copy__();
            };
        };
        for (__17 => _variable in _pipe.decl) {
            if (_pipe.isAssign) {
                _s._setVar(_variable.ident[(0 : stdgo.GoInt)]?.__copy__(), _value?.__copy__());
            } else {
                _s._push(_variable.ident[(0 : stdgo.GoInt)]?.__copy__(), _value?.__copy__());
            };
        };
        return _value?.__copy__();
    }
    @:keep
    static public function _walkTemplate( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _dot:stdgo._internal.reflect.Reflect_Value.Value, _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._at(stdgo.Go.asInterface(_t));
        var _tmpl = _s._tmpl.lookup(_t.name?.__copy__());
        if (_tmpl == null || (_tmpl : Dynamic).__nil__) {
            _s._errorf(("template %q not defined" : stdgo.GoString), stdgo.Go.toInterface(_t.name));
        };
        if (_s._depth == (stdgo._internal.text.template.Template__maxExecDepth._maxExecDepth)) {
            _s._errorf(("exceeded maximum template depth (%v)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__maxExecDepth._maxExecDepth));
        };
        _dot = _s._evalPipeline(_dot?.__copy__(), _t.pipe)?.__copy__();
        var _newState = ((_s : stdgo._internal.text.template.Template_T_state.T_state)?.__copy__() : stdgo._internal.text.template.Template_T_state.T_state);
        _newState._depth++;
        _newState._tmpl = _tmpl;
        _newState._vars = (new stdgo.Slice<stdgo._internal.text.template.Template_T_variable.T_variable>(1, 1, ...[(new stdgo._internal.text.template.Template_T_variable.T_variable(("$" : stdgo.GoString), _dot?.__copy__()) : stdgo._internal.text.template.Template_T_variable.T_variable)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.Template_T_variable.T_variable)])) : stdgo.Slice<stdgo._internal.text.template.Template_T_variable.T_variable>);
        _newState._walk(_dot?.__copy__(), stdgo.Go.asInterface(_tmpl.tree.root));
    }
    @:keep
    static public function _walkRange( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _dot:stdgo._internal.reflect.Reflect_Value.Value, _r:stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _s._at(stdgo.Go.asInterface(_r));
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var _r = (stdgo._internal.text.template.Template__recover._recover() : stdgo.AnyInterface);
                            if (((_r != null) && (_r != stdgo.Go.toInterface(stdgo._internal.text.template.Template__walkBreak._walkBreak)) : Bool)) {
                                throw stdgo.Go.toInterface(_r);
                            };
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            });
            {
                var _a0 = _s._mark();
                __deferstack__.unshift(() -> _s._pop(_a0));
            };
            var __tmp__ = stdgo._internal.text.template.Template__indirect._indirect(_s._evalPipeline(_dot?.__copy__(), _r.branchNode.pipe)?.__copy__()), _val:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, __40:Bool = __tmp__._1;
            var _mark = (_s._mark() : stdgo.GoInt);
            var _oneIteration = (function(_index:stdgo._internal.reflect.Reflect_Value.Value, _elem:stdgo._internal.reflect.Reflect_Value.Value):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    if (((_r.branchNode.pipe.decl.length) > (0 : stdgo.GoInt) : Bool)) {
                        if (_r.branchNode.pipe.isAssign) {
                            if (((_r.branchNode.pipe.decl.length) > (1 : stdgo.GoInt) : Bool)) {
                                _s._setVar(_r.branchNode.pipe.decl[(0 : stdgo.GoInt)].ident[(0 : stdgo.GoInt)]?.__copy__(), _index?.__copy__());
                            } else {
                                _s._setVar(_r.branchNode.pipe.decl[(0 : stdgo.GoInt)].ident[(0 : stdgo.GoInt)]?.__copy__(), _elem?.__copy__());
                            };
                        } else {
                            _s._setTopVar((1 : stdgo.GoInt), _elem?.__copy__());
                        };
                    };
                    if (((_r.branchNode.pipe.decl.length) > (1 : stdgo.GoInt) : Bool)) {
                        if (_r.branchNode.pipe.isAssign) {
                            _s._setVar(_r.branchNode.pipe.decl[(1 : stdgo.GoInt)].ident[(0 : stdgo.GoInt)]?.__copy__(), _elem?.__copy__());
                        } else {
                            _s._setTopVar((2 : stdgo.GoInt), _index?.__copy__());
                        };
                    };
                    {
                        var _a0 = _mark;
                        __deferstack__.unshift(() -> _s._pop(_a0));
                    };
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                {
                                    var _r = (stdgo._internal.text.template.Template__recover._recover() : stdgo.AnyInterface);
                                    if (((_r != null) && (_r != stdgo.Go.toInterface(stdgo._internal.text.template.Template__walkContinue._walkContinue)) : Bool)) {
                                        throw stdgo.Go.toInterface(_r);
                                    };
                                };
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            } catch(__exception__) {
                                var exe:Dynamic = __exception__.native;
                                if ((exe is haxe.ValueException)) exe = exe.value;
                                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                    if (__exception__.message == "__return__") throw "__return__";
                                    exe = stdgo.Go.toInterface(__exception__.message);
                                };
                                stdgo.Go.recover_exception = exe;
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        };
                        a();
                    });
                    _s._walk(_elem?.__copy__(), stdgo.Go.asInterface(_r.branchNode.list));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            } : (stdgo._internal.reflect.Reflect_Value.Value, stdgo._internal.reflect.Reflect_Value.Value) -> Void);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _val.kind();
                        if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            if (_val.len() == ((0 : stdgo.GoInt))) {
                                break;
                            };
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _val.len() : Bool), _i++, {
                                    _oneIteration(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_i))?.__copy__(), _val.index(_i)?.__copy__());
                                });
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                            break;
                        } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            if (_val.len() == ((0 : stdgo.GoInt))) {
                                break;
                            };
                            var _om = stdgo._internal.internal.fmtsort.Fmtsort_sort.sort(_val?.__copy__());
                            for (_i => _key in _om.key) {
                                _oneIteration(_key?.__copy__(), _om.value[(_i : stdgo.GoInt)]);
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                            break;
                        } else if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            if (_val.isNil()) {
                                break;
                            };
                            if (_val.type().chanDir() == ((2 : stdgo._internal.reflect.Reflect_ChanDir.ChanDir))) {
                                _s._errorf(("range over send-only channel %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_val)));
                                break;
                            };
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor(true, _i++, {
                                var __tmp__ = _val.recv(), _elem:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    break;
                                };
                                _oneIteration(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_i))?.__copy__(), _elem?.__copy__());
                            });
                            if (_i == ((0 : stdgo.GoInt))) {
                                break;
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                            break;
                        } else if (__value__ == ((0u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            break;
                            break;
                        } else {
                            _s._errorf(("range can\'t iterate over %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_val)));
                        };
                    };
                    break;
                };
            };
            if (_r.branchNode.elseList != null && ((_r.branchNode.elseList : Dynamic).__nil__ == null || !(_r.branchNode.elseList : Dynamic).__nil__)) {
                _s._walk(_dot?.__copy__(), stdgo.Go.asInterface(_r.branchNode.elseList));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _walkIfOrWith( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _typ:stdgo._internal.text.template.parse.Parse_NodeType.NodeType, _dot:stdgo._internal.reflect.Reflect_Value.Value, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _s._mark();
                __deferstack__.unshift(() -> _s._pop(_a0));
            };
            var _val = (_s._evalPipeline(_dot?.__copy__(), _pipe)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var __tmp__ = stdgo._internal.text.template.Template__isTrue._isTrue(stdgo._internal.text.template.Template__indirectInterface._indirectInterface(_val?.__copy__())?.__copy__()), _truth:Bool = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                _s._errorf(("if/with can\'t use %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_val)));
            };
            if (_truth) {
                if (_typ == ((19 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
                    _s._walk(_val?.__copy__(), stdgo.Go.asInterface(_list));
                } else {
                    _s._walk(_dot?.__copy__(), stdgo.Go.asInterface(_list));
                };
            } else if (_elseList != null && ((_elseList : Dynamic).__nil__ == null || !(_elseList : Dynamic).__nil__)) {
                _s._walk(_dot?.__copy__(), stdgo.Go.asInterface(_elseList));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _walk( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _dot:stdgo._internal.reflect.Reflect_Value.Value, _node:stdgo._internal.text.template.parse.Parse_Node.Node):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._at(_node);
        {
            final __type__ = _node;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>) : __type__.__underlying__().value;
                var _val = (_s._evalPipeline(_dot?.__copy__(), _node.pipe)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                if ((_node.pipe.decl.length) == ((0 : stdgo.GoInt))) {
                    _s._printValue(stdgo.Go.asInterface(_node), _val?.__copy__());
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>) : __type__.__underlying__().value;
                throw stdgo.Go.toInterface(stdgo._internal.text.template.Template__walkBreak._walkBreak);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>) : __type__.__underlying__().value;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>) : __type__.__underlying__().value;
                throw stdgo.Go.toInterface(stdgo._internal.text.template.Template__walkContinue._walkContinue);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode>) : __type__.__underlying__().value;
                _s._walkIfOrWith((10 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), _dot?.__copy__(), _node.branchNode.pipe, _node.branchNode.list, _node.branchNode.elseList);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>) : __type__.__underlying__().value;
                for (__16 => _node in _node.nodes) {
                    _s._walk(_dot?.__copy__(), _node);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>) : __type__.__underlying__().value;
                _s._walkRange(_dot?.__copy__(), _node);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>) : __type__.__underlying__().value;
                _s._walkTemplate(_dot?.__copy__(), _node);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>) : __type__.__underlying__().value;
                {
                    var __tmp__ = _s._wr.write(_node.text), __24:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _s._writeError(_err);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode>) : __type__.__underlying__().value;
                _s._walkIfOrWith((19 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), _dot?.__copy__(), _node.branchNode.pipe, _node.branchNode.list, _node.branchNode.elseList);
            } else {
                var _node:stdgo._internal.text.template.parse.Parse_Node.Node = __type__ == null ? (null : stdgo._internal.text.template.parse.Parse_Node.Node) : cast __type__;
                _s._errorf(("unknown node: %s" : stdgo.GoString), stdgo.Go.toInterface(_node));
            };
        };
    }
    @:keep
    static public function _writeError( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _err:stdgo.Error):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        throw stdgo.Go.toInterface(({ err : _err } : stdgo._internal.text.template.Template_T_writeError.T_writeError));
    }
    @:keep
    static public function _errorf( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        var _name = (stdgo._internal.text.template.Template__doublePercent._doublePercent(_s._tmpl.name()?.__copy__())?.__copy__() : stdgo.GoString);
        if (_s._node == null) {
            _format = stdgo._internal.fmt.Fmt_sprintf.sprintf(("template: %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_format))?.__copy__();
        } else {
            var __tmp__ = _s._tmpl.errorContext(_s._node), _location:stdgo.GoString = __tmp__._0, _context:stdgo.GoString = __tmp__._1;
            _format = stdgo._internal.fmt.Fmt_sprintf.sprintf(("template: %s: executing %q at <%s>: %s" : stdgo.GoString), stdgo.Go.toInterface(_location), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(stdgo._internal.text.template.Template__doublePercent._doublePercent(_context?.__copy__())), stdgo.Go.toInterface(_format))?.__copy__();
        };
        throw stdgo.Go.toInterface(stdgo.Go.asInterface(({ name : _s._tmpl.name()?.__copy__(), err : stdgo._internal.fmt.Fmt_errorf.errorf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)) } : stdgo._internal.text.template.Template_ExecError.ExecError)));
    }
    @:keep
    static public function _at( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _node:stdgo._internal.text.template.parse.Parse_Node.Node):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._node = _node;
    }
    @:keep
    static public function _varValue( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _name:stdgo.GoString):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        {
            var _i = (_s._mark() - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                if (_s._vars[(_i : stdgo.GoInt)]._name == (_name)) {
                    return _s._vars[(_i : stdgo.GoInt)]._value?.__copy__();
                };
            });
        };
        _s._errorf(("undefined variable: %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
        return stdgo._internal.text.template.Template__zero._zero?.__copy__();
    }
    @:keep
    static public function _setTopVar( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _n:stdgo.GoInt, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._vars[((_s._vars.length) - _n : stdgo.GoInt)]._value = _value?.__copy__();
    }
    @:keep
    static public function _setVar( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _name:stdgo.GoString, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        {
            var _i = (_s._mark() - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                if (_s._vars[(_i : stdgo.GoInt)]._name == (_name)) {
                    _s._vars[(_i : stdgo.GoInt)]._value = _value?.__copy__();
                    return;
                };
            });
        };
        _s._errorf(("undefined variable: %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
    }
    @:keep
    static public function _pop( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _mark:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._vars = (_s._vars.__slice__((0 : stdgo.GoInt), _mark) : stdgo.Slice<stdgo._internal.text.template.Template_T_variable.T_variable>);
    }
    @:keep
    static public function _mark( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        return (_s._vars.length);
    }
    @:keep
    static public function _push( _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>, _name:stdgo.GoString, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state> = _s;
        _s._vars = (_s._vars.__append__((new stdgo._internal.text.template.Template_T_variable.T_variable(_name?.__copy__(), _value?.__copy__()) : stdgo._internal.text.template.Template_T_variable.T_variable)));
    }
}
