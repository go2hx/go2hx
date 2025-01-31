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
var _argshrVU : stdgo.Slice<stdgo._internal.math.big.Big_T_argVU.T_argVU> = (new stdgo.Slice<stdgo._internal.math.big.Big_T_argVU.T_argVU>(16, 16, ...[
(new stdgo._internal.math.big.Big_T_argVU.T_argVU((new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(8, 8, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word), (3u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-2147483648u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>), (7u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(7, 7, ...[(-2147483647u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (2147483647u32 : stdgo._internal.math.big.Big_Word.Word), (1073741824u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>), (-2147483648u32 : stdgo._internal.math.big.Big_Word.Word), ("complete overlap of shrVU" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_argVU.T_argVU),
(new stdgo._internal.math.big.Big_T_argVU.T_argVU((new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(11, 11, ...[
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(3u32 : stdgo._internal.math.big.Big_Word.Word),
(-1u32 : stdgo._internal.math.big.Big_Word.Word),
(-1u32 : stdgo._internal.math.big.Big_Word.Word),
(-1u32 : stdgo._internal.math.big.Big_Word.Word),
(-1u32 : stdgo._internal.math.big.Big_Word.Word),
(-1u32 : stdgo._internal.math.big.Big_Word.Word),
(-2147483648u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>), (7u32 : stdgo.GoUInt), (4u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(7, 7, ...[(-2147483647u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (2147483647u32 : stdgo._internal.math.big.Big_Word.Word), (1073741824u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>), (-2147483648u32 : stdgo._internal.math.big.Big_Word.Word), ("partial overlap by half of shrVU" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_argVU.T_argVU),
(new stdgo._internal.math.big.Big_T_argVU.T_argVU((new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(14, 14, ...[
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(3u32 : stdgo._internal.math.big.Big_Word.Word),
(-1u32 : stdgo._internal.math.big.Big_Word.Word),
(-1u32 : stdgo._internal.math.big.Big_Word.Word),
(-1u32 : stdgo._internal.math.big.Big_Word.Word),
(-1u32 : stdgo._internal.math.big.Big_Word.Word),
(-1u32 : stdgo._internal.math.big.Big_Word.Word),
(-2147483648u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>), (7u32 : stdgo.GoUInt), (7u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(7, 7, ...[(-2147483647u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (2147483647u32 : stdgo._internal.math.big.Big_Word.Word), (1073741824u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>), (-2147483648u32 : stdgo._internal.math.big.Big_Word.Word), ("partial overlap by 1 Word of shrVU" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_argVU.T_argVU),
(new stdgo._internal.math.big.Big_T_argVU.T_argVU((new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(15, 15, ...[
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(0u32 : stdgo._internal.math.big.Big_Word.Word),
(3u32 : stdgo._internal.math.big.Big_Word.Word),
(-1u32 : stdgo._internal.math.big.Big_Word.Word),
(-1u32 : stdgo._internal.math.big.Big_Word.Word),
(-1u32 : stdgo._internal.math.big.Big_Word.Word),
(-1u32 : stdgo._internal.math.big.Big_Word.Word),
(-1u32 : stdgo._internal.math.big.Big_Word.Word),
(-2147483648u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>), (7u32 : stdgo.GoUInt), (8u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(7, 7, ...[(-2147483647u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (-1u32 : stdgo._internal.math.big.Big_Word.Word), (2147483647u32 : stdgo._internal.math.big.Big_Word.Word), (1073741824u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>), (-2147483648u32 : stdgo._internal.math.big.Big_Word.Word), ("no overlap of shrVU" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_argVU.T_argVU),
(new stdgo._internal.math.big.Big_T_argVU.T_argVU(stdgo._internal.math.big.Big__argshrVUIn._argshrVUIn, (7u32 : stdgo.GoUInt), (3u32 : stdgo.GoUInt), (3u32 : stdgo.GoUInt), (0u32 : stdgo.GoUInt), stdgo._internal.math.big.Big__argshrVUr0._argshrVUr0, (0u32 : stdgo._internal.math.big.Big_Word.Word), ("complete overlap of shrVU and shift of 0" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_argVU.T_argVU),
(new stdgo._internal.math.big.Big_T_argVU.T_argVU(stdgo._internal.math.big.Big__argshrVUIn._argshrVUIn, (7u32 : stdgo.GoUInt), (3u32 : stdgo.GoUInt), (3u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), stdgo._internal.math.big.Big__argshrVUr1._argshrVUr1, (-2147483648u32 : stdgo._internal.math.big.Big_Word.Word), ("complete overlap of shrVU and shift of 1" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_argVU.T_argVU),
(new stdgo._internal.math.big.Big_T_argVU.T_argVU(stdgo._internal.math.big.Big__argshrVUIn._argshrVUIn, (7u32 : stdgo.GoUInt), (3u32 : stdgo.GoUInt), (3u32 : stdgo.GoUInt), (31u32 : stdgo.GoUInt), stdgo._internal.math.big.Big__argshrVUrWm1._argshrVUrWm1, (2u32 : stdgo._internal.math.big.Big_Word.Word), ("complete overlap of shrVU and shift of _W - 1" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_argVU.T_argVU),
(new stdgo._internal.math.big.Big_T_argVU.T_argVU(stdgo._internal.math.big.Big__argshrVUIn._argshrVUIn, (7u32 : stdgo.GoUInt), (3u32 : stdgo.GoUInt), (2u32 : stdgo.GoUInt), (0u32 : stdgo.GoUInt), stdgo._internal.math.big.Big__argshrVUr0._argshrVUr0, (0u32 : stdgo._internal.math.big.Big_Word.Word), ("partial overlap by 6 Words of shrVU and shift of 0" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_argVU.T_argVU),
(new stdgo._internal.math.big.Big_T_argVU.T_argVU(stdgo._internal.math.big.Big__argshrVUIn._argshrVUIn, (7u32 : stdgo.GoUInt), (3u32 : stdgo.GoUInt), (2u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), stdgo._internal.math.big.Big__argshrVUr1._argshrVUr1, (-2147483648u32 : stdgo._internal.math.big.Big_Word.Word), ("partial overlap by 6 Words of shrVU and shift of 1" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_argVU.T_argVU),
(new stdgo._internal.math.big.Big_T_argVU.T_argVU(stdgo._internal.math.big.Big__argshrVUIn._argshrVUIn, (7u32 : stdgo.GoUInt), (3u32 : stdgo.GoUInt), (2u32 : stdgo.GoUInt), (31u32 : stdgo.GoUInt), stdgo._internal.math.big.Big__argshrVUrWm1._argshrVUrWm1, (2u32 : stdgo._internal.math.big.Big_Word.Word), ("partial overlap by 6 Words of shrVU and shift of _W - 1" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_argVU.T_argVU),
(new stdgo._internal.math.big.Big_T_argVU.T_argVU(stdgo._internal.math.big.Big__argshrVUIn._argshrVUIn, (7u32 : stdgo.GoUInt), (3u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (0u32 : stdgo.GoUInt), stdgo._internal.math.big.Big__argshrVUr0._argshrVUr0, (0u32 : stdgo._internal.math.big.Big_Word.Word), ("partial overlap by 5 Words of shrVU and shift of 0" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_argVU.T_argVU),
(new stdgo._internal.math.big.Big_T_argVU.T_argVU(stdgo._internal.math.big.Big__argshrVUIn._argshrVUIn, (7u32 : stdgo.GoUInt), (3u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), stdgo._internal.math.big.Big__argshrVUr1._argshrVUr1, (-2147483648u32 : stdgo._internal.math.big.Big_Word.Word), ("partial overlap by 5 Words of shrVU and shift of 1" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_argVU.T_argVU),
(new stdgo._internal.math.big.Big_T_argVU.T_argVU(stdgo._internal.math.big.Big__argshrVUIn._argshrVUIn, (7u32 : stdgo.GoUInt), (3u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (31u32 : stdgo.GoUInt), stdgo._internal.math.big.Big__argshrVUrWm1._argshrVUrWm1, (2u32 : stdgo._internal.math.big.Big_Word.Word), ("partial overlap by 5 Words of shrVU and shift of _W - 1" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_argVU.T_argVU),
(new stdgo._internal.math.big.Big_T_argVU.T_argVU(stdgo._internal.math.big.Big__argshrVUIn._argshrVUIn, (7u32 : stdgo.GoUInt), (3u32 : stdgo.GoUInt), (0u32 : stdgo.GoUInt), (0u32 : stdgo.GoUInt), stdgo._internal.math.big.Big__argshrVUr0._argshrVUr0, (0u32 : stdgo._internal.math.big.Big_Word.Word), ("partial overlap by 4 Words of shrVU and shift of 0" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_argVU.T_argVU),
(new stdgo._internal.math.big.Big_T_argVU.T_argVU(stdgo._internal.math.big.Big__argshrVUIn._argshrVUIn, (7u32 : stdgo.GoUInt), (3u32 : stdgo.GoUInt), (0u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), stdgo._internal.math.big.Big__argshrVUr1._argshrVUr1, (-2147483648u32 : stdgo._internal.math.big.Big_Word.Word), ("partial overlap by 4 Words of shrVU and shift of 1" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_argVU.T_argVU),
(new stdgo._internal.math.big.Big_T_argVU.T_argVU(stdgo._internal.math.big.Big__argshrVUIn._argshrVUIn, (7u32 : stdgo.GoUInt), (3u32 : stdgo.GoUInt), (0u32 : stdgo.GoUInt), (31u32 : stdgo.GoUInt), stdgo._internal.math.big.Big__argshrVUrWm1._argshrVUrWm1, (2u32 : stdgo._internal.math.big.Big_Word.Word), ("partial overlap by 4 Words of shrVU and shift of _W - 1" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_argVU.T_argVU)].concat([for (i in 16 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.math.big.Big_T_argVU.T_argVU)])) : stdgo.Slice<stdgo._internal.math.big.Big_T_argVU.T_argVU>);
