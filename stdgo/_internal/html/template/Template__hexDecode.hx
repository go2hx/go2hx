package stdgo._internal.html.template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.text.template.parse.Parse;
import stdgo._internal.html.Html;
import stdgo._internal.text.template.Template;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
function _hexDecode(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt32 {
        var _n = (0 : stdgo.GoInt32);
        for (__6 => _c in _s) {
            _n = (_n << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
            if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                _n = (_n | (((_c - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32)) : stdgo.GoInt32);
            } else if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (102 : stdgo.GoUInt8) : Bool) : Bool)) {
                _n = (_n | ((((_c - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
            } else if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (70 : stdgo.GoUInt8) : Bool) : Bool)) {
                _n = (_n | ((((_c - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
            } else {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Bad hex digit in %q" : stdgo.GoString), stdgo.Go.toInterface(_s)));
            };
        };
        return _n;
    }
