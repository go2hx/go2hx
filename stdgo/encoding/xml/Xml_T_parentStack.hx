package stdgo.encoding.xml;
@:structInit @:using(stdgo.encoding.xml.Xml.T_parentStack_static_extension) abstract T_parentStack(stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack) from stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack to stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack {
    public var _p(get, set) : T_printer;
    function get__p():T_printer return this._p;
    function set__p(v:T_printer):T_printer {
        this._p = (v : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        return v;
    }
    public var _stack(get, set) : Array<String>;
    function get__stack():Array<String> return [for (i in this._stack) i];
    function set__stack(v:Array<String>):Array<String> {
        this._stack = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_p:T_printer, ?_stack:Array<String>) this = new stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack((_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>), ([for (i in _stack) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
