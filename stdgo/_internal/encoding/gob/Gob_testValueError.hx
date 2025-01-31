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
function testValueError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _t4p = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_testValueError___localname___Type4_7228.T_testValueError___localname___Type4_7228((3 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_T_testValueError___localname___Type4_7228.T_testValueError___localname___Type4_7228)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testValueError___localname___Type4_7228.T_testValueError___localname___Type4_7228>);
        var _t4:stdgo._internal.encoding.gob.Gob_T_testValueError___localname___Type4_7228.T_testValueError___localname___Type4_7228 = ({} : stdgo._internal.encoding.gob.Gob_T_testValueError___localname___Type4_7228.T_testValueError___localname___Type4_7228);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encAndDec._encAndDec(stdgo.Go.toInterface(stdgo.Go.asInterface(_t4p)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t4))) : stdgo.Error);
            if (((_err == null) || !stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("pointer" : stdgo.GoString)) : Bool)) {
                @:check2r _t.error(stdgo.Go.toInterface(("expected error about pointer; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
