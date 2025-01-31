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
var _bitTests : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_55.T__struct_55> = (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_55.T__struct_55>(15, 15, ...[
({ _x : ("0" : stdgo.GoString), _i : (0u32 : stdgo.GoUInt), _want : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_55.T__struct_55),
({ _x : ("0" : stdgo.GoString), _i : (1u32 : stdgo.GoUInt), _want : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_55.T__struct_55),
({ _x : ("0" : stdgo.GoString), _i : (1000u32 : stdgo.GoUInt), _want : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_55.T__struct_55),
({ _x : ("0x1" : stdgo.GoString), _i : (0u32 : stdgo.GoUInt), _want : (1u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_55.T__struct_55),
({ _x : ("0x10" : stdgo.GoString), _i : (0u32 : stdgo.GoUInt), _want : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_55.T__struct_55),
({ _x : ("0x10" : stdgo.GoString), _i : (3u32 : stdgo.GoUInt), _want : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_55.T__struct_55),
({ _x : ("0x10" : stdgo.GoString), _i : (4u32 : stdgo.GoUInt), _want : (1u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_55.T__struct_55),
({ _x : ("0x10" : stdgo.GoString), _i : (5u32 : stdgo.GoUInt), _want : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_55.T__struct_55),
({ _x : ("0x8000000000000000" : stdgo.GoString), _i : (62u32 : stdgo.GoUInt), _want : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_55.T__struct_55),
({ _x : ("0x8000000000000000" : stdgo.GoString), _i : (63u32 : stdgo.GoUInt), _want : (1u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_55.T__struct_55),
({ _x : ("0x8000000000000000" : stdgo.GoString), _i : (64u32 : stdgo.GoUInt), _want : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_55.T__struct_55),
({ _x : (("0x3" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("0" : stdgo.GoString), (32 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(), _i : (127u32 : stdgo.GoUInt), _want : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_55.T__struct_55),
({ _x : (("0x3" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("0" : stdgo.GoString), (32 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(), _i : (128u32 : stdgo.GoUInt), _want : (1u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_55.T__struct_55),
({ _x : (("0x3" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("0" : stdgo.GoString), (32 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(), _i : (129u32 : stdgo.GoUInt), _want : (1u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_55.T__struct_55),
({ _x : (("0x3" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("0" : stdgo.GoString), (32 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(), _i : (130u32 : stdgo.GoUInt), _want : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_55.T__struct_55)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _i : (0 : stdgo.GoUInt), _want : (0 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_55.T__struct_55)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_55.T__struct_55>);
