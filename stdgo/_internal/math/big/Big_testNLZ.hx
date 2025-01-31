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
function testNLZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:stdgo._internal.math.big.Big_Word.Word = (-2147483648u32 : stdgo._internal.math.big.Big_Word.Word);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (32 : stdgo.GoInt) : Bool)) {
                if ((stdgo._internal.math.big.Big__nlz._nlz(_x) : stdgo.GoInt) != (_i)) {
                    @:check2r _t.errorf(("failed at %x: got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo._internal.math.big.Big__nlz._nlz(_x)), stdgo.Go.toInterface(_i));
                };
_x = (_x >> ((1i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_Word.Word);
                _i++;
            };
        };
    }
