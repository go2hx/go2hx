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
function testSliceReusesMemory(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        {
            var _x = (("abcd" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf));
            var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(_x)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.errorf(("bytes: encode: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _y = (("ABCDE" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            var _addr = stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]);
            var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_buf));
            _err = @:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)));
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("bytes: decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.bytes.Bytes_equal.equal(_x, _y)) {
                @:check2r _t.errorf(("bytes: expected %q got %q\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
            };
            if (_addr != (stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]))) {
                @:check2r _t.errorf(("bytes: unnecessary reallocation" : stdgo.GoString));
            };
        };
        {
            var _x = (("abcd" : stdgo.GoString) : stdgo.Slice<stdgo.GoInt32>);
            var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf));
            var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(_x)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.errorf(("ints: encode: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _y = (("ABCDE" : stdgo.GoString) : stdgo.Slice<stdgo.GoInt32>);
            var _addr = stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]);
            var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_buf));
            _err = @:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>)));
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("ints: decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y))) {
                @:check2r _t.errorf(("ints: expected %q got %q\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
            };
            if (_addr != (stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]))) {
                @:check2r _t.errorf(("ints: unnecessary reallocation" : stdgo.GoString));
            };
        };
    }
