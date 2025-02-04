package stdgo._internal.net.http.internal;
@:structInit @:using(stdgo._internal.net.http.internal.Internal_flushafterchunkwriter_static_extension.FlushAfterChunkWriter_static_extension) class FlushAfterChunkWriter {
    @:embedded
    public var writer : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    public function new(?writer:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>) {
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
    public var buffered(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_buffered():() -> stdgo.GoInt return @:check32 this.writer.buffered;
    public var flush(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_flush():() -> stdgo.Error return @:check32 this.writer.flush;
    public var readFrom(get, never) : stdgo._internal.io.Io_reader.Reader -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readFrom():stdgo._internal.io.Io_reader.Reader -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check32 this.writer.readFrom;
    public var reset(get, never) : stdgo._internal.io.Io_writer.Writer -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_reset():stdgo._internal.io.Io_writer.Writer -> Void return @:check32 this.writer.reset;
    public var size(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt return @:check32 this.writer.size;
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
    public function __copy__() {
        return new FlushAfterChunkWriter(writer);
    }
}
