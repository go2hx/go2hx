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
function testDecodedLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in (new stdgo.Slice<stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1>(8, 8, ...[({ _enc : stdgo._internal.encoding.base64.Base64_rawStdEncoding.rawStdEncoding, _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1), ({ _enc : stdgo._internal.encoding.base64.Base64_rawStdEncoding.rawStdEncoding, _n : (2 : stdgo.GoInt), _want : (1 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1), ({ _enc : stdgo._internal.encoding.base64.Base64_rawStdEncoding.rawStdEncoding, _n : (3 : stdgo.GoInt), _want : (2 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1), ({ _enc : stdgo._internal.encoding.base64.Base64_rawStdEncoding.rawStdEncoding, _n : (4 : stdgo.GoInt), _want : (3 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1), ({ _enc : stdgo._internal.encoding.base64.Base64_rawStdEncoding.rawStdEncoding, _n : (10 : stdgo.GoInt), _want : (7 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1), ({ _enc : stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding, _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1), ({ _enc : stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding, _n : (4 : stdgo.GoInt), _want : (3 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1), ({ _enc : stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding, _n : (8 : stdgo.GoInt), _want : (6 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({ _enc : (null : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>), _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1)])) : stdgo.Slice<stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1>)) {
            {
                var _got = (@:check2r _tt._enc.decodedLen(_tt._n) : stdgo.GoInt);
                if (_got != (_tt._want)) {
                    @:check2r _t.errorf(("DecodedLen(%d): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
