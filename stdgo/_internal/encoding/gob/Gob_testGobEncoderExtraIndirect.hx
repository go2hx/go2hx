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
function testGobEncoderExtraIndirect(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _gdb = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0(("foo" : stdgo.GoString), ("bar" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _e = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf));
        {
            var _err = (@:check2r _e.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_gdb))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("encode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _d = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_buf));
        var _got:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>);
        {
            var _err = (@:check2r _d.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_got) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>>))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if ((((@:checkr _got ?? throw "null pointer dereference")._foo != (@:checkr _gdb ?? throw "null pointer dereference")._foo) || ((@:checkr _got ?? throw "null pointer dereference")._bar != (@:checkr _gdb ?? throw "null pointer dereference")._bar) : Bool)) {
            @:check2r _t.errorf(("got = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_gdb)));
        };
    }
