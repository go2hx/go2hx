package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T__struct_2_asInterface) class T__struct_2_static_extension {
    @:embedded
    @:localembedfields
    public static function write( __self__:stdgo._internal.encoding.hex.Hex_T__struct_2.T__struct_2, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (__self__.writer ?? throw "null pointer dereference").write(_0);
}
