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
function testGobEncoderIgnoreNonStructField(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _gobber = ((23 : stdgo._internal.encoding.gob.Gob_Gobber.Gobber) : stdgo._internal.encoding.gob.Gob_Gobber.Gobber);
        var _gobber__pointer__ = stdgo.Go.pointer(_gobber);
        var _gobber__pointer__ = stdgo.Go.pointer(_gobber);
        var _gobber__pointer__ = stdgo.Go.pointer(_gobber);
        var _gobber__pointer__ = stdgo.Go.pointer(_gobber);
        var _bgobber = ((24 : stdgo._internal.encoding.gob.Gob_BinaryGobber.BinaryGobber) : stdgo._internal.encoding.gob.Gob_BinaryGobber.BinaryGobber);
        var _bgobber__pointer__ = stdgo.Go.pointer(_bgobber);
        var _bgobber__pointer__ = stdgo.Go.pointer(_bgobber);
        var _bgobber__pointer__ = stdgo.Go.pointer(_bgobber);
        var _bgobber__pointer__ = stdgo.Go.pointer(_bgobber);
        var _tgobber = ((25 : stdgo._internal.encoding.gob.Gob_TextGobber.TextGobber) : stdgo._internal.encoding.gob.Gob_TextGobber.TextGobber);
        var _tgobber__pointer__ = stdgo.Go.pointer(_tgobber);
        var _tgobber__pointer__ = stdgo.Go.pointer(_tgobber);
        var _tgobber__pointer__ = stdgo.Go.pointer(_tgobber);
        var _tgobber__pointer__ = stdgo.Go.pointer(_tgobber);
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_GobTest3.GobTest3((17 : stdgo.GoInt), _gobber__pointer__, _bgobber__pointer__, _tgobber__pointer__) : stdgo._internal.encoding.gob.Gob_GobTest3.GobTest3)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_GobTestIgnoreEncoder.GobTestIgnoreEncoder)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTestIgnoreEncoder.GobTestIgnoreEncoder>);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if ((@:checkr _x ?? throw "null pointer dereference").x != ((17 : stdgo.GoInt))) {
            @:check2r _t.errorf(("expected 17 got %c" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").x));
        };
    }
