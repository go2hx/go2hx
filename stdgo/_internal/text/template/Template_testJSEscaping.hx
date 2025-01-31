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
function testJSEscaping(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testCases = (new stdgo.Slice<stdgo._internal.text.template.Template_T__struct_2.T__struct_2>(8, 8, ...[({ _in : ("a" : stdgo.GoString), _exp : ("a" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_2.T__struct_2), ({ _in : ("\'foo" : stdgo.GoString), _exp : ("\\\'foo" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_2.T__struct_2), ({ _in : ("Go \"jump\" \\" : stdgo.GoString), _exp : ("Go \\\"jump\\\" \\\\" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_2.T__struct_2), ({ _in : ("Yukihiro says \"今日は世界\"" : stdgo.GoString), _exp : ("Yukihiro says \\\"今日は世界\\\"" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_2.T__struct_2), ({ _in : ("unprintable \ufffe" : stdgo.GoString), _exp : ("unprintable \\uFFFE" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_2.T__struct_2), ({ _in : ("<html>" : stdgo.GoString), _exp : ("\\u003Chtml\\u003E" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_2.T__struct_2), ({ _in : ("no = in attributes" : stdgo.GoString), _exp : ("no \\u003D in attributes" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_2.T__struct_2), ({ _in : ("&#x27; does not become HTML entity" : stdgo.GoString), _exp : ("\\u0026#x27; does not become HTML entity" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_2.T__struct_2)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _exp : ("" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_2.T__struct_2)])) : stdgo.Slice<stdgo._internal.text.template.Template_T__struct_2.T__struct_2>);
        for (__8 => _tc in _testCases) {
            var _s = (stdgo._internal.text.template.Template_jSEscapeString.jSEscapeString(_tc._in?.__copy__())?.__copy__() : stdgo.GoString);
            if (_s != (_tc._exp)) {
                @:check2r _t.errorf(("JS escaping [%s] got [%s] want [%s]" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tc._exp));
            };
        };
    }
