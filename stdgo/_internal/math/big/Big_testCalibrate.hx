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
function testCalibrate(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (!stdgo._internal.math.big.Big__calibrate._calibrate.value) {
            return;
        };
        stdgo._internal.math.big.Big__computeKaratsubaThresholds._computeKaratsubaThresholds();
        var _minSqr = (stdgo._internal.math.big.Big__computeSqrThreshold._computeSqrThreshold((10 : stdgo.GoInt), (30 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt), ("mul(x, x)" : stdgo.GoString), ("basicSqr(x)" : stdgo.GoString)) : stdgo.GoInt);
        var _maxSqr = (stdgo._internal.math.big.Big__computeSqrThreshold._computeSqrThreshold((200 : stdgo.GoInt), (500 : stdgo.GoInt), (10 : stdgo.GoInt), (3 : stdgo.GoInt), ("basicSqr(x)" : stdgo.GoString), ("karatsubaSqr(x)" : stdgo.GoString)) : stdgo.GoInt);
        if (_minSqr != ((0 : stdgo.GoInt))) {
            stdgo._internal.fmt.Fmt_printf.printf(("found basicSqrThreshold = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_minSqr));
        } else {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("no basicSqrThreshold found" : stdgo.GoString)));
        };
        if (_maxSqr != ((0 : stdgo.GoInt))) {
            stdgo._internal.fmt.Fmt_printf.printf(("found karatsubaSqrThreshold = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_maxSqr));
        } else {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("no karatsubaSqrThreshold found" : stdgo.GoString)));
        };
    }
