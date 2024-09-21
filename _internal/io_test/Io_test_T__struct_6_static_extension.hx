package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.io_test.Io_test.T__struct_6_asInterface) class T__struct_6_static_extension {
    @:embedded
    public static function write( __self__:_internal.io_test.Io_test_T__struct_6.T__struct_6, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return return __self__.writer.write(_b);
    @:embedded
    public static function string( __self__:_internal.io_test.Io_test_T__struct_6.T__struct_6):stdgo.GoString return return __self__.stringer.string();
}
