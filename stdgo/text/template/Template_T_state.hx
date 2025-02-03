package stdgo.text.template;
@:structInit @:using(stdgo.text.template.Template.T_state_static_extension) abstract T_state(stdgo._internal.text.template.Template_T_state.T_state) from stdgo._internal.text.template.Template_T_state.T_state to stdgo._internal.text.template.Template_T_state.T_state {
    public var _tmpl(get, set) : Template_;
    function get__tmpl():Template_ return this._tmpl;
    function set__tmpl(v:Template_):Template_ {
        this._tmpl = (v : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        return v;
    }
    public var _wr(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__wr():stdgo._internal.io.Io_Writer.Writer return this._wr;
    function set__wr(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._wr = v;
        return v;
    }
    public var _node(get, set) : Node;
    function get__node():Node return this._node;
    function set__node(v:Node):Node {
        this._node = v;
        return v;
    }
    public var _vars(get, set) : Array<T_variable>;
    function get__vars():Array<T_variable> return [for (i in this._vars) i];
    function set__vars(v:Array<T_variable>):Array<T_variable> {
        this._vars = ([for (i in v) i] : stdgo.Slice<stdgo._internal.text.template.Template_T_variable.T_variable>);
        return v;
    }
    public var _depth(get, set) : StdTypes.Int;
    function get__depth():StdTypes.Int return this._depth;
    function set__depth(v:StdTypes.Int):StdTypes.Int {
        this._depth = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_tmpl:Template_, ?_wr:stdgo._internal.io.Io_Writer.Writer, ?_node:Node, ?_vars:Array<T_variable>, ?_depth:StdTypes.Int) this = new stdgo._internal.text.template.Template_T_state.T_state((_tmpl : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), _wr, _node, ([for (i in _vars) i] : stdgo.Slice<stdgo._internal.text.template.Template_T_variable.T_variable>), (_depth : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
