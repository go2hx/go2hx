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
function testDecodeIntoNothing(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_NewType0.NewType0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_NewType0.NewType0>))));
        for (_i => _test in stdgo._internal.encoding.gob.Gob__ignoreTests._ignoreTests) {
            var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
            var _err = (@:check2r _enc.encode(_test._in) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.errorf(("%d: encode error %s:" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                continue;
            };
            var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
            _err = @:check2r _dec.decode(_test._out);
            if (_err != null) {
                @:check2r _t.errorf(("%d: decode error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                continue;
            };
            var _str = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("Value %d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__() : stdgo.GoString);
            _err = @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_NewType0.NewType0(_str?.__copy__()) : stdgo._internal.encoding.gob.Gob_NewType0.NewType0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_NewType0.NewType0>))));
            if (_err != null) {
                @:check2r _t.fatalf(("%d: NewType0 encode error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            var _ns = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_NewType0.NewType0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_NewType0.NewType0>);
            _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_ns)));
            if (_err != null) {
                @:check2r _t.fatalf(("%d: NewType0 decode error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            if ((@:checkr _ns ?? throw "null pointer dereference").s != (_str)) {
                @:check2r _t.fatalf(("%d: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_str), stdgo.Go.toInterface((@:checkr _ns ?? throw "null pointer dereference").s));
            };
        };
    }
