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
function testErrorForHugeSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _slice = (new stdgo.Slice<stdgo.GoInt>(10, 10, ...[(1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf)).encode(stdgo.Go.toInterface(_slice)) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        @:check2r _buf.bytes()[((@:check2r _buf.len() - (_slice.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (250 : stdgo.GoUInt8);
        _err = @:check2r stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_buf)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>)));
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode: no error" : stdgo.GoString)));
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("slice too big" : stdgo.GoString))) {
            @:check2r _t.fatalf(("decode: expected slice too big error, got %s" : stdgo.GoString), stdgo.Go.toInterface(_err.error()));
        };
    }
