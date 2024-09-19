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
    public function write(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.writer.write(_data);
    @:embedded
    public function writeByte(_c:stdgo.GoUInt8):stdgo.Error return this.writer.writeByte(_c);
    @:embedded
    public function writeRune(_new:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.writer.writeRune(_new);
    @:embedded
    public function writeString(__0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.writer.writeString(__0);
    public function __copy__() {
        return new T_bufWriter(_closer, writer);
    }
}
