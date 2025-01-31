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
function _addValueFuncs(_out:stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value>, _in:stdgo._internal.text.template.Template_FuncMap.FuncMap):Void {
        for (_name => _fn in _in) {
            if (!stdgo._internal.text.template.Template__goodName._goodName(_name?.__copy__())) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("function name %q is not a valid identifier" : stdgo.GoString), stdgo.Go.toInterface(_name)));
            };
            var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_fn)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if (_v.kind() != ((19u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                throw stdgo.Go.toInterface(((("value for " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (" not a function" : stdgo.GoString)?.__copy__() : stdgo.GoString));
            };
            if (!stdgo._internal.text.template.Template__goodFunc._goodFunc(_v.type())) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("can\'t install method/function %q with %d results" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_v.type().numOut())));
            };
            _out[_name] = _v?.__copy__();
        };
    }
