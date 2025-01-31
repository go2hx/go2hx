package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function cutPrefix(_s:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } {
        var _after = (null : stdgo.Slice<stdgo.GoUInt8>), _found = false;
        if (!stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(_s, _prefix)) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } = { _0 : _s, _1 : false };
                _after = __tmp__._0;
                _found = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } = { _0 : (_s.__slice__((_prefix.length)) : stdgo.Slice<stdgo.GoUInt8>), _1 : true };
            _after = __tmp__._0;
            _found = __tmp__._1;
            __tmp__;
        };
    }
