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
function _badTypeCheck(_e:stdgo.AnyInterface, _shouldFail:Bool, _msg:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _et1 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET1.ET1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET1.ET1>);
        (@:checkr _et1 ?? throw "null pointer dereference").a = (7 : stdgo.GoInt);
        (@:checkr _et1 ?? throw "null pointer dereference").et2 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET2.ET2)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET2.ET2>);
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_et1))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        _err = @:check2r _dec.decode(_e);
        if ((_shouldFail && (_err == null) : Bool)) {
            @:check2r _t.error(stdgo.Go.toInterface(("expected error for" : stdgo.GoString)), stdgo.Go.toInterface(_msg));
        };
        if ((!_shouldFail && (_err != null) : Bool)) {
            @:check2r _t.error(stdgo.Go.toInterface(("unexpected error for" : stdgo.GoString)), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_err));
        };
    }
