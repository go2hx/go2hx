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
function testRecursiveSliceType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _r1 = ({
            var s = new stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_testRecursiveSliceType___localname___recursiveSlice_8150.T_testRecursiveSliceType___localname___recursiveSlice_8150>(2, 0);
            s[0] = {
                var s = new stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_testRecursiveSliceType___localname___recursiveSlice_8150.T_testRecursiveSliceType___localname___recursiveSlice_8150>(1, 0);
                s[0] = null;
                s;
            };
            s[1] = null;
            s;
        } : stdgo._internal.encoding.gob.Gob_T_testRecursiveSliceType___localname___recursiveSlice_8150.T_testRecursiveSliceType___localname___recursiveSlice_8150);
        var _r2 = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_testRecursiveSliceType___localname___recursiveSlice_8150.T_testRecursiveSliceType___localname___recursiveSlice_8150>((0 : stdgo.GoInt).toBasic(), 0) : stdgo._internal.encoding.gob.Gob_T_testRecursiveSliceType___localname___recursiveSlice_8150.T_testRecursiveSliceType___localname___recursiveSlice_8150);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encAndDec._encAndDec(stdgo.Go.toInterface(_r1), stdgo.Go.toInterface((stdgo.Go.setRef(_r2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testRecursiveSliceType___localname___recursiveSlice_8150.T_testRecursiveSliceType___localname___recursiveSlice_8150>))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
