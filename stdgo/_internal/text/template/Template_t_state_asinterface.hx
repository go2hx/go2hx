package stdgo._internal.text.template;
class T_state_asInterface {
    @:keep
    @:tdfield
    public dynamic function _printValue(_n:stdgo._internal.text.template.parse.Parse_node.Node, _v:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._printValue(_n, _v);
    @:keep
    @:tdfield
    public dynamic function _evalEmptyInterface(_dot:stdgo._internal.reflect.Reflect_value.Value, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalEmptyInterface(_dot, _n);
    @:keep
    @:tdfield
    public dynamic function _evalComplex(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalComplex(_typ, _n);
    @:keep
    @:tdfield
    public dynamic function _evalFloat(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalFloat(_typ, _n);
    @:keep
    @:tdfield
    public dynamic function _evalUnsignedInteger(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalUnsignedInteger(_typ, _n);
    @:keep
    @:tdfield
    public dynamic function _evalInteger(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalInteger(_typ, _n);
    @:keep
    @:tdfield
    public dynamic function _evalString(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalString(_typ, _n);
    @:keep
    @:tdfield
    public dynamic function _evalBool(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalBool(_typ, _n);
    @:keep
    @:tdfield
    public dynamic function _evalArg(_dot:stdgo._internal.reflect.Reflect_value.Value, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalArg(_dot, _typ, _n);
    @:keep
    @:tdfield
    public dynamic function _validateType(_value:stdgo._internal.reflect.Reflect_value.Value, _typ:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._validateType(_value, _typ);
    @:keep
    @:tdfield
    public dynamic function _evalCall(_dot:stdgo._internal.reflect.Reflect_value.Value, _fun:stdgo._internal.reflect.Reflect_value.Value, _isBuiltin:Bool, _node:stdgo._internal.text.template.parse.Parse_node.Node, _name:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalCall(_dot, _fun, _isBuiltin, _node, _name, _args, _final);
    @:keep
    @:tdfield
    public dynamic function _evalField(_dot:stdgo._internal.reflect.Reflect_value.Value, _fieldName:stdgo.GoString, _node:stdgo._internal.text.template.parse.Parse_node.Node, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value, _receiver:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalField(_dot, _fieldName, _node, _args, _final, _receiver);
    @:keep
    @:tdfield
    public dynamic function _evalFunction(_dot:stdgo._internal.reflect.Reflect_value.Value, _node:stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>, _cmd:stdgo._internal.text.template.parse.Parse_node.Node, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalFunction(_dot, _node, _cmd, _args, _final);
    @:keep
    @:tdfield
    public dynamic function _evalFieldChain(_dot:stdgo._internal.reflect.Reflect_value.Value, _receiver:stdgo._internal.reflect.Reflect_value.Value, _node:stdgo._internal.text.template.parse.Parse_node.Node, _ident:stdgo.Slice<stdgo.GoString>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalFieldChain(_dot, _receiver, _node, _ident, _args, _final);
    @:keep
    @:tdfield
    public dynamic function _evalVariableNode(_dot:stdgo._internal.reflect.Reflect_value.Value, _variable:stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalVariableNode(_dot, _variable, _args, _final);
    @:keep
    @:tdfield
    public dynamic function _evalChainNode(_dot:stdgo._internal.reflect.Reflect_value.Value, _chain:stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalChainNode(_dot, _chain, _args, _final);
    @:keep
    @:tdfield
    public dynamic function _evalFieldNode(_dot:stdgo._internal.reflect.Reflect_value.Value, _field:stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>, _args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalFieldNode(_dot, _field, _args, _final);
    @:keep
    @:tdfield
    public dynamic function _idealConstant(_constant:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._idealConstant(_constant);
    @:keep
    @:tdfield
    public dynamic function _evalCommand(_dot:stdgo._internal.reflect.Reflect_value.Value, _cmd:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>, _final:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalCommand(_dot, _cmd, _final);
    @:keep
    @:tdfield
    public dynamic function _notAFunction(_args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>, _final:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._notAFunction(_args, _final);
    @:keep
    @:tdfield
    public dynamic function _evalPipeline(_dot:stdgo._internal.reflect.Reflect_value.Value, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._evalPipeline(_dot, _pipe);
    @:keep
    @:tdfield
    public dynamic function _walkTemplate(_dot:stdgo._internal.reflect.Reflect_value.Value, _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>):Void @:_0 __self__.value._walkTemplate(_dot, _t);
    @:keep
    @:tdfield
    public dynamic function _walkRange(_dot:stdgo._internal.reflect.Reflect_value.Value, _r:stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>):Void @:_0 __self__.value._walkRange(_dot, _r);
    @:keep
    @:tdfield
    public dynamic function _walkIfOrWith(_typ:stdgo._internal.text.template.parse.Parse_nodetype.NodeType, _dot:stdgo._internal.reflect.Reflect_value.Value, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):Void @:_0 __self__.value._walkIfOrWith(_typ, _dot, _pipe, _list, _elseList);
    @:keep
    @:tdfield
    public dynamic function _walk(_dot:stdgo._internal.reflect.Reflect_value.Value, _node:stdgo._internal.text.template.parse.Parse_node.Node):Void @:_0 __self__.value._walk(_dot, _node);
    @:keep
    @:tdfield
    public dynamic function _writeError(_err:stdgo.Error):Void @:_0 __self__.value._writeError(_err);
    @:keep
    @:tdfield
    public dynamic function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._errorf(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _at(_node:stdgo._internal.text.template.parse.Parse_node.Node):Void @:_0 __self__.value._at(_node);
    @:keep
    @:tdfield
    public dynamic function _varValue(_name:stdgo.GoString):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value._varValue(_name);
    @:keep
    @:tdfield
    public dynamic function _setTopVar(_n:stdgo.GoInt, _value:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._setTopVar(_n, _value);
    @:keep
    @:tdfield
    public dynamic function _setVar(_name:stdgo.GoString, _value:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._setVar(_name, _value);
    @:keep
    @:tdfield
    public dynamic function _pop(_mark:stdgo.GoInt):Void @:_0 __self__.value._pop(_mark);
    @:keep
    @:tdfield
    public dynamic function _mark():stdgo.GoInt return @:_0 __self__.value._mark();
    @:keep
    @:tdfield
    public dynamic function _push(_name:stdgo.GoString, _value:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._push(_name, _value);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.text.template.Template_t_statepointer.T_statePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
