package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_writerOnly_static_extension.T_writerOnly_static_extension) class T_writerOnly {
    @:embedded
    public var writer : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public function new(?writer:stdgo._internal.io.Io_Writer.Writer) {
        if (writer != null) this.writer = writer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function write(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.writer.write(__0);
    public function __copy__() {
        return new T_writerOnly(writer);
    }
}
