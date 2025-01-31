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
var _cmpTests : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_52.T__struct_52> = (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_52.T__struct_52>(14, 14, ...[
({ _x : null, _y : null, _r : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_52.T__struct_52),
({ _x : null, _y : (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat), _r : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_52.T__struct_52),
({ _x : (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat), _y : null, _r : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_52.T__struct_52),
({ _x : (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat), _y : (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat), _r : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_52.T__struct_52),
({ _x : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _y : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _r : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_52.T__struct_52),
({ _x : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _y : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _r : (-1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_52.T__struct_52),
({ _x : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _y : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _r : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_52.T__struct_52),
({ _x : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _y : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _r : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_52.T__struct_52),
({ _x : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(2, 2, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _y : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _r : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_52.T__struct_52),
({ _x : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _y : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(2, 2, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _r : (-1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_52.T__struct_52),
({ _x : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(2, 2, ...[(1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _y : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(2, 2, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _r : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_52.T__struct_52),
({ _x : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(2, 2, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _y : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(2, 2, ...[(1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _r : (-1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_52.T__struct_52),
({ _x : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(4, 4, ...[(16u32 : stdgo._internal.math.big.Big_Word.Word), (571956u32 : stdgo._internal.math.big.Big_Word.Word), (8794u32 : stdgo._internal.math.big.Big_Word.Word), (68u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _y : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(4, 4, ...[(837u32 : stdgo._internal.math.big.Big_Word.Word), (9146u32 : stdgo._internal.math.big.Big_Word.Word), (1u32 : stdgo._internal.math.big.Big_Word.Word), (754489u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _r : (-1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_52.T__struct_52),
({ _x : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(4, 4, ...[(34986u32 : stdgo._internal.math.big.Big_Word.Word), (41u32 : stdgo._internal.math.big.Big_Word.Word), (105u32 : stdgo._internal.math.big.Big_Word.Word), (1957u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _y : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(4, 4, ...[(56u32 : stdgo._internal.math.big.Big_Word.Word), (7458u32 : stdgo._internal.math.big.Big_Word.Word), (104u32 : stdgo._internal.math.big.Big_Word.Word), (1957u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), _r : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_52.T__struct_52)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({ _x : new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0), _y : new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0), _r : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_52.T__struct_52)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_52.T__struct_52>);
