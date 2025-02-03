package stdgo.encoding.xml;
private function set_hTMLAutoClose(v:Array<String>):Array<String> {
        stdgo._internal.encoding.xml.Xml_hTMLAutoClose.hTMLAutoClose = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
