package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.Directive_asInterface) class Directive_static_extension {
    @:keep
    @:tdfield
    static public function copy( _d:stdgo._internal.encoding.xml.Xml_directive.Directive):stdgo._internal.encoding.xml.Xml_directive.Directive {
        @:recv var _d:stdgo._internal.encoding.xml.Xml_directive.Directive = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L110"
        return (stdgo._internal.bytes.Bytes_clone.clone(_d) : stdgo._internal.encoding.xml.Xml_directive.Directive);
    }
}
