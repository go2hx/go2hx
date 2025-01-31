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
function testFloatRound(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_17.T__struct_17>(64, 64, ...[
({ _prec : (5u32 : stdgo.GoUInt), _x : ("1000" : stdgo.GoString), _zero : ("1000" : stdgo.GoString), _neven : ("1000" : stdgo.GoString), _naway : ("1000" : stdgo.GoString), _away : ("1000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (5u32 : stdgo.GoUInt), _x : ("1001" : stdgo.GoString), _zero : ("1001" : stdgo.GoString), _neven : ("1001" : stdgo.GoString), _naway : ("1001" : stdgo.GoString), _away : ("1001" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (5u32 : stdgo.GoUInt), _x : ("1010" : stdgo.GoString), _zero : ("1010" : stdgo.GoString), _neven : ("1010" : stdgo.GoString), _naway : ("1010" : stdgo.GoString), _away : ("1010" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (5u32 : stdgo.GoUInt), _x : ("1011" : stdgo.GoString), _zero : ("1011" : stdgo.GoString), _neven : ("1011" : stdgo.GoString), _naway : ("1011" : stdgo.GoString), _away : ("1011" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (5u32 : stdgo.GoUInt), _x : ("1100" : stdgo.GoString), _zero : ("1100" : stdgo.GoString), _neven : ("1100" : stdgo.GoString), _naway : ("1100" : stdgo.GoString), _away : ("1100" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (5u32 : stdgo.GoUInt), _x : ("1101" : stdgo.GoString), _zero : ("1101" : stdgo.GoString), _neven : ("1101" : stdgo.GoString), _naway : ("1101" : stdgo.GoString), _away : ("1101" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (5u32 : stdgo.GoUInt), _x : ("1110" : stdgo.GoString), _zero : ("1110" : stdgo.GoString), _neven : ("1110" : stdgo.GoString), _naway : ("1110" : stdgo.GoString), _away : ("1110" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (5u32 : stdgo.GoUInt), _x : ("1111" : stdgo.GoString), _zero : ("1111" : stdgo.GoString), _neven : ("1111" : stdgo.GoString), _naway : ("1111" : stdgo.GoString), _away : ("1111" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (4u32 : stdgo.GoUInt), _x : ("1000" : stdgo.GoString), _zero : ("1000" : stdgo.GoString), _neven : ("1000" : stdgo.GoString), _naway : ("1000" : stdgo.GoString), _away : ("1000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (4u32 : stdgo.GoUInt), _x : ("1001" : stdgo.GoString), _zero : ("1001" : stdgo.GoString), _neven : ("1001" : stdgo.GoString), _naway : ("1001" : stdgo.GoString), _away : ("1001" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (4u32 : stdgo.GoUInt), _x : ("1010" : stdgo.GoString), _zero : ("1010" : stdgo.GoString), _neven : ("1010" : stdgo.GoString), _naway : ("1010" : stdgo.GoString), _away : ("1010" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (4u32 : stdgo.GoUInt), _x : ("1011" : stdgo.GoString), _zero : ("1011" : stdgo.GoString), _neven : ("1011" : stdgo.GoString), _naway : ("1011" : stdgo.GoString), _away : ("1011" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (4u32 : stdgo.GoUInt), _x : ("1100" : stdgo.GoString), _zero : ("1100" : stdgo.GoString), _neven : ("1100" : stdgo.GoString), _naway : ("1100" : stdgo.GoString), _away : ("1100" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (4u32 : stdgo.GoUInt), _x : ("1101" : stdgo.GoString), _zero : ("1101" : stdgo.GoString), _neven : ("1101" : stdgo.GoString), _naway : ("1101" : stdgo.GoString), _away : ("1101" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (4u32 : stdgo.GoUInt), _x : ("1110" : stdgo.GoString), _zero : ("1110" : stdgo.GoString), _neven : ("1110" : stdgo.GoString), _naway : ("1110" : stdgo.GoString), _away : ("1110" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (4u32 : stdgo.GoUInt), _x : ("1111" : stdgo.GoString), _zero : ("1111" : stdgo.GoString), _neven : ("1111" : stdgo.GoString), _naway : ("1111" : stdgo.GoString), _away : ("1111" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (3u32 : stdgo.GoUInt), _x : ("1000" : stdgo.GoString), _zero : ("1000" : stdgo.GoString), _neven : ("1000" : stdgo.GoString), _naway : ("1000" : stdgo.GoString), _away : ("1000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (3u32 : stdgo.GoUInt), _x : ("1001" : stdgo.GoString), _zero : ("1000" : stdgo.GoString), _neven : ("1000" : stdgo.GoString), _naway : ("1010" : stdgo.GoString), _away : ("1010" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (3u32 : stdgo.GoUInt), _x : ("1010" : stdgo.GoString), _zero : ("1010" : stdgo.GoString), _neven : ("1010" : stdgo.GoString), _naway : ("1010" : stdgo.GoString), _away : ("1010" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (3u32 : stdgo.GoUInt), _x : ("1011" : stdgo.GoString), _zero : ("1010" : stdgo.GoString), _neven : ("1100" : stdgo.GoString), _naway : ("1100" : stdgo.GoString), _away : ("1100" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (3u32 : stdgo.GoUInt), _x : ("1100" : stdgo.GoString), _zero : ("1100" : stdgo.GoString), _neven : ("1100" : stdgo.GoString), _naway : ("1100" : stdgo.GoString), _away : ("1100" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (3u32 : stdgo.GoUInt), _x : ("1101" : stdgo.GoString), _zero : ("1100" : stdgo.GoString), _neven : ("1100" : stdgo.GoString), _naway : ("1110" : stdgo.GoString), _away : ("1110" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (3u32 : stdgo.GoUInt), _x : ("1110" : stdgo.GoString), _zero : ("1110" : stdgo.GoString), _neven : ("1110" : stdgo.GoString), _naway : ("1110" : stdgo.GoString), _away : ("1110" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (3u32 : stdgo.GoUInt), _x : ("1111" : stdgo.GoString), _zero : ("1110" : stdgo.GoString), _neven : ("10000" : stdgo.GoString), _naway : ("10000" : stdgo.GoString), _away : ("10000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (3u32 : stdgo.GoUInt), _x : ("1000001" : stdgo.GoString), _zero : ("1000000" : stdgo.GoString), _neven : ("1000000" : stdgo.GoString), _naway : ("1000000" : stdgo.GoString), _away : ("1010000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (3u32 : stdgo.GoUInt), _x : ("1001001" : stdgo.GoString), _zero : ("1000000" : stdgo.GoString), _neven : ("1010000" : stdgo.GoString), _naway : ("1010000" : stdgo.GoString), _away : ("1010000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (3u32 : stdgo.GoUInt), _x : ("1010001" : stdgo.GoString), _zero : ("1010000" : stdgo.GoString), _neven : ("1010000" : stdgo.GoString), _naway : ("1010000" : stdgo.GoString), _away : ("1100000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (3u32 : stdgo.GoUInt), _x : ("1011001" : stdgo.GoString), _zero : ("1010000" : stdgo.GoString), _neven : ("1100000" : stdgo.GoString), _naway : ("1100000" : stdgo.GoString), _away : ("1100000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (3u32 : stdgo.GoUInt), _x : ("1100001" : stdgo.GoString), _zero : ("1100000" : stdgo.GoString), _neven : ("1100000" : stdgo.GoString), _naway : ("1100000" : stdgo.GoString), _away : ("1110000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (3u32 : stdgo.GoUInt), _x : ("1101001" : stdgo.GoString), _zero : ("1100000" : stdgo.GoString), _neven : ("1110000" : stdgo.GoString), _naway : ("1110000" : stdgo.GoString), _away : ("1110000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (3u32 : stdgo.GoUInt), _x : ("1110001" : stdgo.GoString), _zero : ("1110000" : stdgo.GoString), _neven : ("1110000" : stdgo.GoString), _naway : ("1110000" : stdgo.GoString), _away : ("10000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (3u32 : stdgo.GoUInt), _x : ("1111001" : stdgo.GoString), _zero : ("1110000" : stdgo.GoString), _neven : ("10000000" : stdgo.GoString), _naway : ("10000000" : stdgo.GoString), _away : ("10000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (2u32 : stdgo.GoUInt), _x : ("1000" : stdgo.GoString), _zero : ("1000" : stdgo.GoString), _neven : ("1000" : stdgo.GoString), _naway : ("1000" : stdgo.GoString), _away : ("1000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (2u32 : stdgo.GoUInt), _x : ("1001" : stdgo.GoString), _zero : ("1000" : stdgo.GoString), _neven : ("1000" : stdgo.GoString), _naway : ("1000" : stdgo.GoString), _away : ("1100" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (2u32 : stdgo.GoUInt), _x : ("1010" : stdgo.GoString), _zero : ("1000" : stdgo.GoString), _neven : ("1000" : stdgo.GoString), _naway : ("1100" : stdgo.GoString), _away : ("1100" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (2u32 : stdgo.GoUInt), _x : ("1011" : stdgo.GoString), _zero : ("1000" : stdgo.GoString), _neven : ("1100" : stdgo.GoString), _naway : ("1100" : stdgo.GoString), _away : ("1100" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (2u32 : stdgo.GoUInt), _x : ("1100" : stdgo.GoString), _zero : ("1100" : stdgo.GoString), _neven : ("1100" : stdgo.GoString), _naway : ("1100" : stdgo.GoString), _away : ("1100" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (2u32 : stdgo.GoUInt), _x : ("1101" : stdgo.GoString), _zero : ("1100" : stdgo.GoString), _neven : ("1100" : stdgo.GoString), _naway : ("1100" : stdgo.GoString), _away : ("10000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (2u32 : stdgo.GoUInt), _x : ("1110" : stdgo.GoString), _zero : ("1100" : stdgo.GoString), _neven : ("10000" : stdgo.GoString), _naway : ("10000" : stdgo.GoString), _away : ("10000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (2u32 : stdgo.GoUInt), _x : ("1111" : stdgo.GoString), _zero : ("1100" : stdgo.GoString), _neven : ("10000" : stdgo.GoString), _naway : ("10000" : stdgo.GoString), _away : ("10000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (2u32 : stdgo.GoUInt), _x : ("1000001" : stdgo.GoString), _zero : ("1000000" : stdgo.GoString), _neven : ("1000000" : stdgo.GoString), _naway : ("1000000" : stdgo.GoString), _away : ("1100000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (2u32 : stdgo.GoUInt), _x : ("1001001" : stdgo.GoString), _zero : ("1000000" : stdgo.GoString), _neven : ("1000000" : stdgo.GoString), _naway : ("1000000" : stdgo.GoString), _away : ("1100000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (2u32 : stdgo.GoUInt), _x : ("1010001" : stdgo.GoString), _zero : ("1000000" : stdgo.GoString), _neven : ("1100000" : stdgo.GoString), _naway : ("1100000" : stdgo.GoString), _away : ("1100000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (2u32 : stdgo.GoUInt), _x : ("1011001" : stdgo.GoString), _zero : ("1000000" : stdgo.GoString), _neven : ("1100000" : stdgo.GoString), _naway : ("1100000" : stdgo.GoString), _away : ("1100000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (2u32 : stdgo.GoUInt), _x : ("1100001" : stdgo.GoString), _zero : ("1100000" : stdgo.GoString), _neven : ("1100000" : stdgo.GoString), _naway : ("1100000" : stdgo.GoString), _away : ("10000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (2u32 : stdgo.GoUInt), _x : ("1101001" : stdgo.GoString), _zero : ("1100000" : stdgo.GoString), _neven : ("1100000" : stdgo.GoString), _naway : ("1100000" : stdgo.GoString), _away : ("10000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (2u32 : stdgo.GoUInt), _x : ("1110001" : stdgo.GoString), _zero : ("1100000" : stdgo.GoString), _neven : ("10000000" : stdgo.GoString), _naway : ("10000000" : stdgo.GoString), _away : ("10000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (2u32 : stdgo.GoUInt), _x : ("1111001" : stdgo.GoString), _zero : ("1100000" : stdgo.GoString), _neven : ("10000000" : stdgo.GoString), _naway : ("10000000" : stdgo.GoString), _away : ("10000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (1u32 : stdgo.GoUInt), _x : ("1000" : stdgo.GoString), _zero : ("1000" : stdgo.GoString), _neven : ("1000" : stdgo.GoString), _naway : ("1000" : stdgo.GoString), _away : ("1000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (1u32 : stdgo.GoUInt), _x : ("1001" : stdgo.GoString), _zero : ("1000" : stdgo.GoString), _neven : ("1000" : stdgo.GoString), _naway : ("1000" : stdgo.GoString), _away : ("10000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (1u32 : stdgo.GoUInt), _x : ("1010" : stdgo.GoString), _zero : ("1000" : stdgo.GoString), _neven : ("1000" : stdgo.GoString), _naway : ("1000" : stdgo.GoString), _away : ("10000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (1u32 : stdgo.GoUInt), _x : ("1011" : stdgo.GoString), _zero : ("1000" : stdgo.GoString), _neven : ("1000" : stdgo.GoString), _naway : ("1000" : stdgo.GoString), _away : ("10000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (1u32 : stdgo.GoUInt), _x : ("1100" : stdgo.GoString), _zero : ("1000" : stdgo.GoString), _neven : ("10000" : stdgo.GoString), _naway : ("10000" : stdgo.GoString), _away : ("10000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (1u32 : stdgo.GoUInt), _x : ("1101" : stdgo.GoString), _zero : ("1000" : stdgo.GoString), _neven : ("10000" : stdgo.GoString), _naway : ("10000" : stdgo.GoString), _away : ("10000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (1u32 : stdgo.GoUInt), _x : ("1110" : stdgo.GoString), _zero : ("1000" : stdgo.GoString), _neven : ("10000" : stdgo.GoString), _naway : ("10000" : stdgo.GoString), _away : ("10000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (1u32 : stdgo.GoUInt), _x : ("1111" : stdgo.GoString), _zero : ("1000" : stdgo.GoString), _neven : ("10000" : stdgo.GoString), _naway : ("10000" : stdgo.GoString), _away : ("10000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (1u32 : stdgo.GoUInt), _x : ("1000001" : stdgo.GoString), _zero : ("1000000" : stdgo.GoString), _neven : ("1000000" : stdgo.GoString), _naway : ("1000000" : stdgo.GoString), _away : ("10000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (1u32 : stdgo.GoUInt), _x : ("1001001" : stdgo.GoString), _zero : ("1000000" : stdgo.GoString), _neven : ("1000000" : stdgo.GoString), _naway : ("1000000" : stdgo.GoString), _away : ("10000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (1u32 : stdgo.GoUInt), _x : ("1010001" : stdgo.GoString), _zero : ("1000000" : stdgo.GoString), _neven : ("1000000" : stdgo.GoString), _naway : ("1000000" : stdgo.GoString), _away : ("10000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (1u32 : stdgo.GoUInt), _x : ("1011001" : stdgo.GoString), _zero : ("1000000" : stdgo.GoString), _neven : ("1000000" : stdgo.GoString), _naway : ("1000000" : stdgo.GoString), _away : ("10000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (1u32 : stdgo.GoUInt), _x : ("1100001" : stdgo.GoString), _zero : ("1000000" : stdgo.GoString), _neven : ("10000000" : stdgo.GoString), _naway : ("10000000" : stdgo.GoString), _away : ("10000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (1u32 : stdgo.GoUInt), _x : ("1101001" : stdgo.GoString), _zero : ("1000000" : stdgo.GoString), _neven : ("10000000" : stdgo.GoString), _naway : ("10000000" : stdgo.GoString), _away : ("10000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (1u32 : stdgo.GoUInt), _x : ("1110001" : stdgo.GoString), _zero : ("1000000" : stdgo.GoString), _neven : ("10000000" : stdgo.GoString), _naway : ("10000000" : stdgo.GoString), _away : ("10000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17),
({ _prec : (1u32 : stdgo.GoUInt), _x : ("1111001" : stdgo.GoString), _zero : ("1000000" : stdgo.GoString), _neven : ("10000000" : stdgo.GoString), _naway : ("10000000" : stdgo.GoString), _away : ("10000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17)].concat([for (i in 64 ... (64 > 64 ? 64 : 64 : stdgo.GoInt).toBasic()) ({ _prec : (0 : stdgo.GoUInt), _x : ("" : stdgo.GoString), _zero : ("" : stdgo.GoString), _neven : ("" : stdgo.GoString), _naway : ("" : stdgo.GoString), _away : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_17.T__struct_17)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_17.T__struct_17>)) {
            var _x = (stdgo._internal.math.big.Big__fromBinary._fromBinary(_test._x?.__copy__()) : stdgo.GoInt64);
            var _z = (stdgo._internal.math.big.Big__fromBinary._fromBinary(_test._zero?.__copy__()) : stdgo.GoInt64);
            var _e = (stdgo._internal.math.big.Big__fromBinary._fromBinary(_test._neven?.__copy__()) : stdgo.GoInt64);
            var _n = (stdgo._internal.math.big.Big__fromBinary._fromBinary(_test._naway?.__copy__()) : stdgo.GoInt64);
            var _a = (stdgo._internal.math.big.Big__fromBinary._fromBinary(_test._away?.__copy__()) : stdgo.GoInt64);
            var _prec = (_test._prec : stdgo.GoUInt);
            stdgo._internal.math.big.Big__testFloatRound._testFloatRound(_t, _x, _z, _prec, (2 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode));
            stdgo._internal.math.big.Big__testFloatRound._testFloatRound(_t, _x, _e, _prec, (0 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode));
            stdgo._internal.math.big.Big__testFloatRound._testFloatRound(_t, _x, _n, _prec, (1 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode));
            stdgo._internal.math.big.Big__testFloatRound._testFloatRound(_t, _x, _a, _prec, (3 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode));
            stdgo._internal.math.big.Big__testFloatRound._testFloatRound(_t, _x, _z, _prec, (4 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode));
            stdgo._internal.math.big.Big__testFloatRound._testFloatRound(_t, _x, _a, _prec, (5 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode));
            stdgo._internal.math.big.Big__testFloatRound._testFloatRound(_t, -_x, -_a, _prec, (4 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode));
            stdgo._internal.math.big.Big__testFloatRound._testFloatRound(_t, -_x, -_z, _prec, (5 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode));
        };
    }
