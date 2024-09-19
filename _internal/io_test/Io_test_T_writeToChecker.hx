package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:structInit @:using(_internal.io_test.Io_test_T_writeToChecker_static_extension.T_writeToChecker_static_extension) class T_writeToChecker {
    @:embedded
    public var buffer : stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
    public var _writeToCalled : Bool = false;
    public function new(?buffer:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_writeToCalled:Bool) {
        if (buffer != null) this.buffer = buffer;
        if (_writeToCalled != null) this._writeToCalled = _writeToCalled;
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
    public function readFrom(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return this.buffer.readFrom(_r);
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
        return new T_writeToChecker(buffer, _writeToCalled);
    }
}
