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
function testStressParallel(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {};
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        var _p = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_testStressParallel___localname___T2_5091.T_testStressParallel___localname___T2_5091)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testStressParallel___localname___T2_5091.T_testStressParallel___localname___T2_5091>);
                        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
                        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
                        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_p))) : stdgo.Error);
                        if (_err != null) {
                            @:check2r _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                        };
                        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
                        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
                        if (_err != null) {
                            @:check2r _t.error(stdgo.Go.toInterface(("decoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                        };
                        _c.__send__(true);
                    };
                    a();
                }));
                _i++;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                _c.__get__();
                _i++;
            };
        };
    }
