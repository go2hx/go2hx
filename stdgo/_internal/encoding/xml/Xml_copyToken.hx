package stdgo._internal.encoding.xml;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function copyToken(_t:stdgo._internal.encoding.xml.Xml_Token.Token):stdgo._internal.encoding.xml.Xml_Token.Token {
        {
            final __type__ = _t;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_CharData.CharData))) {
                var _v:stdgo._internal.encoding.xml.Xml_CharData.CharData = __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_v.copy()));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_Comment.Comment))) {
                var _v:stdgo._internal.encoding.xml.Xml_Comment.Comment = __type__ == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_v.copy()));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_Directive.Directive))) {
                var _v:stdgo._internal.encoding.xml.Xml_Directive.Directive = __type__ == null ? new stdgo._internal.encoding.xml.Xml_Directive.Directive(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_Directive.Directive(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_Directive.Directive(0, 0) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_v.copy()));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst))) {
                var _v:stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_v.copy()));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                var _v:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_v.copy()));
            };
        };
        return _t;
    }
