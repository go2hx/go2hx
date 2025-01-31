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
function _computeKaratsubaThresholds():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("Multiplication times for varying Karatsuba thresholds\n" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_printf.printf(("(run repeatedly for good results)\n" : stdgo.GoString));
        var tb = (stdgo._internal.math.big.Big__measureKaratsuba._measureKaratsuba((1000000000 : stdgo.GoInt)) : stdgo._internal.time.Time_Duration.Duration);
        stdgo._internal.fmt.Fmt_printf.printf(("Tb = %10s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(tb)));
        var _th = (4 : stdgo.GoInt);
        var _th1 = (-1 : stdgo.GoInt);
        var _th2 = (-1 : stdgo.GoInt);
        var _deltaOld:stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
        {
            var _count = (-1 : stdgo.GoInt);
            while (((_count != (0 : stdgo.GoInt)) && (_th < (128 : stdgo.GoInt) : Bool) : Bool)) {
                var tk = (stdgo._internal.math.big.Big__measureKaratsuba._measureKaratsuba(_th) : stdgo._internal.time.Time_Duration.Duration);
var _delta = ((((tb - tk : stdgo._internal.time.Time_Duration.Duration)) * (100i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) / tb : stdgo._internal.time.Time_Duration.Duration);
stdgo._internal.fmt.Fmt_printf.printf(("th = %3d  Tk = %10s  %4d%%" : stdgo.GoString), stdgo.Go.toInterface(_th), stdgo.Go.toInterface(stdgo.Go.asInterface(tk)), stdgo.Go.toInterface(stdgo.Go.asInterface(_delta)));
if (((tk < tb : Bool) && (_th1 < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _th1 = _th;
                    stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(("  break-even point" : stdgo.GoString)));
                };
if (((((0i64 : stdgo._internal.time.Time_Duration.Duration) < _delta : Bool) && (_delta < _deltaOld : Bool) : Bool) && (_th2 < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _th2 = _th;
                    stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(("  diminishing return" : stdgo.GoString)));
                };
_deltaOld = _delta;
stdgo._internal.fmt.Fmt_println.println();
if ((((_th1 >= (0 : stdgo.GoInt) : Bool) && (_th2 >= (0 : stdgo.GoInt) : Bool) : Bool) && (_count < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _count = (10 : stdgo.GoInt);
                };
_th++;
                _count--;
            };
        };
    }
