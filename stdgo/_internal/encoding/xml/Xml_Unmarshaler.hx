package stdgo._internal.encoding.xml;
typedef Unmarshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function unmarshalXML(_d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _start:stdgo._internal.encoding.xml.Xml_StartElement.StartElement):stdgo.Error;
};
