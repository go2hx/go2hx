package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function testDefaultsInArray(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _t7 = (new stdgo._internal.encoding.gob.Gob_T_testDefaultsInArray___localname___Type7_8446.T_testDefaultsInArray___localname___Type7_8446((new stdgo.Slice<Bool>(3, 3, ...[false, false, true]) : stdgo.Slice<Bool>), (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("hi" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("there" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>)) : stdgo._internal.encoding.gob.Gob_T_testDefaultsInArray___localname___Type7_8446.T_testDefaultsInArray___localname___Type7_8446);
        var _t7p:stdgo._internal.encoding.gob.Gob_T_testDefaultsInArray___localname___Type7_8446.T_testDefaultsInArray___localname___Type7_8446 = ({} : stdgo._internal.encoding.gob.Gob_T_testDefaultsInArray___localname___Type7_8446.T_testDefaultsInArray___localname___Type7_8446);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encAndDec._encAndDec(stdgo.Go.toInterface(stdgo.Go.asInterface(_t7)), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t7p) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testDefaultsInArray___localname___Type7_8446.T_testDefaultsInArray___localname___Type7_8446>)))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
