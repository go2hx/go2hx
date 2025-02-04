package stdgo._internal.io;
@:structInit @:using(stdgo._internal.io.Io_t_nopcloser_static_extension.T_nopCloser_static_extension) class T_nopCloser {
    @:embedded
    public var reader : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public function new(?reader:stdgo._internal.io.Io_reader.Reader) {
        if (reader != null) this.reader = reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.reader ?? throw "null pointer dereference").read;
    public function __copy__() {
        return new T_nopCloser(reader);
    }
}
