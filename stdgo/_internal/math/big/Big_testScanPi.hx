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
function testScanPi(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
        var __tmp__ = _x._scan(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(stdgo._internal.math.big.Big__pi._pi?.__copy__())), (10 : stdgo.GoInt), false), _z:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._0, __8:stdgo.GoInt = __tmp__._1, __9:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            @:check2r _t.errorf(("scanning pi: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _s = ((_z._utoa((10 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (stdgo._internal.math.big.Big__pi._pi)) {
                @:check2r _t.errorf(("scanning pi: got %s" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
    }
