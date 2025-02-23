package stdgo.io;
final seekStart : haxe.UInt64 = stdgo._internal.io.Io_seekstart.seekStart;
final seekCurrent : haxe.UInt64 = stdgo._internal.io.Io_seekcurrent.seekCurrent;
final seekEnd : haxe.UInt64 = stdgo._internal.io.Io_seekend.seekEnd;
var errShortWrite(get, set) : stdgo.Error;
private function get_errShortWrite():stdgo.Error return stdgo._internal.io.Io_errshortwrite.errShortWrite;
private function set_errShortWrite(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errshortwrite.errShortWrite = (v : stdgo.Error);
        return v;
    }
var errShortBuffer(get, set) : stdgo.Error;
private function get_errShortBuffer():stdgo.Error return stdgo._internal.io.Io_errshortbuffer.errShortBuffer;
private function set_errShortBuffer(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errshortbuffer.errShortBuffer = (v : stdgo.Error);
        return v;
    }
var eOF(get, set) : stdgo.Error;
private function get_eOF():stdgo.Error return stdgo._internal.io.Io_eof.eOF;
private function set_eOF(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_eof.eOF = (v : stdgo.Error);
        return v;
    }
var errUnexpectedEOF(get, set) : stdgo.Error;
private function get_errUnexpectedEOF():stdgo.Error return stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
private function set_errUnexpectedEOF(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF = (v : stdgo.Error);
        return v;
    }
var errNoProgress(get, set) : stdgo.Error;
private function get_errNoProgress():stdgo.Error return stdgo._internal.io.Io_errnoprogress.errNoProgress;
private function set_errNoProgress(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errnoprogress.errNoProgress = (v : stdgo.Error);
        return v;
    }
var discard(get, set) : Writer;
private function get_discard():Writer return stdgo._internal.io.Io_discard.discard;
private function set_discard(v:Writer):Writer {
        stdgo._internal.io.Io_discard.discard = v;
        return v;
    }
var errClosedPipe(get, set) : stdgo.Error;
private function get_errClosedPipe():stdgo.Error return stdgo._internal.io.Io_errclosedpipe.errClosedPipe;
private function set_errClosedPipe(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errclosedpipe.errClosedPipe = (v : stdgo.Error);
        return v;
    }
var errInvalidWrite(get, set) : stdgo.Error;
private function get_errInvalidWrite():stdgo.Error return stdgo._internal.io.Io_errinvalidwrite.errInvalidWrite;
private function set_errInvalidWrite(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errinvalidwrite.errInvalidWrite = (v : stdgo.Error);
        return v;
    }
var errWhence(get, set) : stdgo.Error;
private function get_errWhence():stdgo.Error return stdgo._internal.io.Io_errwhence.errWhence;
private function set_errWhence(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errwhence.errWhence = (v : stdgo.Error);
        return v;
    }
var errOffset(get, set) : stdgo.Error;
private function get_errOffset():stdgo.Error return stdgo._internal.io.Io_erroffset.errOffset;
private function set_errOffset(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_erroffset.errOffset = (v : stdgo.Error);
        return v;
    }
