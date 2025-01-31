package stdgo._internal.encoding.base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strconv.Strconv;
function testDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _p in stdgo._internal.encoding.base64.Base64__pairs._pairs) {
            var _decoder = (stdgo._internal.encoding.base64.Base64_newDecoder.newDecoder(stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding, stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_p._encoded?.__copy__()))) : stdgo._internal.io.Io_Reader.Reader);
            var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((@:check2r stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.decodedLen((_p._encoded.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _decoder.read(_dbuf), _count:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF)) : Bool)) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Read failed" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            stdgo._internal.encoding.base64.Base64__testEqual._testEqual(_t, ("Read from %q = length %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(_count), stdgo.Go.toInterface((_p._decoded.length)));
            stdgo._internal.encoding.base64.Base64__testEqual._testEqual(_t, ("Decoding of %q = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(((_dbuf.__slice__((0 : stdgo.GoInt), _count) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_p._decoded));
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                {
                    var __tmp__ = _decoder.read(_dbuf);
                    _err = @:tmpset0 __tmp__._1;
                };
            };
            stdgo._internal.encoding.base64.Base64__testEqual._testEqual(_t, ("Read from %q = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF));
        };
    }
