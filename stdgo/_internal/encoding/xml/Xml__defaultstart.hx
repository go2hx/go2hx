package stdgo._internal.encoding.xml;
function _defaultStart(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>, _startTemplate:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>):stdgo._internal.encoding.xml.Xml_startelement.StartElement {
        var _start:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        if (({
            final value = _startTemplate;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            _start.name = (@:checkr _startTemplate ?? throw "null pointer dereference").name?.__copy__();
            _start.attr = (_start.attr.__append__(...((@:checkr _startTemplate ?? throw "null pointer dereference").attr : Array<stdgo._internal.encoding.xml.Xml_attr.Attr>)));
        } else if ((({
            final value = _finfo;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr _finfo ?? throw "null pointer dereference")._name != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _start.name.local = (@:checkr _finfo ?? throw "null pointer dereference")._name?.__copy__();
            _start.name.space = (@:checkr _finfo ?? throw "null pointer dereference")._xmlns?.__copy__();
        } else if (_typ.name() != ((stdgo.Go.str() : stdgo.GoString))) {
            _start.name.local = _typ.name()?.__copy__();
        } else {
            _start.name.local = _typ.elem().name()?.__copy__();
        };
        return _start?.__copy__();
    }
