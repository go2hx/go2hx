package stdgo._internal.encoding.xml;
function copyToken(_t:stdgo._internal.encoding.xml.Xml_token.Token):stdgo._internal.encoding.xml.Xml_token.Token {
        {
            final __type__ = _t;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_chardata.CharData))) {
                var _v:stdgo._internal.encoding.xml.Xml_chardata.CharData = __type__ == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__.__underlying__() == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__ == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_v.copy()));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_comment.Comment))) {
                var _v:stdgo._internal.encoding.xml.Xml_comment.Comment = __type__ == null ? (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment) : __type__.__underlying__() == null ? (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment) : __type__ == null ? (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_v.copy()));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_directive.Directive))) {
                var _v:stdgo._internal.encoding.xml.Xml_directive.Directive = __type__ == null ? (new stdgo._internal.encoding.xml.Xml_directive.Directive(0, 0) : stdgo._internal.encoding.xml.Xml_directive.Directive) : __type__.__underlying__() == null ? (new stdgo._internal.encoding.xml.Xml_directive.Directive(0, 0) : stdgo._internal.encoding.xml.Xml_directive.Directive) : __type__ == null ? (new stdgo._internal.encoding.xml.Xml_directive.Directive(0, 0) : stdgo._internal.encoding.xml.Xml_directive.Directive) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_v.copy()));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_procinst.ProcInst))) {
                var _v:stdgo._internal.encoding.xml.Xml_procinst.ProcInst = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_procinst.ProcInst) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_procinst.ProcInst) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_procinst.ProcInst) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_v.copy()));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                var _v:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_v.copy()));
            };
        };
        return _t;
    }
