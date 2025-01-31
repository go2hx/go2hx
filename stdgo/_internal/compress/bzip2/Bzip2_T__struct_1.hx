package stdgo._internal.compress.bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
@:local @:using(stdgo._internal.compress.bzip2.Bzip2_T__struct_1_static_extension.T__struct_1_static_extension) @:using(stdgo._internal.compress.bzip2.Bzip2_T__struct_1_static_extension.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _nbits : stdgo.GoUInt;
    public var _value : stdgo.GoInt;
    public var _fail : Bool;
};
