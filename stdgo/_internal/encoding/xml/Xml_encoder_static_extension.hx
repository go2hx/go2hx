package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.Encoder_asInterface) class Encoder_static_extension {
    @:keep
    @:tdfield
    static public function close( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder>):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder> = _enc;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L315"
        return (@:checkr _enc ?? throw "null pointer dereference")._p.close();
    }
    @:keep
    @:tdfield
    static public function flush( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder>):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder> = _enc;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L308"
        return (@:checkr _enc ?? throw "null pointer dereference")._p._w.flush();
    }
    @:keep
    @:tdfield
    static public function encodeToken( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder>, _t:stdgo._internal.encoding.xml.Xml_token.Token):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder> = _enc;
        var _p = (stdgo.Go.setRef((@:checkr _enc ?? throw "null pointer dereference")._p) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L213"
        {
            final __type__ = _t;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                var _t:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L215"
                {
                    var _err = (_p._writeStart((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>)) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L216"
                        return _err;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                var _t:stdgo._internal.encoding.xml.Xml_endelement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L219"
                {
                    var _err = (_p._writeEnd(_t.name?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L220"
                        return _err;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_chardata.CharData))) {
                var _t:stdgo._internal.encoding.xml.Xml_chardata.CharData = __type__ == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__.__underlying__() == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L223"
                stdgo._internal.encoding.xml.Xml__escapetext._escapeText(stdgo.Go.asInterface(_p), _t, false);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_comment.Comment))) {
                var _t:stdgo._internal.encoding.xml.Xml_comment.Comment = __type__ == null ? (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment) : __type__.__underlying__() == null ? (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L225"
                if (stdgo._internal.bytes.Bytes_contains.contains(_t, stdgo._internal.encoding.xml.Xml__endcomment._endComment)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L226"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of Comment containing --> marker" : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L228"
                _p.writeString(("<!--" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L229"
                _p.write(_t);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L230"
                _p.writeString(("-->" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L231"
                return _p._cachedWriteError();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_procinst.ProcInst))) {
                var _t:stdgo._internal.encoding.xml.Xml_procinst.ProcInst = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_procinst.ProcInst) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_procinst.ProcInst) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_procinst.ProcInst) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L235"
                if (((_t.target == ("xml" : stdgo.GoString)) && ((@:checkr _p ?? throw "null pointer dereference")._w.buffered() != (0 : stdgo.GoInt)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L236"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of ProcInst xml target only valid for xml declaration, first token encoded" : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L238"
                if (!stdgo._internal.encoding.xml.Xml__isnamestring._isNameString(_t.target?.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L239"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of ProcInst with invalid Target" : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L241"
                if (stdgo._internal.bytes.Bytes_contains.contains(_t.inst, stdgo._internal.encoding.xml.Xml__endprocinst._endProcInst)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L242"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of ProcInst containing ?> marker" : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L244"
                _p.writeString(("<?" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L245"
                _p.writeString(_t.target?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L246"
                if (((_t.inst.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L247"
                    _p.writeByte((32 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L248"
                    _p.write(_t.inst);
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L250"
                _p.writeString(("?>" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_directive.Directive))) {
                var _t:stdgo._internal.encoding.xml.Xml_directive.Directive = __type__ == null ? (new stdgo._internal.encoding.xml.Xml_directive.Directive(0, 0) : stdgo._internal.encoding.xml.Xml_directive.Directive) : __type__.__underlying__() == null ? (new stdgo._internal.encoding.xml.Xml_directive.Directive(0, 0) : stdgo._internal.encoding.xml.Xml_directive.Directive) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (new stdgo._internal.encoding.xml.Xml_directive.Directive(0, 0) : stdgo._internal.encoding.xml.Xml_directive.Directive) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L252"
                if (!stdgo._internal.encoding.xml.Xml__isvaliddirective._isValidDirective(_t)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L253"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of Directive containing wrong < or > markers" : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L255"
                _p.writeString(("<!" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L256"
                _p.write(_t);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L257"
                _p.writeString((">" : stdgo.GoString));
            } else {
                var _t:stdgo._internal.encoding.xml.Xml_token.Token = __type__?.__underlying__();
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L259"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of invalid token type" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L262"
        return _p._cachedWriteError();
    }
    @:keep
    @:tdfield
    static public function encodeElement( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder>, _v:stdgo.AnyInterface, _start:stdgo._internal.encoding.xml.Xml_startelement.StartElement):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder> = _enc;
        var _err = ((@:checkr _enc ?? throw "null pointer dereference")._p._marshalValue(stdgo._internal.reflect.Reflect_valueof.valueOf(_v)?.__copy__(), null, (stdgo.Go.setRef(_start) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>)) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L186"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L187"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L189"
        return (@:checkr _enc ?? throw "null pointer dereference")._p._w.flush();
    }
    @:keep
    @:tdfield
    static public function encode( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder> = _enc;
        var _err = ((@:checkr _enc ?? throw "null pointer dereference")._p._marshalValue(stdgo._internal.reflect.Reflect_valueof.valueOf(_v)?.__copy__(), null, null) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L171"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L172"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L174"
        return (@:checkr _enc ?? throw "null pointer dereference")._p._w.flush();
    }
    @:keep
    @:tdfield
    static public function indent( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder>, _prefix:stdgo.GoString, _indent:stdgo.GoString):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder> = _enc;
        (@:checkr _enc ?? throw "null pointer dereference")._p._prefix = _prefix?.__copy__();
        (@:checkr _enc ?? throw "null pointer dereference")._p._indent = _indent?.__copy__();
    }
}
