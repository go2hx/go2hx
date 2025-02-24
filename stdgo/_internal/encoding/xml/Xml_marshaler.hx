package stdgo._internal.encoding.xml;
@:interface typedef Marshaler = stdgo.StructType & {
    @:interfacetypeffun
    function marshalXML(_e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder>, _start:stdgo._internal.encoding.xml.Xml_startelement.StartElement):stdgo.Error;
};
