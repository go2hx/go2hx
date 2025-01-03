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
    public var available(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_available():() -> stdgo.GoInt return @:check3 (this.writer ?? throw "null pointer derefrence").available;
    public var availableBuffer(get, never) : () -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_availableBuffer():() -> stdgo.Slice<stdgo.GoUInt8> return @:check3 (this.writer ?? throw "null pointer derefrence").availableBuffer;
    public var discard(get, never) : stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_discard():stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").discard;
    public var flush(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_flush():() -> stdgo.Error return @:check3 (this.writer ?? throw "null pointer derefrence").flush;
    public var peek(get, never) : stdgo.GoInt -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_peek():stdgo.GoInt -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").peek;
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").read;
    public var readByte(get, never) : () -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readByte():() -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").readByte;
    public var readBytes(get, never) : stdgo.GoUInt8 -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readBytes():stdgo.GoUInt8 -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").readBytes;
    public var readFrom(get, never) : stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readFrom():stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check3 (this.writer ?? throw "null pointer derefrence").readFrom;
    public var readLine(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readLine():() -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").readLine;
    public var readRune(get, never) : () -> { var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readRune():() -> { var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").readRune;
    public var readSlice(get, never) : stdgo.GoUInt8 -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readSlice():stdgo.GoUInt8 -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").readSlice;
    public var readString(get, never) : stdgo.GoUInt8 -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readString():stdgo.GoUInt8 -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").readString;
    public var unreadByte(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_unreadByte():() -> stdgo.Error return @:check3 (this.reader ?? throw "null pointer derefrence").unreadByte;
    public var unreadRune(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_unreadRune():() -> stdgo.Error return @:check3 (this.reader ?? throw "null pointer derefrence").unreadRune;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.writer ?? throw "null pointer derefrence").write;
    public var writeByte(get, never) : stdgo.GoUInt8 -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_writeByte():stdgo.GoUInt8 -> stdgo.Error return @:check3 (this.writer ?? throw "null pointer derefrence").writeByte;
    public var writeRune(get, never) : stdgo.GoInt32 -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_writeRune():stdgo.GoInt32 -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.writer ?? throw "null pointer derefrence").writeRune;
    public var writeString(get, never) : stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_writeString():stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.writer ?? throw "null pointer derefrence").writeString;
    public var writeTo(get, never) : stdgo._internal.io.Io_Writer.Writer -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_writeTo():stdgo._internal.io.Io_Writer.Writer -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").writeTo;
    public var _collectFragments(get, never) : stdgo.GoUInt8 -> { var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__collectFragments():stdgo.GoUInt8 -> { var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence")._collectFragments;
    public var _fill(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__fill():() -> Void return @:check3 (this.reader ?? throw "null pointer derefrence")._fill;
    public var _readErr(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__readErr():() -> stdgo.Error return @:check3 (this.reader ?? throw "null pointer derefrence")._readErr;
    public var _reset(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.io.Io_Reader.Reader) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__reset():(stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.io.Io_Reader.Reader) -> Void return @:check3 (this.reader ?? throw "null pointer derefrence")._reset;
    public var _writeBuf(get, never) : stdgo._internal.io.Io_Writer.Writer -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__writeBuf():stdgo._internal.io.Io_Writer.Writer -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence")._writeBuf;
    public function __copy__() {
        return new ReadWriter(reader, writer);
    }
}
