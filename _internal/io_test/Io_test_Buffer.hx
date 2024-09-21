package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:structInit @:using(_internal.io_test.Io_test_Buffer_static_extension.Buffer_static_extension) class Buffer {
    @:embedded
    public var buffer : stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
    @:embedded
    public var readerFrom : stdgo._internal.io.Io_ReaderFrom.ReaderFrom = (null : stdgo._internal.io.Io_ReaderFrom.ReaderFrom);
    @:embedded
    public var writerTo : stdgo._internal.io.Io_WriterTo.WriterTo = (null : stdgo._internal.io.Io_WriterTo.WriterTo);
    public function new(?buffer:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?readerFrom:stdgo._internal.io.Io_ReaderFrom.ReaderFrom, ?writerTo:stdgo._internal.io.Io_WriterTo.WriterTo) {
        if (buffer != null) this.buffer = buffer;
        if (readerFrom != null) this.readerFrom = readerFrom;
        if (writerTo != null) this.writerTo = writerTo;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function available():stdgo.GoInt return this.buffer.available();
    @:embedded
    public function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return this.buffer.availableBuffer();
    @:embedded
    public function bytes():stdgo.Slice<stdgo.GoUInt8> return this.buffer.bytes();
    @:embedded
    public function cap():stdgo.GoInt return this.buffer.cap();
    @:embedded
    public function grow(__0:stdgo.GoInt) this.buffer.grow(__0);
    @:embedded
    public function len():stdgo.GoInt return this.buffer.len();
    @:embedded
    public function next(__0:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return this.buffer.next(__0);
    @:embedded
    public function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.buffer.read(_b);
    @:embedded
    public function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return this.buffer.readByte();
    @:embedded
    public function readBytes(_c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.buffer.readBytes(_c);
    @:embedded
    public function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return this.buffer.readRune();
    @:embedded
    public function readString(_c:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return this.buffer.readString(_c);
    @:embedded
    public function reset() this.buffer.reset();
    @:embedded
    public function string():stdgo.GoString return this.buffer.string();
    @:embedded
    public function truncate(__0:stdgo.GoInt) this.buffer.truncate(__0);
    @:embedded
    public function unreadByte():stdgo.Error return this.buffer.unreadByte();
    @:embedded
    public function unreadRune():stdgo.Error return this.buffer.unreadRune();
    @:embedded
    public function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.buffer.write(_b);
    @:embedded
    public function writeByte(_c:stdgo.GoUInt8):stdgo.Error return this.buffer.writeByte(_c);
    @:embedded
    public function writeRune(__0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.buffer.writeRune(__0);
    @:embedded
    public function writeString(__0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.buffer.writeString(__0);
    @:embedded
    public function _empty():Bool return this.buffer._empty();
    @:embedded
    public function _grow(__0:stdgo.GoInt):stdgo.GoInt return this.buffer._grow(__0);
    @:embedded
    public function _readSlice(_c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.buffer._readSlice(_c);
    @:embedded
    public function _tryGrowByReslice(__0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return this.buffer._tryGrowByReslice(__0);
    public function __copy__() {
        return new Buffer(buffer, readerFrom, writerTo);
    }
}
