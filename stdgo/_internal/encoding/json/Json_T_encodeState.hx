package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension) class T_encodeState {
    @:embedded
    public var buffer : stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
    public var _ptrLevel : stdgo.GoUInt = 0;
    public var _ptrSeen : stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue> = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>);
    public function new(?buffer:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_ptrLevel:stdgo.GoUInt, ?_ptrSeen:stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>) {
        if (buffer != null) this.buffer = buffer;
        if (_ptrLevel != null) this._ptrLevel = _ptrLevel;
        if (_ptrSeen != null) this._ptrSeen = _ptrSeen;
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
    public function grow(_n:stdgo.GoInt) this.buffer.grow(_n);
    @:embedded
    public function len():stdgo.GoInt return this.buffer.len();
    @:embedded
    public function next(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return this.buffer.next(_n);
    @:embedded
    public function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.buffer.read(_b);
    @:embedded
    public function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return this.buffer.readByte();
    @:embedded
    public function readBytes(__0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.buffer.readBytes(__0);
    @:embedded
    public function readFrom(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return this.buffer.readFrom(_r);
    @:embedded
    public function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return this.buffer.readRune();
    @:embedded
    public function readString(__0:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return this.buffer.readString(__0);
    @:embedded
    public function reset() this.buffer.reset();
    @:embedded
    public function string():stdgo.GoString return this.buffer.string();
    @:embedded
    public function truncate(_n:stdgo.GoInt) this.buffer.truncate(_n);
    @:embedded
    public function unreadByte():stdgo.Error return this.buffer.unreadByte();
    @:embedded
    public function unreadRune():stdgo.Error return this.buffer.unreadRune();
    @:embedded
    public function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.buffer.write(_b);
    @:embedded
    public function writeByte(__0:stdgo.GoUInt8):stdgo.Error return this.buffer.writeByte(__0);
    @:embedded
    public function writeRune(__0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.buffer.writeRune(__0);
    @:embedded
    public function writeString(__0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.buffer.writeString(__0);
    @:embedded
    public function writeTo(_w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return this.buffer.writeTo(_w);
    @:embedded
    public function _empty():Bool return this.buffer._empty();
    @:embedded
    public function _grow(_n:stdgo.GoInt):stdgo.GoInt return this.buffer._grow(_n);
    @:embedded
    public function _readSlice(__0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.buffer._readSlice(__0);
    @:embedded
    public function _tryGrowByReslice(_n:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return this.buffer._tryGrowByReslice(_n);
    public function __copy__() {
        return new T_encodeState(buffer, _ptrLevel, _ptrSeen);
    }
}
