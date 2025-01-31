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
function testGobPtrSlices(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _in = (new stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>(2, 2, ...[(new stdgo._internal.encoding.gob.Gob_Bug3.Bug3((1 : stdgo.GoInt), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>)) : stdgo._internal.encoding.gob.Gob_Bug3.Bug3), (new stdgo._internal.encoding.gob.Gob_Bug3.Bug3((2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>)) : stdgo._internal.encoding.gob.Gob_Bug3.Bug3)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface((stdgo.Go.setRef(_in) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>>))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _out:stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>);
        _err = @:check2r stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>>)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_out))) {
            @:check2r _t.fatalf(("got %v; wanted %v" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_in));
        };
    }
