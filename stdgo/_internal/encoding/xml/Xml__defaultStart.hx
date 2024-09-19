package stdgo._internal.encoding.xml;
function _defaultStart(_typ:stdgo._internal.reflect.Reflect_Type_.Type_, _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>, _startTemplate:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>):stdgo._internal.encoding.xml.Xml_StartElement.StartElement {
        var _start:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        if (_startTemplate != null && ((_startTemplate : Dynamic).__nil__ == null || !(_startTemplate : Dynamic).__nil__)) {
            _start.name = _startTemplate.name?.__copy__();
            _start.attr = (_start.attr.__append__(...(_startTemplate.attr : Array<stdgo._internal.encoding.xml.Xml_Attr.Attr>)));
        } else if ((((_finfo != null) && ((_finfo : Dynamic).__nil__ == null || !(_finfo : Dynamic).__nil__)) && (_finfo._name != stdgo.Go.str()) : Bool)) {
            _start.name.local = _finfo._name?.__copy__();
            _start.name.space = _finfo._xmlns?.__copy__();
        } else if (_typ.name() != (stdgo.Go.str())) {
            _start.name.local = _typ.name()?.__copy__();
        } else {
            _start.name.local = _typ.elem().name()?.__copy__();
        };
        return _start?.__copy__();
    }
