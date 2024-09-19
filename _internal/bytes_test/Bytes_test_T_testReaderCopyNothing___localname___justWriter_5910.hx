package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(_internal.bytes_test.Bytes_test_T_testReaderCopyNothing___localname___justWriter_5910_static_extension.T_testReaderCopyNothing___localname___justWriter_5910_static_extension) class T_testReaderCopyNothing___localname___justWriter_5910 {
    @:embedded
    public var writer : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public function new(?writer:stdgo._internal.io.Io_Writer.Writer) {
        if (writer != null) this.writer = writer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function write(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.writer.write(__0);
    public function __copy__() {
        return new T_testReaderCopyNothing___localname___justWriter_5910(writer);
    }
}
