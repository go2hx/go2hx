package stdgo._internal.bufio;
@:structInit @:using(stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension) class ReadWriter {
    @:embedded
    public var reader : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    @:embedded
    public var writer : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    public function new(?reader:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?writer:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>) {
        if (reader != null) this.reader = reader;
        if (writer != null) this.writer = writer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var available(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_available():() -> stdgo.GoInt return @:check32 this.writer.available;
    public var availableBuffer(get, never) : () -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_availableBuffer():() -> stdgo.Slice<stdgo.GoUInt8> return @:check32 this.writer.availableBuffer;
    public var discard(get, never) : stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_discard():stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this.reader.discard;
    public var flush(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_flush():() -> stdgo.Error return @:check32 this.writer.flush;
    public var peek(get, never) : stdgo.GoInt -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_peek():stdgo.GoInt -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check32 this.reader.peek;
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this.reader.read;
    public var readByte(get, never) : () -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readByte():() -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return @:check32 this.reader.readByte;
    public var readBytes(get, never) : stdgo.GoUInt8 -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readBytes():stdgo.GoUInt8 -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check32 this.reader.readBytes;
    public var readFrom(get, never) : stdgo._internal.io.Io_reader.Reader -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readFrom():stdgo._internal.io.Io_reader.Reader -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check32 this.writer.readFrom;
    public var readLine(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readLine():() -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return @:check32 this.reader.readLine;
    public var readRune(get, never) : () -> { var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readRune():() -> { var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:check32 this.reader.readRune;
    public var readSlice(get, never) : stdgo.GoUInt8 -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readSlice():stdgo.GoUInt8 -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check32 this.reader.readSlice;
    public var readString(get, never) : stdgo.GoUInt8 -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readString():stdgo.GoUInt8 -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:check32 this.reader.readString;
    public var unreadByte(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_unreadByte():() -> stdgo.Error return @:check32 this.reader.unreadByte;
    public var unreadRune(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_unreadRune():() -> stdgo.Error return @:check32 this.reader.unreadRune;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this.writer.write;
    public var writeByte(get, never) : stdgo.GoUInt8 -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_writeByte():stdgo.GoUInt8 -> stdgo.Error return @:check32 this.writer.writeByte;
    public var writeRune(get, never) : stdgo.GoInt32 -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_writeRune():stdgo.GoInt32 -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this.writer.writeRune;
    public var writeString(get, never) : stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_writeString():stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this.writer.writeString;
    public var writeTo(get, never) : stdgo._internal.io.Io_writer.Writer -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_writeTo():stdgo._internal.io.Io_writer.Writer -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check32 this.reader.writeTo;
    public var _collectFragments(get, never) : stdgo.GoUInt8 -> { var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__collectFragments():stdgo.GoUInt8 -> { var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:check32 this.reader._collectFragments;
    public var _fill(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__fill():() -> Void return @:check32 this.reader._fill;
    public var _readErr(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__readErr():() -> stdgo.Error return @:check32 this.reader._readErr;
    public var _reset(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.io.Io_reader.Reader) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__reset():(stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.io.Io_reader.Reader) -> Void return @:check32 this.reader._reset;
    public var _writeBuf(get, never) : stdgo._internal.io.Io_writer.Writer -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__writeBuf():stdgo._internal.io.Io_writer.Writer -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check32 this.reader._writeBuf;
    public function __copy__() {
        return new ReadWriter(reader, writer);
    }
}
