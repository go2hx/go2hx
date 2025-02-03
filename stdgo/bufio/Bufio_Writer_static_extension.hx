package stdgo.bufio;
class Writer_static_extension {
    static public function readFrom(_b:Writer, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return {
            final obj = stdgo._internal.bufio.Bufio_Writer_static_extension.Writer_static_extension.readFrom(_b, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeString(_b:Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.bufio.Bufio_Writer_static_extension.Writer_static_extension.writeString(_b, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeRune(_b:Writer, _r:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        final _r = (_r : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.bufio.Bufio_Writer_static_extension.Writer_static_extension.writeRune(_b, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeByte(_b:Writer, _c:std.UInt):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.bufio.Bufio_Writer_static_extension.Writer_static_extension.writeByte(_b, _c);
    }
    static public function write(_b:Writer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bufio.Bufio_Writer_static_extension.Writer_static_extension.write(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function buffered(_b:Writer):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return stdgo._internal.bufio.Bufio_Writer_static_extension.Writer_static_extension.buffered(_b);
    }
    static public function availableBuffer(_b:Writer):Array<std.UInt> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return [for (i in stdgo._internal.bufio.Bufio_Writer_static_extension.Writer_static_extension.availableBuffer(_b)) i];
    }
    static public function available(_b:Writer):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return stdgo._internal.bufio.Bufio_Writer_static_extension.Writer_static_extension.available(_b);
    }
    static public function flush(_b:Writer):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return stdgo._internal.bufio.Bufio_Writer_static_extension.Writer_static_extension.flush(_b);
    }
    static public function reset(_b:Writer, _w:stdgo._internal.io.Io_Writer.Writer):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        stdgo._internal.bufio.Bufio_Writer_static_extension.Writer_static_extension.reset(_b, _w);
    }
    static public function size(_b:Writer):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return stdgo._internal.bufio.Bufio_Writer_static_extension.Writer_static_extension.size(_b);
    }
}
