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
function benchmarkNewEncoding(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        @:check2r _b.setBytes(((new stdgo._internal.encoding.base64.Base64_Encoding.Encoding() : stdgo._internal.encoding.base64.Base64_Encoding.Encoding)._decodeMap.length : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _e = stdgo._internal.encoding.base64.Base64_newEncoding.newEncoding(("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" : stdgo.GoString));
for (__16 => _v in (@:checkr _e ?? throw "null pointer dereference")._decodeMap) {
                    var __blank__ = _v;
                };
                _i++;
            };
        };
    }
