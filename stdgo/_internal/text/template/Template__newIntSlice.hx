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
function _newIntSlice(_n:haxe.Rest<stdgo.GoInt>):stdgo.Ref<stdgo.Slice<stdgo.GoInt>> {
        var _n = new stdgo.Slice<stdgo.GoInt>(_n.length, 0, ..._n);
        var _p = (stdgo.Go.setRef((null : stdgo.Slice<stdgo.GoInt>)) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>);
        (_p : stdgo.Slice<stdgo.GoInt>).__setData__((new stdgo.Slice<stdgo.GoInt>((_n.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>));
        (_p : stdgo.Slice<stdgo.GoInt>).__copyTo__(_n);
        return _p;
    }
