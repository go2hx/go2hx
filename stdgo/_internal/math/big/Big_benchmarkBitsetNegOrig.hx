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
function benchmarkBitsetNegOrig(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _z = stdgo._internal.math.big.Big_newInt.newInt((-1i64 : stdgo.GoInt64));
        stdgo._internal.math.big.Big__altSetBit._altSetBit(_z, _z, (512 : stdgo.GoInt), (0u32 : stdgo.GoUInt));
        @:check2r _b.resetTimer();
        {
            var _i = ((@:checkr _b ?? throw "null pointer dereference").n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.math.big.Big__altSetBit._altSetBit(_z, _z, (_i & (512 : stdgo.GoInt) : stdgo.GoInt), (0u32 : stdgo.GoUInt));
                _i--;
            };
        };
    }
