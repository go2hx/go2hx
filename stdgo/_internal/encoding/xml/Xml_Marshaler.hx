package stdgo._internal.encoding.xml;
typedef Marshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function marshalXML(_e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>, _start:stdgo._internal.encoding.xml.Xml_StartElement.StartElement):stdgo.Error;
};
