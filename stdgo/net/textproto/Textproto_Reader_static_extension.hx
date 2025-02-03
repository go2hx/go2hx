package stdgo.net.textproto;
class Reader_static_extension {
    static public function _upcomingHeaderKeys(_r:Reader):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        return stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension._upcomingHeaderKeys(_r);
    }
    static public function readMIMEHeader(_r:Reader):stdgo.Tuple<MIMEHeader, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension.readMIMEHeader(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readDotLines(_r:Reader):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension.readDotLines(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readDotBytes(_r:Reader):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension.readDotBytes(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _closeDot(_r:Reader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension._closeDot(_r);
    }
    static public function dotReader(_r:Reader):stdgo._internal.io.Io_Reader.Reader {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        return stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension.dotReader(_r);
    }
    static public function readResponse(_r:Reader, _expectCode:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        final _expectCode = (_expectCode : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension.readResponse(_r, _expectCode);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readCodeLine(_r:Reader, _expectCode:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        final _expectCode = (_expectCode : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension.readCodeLine(_r, _expectCode);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _readCodeLine(_r:Reader, _expectCode:StdTypes.Int):stdgo.Tuple.Tuple4<StdTypes.Int, Bool, String, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        final _expectCode = (_expectCode : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension._readCodeLine(_r, _expectCode);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function _skipSpace(_r:Reader):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        return stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension._skipSpace(_r);
    }
    static public function _readContinuedLineSlice(_r:Reader, _validateFirstLine:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        final _validateFirstLine = _validateFirstLine;
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension._readContinuedLineSlice(_r, _validateFirstLine);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readContinuedLineBytes(_r:Reader):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension.readContinuedLineBytes(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readContinuedLine(_r:Reader):stdgo.Tuple<String, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension.readContinuedLine(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readLineSlice(_r:Reader):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension._readLineSlice(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readLineBytes(_r:Reader):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension.readLineBytes(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readLine(_r:Reader):stdgo.Tuple<String, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension.readLine(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
