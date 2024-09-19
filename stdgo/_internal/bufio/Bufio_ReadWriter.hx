package stdgo._internal.bufio;
@:structInit @:using(stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension) class ReadWriter {
    @:embedded
    public var reader : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
    @:embedded
    public var writer : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
    public function new(?reader:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, ?writer:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>) {
        if (reader != null) this.reader = reader;
        if (writer != null) this.writer = writer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function available():stdgo.GoInt return this.writer.available();
    @:embedded
    public function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return this.writer.availableBuffer();
    @:embedded
    public function discard(__0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.reader.discard(__0);
    @:embedded
    public function flush():stdgo.Error return this.writer.flush();
    @:embedded
    public function peek(__0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.reader.peek(__0);
    @:embedded
    public function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.reader.read(_p);
    @:embedded
    public function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return this.reader.readByte();
    @:embedded
    public function readBytes(_delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.reader.readBytes(_delim);
    @:embedded
    public function readFrom(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return this.writer.readFrom(_r);
    @:embedded
    public function readLine():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return this.reader.readLine();
    @:embedded
    public function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return this.reader.readRune();
    @:embedded
    public function readSlice(_delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.reader.readSlice(_delim);
    @:embedded
    public function readString(_delim:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return this.reader.readString(_delim);
    @:embedded
    public function unreadByte():stdgo.Error return this.reader.unreadByte();
    @:embedded
    public function unreadRune():stdgo.Error return this.reader.unreadRune();
    @:embedded
    public function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.writer.write(_p);
    @:embedded
    public function writeByte(_delim:stdgo.GoUInt8):stdgo.Error return this.writer.writeByte(_delim);
    @:embedded
    public function writeRune(_r:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.writer.writeRune(_r);
    @:embedded
    public function writeString(_text:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.writer.writeString(_text);
    @:embedded
    public function writeTo(_w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return this.reader.writeTo(_w);
    @:embedded
    public function _collectFragments(_delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return this.reader._collectFragments(_delim);
    @:embedded
    public function _fill() this.reader._fill();
    @:embedded
    public function _readErr():stdgo.Error return this.reader._readErr();
    @:embedded
    public function _reset(_buf:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo._internal.io.Io_Reader.Reader) this.reader._reset(_buf, _r);
    @:embedded
    public function _writeBuf(_w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return this.reader._writeBuf(_w);
    public function __copy__() {
        return new ReadWriter(reader, writer);
    }
}
