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
function testBadFuncNames(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[stdgo.Go.str()?.__copy__(), ("2" : stdgo.GoString), ("a-b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__8 => _name in _names) {
            stdgo._internal.text.template.Template__testBadFuncName._testBadFuncName(_name?.__copy__(), _t);
        };
    }
