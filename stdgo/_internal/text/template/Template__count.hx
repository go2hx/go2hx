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
function _count(_n:stdgo.GoInt):stdgo.Chan<stdgo.GoString> {
        if (_n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Chan<stdgo.GoString>);
        };
        var _c = (new stdgo.Chan<stdgo.GoString>(0, () -> ("" : stdgo.GoString)) : stdgo.Chan<stdgo.GoString>);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _n : Bool)) {
                        _c.__send__((("abcdefghijklmnop" : stdgo.GoString).__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString));
                        _i++;
                    };
                };
                if (_c != null) _c.__close__();
            };
            a();
        }));
        return _c;
    }
