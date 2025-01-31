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
var _sumNN : stdgo.Slice<stdgo._internal.math.big.Big_T_argNN.T_argNN> = (new stdgo.Slice<stdgo._internal.math.big.Big_T_argNN.T_argNN>(6, 6, ...[(new stdgo._internal.math.big.Big_T_argNN.T_argNN() : stdgo._internal.math.big.Big_T_argNN.T_argNN), (new stdgo._internal.math.big.Big_T_argNN.T_argNN((new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), null, (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat)) : stdgo._internal.math.big.Big_T_argNN.T_argNN), (new stdgo._internal.math.big.Big_T_argNN.T_argNN((new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(1111111110u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(123456789u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(987654321u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat)) : stdgo._internal.math.big.Big_T_argNN.T_argNN), (new stdgo._internal.math.big.Big_T_argNN.T_argNN((new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(4, 4, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), null, (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(4, 4, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat)) : stdgo._internal.math.big.Big_T_argNN.T_argNN), (new stdgo._internal.math.big.Big_T_argNN.T_argNN((new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(4, 4, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (1111111110u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(4, 4, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (123456789u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(4, 4, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (987654321u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat)) : stdgo._internal.math.big.Big_T_argNN.T_argNN), (new stdgo._internal.math.big.Big_T_argNN.T_argNN((new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(4, 4, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(3, 3, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(3, 3, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat)) : stdgo._internal.math.big.Big_T_argNN.T_argNN)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.math.big.Big_T_argNN.T_argNN)])) : stdgo.Slice<stdgo._internal.math.big.Big_T_argNN.T_argNN>);
