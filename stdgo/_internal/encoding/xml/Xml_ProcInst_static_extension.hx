package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.ProcInst_asInterface) class ProcInst_static_extension {
    @:keep
    static public function copy( _p:stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst):stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst {
        @:recv var _p:stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst = _p?.__copy__();
        _p.inst = stdgo._internal.bytes.Bytes_clone.clone(_p.inst);
        return _p?.__copy__();
    }
}
