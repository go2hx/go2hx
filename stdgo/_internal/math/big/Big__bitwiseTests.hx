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
var _bitwiseTests : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_42.T__struct_42> = (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_42.T__struct_42>(17, 17, ...[
({ _x : ("0x00" : stdgo.GoString), _y : ("0x00" : stdgo.GoString), _and : ("0x00" : stdgo.GoString), _or : ("0x00" : stdgo.GoString), _xor : ("0x00" : stdgo.GoString), _andNot : ("0x00" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42),
({ _x : ("0x00" : stdgo.GoString), _y : ("0x01" : stdgo.GoString), _and : ("0x00" : stdgo.GoString), _or : ("0x01" : stdgo.GoString), _xor : ("0x01" : stdgo.GoString), _andNot : ("0x00" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42),
({ _x : ("0x01" : stdgo.GoString), _y : ("0x00" : stdgo.GoString), _and : ("0x00" : stdgo.GoString), _or : ("0x01" : stdgo.GoString), _xor : ("0x01" : stdgo.GoString), _andNot : ("0x01" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42),
({ _x : ("-0x01" : stdgo.GoString), _y : ("0x00" : stdgo.GoString), _and : ("0x00" : stdgo.GoString), _or : ("-0x01" : stdgo.GoString), _xor : ("-0x01" : stdgo.GoString), _andNot : ("-0x01" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42),
({ _x : ("-0xaf" : stdgo.GoString), _y : ("-0x50" : stdgo.GoString), _and : ("-0xf0" : stdgo.GoString), _or : ("-0x0f" : stdgo.GoString), _xor : ("0xe1" : stdgo.GoString), _andNot : ("0x41" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42),
({ _x : ("0x00" : stdgo.GoString), _y : ("-0x01" : stdgo.GoString), _and : ("0x00" : stdgo.GoString), _or : ("-0x01" : stdgo.GoString), _xor : ("-0x01" : stdgo.GoString), _andNot : ("0x00" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42),
({ _x : ("0x01" : stdgo.GoString), _y : ("0x01" : stdgo.GoString), _and : ("0x01" : stdgo.GoString), _or : ("0x01" : stdgo.GoString), _xor : ("0x00" : stdgo.GoString), _andNot : ("0x00" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42),
({ _x : ("-0x01" : stdgo.GoString), _y : ("-0x01" : stdgo.GoString), _and : ("-0x01" : stdgo.GoString), _or : ("-0x01" : stdgo.GoString), _xor : ("0x00" : stdgo.GoString), _andNot : ("0x00" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42),
({ _x : ("0x07" : stdgo.GoString), _y : ("0x08" : stdgo.GoString), _and : ("0x00" : stdgo.GoString), _or : ("0x0f" : stdgo.GoString), _xor : ("0x0f" : stdgo.GoString), _andNot : ("0x07" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42),
({ _x : ("0x05" : stdgo.GoString), _y : ("0x0f" : stdgo.GoString), _and : ("0x05" : stdgo.GoString), _or : ("0x0f" : stdgo.GoString), _xor : ("0x0a" : stdgo.GoString), _andNot : ("0x00" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42),
({ _x : ("0xff" : stdgo.GoString), _y : ("-0x0a" : stdgo.GoString), _and : ("0xf6" : stdgo.GoString), _or : ("-0x01" : stdgo.GoString), _xor : ("-0xf7" : stdgo.GoString), _andNot : ("0x09" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42),
({ _x : ("0x013ff6" : stdgo.GoString), _y : ("0x9a4e" : stdgo.GoString), _and : ("0x1a46" : stdgo.GoString), _or : ("0x01bffe" : stdgo.GoString), _xor : ("0x01a5b8" : stdgo.GoString), _andNot : ("0x0125b0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42),
({ _x : ("-0x013ff6" : stdgo.GoString), _y : ("0x9a4e" : stdgo.GoString), _and : ("0x800a" : stdgo.GoString), _or : ("-0x0125b2" : stdgo.GoString), _xor : ("-0x01a5bc" : stdgo.GoString), _andNot : ("-0x01c000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42),
({ _x : ("-0x013ff6" : stdgo.GoString), _y : ("-0x9a4e" : stdgo.GoString), _and : ("-0x01bffe" : stdgo.GoString), _or : ("-0x1a46" : stdgo.GoString), _xor : ("0x01a5b8" : stdgo.GoString), _andNot : ("0x8008" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42),
({ _x : ("0x1000009dc6e3d9822cba04129bcbe3401" : stdgo.GoString), _y : ("0xb9bd7d543685789d57cb918e833af352559021483cdb05cc21fd" : stdgo.GoString), _and : ("0x1000001186210100001000009048c2001" : stdgo.GoString), _or : ("0xb9bd7d543685789d57cb918e8bfeff7fddb2ebe87dfbbdfe35fd" : stdgo.GoString), _xor : ("0xb9bd7d543685789d57ca918e8ae69d6fcdb2eae87df2b97215fc" : stdgo.GoString), _andNot : ("0x8c40c2d8822caa04120b8321400" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42),
({ _x : ("0x1000009dc6e3d9822cba04129bcbe3401" : stdgo.GoString), _y : ("-0xb9bd7d543685789d57cb918e833af352559021483cdb05cc21fd" : stdgo.GoString), _and : ("0x8c40c2d8822caa04120b8321401" : stdgo.GoString), _or : ("-0xb9bd7d543685789d57ca918e82229142459020483cd2014001fd" : stdgo.GoString), _xor : ("-0xb9bd7d543685789d57ca918e8ae69d6fcdb2eae87df2b97215fe" : stdgo.GoString), _andNot : ("0x1000001186210100001000009048c2000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42),
({ _x : ("-0x1000009dc6e3d9822cba04129bcbe3401" : stdgo.GoString), _y : ("-0xb9bd7d543685789d57cb918e833af352559021483cdb05cc21fd" : stdgo.GoString), _and : ("-0xb9bd7d543685789d57cb918e8bfeff7fddb2ebe87dfbbdfe35fd" : stdgo.GoString), _or : ("-0x1000001186210100001000009048c2001" : stdgo.GoString), _xor : ("0xb9bd7d543685789d57ca918e8ae69d6fcdb2eae87df2b97215fc" : stdgo.GoString), _andNot : ("0xb9bd7d543685789d57ca918e82229142459020483cd2014001fc" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _y : ("" : stdgo.GoString), _and : ("" : stdgo.GoString), _or : ("" : stdgo.GoString), _xor : ("" : stdgo.GoString), _andNot : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_42.T__struct_42)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_42.T__struct_42>);
