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
function _computeSqrThreshold(_from:stdgo.GoInt, _to:stdgo.GoInt, _step:stdgo.GoInt, _nruns:stdgo.GoInt, _lower:stdgo.GoString, _upper:stdgo.GoString):stdgo.GoInt {
        stdgo._internal.fmt.Fmt_printf.printf(("Calibrating threshold between %s and %s\n" : stdgo.GoString), stdgo.Go.toInterface(_lower), stdgo.Go.toInterface(_upper));
        stdgo._internal.fmt.Fmt_printf.printf(("Looking for a timing difference for x between %d - %d words by %d step\n" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_step));
        var _initPos:Bool = false;
        var _threshold:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (_from : stdgo.GoInt);
            while ((_i <= _to : Bool)) {
                var _baseline = (stdgo._internal.math.big.Big__measureSqr._measureSqr(_i, _nruns, _lower.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
var _testval = (stdgo._internal.math.big.Big__measureSqr._measureSqr(_i, _nruns, _upper.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
var _pos = (_baseline > _testval : Bool);
var _delta = (_baseline - _testval : stdgo._internal.time.Time_Duration.Duration);
var _percent = ((_delta * (100i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) / _baseline : stdgo._internal.time.Time_Duration.Duration);
stdgo._internal.fmt.Fmt_printf.printf(("words = %3d deltaT = %10s (%4d%%) is %s better: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_delta)), stdgo.Go.toInterface(stdgo.Go.asInterface(_percent)), stdgo.Go.toInterface(_upper), stdgo.Go.toInterface(_pos));
if (_i == (_from)) {
                    _initPos = _pos;
                };
if (((_threshold == (0 : stdgo.GoInt)) && (_pos != _initPos) : Bool)) {
                    _threshold = _i;
                    stdgo._internal.fmt.Fmt_printf.printf(("  threshold  found" : stdgo.GoString));
                };
stdgo._internal.fmt.Fmt_println.println();
                _i = (_i + (_step) : stdgo.GoInt);
            };
        };
        if (_threshold != ((0 : stdgo.GoInt))) {
            stdgo._internal.fmt.Fmt_printf.printf(("Found threshold = %d between %d - %d\n" : stdgo.GoString), stdgo.Go.toInterface(_threshold), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to));
        } else {
            stdgo._internal.fmt.Fmt_printf.printf(("Found NO threshold between %d - %d\n" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to));
        };
        return _threshold;
    }
