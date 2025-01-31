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
function testChanFuncIgnored(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _f = (function():Void {} : () -> Void);
        var _f__pointer__ = stdgo.Go.pointer(_f);
        var _f__pointer__ = stdgo.Go.pointer(_f);
        var _f__pointer__ = stdgo.Go.pointer(_f);
        var _f__pointer__ = stdgo.Go.pointer(_f);
        var _fp = _f__pointer__;
        var _b0 = (new stdgo._internal.encoding.gob.Gob_Bug2.Bug2((23 : stdgo.GoInt), _c, (stdgo.Go.setRef(_c) : stdgo.Ref<stdgo.Chan<stdgo.GoInt>>), _f, stdgo.Go.pointer(_fp)) : stdgo._internal.encoding.gob.Gob_Bug2.Bug2);
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        {
            var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_b0))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("error encoding:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _b1:stdgo._internal.encoding.gob.Gob_Bug2.Bug2 = ({} : stdgo._internal.encoding.gob.Gob_Bug2.Bug2);
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug2.Bug2>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_b1.a != (_b0.a)) {
            @:check2r _t.fatalf(("got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_b1.a), stdgo.Go.toInterface(_b0.a));
        };
        if ((((_b1.c != null || (_b1.cP != null && ((_b1.cP : Dynamic).__nil__ == null || !(_b1.cP : Dynamic).__nil__)) : Bool) || _b1.f != null : Bool) || (_b1.fPP != null) : Bool)) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("unexpected value for chan or func" : stdgo.GoString)));
        };
    }
