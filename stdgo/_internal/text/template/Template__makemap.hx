package stdgo._internal.text.template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.flag.Flag;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.net.url.Url;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.path.Path;
import stdgo._internal.internal.fmtsort.Fmtsort;
function _makemap(_arg:haxe.Rest<stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        var _arg = new stdgo.Slice<stdgo.GoString>(_arg.length, 0, ..._arg);
        if (((_arg.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("bad makemap" : stdgo.GoString));
        };
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_arg.length) : Bool)) {
                _m[_arg[(_i : stdgo.GoInt)]] = _arg[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__();
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        return _m;
    }
