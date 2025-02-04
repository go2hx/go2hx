package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_t_state_static_extension.T_state_static_extension) class T_state {
    public var _tmpl : stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
    public var _wr : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _node : stdgo._internal.text.template.parse.Parse_node.Node = (null : stdgo._internal.text.template.parse.Parse_node.Node);
    public var _vars : stdgo.Slice<stdgo._internal.text.template.Template_t_variable.T_variable> = (null : stdgo.Slice<stdgo._internal.text.template.Template_t_variable.T_variable>);
    public var _depth : stdgo.GoInt = 0;
    public function new(?_tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, ?_wr:stdgo._internal.io.Io_writer.Writer, ?_node:stdgo._internal.text.template.parse.Parse_node.Node, ?_vars:stdgo.Slice<stdgo._internal.text.template.Template_t_variable.T_variable>, ?_depth:stdgo.GoInt) {
        if (_tmpl != null) this._tmpl = _tmpl;
        if (_wr != null) this._wr = _wr;
        if (_node != null) this._node = _node;
        if (_vars != null) this._vars = _vars;
        if (_depth != null) this._depth = _depth;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_state(_tmpl, _wr, _node, _vars, _depth);
    }
}
