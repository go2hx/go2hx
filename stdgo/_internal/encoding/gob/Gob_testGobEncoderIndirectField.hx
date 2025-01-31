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
function testGobEncoderIndirectField(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _s = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct(("HIJKL" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>);
        var _sp = (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>>);
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_GobTestIndirectEncDec.GobTestIndirectEncDec((17 : stdgo.GoInt), stdgo.Go.pointer(_sp)) : stdgo._internal.encoding.gob.Gob_GobTestIndirectEncDec.GobTestIndirectEncDec)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_GobTestIndirectEncDec.GobTestIndirectEncDec)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTestIndirectEncDec.GobTestIndirectEncDec>);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if ((((@:checkr _x ?? throw "null pointer dereference").g.value : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>) : stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct)._s != (("HIJKL" : stdgo.GoString))) {
            @:check2r _t.errorf(("expected `HIJKL` got %s" : stdgo.GoString), stdgo.Go.toInterface((((@:checkr _x ?? throw "null pointer dereference").g.value : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>) : stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct)._s));
        };
    }
