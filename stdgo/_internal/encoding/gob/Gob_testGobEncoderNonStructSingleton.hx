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
function testGobEncoderNonStructSingleton(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _g:stdgo._internal.encoding.gob.Gob_Gobber.Gobber = (1234 : stdgo._internal.encoding.gob.Gob_Gobber.Gobber);
        var _g__pointer__ = stdgo.Go.pointer(_g);
        var _g__pointer__ = stdgo.Go.pointer(_g);
        var _g__pointer__ = stdgo.Go.pointer(_g);
        var _g__pointer__ = stdgo.Go.pointer(_g);
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(_g__pointer__)) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x:stdgo._internal.encoding.gob.Gob_Gobber.Gobber = ((0 : stdgo.GoInt) : stdgo._internal.encoding.gob.Gob_Gobber.Gobber);
        var _x__pointer__ = stdgo.Go.pointer(_x);
        var _x__pointer__ = stdgo.Go.pointer(_x);
        var _x__pointer__ = stdgo.Go.pointer(_x);
        var _x__pointer__ = stdgo.Go.pointer(_x);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(_x__pointer__));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_x != ((1234 : stdgo._internal.encoding.gob.Gob_Gobber.Gobber))) {
            @:check2r _t.errorf(("expected 1234 got %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
    }
