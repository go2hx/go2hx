package stdgo._internal.html.template;
function _jsValEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var _a:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        if ((_args.length) == ((1 : stdgo.GoInt))) {
            _a = stdgo._internal.html.template.Template__indirecttojsonmarshaler._indirectToJSONMarshaler(_args[(0 : stdgo.GoInt)]);
            {
                final __type__ = _a;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_js.JS))) {
                    var _t:stdgo._internal.html.template.Template_js.JS = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_js.JS) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_js.JS) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_js.JS) : __type__.__underlying__().value;
                    return (_t : stdgo.GoString)?.__copy__();
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_jsstr.JSStr))) {
                    var _t:stdgo._internal.html.template.Template_jsstr.JSStr = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_jsstr.JSStr) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_jsstr.JSStr) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_jsstr.JSStr) : __type__.__underlying__().value;
                    return ((("\"" : stdgo.GoString) + (_t : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.json.Json_marshaler.Marshaler))) {
                    var _t:stdgo._internal.encoding.json.Json_marshaler.Marshaler = __type__ == null ? (null : stdgo._internal.encoding.json.Json_marshaler.Marshaler) : __type__.__underlying__() == null ? (null : stdgo._internal.encoding.json.Json_marshaler.Marshaler) : __type__ == null ? (null : stdgo._internal.encoding.json.Json_marshaler.Marshaler) : __type__.__underlying__().value;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.fmt.Fmt_stringer.Stringer))) {
                    var _t:stdgo._internal.fmt.Fmt_stringer.Stringer = __type__ == null ? (null : stdgo._internal.fmt.Fmt_stringer.Stringer) : __type__.__underlying__() == null ? (null : stdgo._internal.fmt.Fmt_stringer.Stringer) : __type__ == null ? (null : stdgo._internal.fmt.Fmt_stringer.Stringer) : __type__.__underlying__().value;
                    _a = stdgo.Go.toInterface((_t.string() : stdgo.GoString));
                };
            };
        } else {
            for (_i => _arg in _args) {
                _args[(_i : stdgo.GoInt)] = stdgo._internal.html.template.Template__indirecttojsonmarshaler._indirectToJSONMarshaler(_arg);
            };
            _a = stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprint.sprint(...(_args : Array<stdgo.AnyInterface>)));
        };
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_a), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf((" /* %s */null " : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_replaceall.replaceAll(_err.error()?.__copy__(), ("*/" : stdgo.GoString), ("* /" : stdgo.GoString))))?.__copy__();
        };
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            return (" null " : stdgo.GoString);
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_b), _first:stdgo.GoInt32 = __tmp__._0, __6:stdgo.GoInt = __tmp__._1;
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastrune.decodeLastRune(_b), _last:stdgo.GoInt32 = __tmp__._0, __7:stdgo.GoInt = __tmp__._1;
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _pad = (stdgo._internal.html.template.Template__isjsidentpart._isJSIdentPart(_first) || stdgo._internal.html.template.Template__isjsidentpart._isJSIdentPart(_last) : Bool);
        if (_pad) {
            @:check2 _buf.writeByte((32 : stdgo.GoUInt8));
        };
        var _written = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_b.length) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _rune:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                var _repl = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_rune == ((8232 : stdgo.GoInt32))) {
                    _repl = ("\\u2028" : stdgo.GoString);
                } else if (_rune == ((8233 : stdgo.GoInt32))) {
                    _repl = ("\\u2029" : stdgo.GoString);
                };
                if (_repl != ((stdgo.Go.str() : stdgo.GoString))) {
                    @:check2 _buf.write((_b.__slice__(_written, _i) : stdgo.Slice<stdgo.GoUInt8>));
                    @:check2 _buf.writeString(_repl?.__copy__());
                    _written = (_i + _n : stdgo.GoInt);
                };
                _i = (_i + (_n) : stdgo.GoInt);
            };
        };
        if (@:check2 _buf.len() != ((0 : stdgo.GoInt))) {
            @:check2 _buf.write((_b.__slice__(_written) : stdgo.Slice<stdgo.GoUInt8>));
            if (_pad) {
                @:check2 _buf.writeByte((32 : stdgo.GoUInt8));
            };
            return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
        };
        return (_b : stdgo.GoString)?.__copy__();
    }
