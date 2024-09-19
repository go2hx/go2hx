package stdgo._internal.net.http.internal;
@:structInit @:using(stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension) class FlushAfterChunkWriter {
    @:embedded
    public var writer : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
    public function new(?writer:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>) {
        if (writer != null) this.writer = writer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function available():stdgo.GoInt return this.writer.available();
    @:embedded
    public function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return this.writer.availableBuffer();
    @:embedded
    public function buffered():stdgo.GoInt return this.writer.buffered();
    @:embedded
    public function flush():stdgo.Error return this.writer.flush();
    @:embedded
    public function readFrom(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return this.writer.readFrom(_r);
    @:embedded
    public function reset(_w:stdgo._internal.io.Io_Writer.Writer) this.writer.reset(_w);
    @:embedded
    public function size():stdgo.GoInt return this.writer.size();
    @:embedded
    public function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.writer.write(_p);
    @:embedded
    public function writeByte(_delim:stdgo.GoUInt8):stdgo.Error return this.writer.writeByte(_delim);
    @:embedded
    public function writeRune(_r:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.writer.writeRune(_r);
    @:embedded
    public function writeString(_text:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.writer.writeString(_text);
    public function __copy__() {
        return new FlushAfterChunkWriter(writer);
    }
}
