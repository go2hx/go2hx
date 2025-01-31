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
function testTypeToPtrType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _t0 = (new stdgo._internal.encoding.gob.Gob_T_testTypeToPtrType___localname___Type0_6215.T_testTypeToPtrType___localname___Type0_6215((7 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_T_testTypeToPtrType___localname___Type0_6215.T_testTypeToPtrType___localname___Type0_6215);
        var _t0p = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_testTypeToPtrType___localname___Type0_6215.T_testTypeToPtrType___localname___Type0_6215)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testTypeToPtrType___localname___Type0_6215.T_testTypeToPtrType___localname___Type0_6215>);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encAndDec._encAndDec(stdgo.Go.toInterface(stdgo.Go.asInterface(_t0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t0p))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
