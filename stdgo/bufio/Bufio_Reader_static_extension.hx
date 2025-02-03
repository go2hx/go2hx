package stdgo.bufio;
class Reader_static_extension {
    static public function _writeBuf(_b:Reader, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return {
            final obj = stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension._writeBuf(_b, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeTo(_b:Reader, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return {
            final obj = stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension.writeTo(_b, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readString(_b:Reader, _delim:std.UInt):stdgo.Tuple<String, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        final _delim = (_delim : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension.readString(_b, _delim);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readBytes(_b:Reader, _delim:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        final _delim = (_delim : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension.readBytes(_b, _delim);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _collectFragments(_b:Reader, _delim:std.UInt):stdgo.Tuple.Tuple4<Array<Array<std.UInt>>, Array<std.UInt>, StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        final _delim = (_delim : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension._collectFragments(_b, _delim);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : [for (i in obj._1) i], _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function readLine(_b:Reader):stdgo.Tuple.Tuple3<Array<std.UInt>, Bool, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return {
            final obj = stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension.readLine(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readSlice(_b:Reader, _delim:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        final _delim = (_delim : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension.readSlice(_b, _delim);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function buffered(_b:Reader):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension.buffered(_b);
    }
    static public function unreadRune(_b:Reader):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension.unreadRune(_b);
    }
    static public function readRune(_b:Reader):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return {
            final obj = stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension.readRune(_b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function unreadByte(_b:Reader):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension.unreadByte(_b);
    }
    static public function readByte(_b:Reader):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return {
            final obj = stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension.readByte(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_b:Reader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function discard(_b:Reader, _n:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension.discard(_b, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function peek(_b:Reader, _n:StdTypes.Int):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension.peek(_b, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _readErr(_b:Reader):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension._readErr(_b);
    }
    static public function _fill(_b:Reader):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension._fill(_b);
    }
    static public function _reset(_b:Reader, _buf:Array<std.UInt>, _r:stdgo._internal.io.Io_Reader.Reader):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension._reset(_b, _buf, _r);
    }
    static public function reset(_b:Reader, _r:stdgo._internal.io.Io_Reader.Reader):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension.reset(_b, _r);
    }
    static public function size(_b:Reader):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return stdgo._internal.bufio.Bufio_Reader_static_extension.Reader_static_extension.size(_b);
    }
}
