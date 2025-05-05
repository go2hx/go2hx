package stdgo._internal.mime.multipart;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L171"
        if (({
            final value = (@:checkr _w ?? throw "null pointer dereference")._lastpart;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L172"
            {
                var _err = ((@:checkr _w ?? throw "null pointer dereference")._lastpart._close() : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L173"
                    return _err;
                };
            };
            (@:checkr _w ?? throw "null pointer dereference")._lastpart = null;
        };
        var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _w ?? throw "null pointer dereference")._w, ("\r\n--%s--\r\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _w ?? throw "null pointer dereference")._boundary)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L178"
        return _err;
    }
    @:keep
    @:tdfield
    static public function writeField( _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer>, _fieldname:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer> = _w;
        var __tmp__ = _w.createFormField(_fieldname?.__copy__()), _p:stdgo._internal.io.Io_writer.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L161"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L162"
            return _err;
        };
        {
            var __tmp__ = _p.write((_value : stdgo.Slice<stdgo.GoUInt8>));
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L165"
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
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L153"
        _h.set(("Content-Disposition" : stdgo.GoString), stdgo._internal.fmt.Fmt_sprintf.sprintf(("form-data; name=\"%s\"" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.mime.multipart.Multipart__escapequotes._escapeQuotes(_fieldname?.__copy__())))?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L155"
        return _w.createPart(_h);
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
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L142"
        _h.set(("Content-Disposition" : stdgo.GoString), stdgo._internal.fmt.Fmt_sprintf.sprintf(("form-data; name=\"%s\"; filename=\"%s\"" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.mime.multipart.Multipart__escapequotes._escapeQuotes(_fieldname?.__copy__())), stdgo.Go.toInterface(stdgo._internal.mime.multipart.Multipart__escapequotes._escapeQuotes(_filename?.__copy__())))?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L145"
        _h.set(("Content-Type" : stdgo.GoString), ("application/octet-stream" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L146"
        return _w.createPart(_h);
    }
    @:keep
    @:tdfield
    static public function createPart( _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer>, _header:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L98"
        if (({
            final value = (@:checkr _w ?? throw "null pointer dereference")._lastpart;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L99"
            {
                var _err = ((@:checkr _w ?? throw "null pointer dereference")._lastpart._close() : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L100"
                    return { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : _err };
                };
            };
        };
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L104"
        if (({
            final value = (@:checkr _w ?? throw "null pointer dereference")._lastpart;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L105"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("\r\n--%s\r\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _w ?? throw "null pointer dereference")._boundary));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L107"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("--%s\r\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _w ?? throw "null pointer dereference")._boundary));
        };
        var _keys = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_header.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L111"
        for (_k => _ in _header) {
            _keys = (_keys.__append__(_k?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L114"
        stdgo._internal.sort.Sort_strings.strings(_keys);
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L115"
        for (__0 => _k in _keys) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L116"
            for (__1 => _v in (_header[_k] ?? (null : stdgo.Slice<stdgo.GoString>))) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L117"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("%s: %s\r\n" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L120"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("\r\n" : stdgo.GoString));
        var __tmp__ = stdgo._internal.io.Io_copy.copy((@:checkr _w ?? throw "null pointer dereference")._w, stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L122"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L123"
            return { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : _err };
        };
        var _p = (stdgo.Go.setRef(({ _mw : _w } : stdgo._internal.mime.multipart.Multipart_t_part.T_part)) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_t_part.T_part>);
        (@:checkr _w ?? throw "null pointer dereference")._lastpart = _p;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L129"
        return { _0 : stdgo.Go.asInterface(_p), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function formDataContentType( _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer>):stdgo.GoString {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer> = _w;
        var _b = ((@:checkr _w ?? throw "null pointer dereference")._boundary?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L78"
        if (stdgo._internal.strings.Strings_containsany.containsAny(_b?.__copy__(), ("()<>@,;:\\\"/[]?= " : stdgo.GoString))) {
            _b = ((("\"" : stdgo.GoString) + _b?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L81"
        return (("multipart/form-data; boundary=" : stdgo.GoString) + _b?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function setBoundary( _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer>, _boundary:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L46"
        if (({
            final value = (@:checkr _w ?? throw "null pointer dereference")._lastpart;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L47"
            return stdgo._internal.errors.Errors_new_.new_(("mime: SetBoundary called after write" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L50"
        if ((((_boundary.length) < (1 : stdgo.GoInt) : Bool) || ((_boundary.length) > (70 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L51"
            return stdgo._internal.errors.Errors_new_.new_(("mime: invalid boundary length" : stdgo.GoString));
        };
        var _end = ((_boundary.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L54"
        for (_i => _b in _boundary) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L55"
            if ((((((65 : stdgo.GoInt32) <= _b : Bool) && (_b <= (90 : stdgo.GoInt32) : Bool) : Bool) || (((97 : stdgo.GoInt32) <= _b : Bool) && (_b <= (122 : stdgo.GoInt32) : Bool) : Bool) : Bool) || (((48 : stdgo.GoInt32) <= _b : Bool) && (_b <= (57 : stdgo.GoInt32) : Bool) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L56"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L58"
            {
                final __value__ = _b;
                if (__value__ == ((39 : stdgo.GoInt32)) || __value__ == ((40 : stdgo.GoInt32)) || __value__ == ((41 : stdgo.GoInt32)) || __value__ == ((43 : stdgo.GoInt32)) || __value__ == ((95 : stdgo.GoInt32)) || __value__ == ((44 : stdgo.GoInt32)) || __value__ == ((45 : stdgo.GoInt32)) || __value__ == ((46 : stdgo.GoInt32)) || __value__ == ((47 : stdgo.GoInt32)) || __value__ == ((58 : stdgo.GoInt32)) || __value__ == ((61 : stdgo.GoInt32)) || __value__ == ((63 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L60"
                    continue;
                } else if (__value__ == ((32 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L62"
                    if (_i != (_end)) {
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L63"
                        continue;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L66"
            return stdgo._internal.errors.Errors_new_.new_(("mime: invalid boundary character" : stdgo.GoString));
        };
        (@:checkr _w ?? throw "null pointer dereference")._boundary = _boundary?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L69"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function boundary( _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer>):stdgo.GoString {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L36"
        return (@:checkr _w ?? throw "null pointer dereference")._boundary?.__copy__();
    }
}
