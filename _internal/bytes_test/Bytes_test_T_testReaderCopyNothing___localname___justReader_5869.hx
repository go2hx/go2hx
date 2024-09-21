package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(_internal.bytes_test.Bytes_test_T_testReaderCopyNothing___localname___justReader_5869_static_extension.T_testReaderCopyNothing___localname___justReader_5869_static_extension) class T_testReaderCopyNothing___localname___justReader_5869 {
    @:embedded
    public var reader : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public function new(?reader:stdgo._internal.io.Io_Reader.Reader) {
        if (reader != null) this.reader = reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function read(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.reader.read(__0);
    public function __copy__() {
        return new T_testReaderCopyNothing___localname___justReader_5869(reader);
    }
}
