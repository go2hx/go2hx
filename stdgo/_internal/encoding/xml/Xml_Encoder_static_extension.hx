package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.Encoder_asInterface) class Encoder_static_extension {
    @:keep
    static public function close( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder> = _enc;
        return _enc._p.close();
    }
    @:keep
    static public function flush( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder> = _enc;
        return _enc._p._w.flush();
    }
    @:keep
    static public function encodeToken( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>, _t:stdgo._internal.encoding.xml.Xml_Token.Token):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder> = _enc;
        var _p = (stdgo.Go.setRef(_enc._p) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        {
            final __type__ = _t;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                var _t:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__().value;
                {
                    var _err = (_p._writeStart((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>)) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
                var _t:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__().value;
                {
                    var _err = (_p._writeEnd(_t.name?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_CharData.CharData))) {
                var _t:stdgo._internal.encoding.xml.Xml_CharData.CharData = __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__().value;
                stdgo._internal.encoding.xml.Xml__escapeText._escapeText(stdgo.Go.asInterface(_p), _t, false);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_Comment.Comment))) {
                var _t:stdgo._internal.encoding.xml.Xml_Comment.Comment = __type__ == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__.__underlying__().value;
                if (stdgo._internal.bytes.Bytes_contains.contains(_t, stdgo._internal.encoding.xml.Xml__endComment._endComment)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of Comment containing --> marker" : stdgo.GoString));
                };
                _p.writeString(("<!--" : stdgo.GoString));
                _p.write(_t);
                _p.writeString(("-->" : stdgo.GoString));
                return _p._cachedWriteError();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst))) {
                var _t:stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst) : __type__.__underlying__().value;
                if (((_t.target == ("xml" : stdgo.GoString)) && (_p._w.buffered() != (0 : stdgo.GoInt)) : Bool)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of ProcInst xml target only valid for xml declaration, first token encoded" : stdgo.GoString));
                };
                if (!stdgo._internal.encoding.xml.Xml__isNameString._isNameString(_t.target?.__copy__())) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of ProcInst with invalid Target" : stdgo.GoString));
                };
                if (stdgo._internal.bytes.Bytes_contains.contains(_t.inst, stdgo._internal.encoding.xml.Xml__endProcInst._endProcInst)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of ProcInst containing ?> marker" : stdgo.GoString));
                };
                _p.writeString(("<?" : stdgo.GoString));
                _p.writeString(_t.target?.__copy__());
                if (((_t.inst.length) > (0 : stdgo.GoInt) : Bool)) {
                    _p.writeByte((32 : stdgo.GoUInt8));
                    _p.write(_t.inst);
                };
                _p.writeString(("?>" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_Directive.Directive))) {
                var _t:stdgo._internal.encoding.xml.Xml_Directive.Directive = __type__ == null ? new stdgo._internal.encoding.xml.Xml_Directive.Directive(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_Directive.Directive(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_Directive.Directive(0, 0) : __type__.__underlying__().value;
                if (!stdgo._internal.encoding.xml.Xml__isValidDirective._isValidDirective(_t)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of Directive containing wrong < or > markers" : stdgo.GoString));
                };
                _p.writeString(("<!" : stdgo.GoString));
                _p.write(_t);
                _p.writeString((">" : stdgo.GoString));
            } else {
                var _t:stdgo._internal.encoding.xml.Xml_Token.Token = __type__?.__underlying__();
                return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeToken of invalid token type" : stdgo.GoString));
            };
        };
        return _p._cachedWriteError();
    }
    @:keep
    static public function encodeElement( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>, _v:stdgo.AnyInterface, _start:stdgo._internal.encoding.xml.Xml_StartElement.StartElement):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder> = _enc;
        var _err = (_enc._p._marshalValue(stdgo._internal.reflect.Reflect_valueOf.valueOf(_v)?.__copy__(), null, (stdgo.Go.setRef(_start) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>)) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        return _enc._p._w.flush();
    }
    @:keep
    static public function encode( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder> = _enc;
        var _err = (_enc._p._marshalValue(stdgo._internal.reflect.Reflect_valueOf.valueOf(_v)?.__copy__(), null, null) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        return _enc._p._w.flush();
    }
    @:keep
    static public function indent( _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>, _prefix:stdgo.GoString, _indent:stdgo.GoString):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder> = _enc;
        _enc._p._prefix = _prefix?.__copy__();
        _enc._p._indent = _indent?.__copy__();
    }
}
