package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:structInit @:using(_internal.io_test.Io_test_T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430_static_extension.T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430_static_extension) class T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430 {
    @:embedded
    public var writer : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public function new(?writer:stdgo._internal.io.Io_Writer.Writer) {
        if (writer != null) this.writer = writer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.writer.write(_b);
    public function __copy__() {
        return new T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430(writer);
    }
}
