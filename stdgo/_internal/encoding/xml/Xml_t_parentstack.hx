package stdgo._internal.encoding.xml;
@:structInit @:using(stdgo._internal.encoding.xml.Xml_t_parentstack_static_extension.T_parentStack_static_extension) class T_parentStack {
    public var _p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>);
    public var _stack : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, ?_stack:stdgo.Slice<stdgo.GoString>) {
        if (_p != null) this._p = _p;
        if (_stack != null) this._stack = _stack;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parentStack(_p, _stack);
    }
}
