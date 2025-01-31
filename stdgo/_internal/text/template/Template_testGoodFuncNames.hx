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
function testGoodFuncNames(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("_" : stdgo.GoString), ("a" : stdgo.GoString), ("a1" : stdgo.GoString), ("a1" : stdgo.GoString), ("Ӵ" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__8 => _name in _names) {
            var _tmpl = @:check2r stdgo._internal.text.template.Template_new_.new_(("X" : stdgo.GoString)).funcs((({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                x.set(_name, stdgo.Go.toInterface(stdgo._internal.text.template.Template__funcNameTestFunc._funcNameTestFunc));
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo._internal.text.template.Template_FuncMap.FuncMap));
            if ((_tmpl == null || (_tmpl : Dynamic).__nil__)) {
                @:check2r _t.fatalf(("nil result for %q" : stdgo.GoString), stdgo.Go.toInterface(_name));
            };
        };
    }