class Reader_static_extension {
    static public function read(t:stdgo._internal.io.Io_reader.Reader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_reader_static_extension.Reader_static_extension.read(t, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract Reader(stdgo._internal.io.Io_reader.Reader) from stdgo._internal.io.Io_reader.Reader to stdgo._internal.io.Io_reader.Reader {
    @:from
    static function fromHaxeInterface(x:{ function read(_p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; }):Reader {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Reader = { read : _0 -> x.read([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Writer_static_extension {
    static public function write(t:stdgo._internal.io.Io_writer.Writer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_writer_static_extension.Writer_static_extension.write(t, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract Writer(stdgo._internal.io.Io_writer.Writer) from stdgo._internal.io.Io_writer.Writer to stdgo._internal.io.Io_writer.Writer {
    @:from
    static function fromHaxeInterface(x:{ function write(_p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; }):Writer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Writer = { write : _0 -> x.write([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Closer_static_extension {
    static public function close(t:stdgo._internal.io.Io_closer.Closer):stdgo.Error {
        return stdgo._internal.io.Io_closer_static_extension.Closer_static_extension.close(t);
    }
}
@:interface @:forward abstract Closer(stdgo._internal.io.Io_closer.Closer) from stdgo._internal.io.Io_closer.Closer to stdgo._internal.io.Io_closer.Closer {
    @:from
    static function fromHaxeInterface(x:{ function close():stdgo.Error; }):Closer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Closer = { close : () -> x.close(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Seeker_static_extension {
    static public function seek(t:stdgo._internal.io.Io_seeker.Seeker, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.io.Io_seeker_static_extension.Seeker_static_extension.seek(t, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract Seeker(stdgo._internal.io.Io_seeker.Seeker) from stdgo._internal.io.Io_seeker.Seeker to stdgo._internal.io.Io_seeker.Seeker {
    @:from
    static function fromHaxeInterface(x:{ function seek(_offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error>; }):Seeker {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Seeker = { seek : (_0, _1) -> x.seek(_0, _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ReadWriter_static_extension {

}
@:interface @:forward abstract ReadWriter(stdgo._internal.io.Io_readwriter.ReadWriter) from stdgo._internal.io.Io_readwriter.ReadWriter to stdgo._internal.io.Io_readwriter.ReadWriter {
    @:from
    static function fromHaxeInterface(x:{ function read(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; function write(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; }):ReadWriter {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ReadWriter = { read : _0 -> x.read([for (i in _0) i]), write : _0 -> x.write([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ReadCloser_static_extension {

}
@:interface @:forward abstract ReadCloser(stdgo._internal.io.Io_readcloser.ReadCloser) from stdgo._internal.io.Io_readcloser.ReadCloser to stdgo._internal.io.Io_readcloser.ReadCloser {
    @:from
    static function fromHaxeInterface(x:{ function read(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; function close():stdgo.Error; }):ReadCloser {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ReadCloser = { read : _0 -> x.read([for (i in _0) i]), close : () -> x.close(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class WriteCloser_static_extension {

}
@:interface @:forward abstract WriteCloser(stdgo._internal.io.Io_writecloser.WriteCloser) from stdgo._internal.io.Io_writecloser.WriteCloser to stdgo._internal.io.Io_writecloser.WriteCloser {
    @:from
    static function fromHaxeInterface(x:{ function write(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; function close():stdgo.Error; }):WriteCloser {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:WriteCloser = { write : _0 -> x.write([for (i in _0) i]), close : () -> x.close(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ReadWriteCloser_static_extension {

}
@:interface @:forward abstract ReadWriteCloser(stdgo._internal.io.Io_readwritecloser.ReadWriteCloser) from stdgo._internal.io.Io_readwritecloser.ReadWriteCloser to stdgo._internal.io.Io_readwritecloser.ReadWriteCloser {
    @:from
    static function fromHaxeInterface(x:{ function read(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; function write(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; function close():stdgo.Error; }):ReadWriteCloser {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ReadWriteCloser = { read : _0 -> x.read([for (i in _0) i]), write : _0 -> x.write([for (i in _0) i]), close : () -> x.close(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ReadSeeker_static_extension {

}
@:interface @:forward abstract ReadSeeker(stdgo._internal.io.Io_readseeker.ReadSeeker) from stdgo._internal.io.Io_readseeker.ReadSeeker to stdgo._internal.io.Io_readseeker.ReadSeeker {
    @:from
    static function fromHaxeInterface(x:{ function read(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; function seek(_0:haxe.Int64, _1:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error>; }):ReadSeeker {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ReadSeeker = { read : _0 -> x.read([for (i in _0) i]), seek : (_0, _1) -> x.seek(_0, _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ReadSeekCloser_static_extension {

}
@:interface @:forward abstract ReadSeekCloser(stdgo._internal.io.Io_readseekcloser.ReadSeekCloser) from stdgo._internal.io.Io_readseekcloser.ReadSeekCloser to stdgo._internal.io.Io_readseekcloser.ReadSeekCloser {
    @:from
    static function fromHaxeInterface(x:{ function read(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; function seek(_0:haxe.Int64, _1:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error>; function close():stdgo.Error; }):ReadSeekCloser {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ReadSeekCloser = { read : _0 -> x.read([for (i in _0) i]), seek : (_0, _1) -> x.seek(_0, _1), close : () -> x.close(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class WriteSeeker_static_extension {

}
@:interface @:forward abstract WriteSeeker(stdgo._internal.io.Io_writeseeker.WriteSeeker) from stdgo._internal.io.Io_writeseeker.WriteSeeker to stdgo._internal.io.Io_writeseeker.WriteSeeker {
    @:from
    static function fromHaxeInterface(x:{ function write(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; function seek(_0:haxe.Int64, _1:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error>; }):WriteSeeker {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:WriteSeeker = { write : _0 -> x.write([for (i in _0) i]), seek : (_0, _1) -> x.seek(_0, _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ReadWriteSeeker_static_extension {

}
@:interface @:forward abstract ReadWriteSeeker(stdgo._internal.io.Io_readwriteseeker.ReadWriteSeeker) from stdgo._internal.io.Io_readwriteseeker.ReadWriteSeeker to stdgo._internal.io.Io_readwriteseeker.ReadWriteSeeker {
    @:from
    static function fromHaxeInterface(x:{ function read(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; function write(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; function seek(_0:haxe.Int64, _1:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error>; }):ReadWriteSeeker {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ReadWriteSeeker = { read : _0 -> x.read([for (i in _0) i]), write : _0 -> x.write([for (i in _0) i]), seek : (_0, _1) -> x.seek(_0, _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ReaderFrom_static_extension {
    static public function readFrom(t:stdgo._internal.io.Io_readerfrom.ReaderFrom, _r:Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_readerfrom_static_extension.ReaderFrom_static_extension.readFrom(t, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract ReaderFrom(stdgo._internal.io.Io_readerfrom.ReaderFrom) from stdgo._internal.io.Io_readerfrom.ReaderFrom to stdgo._internal.io.Io_readerfrom.ReaderFrom {
    @:from
    static function fromHaxeInterface(x:{ function readFrom(_r:Reader):stdgo.Tuple<haxe.Int64, stdgo.Error>; }):ReaderFrom {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ReaderFrom = { readFrom : _0 -> x.readFrom(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class WriterTo_static_extension {
    static public function writeTo(t:stdgo._internal.io.Io_writerto.WriterTo, _w:Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_writerto_static_extension.WriterTo_static_extension.writeTo(t, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract WriterTo(stdgo._internal.io.Io_writerto.WriterTo) from stdgo._internal.io.Io_writerto.WriterTo to stdgo._internal.io.Io_writerto.WriterTo {
    @:from
    static function fromHaxeInterface(x:{ function writeTo(_w:Writer):stdgo.Tuple<haxe.Int64, stdgo.Error>; }):WriterTo {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:WriterTo = { writeTo : _0 -> x.writeTo(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ReaderAt_static_extension {
    static public function readAt(t:stdgo._internal.io.Io_readerat.ReaderAt, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.io.Io_readerat_static_extension.ReaderAt_static_extension.readAt(t, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract ReaderAt(stdgo._internal.io.Io_readerat.ReaderAt) from stdgo._internal.io.Io_readerat.ReaderAt to stdgo._internal.io.Io_readerat.ReaderAt {
    @:from
    static function fromHaxeInterface(x:{ function readAt(_p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error>; }):ReaderAt {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ReaderAt = { readAt : (_0, _1) -> x.readAt([for (i in _0) i], _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class WriterAt_static_extension {
    static public function writeAt(t:stdgo._internal.io.Io_writerat.WriterAt, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.io.Io_writerat_static_extension.WriterAt_static_extension.writeAt(t, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract WriterAt(stdgo._internal.io.Io_writerat.WriterAt) from stdgo._internal.io.Io_writerat.WriterAt to stdgo._internal.io.Io_writerat.WriterAt {
    @:from
    static function fromHaxeInterface(x:{ function writeAt(_p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error>; }):WriterAt {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:WriterAt = { writeAt : (_0, _1) -> x.writeAt([for (i in _0) i], _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ByteReader_static_extension {
    static public function readByte(t:stdgo._internal.io.Io_bytereader.ByteReader):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_bytereader_static_extension.ByteReader_static_extension.readByte(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract ByteReader(stdgo._internal.io.Io_bytereader.ByteReader) from stdgo._internal.io.Io_bytereader.ByteReader to stdgo._internal.io.Io_bytereader.ByteReader {
    @:from
    static function fromHaxeInterface(x:{ function readByte():stdgo.Tuple<std.UInt, stdgo.Error>; }):ByteReader {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ByteReader = { readByte : () -> x.readByte(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ByteScanner_static_extension {
    static public function unreadByte(t:stdgo._internal.io.Io_bytescanner.ByteScanner):stdgo.Error {
        return stdgo._internal.io.Io_bytescanner_static_extension.ByteScanner_static_extension.unreadByte(t);
    }
}
@:interface @:forward abstract ByteScanner(stdgo._internal.io.Io_bytescanner.ByteScanner) from stdgo._internal.io.Io_bytescanner.ByteScanner to stdgo._internal.io.Io_bytescanner.ByteScanner {
    @:from
    static function fromHaxeInterface(x:{ function unreadByte():stdgo.Error; function readByte():stdgo.Tuple<std.UInt, stdgo.Error>; }):ByteScanner {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ByteScanner = { unreadByte : () -> x.unreadByte(), readByte : () -> x.readByte(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ByteWriter_static_extension {
    static public function writeByte(t:stdgo._internal.io.Io_bytewriter.ByteWriter, _c:std.UInt):stdgo.Error {
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.io.Io_bytewriter_static_extension.ByteWriter_static_extension.writeByte(t, _c);
    }
}
@:interface @:forward abstract ByteWriter(stdgo._internal.io.Io_bytewriter.ByteWriter) from stdgo._internal.io.Io_bytewriter.ByteWriter to stdgo._internal.io.Io_bytewriter.ByteWriter {
    @:from
    static function fromHaxeInterface(x:{ function writeByte(_c:std.UInt):stdgo.Error; }):ByteWriter {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ByteWriter = { writeByte : _0 -> x.writeByte(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class RuneReader_static_extension {
    static public function readRune(t:stdgo._internal.io.Io_runereader.RuneReader):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_runereader_static_extension.RuneReader_static_extension.readRune(t);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
@:interface @:forward abstract RuneReader(stdgo._internal.io.Io_runereader.RuneReader) from stdgo._internal.io.Io_runereader.RuneReader to stdgo._internal.io.Io_runereader.RuneReader {
    @:from
    static function fromHaxeInterface(x:{ function readRune():stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error>; }):RuneReader {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:RuneReader = { readRune : () -> x.readRune(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class RuneScanner_static_extension {
    static public function unreadRune(t:stdgo._internal.io.Io_runescanner.RuneScanner):stdgo.Error {
        return stdgo._internal.io.Io_runescanner_static_extension.RuneScanner_static_extension.unreadRune(t);
    }
}
@:interface @:forward abstract RuneScanner(stdgo._internal.io.Io_runescanner.RuneScanner) from stdgo._internal.io.Io_runescanner.RuneScanner to stdgo._internal.io.Io_runescanner.RuneScanner {
    @:from
    static function fromHaxeInterface(x:{ function unreadRune():stdgo.Error; function readRune():stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error>; }):RuneScanner {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:RuneScanner = { unreadRune : () -> x.unreadRune(), readRune : () -> x.readRune(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class StringWriter_static_extension {
    static public function writeString(t:stdgo._internal.io.Io_stringwriter.StringWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.Io_stringwriter_static_extension.StringWriter_static_extension.writeString(t, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract StringWriter(stdgo._internal.io.Io_stringwriter.StringWriter) from stdgo._internal.io.Io_stringwriter.StringWriter to stdgo._internal.io.Io_stringwriter.StringWriter {
    @:from
    static function fromHaxeInterface(x:{ function writeString(_s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error>; }):StringWriter {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:StringWriter = { writeString : _0 -> x.writeString(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.io.Io.LimitedReader_static_extension) abstract LimitedReader(stdgo._internal.io.Io_limitedreader.LimitedReader) from stdgo._internal.io.Io_limitedreader.LimitedReader to stdgo._internal.io.Io_limitedreader.LimitedReader {
    public var r(get, set) : Reader;
    function get_r():Reader return this.r;
    function set_r(v:Reader):Reader {
        this.r = v;
        return v;
    }
    public var n(get, set) : haxe.Int64;
    function get_n():haxe.Int64 return this.n;
    function set_n(v:haxe.Int64):haxe.Int64 {
        this.n = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?r:Reader, ?n:haxe.Int64) this = new stdgo._internal.io.Io_limitedreader.LimitedReader(r, (n : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.SectionReader_static_extension) abstract SectionReader(stdgo._internal.io.Io_sectionreader.SectionReader) from stdgo._internal.io.Io_sectionreader.SectionReader to stdgo._internal.io.Io_sectionreader.SectionReader {
    public var _r(get, set) : ReaderAt;
    function get__r():ReaderAt return this._r;
    function set__r(v:ReaderAt):ReaderAt {
        this._r = v;
        return v;
    }
    public var _base(get, set) : haxe.Int64;
    function get__base():haxe.Int64 return this._base;
    function set__base(v:haxe.Int64):haxe.Int64 {
        this._base = (v : stdgo.GoInt64);
        return v;
    }
    public var _off(get, set) : haxe.Int64;
    function get__off():haxe.Int64 return this._off;
    function set__off(v:haxe.Int64):haxe.Int64 {
        this._off = (v : stdgo.GoInt64);
        return v;
    }
    public var _limit(get, set) : haxe.Int64;
    function get__limit():haxe.Int64 return this._limit;
    function set__limit(v:haxe.Int64):haxe.Int64 {
        this._limit = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_r:ReaderAt, ?_base:haxe.Int64, ?_off:haxe.Int64, ?_limit:haxe.Int64) this = new stdgo._internal.io.Io_sectionreader.SectionReader(_r, (_base : stdgo.GoInt64), (_off : stdgo.GoInt64), (_limit : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.OffsetWriter_static_extension) abstract OffsetWriter(stdgo._internal.io.Io_offsetwriter.OffsetWriter) from stdgo._internal.io.Io_offsetwriter.OffsetWriter to stdgo._internal.io.Io_offsetwriter.OffsetWriter {
    public var _w(get, set) : WriterAt;
    function get__w():WriterAt return this._w;
    function set__w(v:WriterAt):WriterAt {
        this._w = v;
        return v;
    }
    public var _base(get, set) : haxe.Int64;
    function get__base():haxe.Int64 return this._base;
    function set__base(v:haxe.Int64):haxe.Int64 {
        this._base = (v : stdgo.GoInt64);
        return v;
    }
    public var _off(get, set) : haxe.Int64;
    function get__off():haxe.Int64 return this._off;
    function set__off(v:haxe.Int64):haxe.Int64 {
        this._off = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_w:WriterAt, ?_base:haxe.Int64, ?_off:haxe.Int64) this = new stdgo._internal.io.Io_offsetwriter.OffsetWriter(_w, (_base : stdgo.GoInt64), (_off : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_teeReader_static_extension) @:dox(hide) abstract T_teeReader(stdgo._internal.io.Io_t_teereader.T_teeReader) from stdgo._internal.io.Io_t_teereader.T_teeReader to stdgo._internal.io.Io_t_teereader.T_teeReader {
    public var _r(get, set) : Reader;
    function get__r():Reader return this._r;
    function set__r(v:Reader):Reader {
        this._r = v;
        return v;
    }
    public var _w(get, set) : Writer;
    function get__w():Writer return this._w;
    function set__w(v:Writer):Writer {
        this._w = v;
        return v;
    }
    public function new(?_r:Reader, ?_w:Writer) this = new stdgo._internal.io.Io_t_teereader.T_teeReader(_r, _w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_discard_static_extension) @:dox(hide) abstract T_discard(stdgo._internal.io.Io_t_discard.T_discard) from stdgo._internal.io.Io_t_discard.T_discard to stdgo._internal.io.Io_t_discard.T_discard {
    public function new() this = new stdgo._internal.io.Io_t_discard.T_discard();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_nopCloser_static_extension) @:dox(hide) abstract T_nopCloser(stdgo._internal.io.Io_t_nopcloser.T_nopCloser) from stdgo._internal.io.Io_t_nopcloser.T_nopCloser to stdgo._internal.io.Io_t_nopcloser.T_nopCloser {
    public var reader(get, set) : Reader;
    function get_reader():Reader return this.reader;
    function set_reader(v:Reader):Reader {
        this.reader = v;
        return v;
    }
    public function new(?reader:Reader) this = new stdgo._internal.io.Io_t_nopcloser.T_nopCloser(reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_nopCloserWriterTo_static_extension) @:dox(hide) abstract T_nopCloserWriterTo(stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo) from stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo to stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo {
    public var reader(get, set) : Reader;
    function get_reader():Reader return this.reader;
    function set_reader(v:Reader):Reader {
        this.reader = v;
        return v;
    }
    public function new(?reader:Reader) this = new stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo(reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_eofReader_static_extension) @:dox(hide) abstract T_eofReader(stdgo._internal.io.Io_t_eofreader.T_eofReader) from stdgo._internal.io.Io_t_eofreader.T_eofReader to stdgo._internal.io.Io_t_eofreader.T_eofReader {
    public function new() this = new stdgo._internal.io.Io_t_eofreader.T_eofReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_multiReader_static_extension) @:dox(hide) abstract T_multiReader(stdgo._internal.io.Io_t_multireader.T_multiReader) from stdgo._internal.io.Io_t_multireader.T_multiReader to stdgo._internal.io.Io_t_multireader.T_multiReader {
    public var _readers(get, set) : Array<Reader>;
    function get__readers():Array<Reader> return [for (i in this._readers) i];
    function set__readers(v:Array<Reader>):Array<Reader> {
        this._readers = ([for (i in v) i] : stdgo.Slice<stdgo._internal.io.Io_reader.Reader>);
        return v;
    }
    public function new(?_readers:Array<Reader>) this = new stdgo._internal.io.Io_t_multireader.T_multiReader(([for (i in _readers) i] : stdgo.Slice<stdgo._internal.io.Io_reader.Reader>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_multiWriter_static_extension) @:dox(hide) abstract T_multiWriter(stdgo._internal.io.Io_t_multiwriter.T_multiWriter) from stdgo._internal.io.Io_t_multiwriter.T_multiWriter to stdgo._internal.io.Io_t_multiwriter.T_multiWriter {
    public var _writers(get, set) : Array<Writer>;
    function get__writers():Array<Writer> return [for (i in this._writers) i];
    function set__writers(v:Array<Writer>):Array<Writer> {
        this._writers = ([for (i in v) i] : stdgo.Slice<stdgo._internal.io.Io_writer.Writer>);
        return v;
    }
    public function new(?_writers:Array<Writer>) this = new stdgo._internal.io.Io_t_multiwriter.T_multiWriter(([for (i in _writers) i] : stdgo.Slice<stdgo._internal.io.Io_writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_onceError_static_extension) @:dox(hide) abstract T_onceError(stdgo._internal.io.Io_t_onceerror.T_onceError) from stdgo._internal.io.Io_t_onceerror.T_onceError to stdgo._internal.io.Io_t_onceerror.T_onceError {
    public var mutex(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get_mutex():stdgo._internal.sync.Sync_mutex.Mutex return this.mutex;
    function set_mutex(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this.mutex = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_err:stdgo.Error) this = new stdgo._internal.io.Io_t_onceerror.T_onceError(mutex, (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_pipe_static_extension) @:dox(hide) abstract T_pipe(stdgo._internal.io.Io_t_pipe.T_pipe) from stdgo._internal.io.Io_t_pipe.T_pipe to stdgo._internal.io.Io_t_pipe.T_pipe {
    public var _wrMu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__wrMu():stdgo._internal.sync.Sync_mutex.Mutex return this._wrMu;
    function set__wrMu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._wrMu = v;
        return v;
    }
    public var _wrCh(get, set) : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>;
    function get__wrCh():stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>> return this._wrCh;
    function set__wrCh(v:stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>> {
        this._wrCh = (v : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var _rdCh(get, set) : stdgo.Chan<stdgo.GoInt>;
    function get__rdCh():stdgo.Chan<stdgo.GoInt> return this._rdCh;
    function set__rdCh(v:stdgo.Chan<stdgo.GoInt>):stdgo.Chan<stdgo.GoInt> {
        this._rdCh = (v : stdgo.Chan<stdgo.GoInt>);
        return v;
    }
    public var _once(get, set) : stdgo._internal.sync.Sync_once.Once;
    function get__once():stdgo._internal.sync.Sync_once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_once.Once):stdgo._internal.sync.Sync_once.Once {
        this._once = v;
        return v;
    }
    public var _done(get, set) : stdgo.Chan<stdgo._internal.io.Io_t_discard.T_discard>;
    function get__done():stdgo.Chan<stdgo._internal.io.Io_t_discard.T_discard> return this._done;
    function set__done(v:stdgo.Chan<stdgo._internal.io.Io_t_discard.T_discard>):stdgo.Chan<stdgo._internal.io.Io_t_discard.T_discard> {
        this._done = (v : stdgo.Chan<stdgo._internal.io.Io_t_discard.T_discard>);
        return v;
    }
    public var _rerr(get, set) : T_onceError;
    function get__rerr():T_onceError return this._rerr;
    function set__rerr(v:T_onceError):T_onceError {
        this._rerr = v;
        return v;
    }
    public var _werr(get, set) : T_onceError;
    function get__werr():T_onceError return this._werr;
    function set__werr(v:T_onceError):T_onceError {
        this._werr = v;
        return v;
    }
    public function new(?_wrMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_wrCh:stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>, ?_rdCh:stdgo.Chan<stdgo.GoInt>, ?_once:stdgo._internal.sync.Sync_once.Once, ?_done:stdgo.Chan<stdgo._internal.io.Io_t_discard.T_discard>, ?_rerr:T_onceError, ?_werr:T_onceError) this = new stdgo._internal.io.Io_t_pipe.T_pipe(_wrMu, (_wrCh : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>), (_rdCh : stdgo.Chan<stdgo.GoInt>), _once, (_done : stdgo.Chan<stdgo._internal.io.Io_t_discard.T_discard>), _rerr, _werr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.PipeReader_static_extension) abstract PipeReader(stdgo._internal.io.Io_pipereader.PipeReader) from stdgo._internal.io.Io_pipereader.PipeReader to stdgo._internal.io.Io_pipereader.PipeReader {
    public var _p(get, set) : T_pipe;
    function get__p():T_pipe return this._p;
    function set__p(v:T_pipe):T_pipe {
        this._p = (v : stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>);
        return v;
    }
    public function new(?_p:T_pipe) this = new stdgo._internal.io.Io_pipereader.PipeReader((_p : stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.PipeWriter_static_extension) abstract PipeWriter(stdgo._internal.io.Io_pipewriter.PipeWriter) from stdgo._internal.io.Io_pipewriter.PipeWriter to stdgo._internal.io.Io_pipewriter.PipeWriter {
    public var _p(get, set) : T_pipe;
    function get__p():T_pipe return this._p;
    function set__p(v:T_pipe):T_pipe {
        this._p = (v : stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>);
        return v;
    }
    public function new(?_p:T_pipe) this = new stdgo._internal.io.Io_pipewriter.PipeWriter((_p : stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.io.Io_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.io.Io_t__struct_0.T__struct_0;
typedef LimitedReaderPointer = stdgo._internal.io.Io_limitedreaderpointer.LimitedReaderPointer;
class LimitedReader_static_extension {
    static public function read(_l:LimitedReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_limitedreader_static_extension.LimitedReader_static_extension.read(_l, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef SectionReaderPointer = stdgo._internal.io.Io_sectionreaderpointer.SectionReaderPointer;
class SectionReader_static_extension {
    static public function size(_s:SectionReader):haxe.Int64 {
        final _s = (_s : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
        return stdgo._internal.io.Io_sectionreader_static_extension.SectionReader_static_extension.size(_s);
    }
    static public function readAt(_s:SectionReader, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.io.Io_sectionreader_static_extension.SectionReader_static_extension.readAt(_s, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_s:SectionReader, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.io.Io_sectionreader_static_extension.SectionReader_static_extension.seek(_s, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_s:SectionReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_sectionreader_static_extension.SectionReader_static_extension.read(_s, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef OffsetWriterPointer = stdgo._internal.io.Io_offsetwriterpointer.OffsetWriterPointer;
class OffsetWriter_static_extension {
    static public function seek(_o:OffsetWriter, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _o = (_o : stdgo.Ref<stdgo._internal.io.Io_offsetwriter.OffsetWriter>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.io.Io_offsetwriter_static_extension.OffsetWriter_static_extension.seek(_o, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeAt(_o:OffsetWriter, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _o = (_o : stdgo.Ref<stdgo._internal.io.Io_offsetwriter.OffsetWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.io.Io_offsetwriter_static_extension.OffsetWriter_static_extension.writeAt(_o, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_o:OffsetWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _o = (_o : stdgo.Ref<stdgo._internal.io.Io_offsetwriter.OffsetWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_offsetwriter_static_extension.OffsetWriter_static_extension.write(_o, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_teeReaderPointer = stdgo._internal.io.Io_t_teereaderpointer.T_teeReaderPointer;
@:dox(hide) class T_teeReader_static_extension {
    static public function read(_t:T_teeReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.io.Io_t_teereader.T_teeReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_t_teereader_static_extension.T_teeReader_static_extension.read(_t, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_discardPointer = stdgo._internal.io.Io_t_discardpointer.T_discardPointer;
@:dox(hide) class T_discard_static_extension {
    static public function readFrom(_:T_discard, _r:Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_t_discard_static_extension.T_discard_static_extension.readFrom(_, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeString(_:T_discard, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.Io_t_discard_static_extension.T_discard_static_extension.writeString(_, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_:T_discard, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_t_discard_static_extension.T_discard_static_extension.write(_, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_nopCloserPointer = stdgo._internal.io.Io_t_nopcloserpointer.T_nopCloserPointer;
@:dox(hide) class T_nopCloser_static_extension {
    static public function close(_:T_nopCloser):stdgo.Error {
        return stdgo._internal.io.Io_t_nopcloser_static_extension.T_nopCloser_static_extension.close(_);
    }
    public static function read(__self__:stdgo._internal.io.Io_t_nopcloser.T_nopCloser, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_t_nopcloser_static_extension.T_nopCloser_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_nopCloserWriterToPointer = stdgo._internal.io.Io_t_nopcloserwritertopointer.T_nopCloserWriterToPointer;
@:dox(hide) class T_nopCloserWriterTo_static_extension {
    static public function writeTo(_c:T_nopCloserWriterTo, _w:Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_t_nopcloserwriterto_static_extension.T_nopCloserWriterTo_static_extension.writeTo(_c, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_:T_nopCloserWriterTo):stdgo.Error {
        return stdgo._internal.io.Io_t_nopcloserwriterto_static_extension.T_nopCloserWriterTo_static_extension.close(_);
    }
    public static function read(__self__:stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_t_nopcloserwriterto_static_extension.T_nopCloserWriterTo_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_eofReaderPointer = stdgo._internal.io.Io_t_eofreaderpointer.T_eofReaderPointer;
@:dox(hide) class T_eofReader_static_extension {
    static public function read(_:T_eofReader, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_t_eofreader_static_extension.T_eofReader_static_extension.read(_, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_multiReaderPointer = stdgo._internal.io.Io_t_multireaderpointer.T_multiReaderPointer;
@:dox(hide) class T_multiReader_static_extension {
    static public function _writeToWithBuffer(_mr:T_multiReader, _w:Writer, _buf:Array<std.UInt>):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _mr = (_mr : stdgo.Ref<stdgo._internal.io.Io_t_multireader.T_multiReader>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_t_multireader_static_extension.T_multiReader_static_extension._writeToWithBuffer(_mr, _w, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeTo(_mr:T_multiReader, _w:Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _mr = (_mr : stdgo.Ref<stdgo._internal.io.Io_t_multireader.T_multiReader>);
        return {
            final obj = stdgo._internal.io.Io_t_multireader_static_extension.T_multiReader_static_extension.writeTo(_mr, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_mr:T_multiReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _mr = (_mr : stdgo.Ref<stdgo._internal.io.Io_t_multireader.T_multiReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_t_multireader_static_extension.T_multiReader_static_extension.read(_mr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_multiWriterPointer = stdgo._internal.io.Io_t_multiwriterpointer.T_multiWriterPointer;
@:dox(hide) class T_multiWriter_static_extension {
    static public function writeString(_t:T_multiWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.io.Io_t_multiwriter.T_multiWriter>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.Io_t_multiwriter_static_extension.T_multiWriter_static_extension.writeString(_t, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_t:T_multiWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.io.Io_t_multiwriter.T_multiWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_t_multiwriter_static_extension.T_multiWriter_static_extension.write(_t, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_onceErrorPointer = stdgo._internal.io.Io_t_onceerrorpointer.T_onceErrorPointer;
@:dox(hide) class T_onceError_static_extension {
    static public function load(_a:T_onceError):stdgo.Error {
        final _a = (_a : stdgo.Ref<stdgo._internal.io.Io_t_onceerror.T_onceError>);
        return stdgo._internal.io.Io_t_onceerror_static_extension.T_onceError_static_extension.load(_a);
    }
    static public function store(_a:T_onceError, _err:stdgo.Error):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.io.Io_t_onceerror.T_onceError>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.io.Io_t_onceerror_static_extension.T_onceError_static_extension.store(_a, _err);
    }
    public static function _unlockSlow(__self__:stdgo._internal.io.Io_t_onceerror.T_onceError, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt32);
        stdgo._internal.io.Io_t_onceerror_static_extension.T_onceError_static_extension._unlockSlow(__self__, _0);
    }
    public static function _lockSlow(__self__:stdgo._internal.io.Io_t_onceerror.T_onceError):Void {
        stdgo._internal.io.Io_t_onceerror_static_extension.T_onceError_static_extension._lockSlow(__self__);
    }
    public static function unlock(__self__:stdgo._internal.io.Io_t_onceerror.T_onceError):Void {
        stdgo._internal.io.Io_t_onceerror_static_extension.T_onceError_static_extension.unlock(__self__);
    }
    public static function tryLock(__self__:stdgo._internal.io.Io_t_onceerror.T_onceError):Bool {
        return stdgo._internal.io.Io_t_onceerror_static_extension.T_onceError_static_extension.tryLock(__self__);
    }
    public static function lock(__self__:stdgo._internal.io.Io_t_onceerror.T_onceError):Void {
        stdgo._internal.io.Io_t_onceerror_static_extension.T_onceError_static_extension.lock(__self__);
    }
}
@:dox(hide) typedef T_pipePointer = stdgo._internal.io.Io_t_pipepointer.T_pipePointer;
@:dox(hide) class T_pipe_static_extension {
    static public function _writeCloseError(_p:T_pipe):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>);
        return stdgo._internal.io.Io_t_pipe_static_extension.T_pipe_static_extension._writeCloseError(_p);
    }
    static public function _readCloseError(_p:T_pipe):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>);
        return stdgo._internal.io.Io_t_pipe_static_extension.T_pipe_static_extension._readCloseError(_p);
    }
    static public function _closeWrite(_p:T_pipe, _err:stdgo.Error):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.io.Io_t_pipe_static_extension.T_pipe_static_extension._closeWrite(_p, _err);
    }
    static public function _write(_p:T_pipe, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_t_pipe_static_extension.T_pipe_static_extension._write(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _closeRead(_p:T_pipe, _err:stdgo.Error):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.io.Io_t_pipe_static_extension.T_pipe_static_extension._closeRead(_p, _err);
    }
    static public function _read(_p:T_pipe, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_t_pipe_static_extension.T_pipe_static_extension._read(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef PipeReaderPointer = stdgo._internal.io.Io_pipereaderpointer.PipeReaderPointer;
class PipeReader_static_extension {
    static public function closeWithError(_r:PipeReader, _err:stdgo.Error):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.io.Io_pipereader_static_extension.PipeReader_static_extension.closeWithError(_r, _err);
    }
    static public function close(_r:PipeReader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader>);
        return stdgo._internal.io.Io_pipereader_static_extension.PipeReader_static_extension.close(_r);
    }
    static public function read(_r:PipeReader, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_pipereader_static_extension.PipeReader_static_extension.read(_r, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef PipeWriterPointer = stdgo._internal.io.Io_pipewriterpointer.PipeWriterPointer;
class PipeWriter_static_extension {
    static public function closeWithError(_w:PipeWriter, _err:stdgo.Error):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.io.Io_pipewriter_static_extension.PipeWriter_static_extension.closeWithError(_w, _err);
    }
    static public function close(_w:PipeWriter):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter>);
        return stdgo._internal.io.Io_pipewriter_static_extension.PipeWriter_static_extension.close(_w);
    }
    static public function write(_w:PipeWriter, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_pipewriter_static_extension.PipeWriter_static_extension.write(_w, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.io.Io_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
/**
    * Package io provides basic interfaces to I/O primitives.
    * Its primary job is to wrap existing implementations of such primitives,
    * such as those in package os, into shared public interfaces that
    * abstract the functionality, plus some other related primitives.
    * 
    * Because these interfaces and primitives wrap lower-level operations with
    * various implementations, unless otherwise informed clients should not
    * assume they are safe for parallel execution.
**/
class Io {
    /**
        * WriteString writes the contents of the string s to w, which accepts a slice of bytes.
        * If w implements StringWriter, its WriteString method is invoked directly.
        * Otherwise, w.Write is called exactly once.
    **/
    static public inline function writeString(_w:Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.Io_writestring.writeString(_w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ReadAtLeast reads from r into buf until it has read at least min bytes.
        * It returns the number of bytes copied and an error if fewer bytes were read.
        * The error is EOF only if no bytes were read.
        * If an EOF happens after reading fewer than min bytes,
        * ReadAtLeast returns ErrUnexpectedEOF.
        * If min is greater than the length of buf, ReadAtLeast returns ErrShortBuffer.
        * On return, n >= min if and only if err == nil.
        * If r returns an error having read at least min bytes, the error is dropped.
    **/
    static public inline function readAtLeast(_r:Reader, _buf:Array<std.UInt>, _min:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _min = (_min : stdgo.GoInt);
        return {
            final obj = stdgo._internal.io.Io_readatleast.readAtLeast(_r, _buf, _min);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ReadFull reads exactly len(buf) bytes from r into buf.
        * It returns the number of bytes copied and an error if fewer bytes were read.
        * The error is EOF only if no bytes were read.
        * If an EOF happens after reading some but not all the bytes,
        * ReadFull returns ErrUnexpectedEOF.
        * On return, n == len(buf) if and only if err == nil.
        * If r returns an error having read at least len(buf) bytes, the error is dropped.
    **/
    static public inline function readFull(_r:Reader, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_readfull.readFull(_r, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * CopyN copies n bytes (or until an error) from src to dst.
        * It returns the number of bytes copied and the earliest
        * error encountered while copying.
        * On return, written == n if and only if err == nil.
        * 
        * If dst implements the ReaderFrom interface,
        * the copy is implemented using it.
    **/
    static public inline function copyN(_dst:Writer, _src:Reader, _n:haxe.Int64):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _n = (_n : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.io.Io_copyn.copyN(_dst, _src, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Copy copies from src to dst until either EOF is reached
        * on src or an error occurs. It returns the number of bytes
        * copied and the first error encountered while copying, if any.
        * 
        * A successful Copy returns err == nil, not err == EOF.
        * Because Copy is defined to read from src until EOF, it does
        * not treat an EOF from Read as an error to be reported.
        * 
        * If src implements the WriterTo interface,
        * the copy is implemented by calling src.WriteTo(dst).
        * Otherwise, if dst implements the ReaderFrom interface,
        * the copy is implemented by calling dst.ReadFrom(src).
    **/
    static public inline function copy(_dst:Writer, _src:Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_copy.copy(_dst, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * CopyBuffer is identical to Copy except that it stages through the
        * provided buffer (if one is required) rather than allocating a
        * temporary one. If buf is nil, one is allocated; otherwise if it has
        * zero length, CopyBuffer panics.
        * 
        * If either src implements WriterTo or dst implements ReaderFrom,
        * buf will not be used to perform the copy.
    **/
    static public inline function copyBuffer(_dst:Writer, _src:Reader, _buf:Array<std.UInt>):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_copybuffer.copyBuffer(_dst, _src, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * LimitReader returns a Reader that reads from r
        * but stops with EOF after n bytes.
        * The underlying implementation is a *LimitedReader.
    **/
    static public inline function limitReader(_r:Reader, _n:haxe.Int64):Reader {
        final _n = (_n : stdgo.GoInt64);
        return stdgo._internal.io.Io_limitreader.limitReader(_r, _n);
    }
    /**
        * NewSectionReader returns a SectionReader that reads from r
        * starting at offset off and stops with EOF after n bytes.
    **/
    static public inline function newSectionReader(_r:ReaderAt, _off:haxe.Int64, _n:haxe.Int64):SectionReader {
        final _off = (_off : stdgo.GoInt64);
        final _n = (_n : stdgo.GoInt64);
        return stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, _off, _n);
    }
    /**
        * NewOffsetWriter returns an OffsetWriter that writes to w
        * starting at offset off.
    **/
    static public inline function newOffsetWriter(_w:WriterAt, _off:haxe.Int64):OffsetWriter {
        final _off = (_off : stdgo.GoInt64);
        return stdgo._internal.io.Io_newoffsetwriter.newOffsetWriter(_w, _off);
    }
    /**
        * TeeReader returns a Reader that writes to w what it reads from r.
        * All reads from r performed through it are matched with
        * corresponding writes to w. There is no internal buffering -
        * the write must complete before the read completes.
        * Any error encountered while writing is reported as a read error.
    **/
    static public inline function teeReader(_r:Reader, _w:Writer):Reader {
        return stdgo._internal.io.Io_teereader.teeReader(_r, _w);
    }
    /**
        * NopCloser returns a ReadCloser with a no-op Close method wrapping
        * the provided Reader r.
        * If r implements WriterTo, the returned ReadCloser will implement WriterTo
        * by forwarding calls to r.
    **/
    static public inline function nopCloser(_r:Reader):ReadCloser {
        return stdgo._internal.io.Io_nopcloser.nopCloser(_r);
    }
    /**
        * ReadAll reads from r until an error or EOF and returns the data it read.
        * A successful call returns err == nil, not err == EOF. Because ReadAll is
        * defined to read from src until EOF, it does not treat an EOF from Read
        * as an error to be reported.
    **/
    static public inline function readAll(_r:Reader):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_readall.readAll(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * MultiReader returns a Reader that's the logical concatenation of
        * the provided input readers. They're read sequentially. Once all
        * inputs have returned EOF, Read will return EOF.  If any of the readers
        * return a non-nil, non-EOF error, Read will return that error.
    **/
    static public inline function multiReader(_readers:haxe.Rest<Reader>):Reader {
        return stdgo._internal.io.Io_multireader.multiReader(...[for (i in _readers) i]);
    }
    /**
        * MultiWriter creates a writer that duplicates its writes to all the
        * provided writers, similar to the Unix tee(1) command.
        * 
        * Each write is written to each listed writer, one at a time.
        * If a listed writer returns an error, that overall write operation
        * stops and returns the error; it does not continue down the list.
    **/
    static public inline function multiWriter(_writers:haxe.Rest<Writer>):Writer {
        return stdgo._internal.io.Io_multiwriter.multiWriter(...[for (i in _writers) i]);
    }
    /**
        * Pipe creates a synchronous in-memory pipe.
        * It can be used to connect code expecting an io.Reader
        * with code expecting an io.Writer.
        * 
        * Reads and Writes on the pipe are matched one to one
        * except when multiple Reads are needed to consume a single Write.
        * That is, each Write to the PipeWriter blocks until it has satisfied
        * one or more Reads from the PipeReader that fully consume
        * the written data.
        * The data is copied directly from the Write to the corresponding
        * Read (or Reads); there is no internal buffering.
        * 
        * It is safe to call Read and Write in parallel with each other or with Close.
        * Parallel calls to Read and parallel calls to Write are also safe:
        * the individual calls will be gated sequentially.
    **/
    static public inline function pipe():stdgo.Tuple<PipeReader, PipeWriter> {
        return {
            final obj = stdgo._internal.io.Io_pipe.pipe();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
