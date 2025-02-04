package stdgo._internal.encoding.xml;
@:structInit @:using(stdgo._internal.encoding.xml.Xml_t_fieldinfo_static_extension.T_fieldInfo_static_extension) class T_fieldInfo {
    public var _idx : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _name : stdgo.GoString = "";
    public var _xmlns : stdgo.GoString = "";
    public var _flags : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags = ((0 : stdgo.GoInt) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
    public var _parents : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_idx:stdgo.Slice<stdgo.GoInt>, ?_name:stdgo.GoString, ?_xmlns:stdgo.GoString, ?_flags:stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags, ?_parents:stdgo.Slice<stdgo.GoString>) {
        if (_idx != null) this._idx = _idx;
        if (_name != null) this._name = _name;
        if (_xmlns != null) this._xmlns = _xmlns;
        if (_flags != null) this._flags = _flags;
        if (_parents != null) this._parents = _parents;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fieldInfo(_idx, _name, _xmlns, _flags, _parents);
    }
}
