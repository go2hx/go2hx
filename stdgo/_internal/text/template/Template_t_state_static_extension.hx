package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.T_state_asInterface) class T_state_static_extension {
    @:keep
    @:tdfield
    static public function _printValue( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _n:stdgo._internal.text.template.parse.Parse_node.Node, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1035"
        _s._at(_n);
        var __tmp__ = stdgo._internal.text.template.Template__printablevalue._printableValue(_v?.__copy__()), _iface:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1037"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1038"
            _s._errorf(("can\'t print %s of type %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_v.type()));
        };
        var __tmp__ = stdgo._internal.fmt.Fmt_fprint.fprint((@:checkr _s ?? throw "null pointer dereference")._wr, _iface), __24:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1041"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1042"
            _s._writeError(_err);
        };
    }
    @:keep
    @:tdfield
    static public function _evalEmptyInterface( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L980"
        _s._at(_n);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L981"
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L983"
                return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((@:checkr _n ?? throw "null pointer dereference").__True))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L985"
                return _dot?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L987"
                return _s._evalFieldNode(_dot?.__copy__(), _n, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>), stdgo._internal.text.template.Template__missingval._missingVal?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L989"
                return _s._evalFunction(_dot?.__copy__(), _n, stdgo.Go.asInterface(_n), (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>), stdgo._internal.text.template.Template__missingval._missingVal?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L992"
                _s._errorf(("evalEmptyInterface: nil (can\'t happen)" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L994"
                return _s._idealConstant(_n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L996"
                return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((@:checkr _n ?? throw "null pointer dereference").text))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L998"
                return _s._evalVariableNode(_dot?.__copy__(), _n, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>), stdgo._internal.text.template.Template__missingval._missingVal?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1000"
                return _s._evalPipeline(_dot?.__copy__(), _n)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1002"
        _s._errorf(("can\'t handle assignment of %s to empty interface argument" : stdgo.GoString), stdgo.Go.toInterface(_n));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1003"
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _evalComplex( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L970"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && (@:checkr _n ?? throw "null pointer dereference").isComplex : Bool)) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L972"
                _value.setComplex((@:checkr _n ?? throw "null pointer dereference").complex128);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L973"
                return _value?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L975"
        _s._errorf(("expected complex; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L976"
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _evalFloat( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L959"
        _s._at(_n);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L960"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && (@:checkr _n ?? throw "null pointer dereference").isFloat : Bool)) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L962"
                _value.setFloat((@:checkr _n ?? throw "null pointer dereference").float64);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L963"
                return _value?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L965"
        _s._errorf(("expected float; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L966"
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _evalUnsignedInteger( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L948"
        _s._at(_n);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L949"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && (@:checkr _n ?? throw "null pointer dereference").isUint : Bool)) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L951"
                _value.setUint((@:checkr _n ?? throw "null pointer dereference").uint64);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L952"
                return _value?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L954"
        _s._errorf(("expected unsigned integer; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L955"
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _evalInteger( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L937"
        _s._at(_n);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L938"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && (@:checkr _n ?? throw "null pointer dereference").isInt : Bool)) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L940"
                _value.setInt((@:checkr _n ?? throw "null pointer dereference").int64);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L941"
                return _value?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L943"
        _s._errorf(("expected integer; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L944"
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _evalString( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L926"
        _s._at(_n);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L927"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L929"
                _value.setString((@:checkr _n ?? throw "null pointer dereference").text?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L930"
                return _value?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L932"
        _s._errorf(("expected string; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L933"
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _evalBool( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L915"
        _s._at(_n);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L916"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _value = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L918"
                _value.setBool((@:checkr _n ?? throw "null pointer dereference").__True);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L919"
                return _value?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L921"
        _s._errorf(("expected bool; found %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L922"
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _evalArg( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L868"
        _s._at(_n);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L869"
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L871"
                return _s._validateType(_dot?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L873"
                if (stdgo._internal.text.template.Template__canbenil._canBeNil(_typ)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L874"
                    return stdgo._internal.reflect.Reflect_zero.zero(_typ)?.__copy__();
                };
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L876"
                _s._errorf(("cannot assign nil to %s" : stdgo.GoString), stdgo.Go.toInterface(_typ));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L878"
                return _s._validateType(_s._evalFieldNode(_dot?.__copy__(), _arg, (new stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>(1, 1, ...[_n]) : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>), stdgo._internal.text.template.Template__missingval._missingVal?.__copy__())?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L880"
                return _s._validateType(_s._evalVariableNode(_dot?.__copy__(), _arg, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>), stdgo._internal.text.template.Template__missingval._missingVal?.__copy__())?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L882"
                return _s._validateType(_s._evalPipeline(_dot?.__copy__(), _arg)?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L884"
                return _s._validateType(_s._evalFunction(_dot?.__copy__(), _arg, stdgo.Go.asInterface(_arg), (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>), stdgo._internal.text.template.Template__missingval._missingVal?.__copy__())?.__copy__(), _typ)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>))) {
                var _arg:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L886"
                return _s._validateType(_s._evalChainNode(_dot?.__copy__(), _arg, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>), stdgo._internal.text.template.Template__missingval._missingVal?.__copy__())?.__copy__(), _typ)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L888"
        {
            final __value__ = _typ.kind();
            if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L890"
                return _s._evalBool(_typ, _n)?.__copy__();
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L892"
                return _s._evalComplex(_typ, _n)?.__copy__();
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L894"
                return _s._evalFloat(_typ, _n)?.__copy__();
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L896"
                return _s._evalInteger(_typ, _n)?.__copy__();
            } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L898"
                if (_typ.numMethod() == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L899"
                    return _s._evalEmptyInterface(_dot?.__copy__(), _n)?.__copy__();
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L902"
                if ((_typ.string() : String) == (stdgo._internal.text.template.Template__reflectvaluetype._reflectValueType.string() : String)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L903"
                    return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_s._evalEmptyInterface(_dot?.__copy__(), _n))))?.__copy__();
                };
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L906"
                return _s._evalString(_typ, _n)?.__copy__();
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L908"
                return _s._evalUnsignedInteger(_typ, _n)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L910"
        _s._errorf(("can\'t handle %s for arg of type %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_typ));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L911"
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _validateType( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _value:stdgo._internal.reflect.Reflect_value.Value, _typ:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L826"
        if (!_value.isValid()) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L827"
            if ((_typ.string() : String) == (null.string() : String)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L829"
                return stdgo._internal.reflect.Reflect_valueof.valueOf((null : stdgo.AnyInterface))?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L831"
            if (stdgo._internal.text.template.Template__canbenil._canBeNil(_typ)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L833"
                return stdgo._internal.reflect.Reflect_zero.zero(_typ)?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L835"
            _s._errorf(("invalid value; expected %s" : stdgo.GoString), stdgo.Go.toInterface(_typ));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L837"
        if ((((_typ.string() : String) == (stdgo._internal.text.template.Template__reflectvaluetype._reflectValueType.string() : String)) && !((_value.type().string() : String) == (_typ.string() : String)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L838"
            return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_value)))?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L840"
        if ((!((_typ.string() : String) == (null.string() : String)) && !_value.type().assignableTo(_typ) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L841"
            if (((_value.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_value.isNil() : Bool)) {
                _value = _value.elem()?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L843"
                if (_value.type().assignableTo(_typ)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L844"
                    return _value?.__copy__();
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L852"
            if (((_value.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _value.type().elem().assignableTo(_typ) : Bool)) {
                _value = _value.elem()?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L855"
                if (!_value.isValid()) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L856"
                    _s._errorf(("dereference of nil pointer of type %s" : stdgo.GoString), stdgo.Go.toInterface(_typ));
                };
            } else if ((stdgo._internal.reflect.Reflect_pointerto.pointerTo(_value.type()).assignableTo(_typ) && _value.canAddr() : Bool)) {
                _value = _value.addr()?.__copy__();
            } else {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L861"
                _s._errorf(("wrong type for value; expected %s; got %s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_value.type()));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L864"
        return _value?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _evalCall( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _fun:stdgo._internal.reflect.Reflect_value.Value, _isBuiltin:Bool, _node:stdgo._internal.text.template.parse.Parse_node.Node, _name:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L720"
        if (_args != null) {
            _args = (_args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>);
        };
        var _typ = (_fun.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        var _numIn = (_args.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L725"
        if (!stdgo._internal.text.template.Template__ismissing._isMissing(_final?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L726"
            _numIn++;
        };
        var _numFixed = (_args.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L729"
        if (_typ.isVariadic()) {
            _numFixed = (_typ.numIn() - (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L731"
            if ((_numIn < _numFixed : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L732"
                _s._errorf(("wrong number of args for %s: want at least %d got %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface((_typ.numIn() - (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface((_args.length)));
            };
        } else if (_numIn != (_typ.numIn())) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L735"
            _s._errorf(("wrong number of args for %s: want %d got %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_typ.numIn()), stdgo.Go.toInterface(_numIn));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L737"
        if (!stdgo._internal.text.template.Template__goodfunc._goodFunc(_typ)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L739"
            _s._errorf(("can\'t call method/function %q with %d results" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_typ.numOut()));
        };
        var _unwrap = (function(_v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L743"
            if ((_v.type().string() : String) == (stdgo._internal.text.template.Template__reflectvaluetype._reflectValueType.string() : String)) {
                _v = (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.reflect.Reflect_value.Value)) : stdgo._internal.reflect.Reflect_value.Value)?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L746"
            return _v?.__copy__();
        } : stdgo._internal.reflect.Reflect_value.Value -> stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L750"
        if ((_isBuiltin && (((_name == ("and" : stdgo.GoString)) || (_name == ("or" : stdgo.GoString)) : Bool)) : Bool)) {
            var _argType = (_typ.in_((0 : stdgo.GoInt)) : stdgo._internal.reflect.Reflect_type_.Type_);
            var _v:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L753"
            for (__8 => _arg in _args) {
                _v = (stdgo.Go.typeAssert((_s._evalArg(_dot?.__copy__(), _argType, _arg).interface_() : stdgo._internal.reflect.Reflect_value.Value)) : stdgo._internal.reflect.Reflect_value.Value)?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L755"
                if (stdgo._internal.text.template.Template__truth._truth(_v?.__copy__()) == ((_name == ("or" : stdgo.GoString)))) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L758"
                    return _v?.__copy__();
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L761"
            if (stdgo.Go.toInterface(_final) != stdgo.Go.toInterface(stdgo._internal.text.template.Template__missingval._missingVal)) {
                _v = _unwrap(_s._validateType(_final?.__copy__(), _argType)?.__copy__())?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L770"
            return _v?.__copy__();
        };
        var _argv = (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>((_numIn : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_numIn : stdgo.GoInt).toBasic() > 0 ? (_numIn : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L777"
        while (((_i < _numFixed : Bool) && (_i < (_args.length) : Bool) : Bool)) {
            _argv[(_i : stdgo.GoInt)] = _s._evalArg(_dot.__copy__(), _typ.in_(_i), _args[(_i : stdgo.GoInt)]).__copy__();
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L781"
        if (_typ.isVariadic()) {
            var _argType = (_typ.in_((_typ.numIn() - (1 : stdgo.GoInt) : stdgo.GoInt)).elem() : stdgo._internal.reflect.Reflect_type_.Type_);
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L783"
            while ((_i < (_args.length) : Bool)) {
                _argv[(_i : stdgo.GoInt)] = _s._evalArg(_dot.__copy__(), _argType, _args[(_i : stdgo.GoInt)]).__copy__();
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L788"
        if (!stdgo._internal.text.template.Template__ismissing._isMissing(_final?.__copy__())) {
            var _t = (_typ.in_((_typ.numIn() - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.reflect.Reflect_type_.Type_);
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L790"
            if (_typ.isVariadic()) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L791"
                if (((_numIn - (1 : stdgo.GoInt) : stdgo.GoInt) < _numFixed : Bool)) {
                    _t = _typ.in_((_numIn - (1 : stdgo.GoInt) : stdgo.GoInt));
                } else {
                    _t = _t.elem();
                };
            };
            _argv[(_i : stdgo.GoInt)] = _s._validateType(_final?.__copy__(), _t)?.__copy__();
        };
        var __tmp__ = stdgo._internal.text.template.Template__safecall._safeCall(_fun?.__copy__(), _argv), _v:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L806"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L807"
            _s._at(_node);
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L808"
            _s._errorf(("error calling %s: %w" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L810"
        return _unwrap(_v?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _evalField( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _fieldName:stdgo.GoString, _node:stdgo._internal.text.template.parse.Parse_node.Node, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value, _receiver:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L630"
        if (!_receiver.isValid()) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L631"
            if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._tmpl ?? throw "null pointer dereference")._common._option._missingKey == ((2 : stdgo._internal.text.template.Template_t_missingkeyaction.T_missingKeyAction))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L632"
                _s._errorf(("nil data; no entry for key %q" : stdgo.GoString), stdgo.Go.toInterface(_fieldName));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L634"
            return stdgo._internal.text.template.Template__zero._zero?.__copy__();
        };
        var _typ = (_receiver.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        var __tmp__ = stdgo._internal.text.template.Template__indirect._indirect(_receiver?.__copy__()), _receiver:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _isNil:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L638"
        if (((_receiver.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _isNil : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L641"
            _s._errorf(("nil pointer evaluating %s.%s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_fieldName));
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L642"
            return stdgo._internal.text.template.Template__zero._zero?.__copy__();
        };
        var _ptr = (_receiver?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L648"
        if (((_ptr.kind() != ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _ptr.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool) && _ptr.canAddr() : Bool)) {
            _ptr = _ptr.addr()?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L651"
        {
            var _method = (_ptr.methodByName(_fieldName?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            if (_method.isValid()) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L652"
                return _s._evalCall(_dot?.__copy__(), _method?.__copy__(), false, _node, _fieldName?.__copy__(), _args, _final?.__copy__())?.__copy__();
            };
        };
        var _hasArgs = (((_args.length) > (1 : stdgo.GoInt) : Bool) || !stdgo._internal.text.template.Template__ismissing._isMissing(_final?.__copy__()) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L656"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _receiver.kind();
                    if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        var __tmp__ = _receiver.type().fieldByName(_fieldName?.__copy__()), _tField:stdgo._internal.reflect.Reflect_structfield.StructField = __tmp__._0, _ok:Bool = __tmp__._1;
                        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L659"
                        if (_ok) {
                            var __tmp__ = _receiver.fieldByIndexErr(_tField.index), _field:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L661"
                            if (!_tField.isExported()) {
                                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L662"
                                _s._errorf(("%s is an unexported field of struct type %s" : stdgo.GoString), stdgo.Go.toInterface(_fieldName), stdgo.Go.toInterface(_typ));
                            };
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L664"
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L665"
                                _s._errorf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L668"
                            if (_hasArgs) {
                                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L669"
                                _s._errorf(("%s has arguments but cannot be invoked as function" : stdgo.GoString), stdgo.Go.toInterface(_fieldName));
                            };
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L671"
                            return _field?.__copy__();
                        };
                        break;
                    } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        var _nameVal = (stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_fieldName))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L676"
                        if (_nameVal.type().assignableTo(_receiver.type().key())) {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L677"
                            if (_hasArgs) {
                                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L678"
                                _s._errorf(("%s is not a method but has arguments" : stdgo.GoString), stdgo.Go.toInterface(_fieldName));
                            };
                            var _result = (_receiver.mapIndex(_nameVal?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L681"
                            if (!_result.isValid()) {
                                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L682"
                                {
                                    final __value__ = (@:checkr (@:checkr _s ?? throw "null pointer dereference")._tmpl ?? throw "null pointer dereference")._common._option._missingKey;
                                    if (__value__ == ((0 : stdgo._internal.text.template.Template_t_missingkeyaction.T_missingKeyAction))) {} else if (__value__ == ((1 : stdgo._internal.text.template.Template_t_missingkeyaction.T_missingKeyAction))) {
                                        _result = stdgo._internal.reflect.Reflect_zero.zero(_receiver.type().elem())?.__copy__();
                                    } else if (__value__ == ((2 : stdgo._internal.text.template.Template_t_missingkeyaction.T_missingKeyAction))) {
                                        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L688"
                                        _s._errorf(("map has no entry for key %q" : stdgo.GoString), stdgo.Go.toInterface(_fieldName));
                                    };
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L691"
                            return _result?.__copy__();
                        };
                        break;
                    } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        var _etyp = (_receiver.type().elem() : stdgo._internal.reflect.Reflect_type_.Type_);
                        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L695"
                        if (_etyp.kind() == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L696"
                            {
                                var __tmp__ = _etyp.fieldByName(_fieldName?.__copy__()), __8:stdgo._internal.reflect.Reflect_structfield.StructField = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L699"
                                    break;
                                };
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L702"
                        if (_isNil) {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L703"
                            _s._errorf(("nil pointer evaluating %s.%s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_fieldName));
                        };
                        break;
                    };
                };
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L706"
        _s._errorf(("can\'t evaluate field %s in type %s" : stdgo.GoString), stdgo.Go.toInterface(_fieldName), stdgo.Go.toInterface(_typ));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L707"
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _evalFunction( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>, _cmd:stdgo._internal.text.template.parse.Parse_node.Node, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L617"
        _s._at(stdgo.Go.asInterface(_node));
        var _name = ((@:checkr _node ?? throw "null pointer dereference").ident?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.text.template.Template__findfunction._findFunction(_name?.__copy__(), (@:checkr _s ?? throw "null pointer dereference")._tmpl), _function:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _isBuiltin:Bool = __tmp__._1, _ok:Bool = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L620"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L621"
            _s._errorf(("%q is not a defined function" : stdgo.GoString), stdgo.Go.toInterface(_name));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L623"
        return _s._evalCall(_dot?.__copy__(), _function?.__copy__(), _isBuiltin, _cmd, _name?.__copy__(), _args, _final?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _evalFieldChain( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _receiver:stdgo._internal.reflect.Reflect_value.Value, _node:stdgo._internal.text.template.parse.Parse_node.Node, _ident:stdgo.Slice<stdgo.GoString>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        var _n = (_ident.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L609"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_n - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                _receiver = _s._evalField(_dot.__copy__(), _ident[(_i : stdgo.GoInt)].__copy__(), _node, (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>), stdgo._internal.text.template.Template__missingval._missingVal.__copy__(), _receiver.__copy__()).__copy__();
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L613"
        return _s._evalField(_dot?.__copy__(), _ident[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), _node, _args, _final?.__copy__(), _receiver?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _evalVariableNode( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _variable:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L595"
        _s._at(stdgo.Go.asInterface(_variable));
        var _value = (_s._varValue((@:checkr _variable ?? throw "null pointer dereference").ident[(0 : stdgo.GoInt)]?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L597"
        if (((@:checkr _variable ?? throw "null pointer dereference").ident.length) == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L598"
            _s._notAFunction(_args, _final?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L599"
            return _value?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L601"
        return _s._evalFieldChain(_dot?.__copy__(), _value?.__copy__(), stdgo.Go.asInterface(_variable), ((@:checkr _variable ?? throw "null pointer dereference").ident.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>), _args, _final?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _evalChainNode( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _chain:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L581"
        _s._at(stdgo.Go.asInterface(_chain));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L582"
        if (((@:checkr _chain ?? throw "null pointer dereference").field.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L583"
            _s._errorf(("internal error: no fields in evalChainNode" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L585"
        if ((@:checkr _chain ?? throw "null pointer dereference").node.type() == ((12 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L586"
            _s._errorf(("indirection through explicit nil in %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_chain)));
        };
        var _pipe = (_s._evalArg(_dot?.__copy__(), (null : stdgo._internal.reflect.Reflect_type_.Type_), (@:checkr _chain ?? throw "null pointer dereference").node)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L590"
        return _s._evalFieldChain(_dot?.__copy__(), _pipe?.__copy__(), stdgo.Go.asInterface(_chain), (@:checkr _chain ?? throw "null pointer dereference").field, _args, _final?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _evalFieldNode( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _field:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L576"
        _s._at(stdgo.Go.asInterface(_field));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L577"
        return _s._evalFieldChain(_dot?.__copy__(), _dot?.__copy__(), stdgo.Go.asInterface(_field), (@:checkr _field ?? throw "null pointer dereference").ident, _args, _final?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _idealConstant( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _constant:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L544"
        _s._at(stdgo.Go.asInterface(_constant));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L545"
        if ((@:checkr _constant ?? throw "null pointer dereference").isComplex) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L547"
            return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((@:checkr _constant ?? throw "null pointer dereference").complex128))?.__copy__();
        } else if (((((@:checkr _constant ?? throw "null pointer dereference").isFloat && !stdgo._internal.text.template.Template__ishexint._isHexInt((@:checkr _constant ?? throw "null pointer dereference").text?.__copy__()) : Bool) && !stdgo._internal.text.template.Template__isruneint._isRuneInt((@:checkr _constant ?? throw "null pointer dereference").text?.__copy__()) : Bool) && stdgo._internal.strings.Strings_containsany.containsAny((@:checkr _constant ?? throw "null pointer dereference").text?.__copy__(), (".eEpP" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L552"
            return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((@:checkr _constant ?? throw "null pointer dereference").float64))?.__copy__();
        } else if ((@:checkr _constant ?? throw "null pointer dereference").isInt) {
            var _n = ((@:checkr _constant ?? throw "null pointer dereference").int64 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L556"
            if ((_n : stdgo.GoInt64) != ((@:checkr _constant ?? throw "null pointer dereference").int64)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L557"
                _s._errorf(("%s overflows int" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _constant ?? throw "null pointer dereference").text));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L559"
            return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_n))?.__copy__();
        } else if ((@:checkr _constant ?? throw "null pointer dereference").isUint) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L562"
            _s._errorf(("%s overflows int" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _constant ?? throw "null pointer dereference").text));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L564"
        return stdgo._internal.text.template.Template__zero._zero?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _evalCommand( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _cmd:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        var _firstWord = ((@:checkr _cmd ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)] : stdgo._internal.text.template.parse.Parse_node.Node);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L503"
        {
            final __type__ = _firstWord;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L505"
                return _s._evalFieldNode(_dot?.__copy__(), _n, (@:checkr _cmd ?? throw "null pointer dereference").args, _final?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L507"
                return _s._evalChainNode(_dot?.__copy__(), _n, (@:checkr _cmd ?? throw "null pointer dereference").args, _final?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L510"
                return _s._evalFunction(_dot?.__copy__(), _n, stdgo.Go.asInterface(_cmd), (@:checkr _cmd ?? throw "null pointer dereference").args, _final?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L513"
                _s._notAFunction((@:checkr _cmd ?? throw "null pointer dereference").args, _final?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L514"
                return _s._evalPipeline(_dot?.__copy__(), _n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L516"
                return _s._evalVariableNode(_dot?.__copy__(), _n, (@:checkr _cmd ?? throw "null pointer dereference").args, _final?.__copy__())?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L518"
        _s._at(_firstWord);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L519"
        _s._notAFunction((@:checkr _cmd ?? throw "null pointer dereference").args, _final?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L520"
        {
            final __type__ = _firstWord;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L522"
                return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((@:checkr _word ?? throw "null pointer dereference").__True))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L524"
                return _dot?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L526"
                _s._errorf(("nil is not a command" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L528"
                return _s._idealConstant(_word)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>))) {
                var _word:stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L530"
                return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((@:checkr _word ?? throw "null pointer dereference").text))?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L532"
        _s._errorf(("can\'t evaluate command %q" : stdgo.GoString), stdgo.Go.toInterface(_firstWord));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L533"
        throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _notAFunction( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L496"
        if ((((_args.length) > (1 : stdgo.GoInt) : Bool) || !stdgo._internal.text.template.Template__ismissing._isMissing(_final?.__copy__()) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L497"
            _s._errorf(("can\'t give argument to non-function %s" : stdgo.GoString), stdgo.Go.toInterface(_args[(0 : stdgo.GoInt)]));
        };
    }
    @:keep
    @:tdfield
    static public function _evalPipeline( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        var _value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L473"
        if (({
            final value = _pipe;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L474"
            return _value;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L476"
        _s._at(stdgo.Go.asInterface(_pipe));
        _value = stdgo._internal.text.template.Template__missingval._missingVal?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L478"
        for (__16 => _cmd in (@:checkr _pipe ?? throw "null pointer dereference").cmds) {
            _value = _s._evalCommand(_dot?.__copy__(), _cmd, _value?.__copy__())?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L481"
            if (((_value.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (_value.type().numMethod() == (0 : stdgo.GoInt)) : Bool)) {
                _value = stdgo._internal.reflect.Reflect_valueof.valueOf(_value.interface_())?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L485"
        for (__17 => _variable in (@:checkr _pipe ?? throw "null pointer dereference").decl) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L486"
            if ((@:checkr _pipe ?? throw "null pointer dereference").isAssign) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L487"
                _s._setVar((@:checkr _variable ?? throw "null pointer dereference").ident[(0 : stdgo.GoInt)]?.__copy__(), _value?.__copy__());
            } else {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L489"
                _s._push((@:checkr _variable ?? throw "null pointer dereference").ident[(0 : stdgo.GoInt)]?.__copy__(), _value?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L492"
        return _value = _value?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _walkTemplate( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L446"
        _s._at(stdgo.Go.asInterface(_t));
        var _tmpl = (@:checkr _s ?? throw "null pointer dereference")._tmpl.lookup((@:checkr _t ?? throw "null pointer dereference").name?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L448"
        if (({
            final value = _tmpl;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L449"
            _s._errorf(("template %q not defined" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference").name));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L451"
        if ((@:checkr _s ?? throw "null pointer dereference")._depth == (stdgo._internal.text.template.Template__maxexecdepth._maxExecDepth)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L452"
            _s._errorf(("exceeded maximum template depth (%v)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__maxexecdepth._maxExecDepth));
        };
        _dot = _s._evalPipeline(_dot?.__copy__(), (@:checkr _t ?? throw "null pointer dereference").pipe)?.__copy__();
        var _newState = ((_s : stdgo._internal.text.template.Template_t_state.T_state)?.__copy__() : stdgo._internal.text.template.Template_t_state.T_state);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L457"
        _newState._depth++;
        _newState._tmpl = _tmpl;
        _newState._vars = (new stdgo.Slice<stdgo._internal.text.template.Template_t_variable.T_variable>(1, 1, ...[(new stdgo._internal.text.template.Template_t_variable.T_variable(("$" : stdgo.GoString), _dot?.__copy__()) : stdgo._internal.text.template.Template_t_variable.T_variable)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.Template_t_variable.T_variable)])) : stdgo.Slice<stdgo._internal.text.template.Template_t_variable.T_variable>);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L461"
        _newState._walk(_dot?.__copy__(), stdgo.Go.asInterface((@:checkr _tmpl ?? throw "null pointer dereference").tree.root));
    }
    @:keep
    @:tdfield
    static public function _walkRange( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _dot:stdgo._internal.reflect.Reflect_value.Value, _r:stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L353"
            _s._at(stdgo.Go.asInterface(_r));
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L355"
                        {
                            var _r = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (((_r != null) && (_r != stdgo.Go.toInterface(stdgo._internal.text.template.Template__walkbreak._walkBreak)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L356"
                                throw stdgo.Go.toInterface(_r);
                            };
                        };
                    };
                    a();
                }) });
            };
            {
                var _a0 = _s._mark();
                final __f__ = _s._pop;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var __tmp__ = stdgo._internal.text.template.Template__indirect._indirect(_s._evalPipeline(_dot?.__copy__(), (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe)?.__copy__()), _val:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, __40:Bool = __tmp__._1;
            var _mark = (_s._mark() : stdgo.GoInt);
            var _oneIteration = (function(_index:stdgo._internal.reflect.Reflect_value.Value, _elem:stdgo._internal.reflect.Reflect_value.Value):Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L364"
                    if ((((@:checkr (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe ?? throw "null pointer dereference").decl.length) > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L365"
                        if ((@:checkr (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe ?? throw "null pointer dereference").isAssign) {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L368"
                            if ((((@:checkr (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe ?? throw "null pointer dereference").decl.length) > (1 : stdgo.GoInt) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L369"
                                _s._setVar((@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe ?? throw "null pointer dereference").decl[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").ident[(0 : stdgo.GoInt)]?.__copy__(), _index?.__copy__());
                            } else {
                                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L371"
                                _s._setVar((@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe ?? throw "null pointer dereference").decl[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").ident[(0 : stdgo.GoInt)]?.__copy__(), _elem?.__copy__());
                            };
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L376"
                            _s._setTopVar((1 : stdgo.GoInt), _elem?.__copy__());
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L379"
                    if ((((@:checkr (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe ?? throw "null pointer dereference").decl.length) > (1 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L380"
                        if ((@:checkr (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe ?? throw "null pointer dereference").isAssign) {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L381"
                            _s._setVar((@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference").branchNode.pipe ?? throw "null pointer dereference").decl[(1 : stdgo.GoInt)] ?? throw "null pointer dereference").ident[(0 : stdgo.GoInt)]?.__copy__(), _elem?.__copy__());
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L385"
                            _s._setTopVar((2 : stdgo.GoInt), _index?.__copy__());
                        };
                    };
                    {
                        var _a0 = _mark;
                        final __f__ = _s._pop;
                        __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                    };
                    {
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            var a = function():Void {
                                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L391"
                                {
                                    var _r = ({
                                        final r = stdgo.Go.recover_exception;
                                        stdgo.Go.recover_exception = null;
                                        r;
                                    } : stdgo.AnyInterface);
                                    if (((_r != null) && (_r != stdgo.Go.toInterface(stdgo._internal.text.template.Template__walkcontinue._walkContinue)) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L392"
                                        throw stdgo.Go.toInterface(_r);
                                    };
                                };
                            };
                            a();
                        }) });
                    };
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L395"
                    _s._walk(_elem?.__copy__(), stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference").branchNode.list));
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
                        if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L397"
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _val.kind();
                        if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L399"
                            if (_val.len() == ((0 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L400"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L402"
                            {
                                var _i = (0 : stdgo.GoInt);
                                while ((_i < _val.len() : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L403"
                                    _oneIteration(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_i)).__copy__(), _val.index(_i).__copy__());
                                    _i++;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L405"
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
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L407"
                            if (_val.len() == ((0 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L408"
                                break;
                            };
                            var _om = stdgo._internal.internal.fmtsort.Fmtsort_sort.sort(_val?.__copy__());
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L411"
                            for (_i => _key in (@:checkr _om ?? throw "null pointer dereference").key) {
                                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L412"
                                _oneIteration(_key?.__copy__(), (@:checkr _om ?? throw "null pointer dereference").value[(_i : stdgo.GoInt)]);
                            };
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L414"
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
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L416"
                            if (_val.isNil()) {
                                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L417"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L419"
                            if (_val.type().chanDir() == ((2 : stdgo._internal.reflect.Reflect_chandir.ChanDir))) {
                                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L420"
                                _s._errorf(("range over send-only channel %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_val)));
                                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L421"
                                break;
                            };
                            var _i = (0 : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L424"
                            while (true) {
                                var __tmp__ = _val.recv(), _elem:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L426"
                                if (!_ok) {
                                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L427"
                                    break;
                                };
//"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L429"
                                _oneIteration(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_i)).__copy__(), _elem.__copy__());
                                _i++;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L431"
                            if (_i == ((0 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L432"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L434"
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
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L436"
                            break;
                            break;
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L438"
                            _s._errorf(("range can\'t iterate over %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_val)));
                        };
                    };
                    break;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L440"
            if (({
                final value = (@:checkr _r ?? throw "null pointer dereference").branchNode.elseList;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L441"
                _s._walk(_dot?.__copy__(), stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference").branchNode.elseList));
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                var _a0 = _s._mark();
                final __f__ = _s._pop;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var _val = (_s._evalPipeline(_dot?.__copy__(), _pipe)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var __tmp__ = stdgo._internal.text.template.Template__istrue._isTrue(stdgo._internal.text.template.Template__indirectinterface._indirectInterface(_val?.__copy__())?.__copy__()), _truth:Bool = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L303"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L304"
                _s._errorf(("if/with can\'t use %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_val)));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L306"
            if (_truth) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L307"
                if (_typ == ((19 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L308"
                    _s._walk(_val?.__copy__(), stdgo.Go.asInterface(_list));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L310"
                    _s._walk(_dot?.__copy__(), stdgo.Go.asInterface(_list));
                };
            } else if (({
                final value = _elseList;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L313"
                _s._walk(_dot?.__copy__(), stdgo.Go.asInterface(_elseList));
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L262"
        _s._at(_node);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L263"
        {
            final __type__ = _node;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>) : __type__.__underlying__().value);
                var _val = (_s._evalPipeline(_dot?.__copy__(), (@:checkr _node ?? throw "null pointer dereference").pipe)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L268"
                if (((@:checkr (@:checkr _node ?? throw "null pointer dereference").pipe ?? throw "null pointer dereference").decl.length) == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L269"
                    _s._printValue(stdgo.Go.asInterface(_node), _val?.__copy__());
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L272"
                throw stdgo.Go.toInterface(stdgo._internal.text.template.Template__walkbreak._walkBreak);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>) : __type__.__underlying__().value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L275"
                throw stdgo.Go.toInterface(stdgo._internal.text.template.Template__walkcontinue._walkContinue);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L277"
                _s._walkIfOrWith((10 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), _dot?.__copy__(), (@:checkr _node ?? throw "null pointer dereference").branchNode.pipe, (@:checkr _node ?? throw "null pointer dereference").branchNode.list, (@:checkr _node ?? throw "null pointer dereference").branchNode.elseList);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L279"
                for (__16 => _node in (@:checkr _node ?? throw "null pointer dereference").nodes) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L280"
                    _s._walk(_dot?.__copy__(), _node);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L283"
                _s._walkRange(_dot?.__copy__(), _node);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L285"
                _s._walkTemplate(_dot?.__copy__(), _node);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L287"
                {
                    var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._wr.write((@:checkr _node ?? throw "null pointer dereference").text), __24:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L288"
                        _s._writeError(_err);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>))) {
                var _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L291"
                _s._walkIfOrWith((19 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), _dot?.__copy__(), (@:checkr _node ?? throw "null pointer dereference").branchNode.pipe, (@:checkr _node ?? throw "null pointer dereference").branchNode.list, (@:checkr _node ?? throw "null pointer dereference").branchNode.elseList);
            } else {
                var _node:stdgo._internal.text.template.parse.Parse_node.Node = __type__ == null ? (null : stdgo._internal.text.template.parse.Parse_node.Node) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L293"
                _s._errorf(("unknown node: %s" : stdgo.GoString), stdgo.Go.toInterface(_node));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _writeError( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _err:stdgo.Error):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L158"
        throw stdgo.Go.toInterface(stdgo.Go.asInterface(({ err : _err } : stdgo._internal.text.template.Template_t_writeerror.T_writeError)));
    }
    @:keep
    @:tdfield
    static public function _errorf( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        var _name = (stdgo._internal.text.template.Template__doublepercent._doublePercent((@:checkr _s ?? throw "null pointer dereference")._tmpl.name()?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L137"
        if ((@:checkr _s ?? throw "null pointer dereference")._node == null) {
            _format = stdgo._internal.fmt.Fmt_sprintf.sprintf(("template: %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_format))?.__copy__();
        } else {
            var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._tmpl.errorContext((@:checkr _s ?? throw "null pointer dereference")._node), _location:stdgo.GoString = __tmp__._0, _context:stdgo.GoString = __tmp__._1;
            _format = stdgo._internal.fmt.Fmt_sprintf.sprintf(("template: %s: executing %q at <%s>: %s" : stdgo.GoString), stdgo.Go.toInterface(_location), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(stdgo._internal.text.template.Template__doublepercent._doublePercent(_context?.__copy__())), stdgo.Go.toInterface(_format))?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L143"
        throw stdgo.Go.toInterface(stdgo.Go.asInterface(({ name : (@:checkr _s ?? throw "null pointer dereference")._tmpl.name()?.__copy__(), err : stdgo._internal.fmt.Fmt_errorf.errorf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)) } : stdgo._internal.text.template.Template_execerror.ExecError)));
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
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L82"
        {
            var _i = (_s._mark() - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L83"
                if ((@:checkr _s ?? throw "null pointer dereference")._vars[(_i : stdgo.GoInt)]._name == (_name)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L84"
                    return (@:checkr _s ?? throw "null pointer dereference")._vars[(_i : stdgo.GoInt)]._value.__copy__();
                };
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L87"
        _s._errorf(("undefined variable: %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L88"
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
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L66"
        {
            var _i = (_s._mark() - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L67"
                if ((@:checkr _s ?? throw "null pointer dereference")._vars[(_i : stdgo.GoInt)]._name == (_name)) {
                    (@:checkr _s ?? throw "null pointer dereference")._vars[(_i : stdgo.GoInt)]._value = _value.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L69"
                    return;
                };
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L72"
        _s._errorf(("undefined variable: %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
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
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L55"
        return ((@:checkr _s ?? throw "null pointer dereference")._vars.length);
    }
    @:keep
    @:tdfield
    static public function _push( _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>, _name:stdgo.GoString, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state> = _s;
        (@:checkr _s ?? throw "null pointer dereference")._vars = ((@:checkr _s ?? throw "null pointer dereference")._vars.__append__((new stdgo._internal.text.template.Template_t_variable.T_variable(_name?.__copy__(), _value?.__copy__()) : stdgo._internal.text.template.Template_t_variable.T_variable)) : stdgo.Slice<stdgo._internal.text.template.Template_t_variable.T_variable>);
    }
}
