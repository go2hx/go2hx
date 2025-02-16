package stdgo._internal.encoding.xml;
@:interface typedef Unmarshaler = stdgo.StructType & {
    @:interfacetypeffun
    function unmarshalXML(_d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _start:stdgo._internal.encoding.xml.Xml_startelement.StartElement):stdgo.Error;
};
