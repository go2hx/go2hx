package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.Encoder_asInterface) class Encoder_static_extension {
    @:keep
    @:tdfield
    static public function close( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder>):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder> = _enc;
        return @:check2 (@:checkr _enc ?? throw "null pointer dereference")._p.close();
    }
    @:keep
    @:tdfield
    static public function flush( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder>):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder> = _enc;
        return @:check2r (@:checkr _enc ?? throw "null pointer dereference")._p._w.flush();
    }
    @:keep
    @:tdfield
    static public function encodeToken( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder>, _t:stdgo._internal.encoding.xml.Xml_token.Token):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder> = _enc;
        var _p = (stdgo.Go.setRef((@:checkr _enc ?? throw "null pointer dereference")._p) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>);
        {
            final __type__ = _t;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                var _t:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value;
                {
                    var _err = (@:check2r _p._writeStart((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>)) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                var _t:stdgo._internal.encoding.xml.Xml_endelement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__().value;
                {
                    var _err = (@:check2r _p._writeEnd(_t.name?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_chardata.CharData))) {
                var _t:stdgo._internal.encoding.xml.Xml_chardata.CharData = __type__ == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__.__underlying__() == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__ == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__.__underlying__().value;
                stdgo._internal.encoding.xml.Xml__escapetext._escapeText(stdgo.Go.asInterface(_p), _t, false);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_comment.Comment))) {
                var _t:stdgo._internal.encoding.xml.Xml_comment.Comment = __type__ == null ? (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment) : __type__.__underlying__() == null ? (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment) : __type__ == null ? (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment) : __type__.__underlying__().value;
                if (stdgo._internal.bytes.Bytes_contains.contains(_t, stdgo._internal.encoding.xml.Xml__endcomment._endComment)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of Comment containing --> marker" : stdgo.GoString));
                };
                @:check2r _p.writeString(("<!--" : stdgo.GoString));
                @:check2r _p.write(_t);
                @:check2r _p.writeString(("-->" : stdgo.GoString));
                return @:check2r _p._cachedWriteError();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_procinst.ProcInst))) {
                var _t:stdgo._internal.encoding.xml.Xml_procinst.ProcInst = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_procinst.ProcInst) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_procinst.ProcInst) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_procinst.ProcInst) : __type__.__underlying__().value;
                if (((_t.target == ("xml" : stdgo.GoString)) && (@:check2r (@:checkr _p ?? throw "null pointer dereference")._w.buffered() != (0 : stdgo.GoInt)) : Bool)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of ProcInst xml target only valid for xml declaration, first token encoded" : stdgo.GoString));
                };
                if (!stdgo._internal.encoding.xml.Xml__isnamestring._isNameString(_t.target?.__copy__())) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of ProcInst with invalid Target" : stdgo.GoString));
                };
                if (stdgo._internal.bytes.Bytes_contains.contains(_t.inst, stdgo._internal.encoding.xml.Xml__endprocinst._endProcInst)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of ProcInst containing ?> marker" : stdgo.GoString));
                };
                @:check2r _p.writeString(("<?" : stdgo.GoString));
                @:check2r _p.writeString(_t.target?.__copy__());
                if (((_t.inst.length) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _p.writeByte((32 : stdgo.GoUInt8));
                    @:check2r _p.write(_t.inst);
                };
                @:check2r _p.writeString(("?>" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_directive.Directive))) {
                var _t:stdgo._internal.encoding.xml.Xml_directive.Directive = __type__ == null ? (new stdgo._internal.encoding.xml.Xml_directive.Directive(0, 0) : stdgo._internal.encoding.xml.Xml_directive.Directive) : __type__.__underlying__() == null ? (new stdgo._internal.encoding.xml.Xml_directive.Directive(0, 0) : stdgo._internal.encoding.xml.Xml_directive.Directive) : __type__ == null ? (new stdgo._internal.encoding.xml.Xml_directive.Directive(0, 0) : stdgo._internal.encoding.xml.Xml_directive.Directive) : __type__.__underlying__().value;
                if (!stdgo._internal.encoding.xml.Xml__isvaliddirective._isValidDirective(_t)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of Directive containing wrong < or > markers" : stdgo.GoString));
                };
                @:check2r _p.writeString(("<!" : stdgo.GoString));
                @:check2r _p.write(_t);
                @:check2r _p.writeString((">" : stdgo.GoString));
            } else {
                var _t:stdgo._internal.encoding.xml.Xml_token.Token = __type__?.__underlying__();
                return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of invalid token type" : stdgo.GoString));
            };
        };
        return @:check2r _p._cachedWriteError();
    }
    @:keep
    @:tdfield
    static public function encodeElement( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder>, _v:stdgo.AnyInterface, _start:stdgo._internal.encoding.xml.Xml_startelement.StartElement):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder> = _enc;
        var _err = (@:check2 (@:checkr _enc ?? throw "null pointer dereference")._p._marshalValue(stdgo._internal.reflect.Reflect_valueof.valueOf(_v)?.__copy__(), null, (stdgo.Go.setRef(_start) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>)) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        return @:check2r (@:checkr _enc ?? throw "null pointer dereference")._p._w.flush();
    }
    @:keep
    @:tdfield
    static public function encode( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder> = _enc;
        var _err = (@:check2 (@:checkr _enc ?? throw "null pointer dereference")._p._marshalValue(stdgo._internal.reflect.Reflect_valueof.valueOf(_v)?.__copy__(), null, null) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        return @:check2r (@:checkr _enc ?? throw "null pointer dereference")._p._w.flush();
    }
    @:keep
    @:tdfield
    static public function indent( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder>, _prefix:stdgo.GoString, _indent:stdgo.GoString):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder> = _enc;
        (@:checkr _enc ?? throw "null pointer dereference")._p._prefix = _prefix?.__copy__();
        (@:checkr _enc ?? throw "null pointer dereference")._p._indent = _indent?.__copy__();
    }
}
