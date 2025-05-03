package stdgo._internal.encoding.csv;
@:keep @:allow(stdgo._internal.encoding.csv.Csv.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function _fieldNeedsQuotes( _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>, _field:stdgo.GoString):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L158"
        if (_field == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L159"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L162"
        if (_field == (("\\." : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L163"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L166"
        if (((@:checkr _w ?? throw "null pointer dereference").comma < (128 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L167"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_field.length) : Bool)) {
                    var _c = (_field[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L169"
                    if ((((_c == ((10 : stdgo.GoUInt8)) || _c == ((13 : stdgo.GoUInt8)) : Bool) || _c == ((34 : stdgo.GoUInt8)) : Bool) || (_c == ((@:checkr _w ?? throw "null pointer dereference").comma : stdgo.GoUInt8)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L170"
                        return true;
                    };
                    _i++;
                };
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L174"
            if ((stdgo._internal.strings.Strings_containsrune.containsRune(_field?.__copy__(), (@:checkr _w ?? throw "null pointer dereference").comma) || stdgo._internal.strings.Strings_containsany.containsAny(_field?.__copy__(), ("\"\r\n" : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L175"
                return true;
            };
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_field?.__copy__()), _r1:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L180"
        return stdgo._internal.unicode.Unicode_isspace.isSpace(_r1);
    }
    @:keep
    @:tdfield
    static public function writeAll( _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>, _records:stdgo.Slice<stdgo.Slice<stdgo.GoString>>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L136"
        for (__0 => _record in _records) {
            var _err = (_w.write(_record) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L138"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L139"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L142"
        return (@:checkr _w ?? throw "null pointer dereference")._w.flush();
    }
    @:keep
    @:tdfield
    static public function error( _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer> = _w;
        var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._w.write((null : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L130"
        return _err;
    }
    @:keep
    @:tdfield
    static public function flush( _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L124"
        (@:checkr _w ?? throw "null pointer dereference")._w.flush();
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>, _record:stdgo.Slice<stdgo.GoString>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L49"
        if (!stdgo._internal.encoding.csv.Csv__validdelim._validDelim((@:checkr _w ?? throw "null pointer dereference").comma)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L50"
            return stdgo._internal.encoding.csv.Csv__errinvaliddelim._errInvalidDelim;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L53"
        for (_n => _field in _record) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L54"
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L55"
                {
                    var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._w.writeRune((@:checkr _w ?? throw "null pointer dereference").comma), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L56"
                        return _err;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L62"
            if (!_w._fieldNeedsQuotes(_field?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L63"
                {
                    var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._w.writeString(_field?.__copy__()), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L64"
                        return _err;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L66"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L69"
            {
                var _err = ((@:checkr _w ?? throw "null pointer dereference")._w.writeByte((34 : stdgo.GoUInt8)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L70"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L72"
            while (((_field.length) > (0 : stdgo.GoInt) : Bool)) {
                var _i = (stdgo._internal.strings.Strings_indexany.indexAny(_field?.__copy__(), ("\"\r\n" : stdgo.GoString)) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L75"
                if ((_i < (0 : stdgo.GoInt) : Bool)) {
                    _i = (_field.length);
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L80"
                {
                    var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._w.writeString((_field.__slice__(0, _i) : stdgo.GoString)?.__copy__()), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L81"
                        return _err;
                    };
                };
                _field = (_field.__slice__(_i) : stdgo.GoString)?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L86"
                if (((_field.length) > (0 : stdgo.GoInt) : Bool)) {
                    var _err:stdgo.Error = (null : stdgo.Error);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L88"
                    {
                        final __value__ = _field[(0 : stdgo.GoInt)];
                        if (__value__ == ((34 : stdgo.GoUInt8))) {
                            {
                                var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._w.writeString(("\"\"" : stdgo.GoString));
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((13 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L92"
                            if (!(@:checkr _w ?? throw "null pointer dereference").useCRLF) {
                                _err = (@:checkr _w ?? throw "null pointer dereference")._w.writeByte((13 : stdgo.GoUInt8));
                            };
                        } else if (__value__ == ((10 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L96"
                            if ((@:checkr _w ?? throw "null pointer dereference").useCRLF) {
                                {
                                    var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._w.writeString(("\r\n" : stdgo.GoString));
                                    _err = @:tmpset0 __tmp__._1;
                                };
                            } else {
                                _err = (@:checkr _w ?? throw "null pointer dereference")._w.writeByte((10 : stdgo.GoUInt8));
                            };
                        };
                    };
                    _field = (_field.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L103"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L104"
                        return _err;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L108"
            {
                var _err = ((@:checkr _w ?? throw "null pointer dereference")._w.writeByte((34 : stdgo.GoUInt8)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L109"
                    return _err;
                };
            };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L113"
        if ((@:checkr _w ?? throw "null pointer dereference").useCRLF) {
            {
                var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._w.writeString(("\r\n" : stdgo.GoString));
                _err = @:tmpset0 __tmp__._1;
            };
        } else {
            _err = (@:checkr _w ?? throw "null pointer dereference")._w.writeByte((10 : stdgo.GoUInt8));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L118"
        return _err;
    }
}
