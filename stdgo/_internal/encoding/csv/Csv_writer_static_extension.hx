package stdgo._internal.encoding.csv;
@:keep @:allow(stdgo._internal.encoding.csv.Csv.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function _fieldNeedsQuotes( _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>, _field:stdgo.GoString):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer> = _w;
        if (_field == ((stdgo.Go.str() : stdgo.GoString))) {
            return false;
        };
        if (_field == (("\\." : stdgo.GoString))) {
            return true;
        };
        if (((@:checkr _w ?? throw "null pointer dereference").comma < (128 : stdgo.GoInt32) : Bool)) {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_field.length) : Bool)) {
                    var _c = (_field[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if ((((_c == ((10 : stdgo.GoUInt8)) || _c == ((13 : stdgo.GoUInt8)) : Bool) || _c == ((34 : stdgo.GoUInt8)) : Bool) || (_c == ((@:checkr _w ?? throw "null pointer dereference").comma : stdgo.GoUInt8)) : Bool)) {
                        return true;
                    };
                    _i++;
                };
            };
        } else {
            if ((stdgo._internal.strings.Strings_containsrune.containsRune(_field?.__copy__(), (@:checkr _w ?? throw "null pointer dereference").comma) || stdgo._internal.strings.Strings_containsany.containsAny(_field?.__copy__(), ("\"\r\n" : stdgo.GoString)) : Bool)) {
                return true;
            };
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_field?.__copy__()), _r1:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        return stdgo._internal.unicode.Unicode_isspace.isSpace(_r1);
    }
    @:keep
    @:tdfield
    static public function writeAll( _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>, _records:stdgo.Slice<stdgo.Slice<stdgo.GoString>>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer> = _w;
        for (__0 => _record in _records) {
            var _err = (@:check2r _w.write(_record) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return @:check2r (@:checkr _w ?? throw "null pointer dereference")._w.flush();
    }
    @:keep
    @:tdfield
    static public function error( _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer> = _w;
        var __tmp__ = @:check2r (@:checkr _w ?? throw "null pointer dereference")._w.write((null : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:tdfield
    static public function flush( _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer> = _w;
        @:check2r (@:checkr _w ?? throw "null pointer dereference")._w.flush();
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>, _record:stdgo.Slice<stdgo.GoString>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer> = _w;
        if (!stdgo._internal.encoding.csv.Csv__validdelim._validDelim((@:checkr _w ?? throw "null pointer dereference").comma)) {
            return stdgo._internal.encoding.csv.Csv__errinvaliddelim._errInvalidDelim;
        };
        for (_n => _field in _record) {
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = @:check2r (@:checkr _w ?? throw "null pointer dereference")._w.writeRune((@:checkr _w ?? throw "null pointer dereference").comma), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            if (!@:check2r _w._fieldNeedsQuotes(_field?.__copy__())) {
                {
                    var __tmp__ = @:check2r (@:checkr _w ?? throw "null pointer dereference")._w.writeString(_field?.__copy__()), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                continue;
            };
            {
                var _err = (@:check2r (@:checkr _w ?? throw "null pointer dereference")._w.writeByte((34 : stdgo.GoUInt8)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            while (((_field.length) > (0 : stdgo.GoInt) : Bool)) {
                var _i = (stdgo._internal.strings.Strings_indexany.indexAny(_field?.__copy__(), ("\"\r\n" : stdgo.GoString)) : stdgo.GoInt);
                if ((_i < (0 : stdgo.GoInt) : Bool)) {
                    _i = (_field.length);
                };
                {
                    var __tmp__ = @:check2r (@:checkr _w ?? throw "null pointer dereference")._w.writeString((_field.__slice__(0, _i) : stdgo.GoString)?.__copy__()), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                _field = (_field.__slice__(_i) : stdgo.GoString)?.__copy__();
                if (((_field.length) > (0 : stdgo.GoInt) : Bool)) {
                    var _err:stdgo.Error = (null : stdgo.Error);
                    {
                        final __value__ = _field[(0 : stdgo.GoInt)];
                        if (__value__ == ((34 : stdgo.GoUInt8))) {
                            {
                                var __tmp__ = @:check2r (@:checkr _w ?? throw "null pointer dereference")._w.writeString(("\"\"" : stdgo.GoString));
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((13 : stdgo.GoUInt8))) {
                            if (!(@:checkr _w ?? throw "null pointer dereference").useCRLF) {
                                _err = @:check2r (@:checkr _w ?? throw "null pointer dereference")._w.writeByte((13 : stdgo.GoUInt8));
                            };
                        } else if (__value__ == ((10 : stdgo.GoUInt8))) {
                            if ((@:checkr _w ?? throw "null pointer dereference").useCRLF) {
                                {
                                    var __tmp__ = @:check2r (@:checkr _w ?? throw "null pointer dereference")._w.writeString(("\r\n" : stdgo.GoString));
                                    _err = @:tmpset0 __tmp__._1;
                                };
                            } else {
                                _err = @:check2r (@:checkr _w ?? throw "null pointer dereference")._w.writeByte((10 : stdgo.GoUInt8));
                            };
                        };
                    };
                    _field = (_field.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            {
                var _err = (@:check2r (@:checkr _w ?? throw "null pointer dereference")._w.writeByte((34 : stdgo.GoUInt8)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((@:checkr _w ?? throw "null pointer dereference").useCRLF) {
            {
                var __tmp__ = @:check2r (@:checkr _w ?? throw "null pointer dereference")._w.writeString(("\r\n" : stdgo.GoString));
                _err = @:tmpset0 __tmp__._1;
            };
        } else {
            _err = @:check2r (@:checkr _w ?? throw "null pointer dereference")._w.writeByte((10 : stdgo.GoUInt8));
        };
        return _err;
    }
}
