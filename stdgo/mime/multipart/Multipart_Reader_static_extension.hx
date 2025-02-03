package stdgo.mime.multipart;
class Reader_static_extension {
    static public function _isBoundaryDelimiterLine(_r:Reader, _line:Array<std.UInt>):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>);
        final _line = ([for (i in _line) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.mime.multipart.Multipart_Reader_static_extension.Reader_static_extension._isBoundaryDelimiterLine(_r, _line);
    }
    static public function _isFinalBoundary(_r:Reader, _line:Array<std.UInt>):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>);
        final _line = ([for (i in _line) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.mime.multipart.Multipart_Reader_static_extension.Reader_static_extension._isFinalBoundary(_r, _line);
    }
    static public function _nextPart(_r:Reader, _rawPart:Bool, _maxMIMEHeaderSize:haxe.Int64, _maxMIMEHeaders:haxe.Int64):stdgo.Tuple<Part, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>);
        final _maxMIMEHeaderSize = (_maxMIMEHeaderSize : stdgo.GoInt64);
        final _maxMIMEHeaders = (_maxMIMEHeaders : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Reader_static_extension.Reader_static_extension._nextPart(_r, _rawPart, _maxMIMEHeaderSize, _maxMIMEHeaders);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function nextRawPart(_r:Reader):stdgo.Tuple<Part, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Reader_static_extension.Reader_static_extension.nextRawPart(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function nextPart(_r:Reader):stdgo.Tuple<Part, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Reader_static_extension.Reader_static_extension.nextPart(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readForm(_r:Reader, _maxMemory:haxe.Int64):stdgo.Tuple<Form, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>);
        final _maxMemory = (_maxMemory : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Reader_static_extension.Reader_static_extension._readForm(_r, _maxMemory);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readForm(_r:Reader, _maxMemory:haxe.Int64):stdgo.Tuple<Form, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>);
        final _maxMemory = (_maxMemory : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Reader_static_extension.Reader_static_extension.readForm(_r, _maxMemory);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
