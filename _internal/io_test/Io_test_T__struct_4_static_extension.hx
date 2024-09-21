package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.io_test.Io_test.T__struct_4_asInterface) class T__struct_4_static_extension {
    @:embedded
    public static function writeTo( __self__:_internal.io_test.Io_test_T__struct_4.T__struct_4, _w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return return __self__.writerTo.writeTo(_w);
    @:embedded
    public static function read( __self__:_internal.io_test.Io_test_T__struct_4.T__struct_4, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return return __self__.reader.read(_b);
}
