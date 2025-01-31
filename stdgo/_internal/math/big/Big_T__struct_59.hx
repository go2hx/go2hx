package stdgo._internal.math.big;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.encoding.xml.Xml;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.os.Os;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
@:local @:using(stdgo._internal.math.big.Big_T__struct_59_static_extension.T__struct_59_static_extension) @:using(stdgo._internal.math.big.Big_T__struct_59_static_extension.T__struct_59_static_extension) typedef T__struct_59 = {
    public var _s : stdgo.GoString;
    public var _base : stdgo.GoInt;
    public var _frac : Bool;
    public var _x : stdgo._internal.math.big.Big_T_nat.T_nat;
    public var _b : stdgo.GoInt;
    public var _count : stdgo.GoInt;
    public var _err : stdgo.Error;
    public var _next : stdgo.GoInt32;
};
