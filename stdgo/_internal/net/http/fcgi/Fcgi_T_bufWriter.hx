package stdgo._internal.net.http.fcgi;
@:structInit @:using(stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension) class T_bufWriter {
    public var _closer : stdgo._internal.io.Io_Closer.Closer = (null : stdgo._internal.io.Io_Closer.Closer);
    @:embedded
    public var writer : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
    public function new(?_closer:stdgo._internal.io.Io_Closer.Closer, ?writer:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>) {
        if (_closer != null) this._closer = _closer;
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
    public var buffered(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_buffered():() -> stdgo.GoInt return @:check3 (this.writer ?? throw "null pointer derefrence").buffered;
    public var flush(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_flush():() -> stdgo.Error return @:check3 (this.writer ?? throw "null pointer derefrence").flush;
    public var readFrom(get, never) : stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readFrom():stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check3 (this.writer ?? throw "null pointer derefrence").readFrom;
    public var reset(get, never) : stdgo._internal.io.Io_Writer.Writer -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_reset():stdgo._internal.io.Io_Writer.Writer -> Void return @:check3 (this.writer ?? throw "null pointer derefrence").reset;
    public var size(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt return @:check3 (this.writer ?? throw "null pointer derefrence").size;
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
    public function __copy__() {
        return new T_bufWriter(_closer, writer);
    }
}
