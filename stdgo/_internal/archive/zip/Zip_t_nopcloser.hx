package stdgo._internal.archive.zip;
@:structInit @:using(stdgo._internal.archive.zip.Zip_t_nopcloser_static_extension.T_nopCloser_static_extension) class T_nopCloser {
    @:embedded
    public var writer : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public function new(?writer:stdgo._internal.io.Io_writer.Writer) {
        if (writer != null) this.writer = writer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.writer ?? throw "null pointer dereference").write;
    public function __copy__() {
        return new T_nopCloser(writer);
    }
}
