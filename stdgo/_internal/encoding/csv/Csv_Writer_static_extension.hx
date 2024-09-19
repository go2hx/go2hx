package stdgo._internal.encoding.csv;
@:keep @:allow(stdgo._internal.encoding.csv.Csv.Writer_asInterface) class Writer_static_extension {
    @:keep
    static public function _fieldNeedsQuotes( _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer>, _field:stdgo.GoString):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer> = _w;
        if (_field == (stdgo.Go.str())) {
            return false;
        };
        if (_field == (("\\." : stdgo.GoString))) {
            return true;
        };
        if ((_w.comma < (128 : stdgo.GoInt32) : Bool)) {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_field.length) : Bool), _i++, {
                    var _c = (_field[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if ((((_c == ((10 : stdgo.GoUInt8)) || _c == ((13 : stdgo.GoUInt8)) : Bool) || _c == ((34 : stdgo.GoUInt8)) : Bool) || (_c == (_w.comma : stdgo.GoUInt8)) : Bool)) {
                        return true;
                    };
                });
            };
        } else {
            if ((stdgo._internal.strings.Strings_containsRune.containsRune(_field?.__copy__(), _w.comma) || stdgo._internal.strings.Strings_containsAny.containsAny(_field?.__copy__(), ("\"\r\n" : stdgo.GoString)) : Bool)) {
                return true;
            };
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_field?.__copy__()), _r1:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        return stdgo._internal.unicode.Unicode_isSpace.isSpace(_r1);
    }
    @:keep
    static public function writeAll( _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer>, _records:stdgo.Slice<stdgo.Slice<stdgo.GoString>>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer> = _w;
        for (__0 => _record in _records) {
            var _err = (_w.write(_record) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return _w._w.flush();
    }
    @:keep
    static public function error( _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer> = _w;
        var __tmp__ = _w._w.write((null : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function flush( _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer> = _w;
        _w._w.flush();
    }
    @:keep
    static public function write( _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer>, _record:stdgo.Slice<stdgo.GoString>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer> = _w;
        if (!stdgo._internal.encoding.csv.Csv__validDelim._validDelim(_w.comma)) {
            return stdgo._internal.encoding.csv.Csv__errInvalidDelim._errInvalidDelim;
        };
        for (_n => _field in _record) {
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = _w._w.writeRune(_w.comma), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            if (!_w._fieldNeedsQuotes(_field?.__copy__())) {
                {
                    var __tmp__ = _w._w.writeString(_field?.__copy__()), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                continue;
            };
            {
                var _err = (_w._w.writeByte((34 : stdgo.GoUInt8)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            while (((_field.length) > (0 : stdgo.GoInt) : Bool)) {
                var _i = (stdgo._internal.strings.Strings_indexAny.indexAny(_field?.__copy__(), ("\"\r\n" : stdgo.GoString)) : stdgo.GoInt);
                if ((_i < (0 : stdgo.GoInt) : Bool)) {
                    _i = (_field.length);
                };
                {
                    var __tmp__ = _w._w.writeString((_field.__slice__(0, _i) : stdgo.GoString)?.__copy__()), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
                                var __tmp__ = _w._w.writeString(("\"\"" : stdgo.GoString));
                                _err = __tmp__._1;
                            };
                        } else if (__value__ == ((13 : stdgo.GoUInt8))) {
                            if (!_w.useCRLF) {
                                _err = _w._w.writeByte((13 : stdgo.GoUInt8));
                            };
                        } else if (__value__ == ((10 : stdgo.GoUInt8))) {
                            if (_w.useCRLF) {
                                {
                                    var __tmp__ = _w._w.writeString(("\r\n" : stdgo.GoString));
                                    _err = __tmp__._1;
                                };
                            } else {
                                _err = _w._w.writeByte((10 : stdgo.GoUInt8));
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
                var _err = (_w._w.writeByte((34 : stdgo.GoUInt8)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_w.useCRLF) {
            {
                var __tmp__ = _w._w.writeString(("\r\n" : stdgo.GoString));
                _err = __tmp__._1;
            };
        } else {
            _err = _w._w.writeByte((10 : stdgo.GoUInt8));
        };
        return _err;
    }
}
