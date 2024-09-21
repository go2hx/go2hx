package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:structInit @:using(_internal.bufio_test.Bufio_test_T_onlyReader_static_extension.T_onlyReader_static_extension) class T_onlyReader {
    @:embedded
    public var reader : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public function new(?reader:stdgo._internal.io.Io_Reader.Reader) {
        if (reader != null) this.reader = reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.reader.read(_p);
    public function __copy__() {
        return new T_onlyReader(reader);
    }
}
