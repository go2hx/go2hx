package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
function _build(_n:stdgo.GoInt, _x:haxe.Rest<stdgo.GoInt>):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        var _x = new stdgo.Slice<stdgo.GoInt>(_x.length, 0, ..._x);
        var _ret = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        var _runLength = ((_x.length) / _n : stdgo.GoInt);
        var _j = (0 : stdgo.GoInt);
        for (_i => _ in _ret) {
            _ret[(_i : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoInt>((_runLength : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            _ret[(_i : stdgo.GoInt)].__copyTo__((_x.__slice__(_j) : stdgo.Slice<stdgo.GoInt>));
            _j = (_j + (_runLength) : stdgo.GoInt);
            if ((_j > (_x.length) : Bool)) {
                throw stdgo.Go.toInterface(("invalid build entry" : stdgo.GoString));
            };
        };
        return _ret;
    }
