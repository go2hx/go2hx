package stdgo._internal.mime.multipart;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer> = _w;
        if (((@:checkr _w ?? throw "null pointer dereference")._lastpart != null && (((@:checkr _w ?? throw "null pointer dereference")._lastpart : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._lastpart : Dynamic).__nil__))) {
            {
                var _err = (@:check2r (@:checkr _w ?? throw "null pointer dereference")._lastpart._close() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            (@:checkr _w ?? throw "null pointer dereference")._lastpart = null;
        };
        var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _w ?? throw "null pointer dereference")._w, ("\r\n--%s--\r\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _w ?? throw "null pointer dereference")._boundary)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:tdfield
    static public function writeField( _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer>, _fieldname:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer> = _w;
        var __tmp__ = @:check2r _w.createFormField(_fieldname?.__copy__()), _p:stdgo._internal.io.Io_writer.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = _p.write((_value : stdgo.Slice<stdgo.GoUInt8>));
            _err = @:tmpset0 __tmp__._1;
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function createFormField( _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer>, _fieldname:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer> = _w;
        var _h = ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader);
        _h.set(("Content-Disposition" : stdgo.GoString), stdgo._internal.fmt.Fmt_sprintf.sprintf(("form-data; name=\"%s\"" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.mime.multipart.Multipart__escapequotes._escapeQuotes(_fieldname?.__copy__())))?.__copy__());
        return @:check2r _w.createPart(_h);
    }
    @:keep
    @:tdfield
    static public function createFormFile( _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer>, _fieldname:stdgo.GoString, _filename:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer> = _w;
        var _h = ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader);
        _h.set(("Content-Disposition" : stdgo.GoString), stdgo._internal.fmt.Fmt_sprintf.sprintf(("form-data; name=\"%s\"; filename=\"%s\"" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.mime.multipart.Multipart__escapequotes._escapeQuotes(_fieldname?.__copy__())), stdgo.Go.toInterface(stdgo._internal.mime.multipart.Multipart__escapequotes._escapeQuotes(_filename?.__copy__())))?.__copy__());
        _h.set(("Content-Type" : stdgo.GoString), ("application/octet-stream" : stdgo.GoString));
        return @:check2r _w.createPart(_h);
    }
    @:keep
    @:tdfield
    static public function createPart( _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer>, _header:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer> = _w;
        if (((@:checkr _w ?? throw "null pointer dereference")._lastpart != null && (((@:checkr _w ?? throw "null pointer dereference")._lastpart : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._lastpart : Dynamic).__nil__))) {
            {
                var _err = (@:check2r (@:checkr _w ?? throw "null pointer dereference")._lastpart._close() : stdgo.Error);
                if (_err != null) {
                    return { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : _err };
                };
            };
        };
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        if (((@:checkr _w ?? throw "null pointer dereference")._lastpart != null && (((@:checkr _w ?? throw "null pointer dereference")._lastpart : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._lastpart : Dynamic).__nil__))) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("\r\n--%s\r\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _w ?? throw "null pointer dereference")._boundary));
        } else {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("--%s\r\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _w ?? throw "null pointer dereference")._boundary));
        };
        var _keys = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_header.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_k => _ in _header) {
            _keys = (_keys.__append__(_k?.__copy__()));
        };
        stdgo._internal.sort.Sort_strings.strings(_keys);
        for (__0 => _k in _keys) {
            for (__1 => _v in (_header[_k] ?? (null : stdgo.Slice<stdgo.GoString>))) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("%s: %s\r\n" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v));
            };
        };
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("\r\n" : stdgo.GoString));
        var __tmp__ = stdgo._internal.io.Io_copy.copy((@:checkr _w ?? throw "null pointer dereference")._w, stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : _err };
        };
        var _p = (stdgo.Go.setRef(({ _mw : _w } : stdgo._internal.mime.multipart.Multipart_t_part.T_part)) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_t_part.T_part>);
        (@:checkr _w ?? throw "null pointer dereference")._lastpart = _p;
        return { _0 : stdgo.Go.asInterface(_p), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function formDataContentType( _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer>):stdgo.GoString {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer> = _w;
        var _b = ((@:checkr _w ?? throw "null pointer dereference")._boundary?.__copy__() : stdgo.GoString);
        if (stdgo._internal.strings.Strings_containsany.containsAny(_b?.__copy__(), ("()<>@,;:\\\"/[]?= " : stdgo.GoString))) {
            _b = ((("\"" : stdgo.GoString) + _b?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("multipart/form-data; boundary=" : stdgo.GoString) + _b?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function setBoundary( _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer>, _boundary:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer> = _w;
        if (((@:checkr _w ?? throw "null pointer dereference")._lastpart != null && (((@:checkr _w ?? throw "null pointer dereference")._lastpart : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._lastpart : Dynamic).__nil__))) {
            return stdgo._internal.errors.Errors_new_.new_(("mime: SetBoundary called after write" : stdgo.GoString));
        };
        if ((((_boundary.length) < (1 : stdgo.GoInt) : Bool) || ((_boundary.length) > (70 : stdgo.GoInt) : Bool) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("mime: invalid boundary length" : stdgo.GoString));
        };
        var _end = ((_boundary.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        for (_i => _b in _boundary) {
            if ((((((65 : stdgo.GoInt32) <= _b : Bool) && (_b <= (90 : stdgo.GoInt32) : Bool) : Bool) || (((97 : stdgo.GoInt32) <= _b : Bool) && (_b <= (122 : stdgo.GoInt32) : Bool) : Bool) : Bool) || (((48 : stdgo.GoInt32) <= _b : Bool) && (_b <= (57 : stdgo.GoInt32) : Bool) : Bool) : Bool)) {
                continue;
            };
            {
                final __value__ = _b;
                if (__value__ == ((39 : stdgo.GoInt32)) || __value__ == ((40 : stdgo.GoInt32)) || __value__ == ((41 : stdgo.GoInt32)) || __value__ == ((43 : stdgo.GoInt32)) || __value__ == ((95 : stdgo.GoInt32)) || __value__ == ((44 : stdgo.GoInt32)) || __value__ == ((45 : stdgo.GoInt32)) || __value__ == ((46 : stdgo.GoInt32)) || __value__ == ((47 : stdgo.GoInt32)) || __value__ == ((58 : stdgo.GoInt32)) || __value__ == ((61 : stdgo.GoInt32)) || __value__ == ((63 : stdgo.GoInt32))) {
                    continue;
                } else if (__value__ == ((32 : stdgo.GoInt32))) {
                    if (_i != (_end)) {
                        continue;
                    };
                };
            };
            return stdgo._internal.errors.Errors_new_.new_(("mime: invalid boundary character" : stdgo.GoString));
        };
        (@:checkr _w ?? throw "null pointer dereference")._boundary = _boundary?.__copy__();
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function boundary( _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer>):stdgo.GoString {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer> = _w;
        return (@:checkr _w ?? throw "null pointer dereference")._boundary?.__copy__();
    }
}
