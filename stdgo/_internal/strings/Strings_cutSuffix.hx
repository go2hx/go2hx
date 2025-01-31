package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function cutSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _before = ("" : stdgo.GoString), _found = false;
        if (!stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_s?.__copy__(), _suffix?.__copy__())) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : _s?.__copy__(), _1 : false };
                _before = __tmp__._0;
                _found = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_s.__slice__(0, ((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : true };
            _before = __tmp__._0;
            _found = __tmp__._1;
            __tmp__;
        };
    }
