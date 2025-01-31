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
function testMillerRabinPseudoprimes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.math.big.Big__testPseudoprimes._testPseudoprimes(_t, ("probablyPrimeMillerRabin" : stdgo.GoString), function(_n:stdgo._internal.math.big.Big_T_nat.T_nat):Bool {
            return (_n._probablyPrimeMillerRabin((1 : stdgo.GoInt), true) && !_n._probablyPrimeLucas() : Bool);
        }, (new stdgo.Slice<stdgo.GoInt>(16, 16, ...[
(2047 : stdgo.GoInt),
(3277 : stdgo.GoInt),
(4033 : stdgo.GoInt),
(4681 : stdgo.GoInt),
(8321 : stdgo.GoInt),
(15841 : stdgo.GoInt),
(29341 : stdgo.GoInt),
(42799 : stdgo.GoInt),
(49141 : stdgo.GoInt),
(52633 : stdgo.GoInt),
(65281 : stdgo.GoInt),
(74665 : stdgo.GoInt),
(80581 : stdgo.GoInt),
(85489 : stdgo.GoInt),
(88357 : stdgo.GoInt),
(90751 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>));
    }
