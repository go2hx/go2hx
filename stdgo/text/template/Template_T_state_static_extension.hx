package stdgo.text.template;
class T_state_static_extension {
    static public function _printValue(_s:T_state, _n:Node, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._printValue(_s, _n, _v);
    }
    static public function _evalEmptyInterface(_s:T_state, _dot:stdgo._internal.reflect.Reflect_Value.Value, _n:Node):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalEmptyInterface(_s, _dot, _n);
    }
    static public function _evalComplex(_s:T_state, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _n:Node):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalComplex(_s, _typ, _n);
    }
    static public function _evalFloat(_s:T_state, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _n:Node):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalFloat(_s, _typ, _n);
    }
    static public function _evalUnsignedInteger(_s:T_state, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _n:Node):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalUnsignedInteger(_s, _typ, _n);
    }
    static public function _evalInteger(_s:T_state, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _n:Node):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalInteger(_s, _typ, _n);
    }
    static public function _evalString(_s:T_state, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _n:Node):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalString(_s, _typ, _n);
    }
    static public function _evalBool(_s:T_state, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _n:Node):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalBool(_s, _typ, _n);
    }
    static public function _evalArg(_s:T_state, _dot:stdgo._internal.reflect.Reflect_Value.Value, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _n:Node):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalArg(_s, _dot, _typ, _n);
    }
    static public function _validateType(_s:T_state, _value:stdgo._internal.reflect.Reflect_Value.Value, _typ:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._validateType(_s, _value, _typ);
    }
    static public function _evalCall(_s:T_state, _dot:stdgo._internal.reflect.Reflect_Value.Value, _fun:stdgo._internal.reflect.Reflect_Value.Value, _isBuiltin:Bool, _node:Node, _name:String, _args:Array<Node>, _final:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _name = (_name : stdgo.GoString);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalCall(_s, _dot, _fun, _isBuiltin, _node, _name, _args, _final);
    }
    static public function _evalField(_s:T_state, _dot:stdgo._internal.reflect.Reflect_Value.Value, _fieldName:String, _node:Node, _args:Array<Node>, _final:stdgo._internal.reflect.Reflect_Value.Value, _receiver:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _fieldName = (_fieldName : stdgo.GoString);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalField(_s, _dot, _fieldName, _node, _args, _final, _receiver);
    }
    static public function _evalFunction(_s:T_state, _dot:stdgo._internal.reflect.Reflect_Value.Value, _node:IdentifierNode, _cmd:Node, _args:Array<Node>, _final:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _node = (_node : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalFunction(_s, _dot, _node, _cmd, _args, _final);
    }
    static public function _evalFieldChain(_s:T_state, _dot:stdgo._internal.reflect.Reflect_Value.Value, _receiver:stdgo._internal.reflect.Reflect_Value.Value, _node:Node, _ident:Array<String>, _args:Array<Node>, _final:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _ident = ([for (i in _ident) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalFieldChain(_s, _dot, _receiver, _node, _ident, _args, _final);
    }
    static public function _evalVariableNode(_s:T_state, _dot:stdgo._internal.reflect.Reflect_Value.Value, _variable:VariableNode, _args:Array<Node>, _final:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _variable = (_variable : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalVariableNode(_s, _dot, _variable, _args, _final);
    }
    static public function _evalChainNode(_s:T_state, _dot:stdgo._internal.reflect.Reflect_Value.Value, _chain:ChainNode, _args:Array<Node>, _final:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _chain = (_chain : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalChainNode(_s, _dot, _chain, _args, _final);
    }
    static public function _evalFieldNode(_s:T_state, _dot:stdgo._internal.reflect.Reflect_Value.Value, _field:FieldNode, _args:Array<Node>, _final:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _field = (_field : stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalFieldNode(_s, _dot, _field, _args, _final);
    }
    static public function _idealConstant(_s:T_state, _constant:NumberNode):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _constant = (_constant : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._idealConstant(_s, _constant);
    }
    static public function _evalCommand(_s:T_state, _dot:stdgo._internal.reflect.Reflect_Value.Value, _cmd:CommandNode, _final:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _cmd = (_cmd : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalCommand(_s, _dot, _cmd, _final);
    }
    static public function _notAFunction(_s:T_state, _args:Array<Node>, _final:stdgo._internal.reflect.Reflect_Value.Value):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>);
        stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._notAFunction(_s, _args, _final);
    }
    static public function _evalPipeline(_s:T_state, _dot:stdgo._internal.reflect.Reflect_Value.Value, _pipe:PipeNode):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _pipe = (_pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._evalPipeline(_s, _dot, _pipe);
    }
    static public function _walkTemplate(_s:T_state, _dot:stdgo._internal.reflect.Reflect_Value.Value, _t:TemplateNode):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>);
        stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._walkTemplate(_s, _dot, _t);
    }
    static public function _walkRange(_s:T_state, _dot:stdgo._internal.reflect.Reflect_Value.Value, _r:RangeNode):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _r = (_r : stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>);
        stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._walkRange(_s, _dot, _r);
    }
    static public function _walkIfOrWith(_s:T_state, _typ:NodeType, _dot:stdgo._internal.reflect.Reflect_Value.Value, _pipe:PipeNode, _list:ListNode, _elseList:ListNode):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _pipe = (_pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        final _list = (_list : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        final _elseList = (_elseList : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._walkIfOrWith(_s, _typ, _dot, _pipe, _list, _elseList);
    }
    static public function _walk(_s:T_state, _dot:stdgo._internal.reflect.Reflect_Value.Value, _node:Node):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._walk(_s, _dot, _node);
    }
    static public function _writeError(_s:T_state, _err:stdgo.Error):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._writeError(_s, _err);
    }
    static public function _errorf(_s:T_state, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._errorf(_s, _format, ...[for (i in _args) i]);
    }
    static public function _at(_s:T_state, _node:Node):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._at(_s, _node);
    }
    static public function _varValue(_s:T_state, _name:String):stdgo._internal.reflect.Reflect_Value.Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._varValue(_s, _name);
    }
    static public function _setTopVar(_s:T_state, _n:StdTypes.Int, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._setTopVar(_s, _n, _value);
    }
    static public function _setVar(_s:T_state, _name:String, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._setVar(_s, _name, _value);
    }
    static public function _pop(_s:T_state, _mark:StdTypes.Int):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _mark = (_mark : stdgo.GoInt);
        stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._pop(_s, _mark);
    }
    static public function _mark(_s:T_state):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        return stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._mark(_s);
    }
    static public function _push(_s:T_state, _name:String, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension._push(_s, _name, _value);
    }
}
