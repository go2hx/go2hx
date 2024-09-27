package stdgo.net.http.internal;
var errLineTooLong(get, set) : stdgo.Error;
private function get_errLineTooLong():stdgo.Error return stdgo._internal.net.http.internal.Internal_errLineTooLong.errLineTooLong;
private function set_errLineTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.internal.Internal_errLineTooLong.errLineTooLong = v;
        return v;
    }
@:structInit @:using(stdgo.net.http.internal.Internal.T_chunkedReader_static_extension) abstract T_chunkedReader(stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader) from stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader to stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader {
    public var _r(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__r():stdgo._internal.bufio.Bufio_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _n(get, set) : haxe.UInt64;
    function get__n():haxe.UInt64 return this._n;
    function set__n(v:haxe.UInt64):haxe.UInt64 {
        this._n = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _checkEnd(get, set) : Bool;
    function get__checkEnd():Bool return this._checkEnd;
    function set__checkEnd(v:Bool):Bool {
        this._checkEnd = v;
        return v;
    }
    public function new(?_r:stdgo._internal.bufio.Bufio_Reader.Reader, ?_n:haxe.UInt64, ?_err:stdgo.Error, ?_buf:haxe.ds.Vector<std.UInt>, ?_checkEnd:Bool) this = new stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader(_r, _n, _err, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _checkEnd);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.internal.Internal.T_chunkedWriter_static_extension) abstract T_chunkedWriter(stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter) from stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter to stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter {
    public var wire(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_wire():stdgo._internal.io.Io_Writer.Writer return this.wire;
    function set_wire(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.wire = v;
        return v;
    }
    public function new(?wire:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter(wire);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.internal.Internal.FlushAfterChunkWriter_static_extension) abstract FlushAfterChunkWriter(stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter) from stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter to stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter {
    public var writer(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get_writer():stdgo._internal.bufio.Bufio_Writer.Writer return this.writer;
    function set_writer(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this.writer = v;
        return v;
    }
    public function new(?writer:stdgo._internal.bufio.Bufio_Writer.Writer) this = new stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter(writer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T_chunkedReader_static_extension {
    static public function read(_cr:T_chunkedReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.internal.Internal_T_chunkedReader_static_extension.T_chunkedReader_static_extension.read(_cr, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _chunkHeaderAvailable(_cr:T_chunkedReader):Bool {
        return stdgo._internal.net.http.internal.Internal_T_chunkedReader_static_extension.T_chunkedReader_static_extension._chunkHeaderAvailable(_cr);
    }
    static public function _beginChunk(_cr:T_chunkedReader):Void {
        stdgo._internal.net.http.internal.Internal_T_chunkedReader_static_extension.T_chunkedReader_static_extension._beginChunk(_cr);
    }
}
class T_chunkedWriter_static_extension {
    static public function close(_cw:T_chunkedWriter):stdgo.Error {
        return stdgo._internal.net.http.internal.Internal_T_chunkedWriter_static_extension.T_chunkedWriter_static_extension.close(_cw);
    }
    static public function write(_cw:T_chunkedWriter, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.internal.Internal_T_chunkedWriter_static_extension.T_chunkedWriter_static_extension.write(_cw, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class FlushAfterChunkWriter_static_extension {
    public static function writeString(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _text:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.writeString(__self__, _text);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeRune(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _r:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.writeRune(__self__, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeByte(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _delim:std.UInt):stdgo.Error {
        return stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.writeByte(__self__, _delim);
    }
    public static function write(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.write(__self__, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function size(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter):StdTypes.Int {
        return stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.size(__self__);
    }
    public static function reset(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _w:stdgo._internal.io.Io_Writer.Writer) {
        stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.reset(__self__, _w);
    }
    public static function readFrom(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.readFrom(__self__, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function flush(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter):stdgo.Error {
        return stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.flush(__self__);
    }
    public static function buffered(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter):StdTypes.Int {
        return stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.buffered(__self__);
    }
    public static function availableBuffer(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.availableBuffer(__self__)) i];
    }
    public static function available(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter):StdTypes.Int {
        return stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.available(__self__);
    }
}
/**
    Package internal contains HTTP internals shared by net/http and
    net/http/httputil.
**/
class Internal {
    /**
        NewChunkedReader returns a new chunkedReader that translates the data read from r
        out of HTTP "chunked" format before returning it.
        The chunkedReader returns io.EOF when the final 0-length chunk is read.
        
        NewChunkedReader is not needed by normal applications. The http package
        automatically decodes chunking when reading response bodies.
    **/
    static public function newChunkedReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.net.http.internal.Internal_newChunkedReader.newChunkedReader(_r);
    }
    /**
        NewChunkedWriter returns a new chunkedWriter that translates writes into HTTP
        "chunked" format before writing them to w. Closing the returned chunkedWriter
        sends the final 0-length chunk that marks the end of the stream but does
        not send the final CRLF that appears after trailers; trailers and the last
        CRLF must be written separately.
        
        NewChunkedWriter is not needed by normal applications. The http
        package adds chunking automatically if handlers don't set a
        Content-Length header. Using newChunkedWriter inside a handler
        would result in double chunking or chunking with a Content-Length
        length, both of which are wrong.
    **/
    static public function newChunkedWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo._internal.net.http.internal.Internal_newChunkedWriter.newChunkedWriter(_w);
    }
}