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
function testIssue37499(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _u = (stdgo._internal.math.big.Big__natFromString._natFromString(("0x2b6c385a05be027f5c22005b63c42a1165b79ff510e1706b39f8489c1d28e57bb5ba4ef9fd9387a3e344402c0a453381" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_nat.T_nat);
        var _v = (stdgo._internal.math.big.Big__natFromString._natFromString(("0x2b6c385a05be027f5c22005b63c42a1165b79ff510e1706c" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_nat.T_nat);
        var _q = ((new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._make((8 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
        _q._divBasic(_u, _v);
        _q = _q._norm();
        {
            var _s = ((_q._utoa((16 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (("fffffffffffffffffffffffffffffffffffffffffffffffb" : stdgo.GoString))) {
                @:check2r _t.fatalf(("incorrect quotient: %s" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
    }
