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
function testSingletons(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        for (__8 => _test in stdgo._internal.encoding.gob.Gob__singleTests._singleTests) {
            @:check2r _b.reset();
            var _err = (@:check2r _enc.encode(_test._in) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.errorf(("error encoding %v: %s" : stdgo.GoString), _test._in, stdgo.Go.toInterface(_err));
                continue;
            };
            _err = @:check2r _dec.decode(_test._out);
            if (((_err != null) && (_test._err == stdgo.Go.str()) : Bool)) {
                @:check2r _t.errorf(("error decoding %v: %s" : stdgo.GoString), _test._in, stdgo.Go.toInterface(_err));
                continue;
            } else if (((_err == null) && (_test._err != stdgo.Go.str()) : Bool)) {
                @:check2r _t.errorf(("expected error decoding %v: %s" : stdgo.GoString), _test._in, stdgo.Go.toInterface(_test._err));
                continue;
            } else if (((_err != null) && (_test._err != stdgo.Go.str()) : Bool)) {
                if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _test._err?.__copy__())) {
                    @:check2r _t.errorf(("wrong error decoding %v: wanted %s, got %v" : stdgo.GoString), _test._in, stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err));
                };
                continue;
            };
            var _val = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_test._out).elem().interface_() : stdgo.AnyInterface);
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_test._in, _val)) {
                @:check2r _t.errorf(("decoding singleton: expected %v got %v" : stdgo.GoString), _test._in, _val);
            };
        };
    }
