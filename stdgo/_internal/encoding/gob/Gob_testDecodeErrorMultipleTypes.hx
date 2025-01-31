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
function testDecodeErrorMultipleTypes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        @:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))).encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917(("one" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917))));
        var __0:stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917 = ({} : stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917), __1:stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917 = ({} : stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917);
var _result2 = __1, _result = __0;
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_result) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.errorf(("decode: unexpected error %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        @:check2 _b.reset();
        @:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))).encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917(("two" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917))));
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_result2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917>))));
        if (_err == null) {
            @:check2r _t.errorf(("decode: expected duplicate type error, got nil" : stdgo.GoString));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("duplicate type" : stdgo.GoString))) {
            @:check2r _t.errorf(("decode: expected duplicate type error, got %s" : stdgo.GoString), stdgo.Go.toInterface(_err.error()));
        };
    }
