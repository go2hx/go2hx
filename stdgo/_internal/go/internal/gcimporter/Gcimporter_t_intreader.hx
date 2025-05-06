package stdgo._internal.go.internal.gcimporter;
@:structInit @:using(stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension) class T_intReader {
    @:embedded
    public var reader : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    public var _path : stdgo.GoString = "";
    public function new(?reader:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?_path:stdgo.GoString) {
        if (reader != null) this.reader = reader;
        if (_path != null) this._path = _path;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var buffered(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_buffered():() -> stdgo.GoInt return @:check32 this.reader.buffered;
    public var discard(get, never) : stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_discard():stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this.reader.discard;
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
    public var reset(get, never) : stdgo._internal.io.Io_reader.Reader -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_reset():stdgo._internal.io.Io_reader.Reader -> Void return @:check32 this.reader.reset;
    public var size(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt return @:check32 this.reader.size;
    public var unreadByte(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_unreadByte():() -> stdgo.Error return @:check32 this.reader.unreadByte;
    public var unreadRune(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_unreadRune():() -> stdgo.Error return @:check32 this.reader.unreadRune;
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
        return new T_intReader(reader, _path);
    }
}
