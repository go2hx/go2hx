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
function testDebugStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.encoding.gob.Gob__debugFunc._debugFunc == null) {
            return;
        };
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_OnTheFly.OnTheFly() : stdgo._internal.encoding.gob.Gob_OnTheFly.OnTheFly))));
        var _dt = (stdgo._internal.encoding.gob.Gob__newDT._newDT()?.__copy__() : stdgo._internal.encoding.gob.Gob_DT.DT);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_dt))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _debugBuffer = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(@:check2r _b.bytes());
        var _dt2 = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_DT.DT() : stdgo._internal.encoding.gob.Gob_DT.DT)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_DT.DT>);
        _err = @:check2r stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_dt2) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_DT.DT>>)));
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.encoding.gob.Gob__debugFunc._debugFunc(stdgo.Go.asInterface(_debugBuffer));
    }
