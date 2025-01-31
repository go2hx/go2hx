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
function testEmptyTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _cases = (new stdgo.Slice<stdgo._internal.text.template.Template_T__struct_8.T__struct_8>(6, 6, ...[({ _defn : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("x" : stdgo.GoString), ("y" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : stdgo.Go.str()?.__copy__(), _want : ("y" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_8.T__struct_8), ({ _defn : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : ("once" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : stdgo._internal.text.template.Template_T__struct_8.T__struct_8), ({ _defn : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : ("twice" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : stdgo._internal.text.template.Template_T__struct_8.T__struct_8), ({ _defn : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("{{.}}" : stdgo.GoString), ("{{.}}" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : ("twice" : stdgo.GoString), _want : ("twice" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_8.T__struct_8), ({ _defn : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("{{/* a comment */}}" : stdgo.GoString), ("{{/* a comment */}}" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : ("comment" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : stdgo._internal.text.template.Template_T__struct_8.T__struct_8), ({ _defn : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("{{.}}" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : ("twice" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : stdgo._internal.text.template.Template_T__struct_8.T__struct_8)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _defn : (null : stdgo.Slice<stdgo.GoString>), _in : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_8.T__struct_8)])) : stdgo.Slice<stdgo._internal.text.template.Template_T__struct_8.T__struct_8>);
        for (_i => _c in _cases) {
            var _root = stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString));
            var __0:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), __1:stdgo.Error = (null : stdgo.Error);
var _err = __1, _m = __0;
            for (__8 => _d in _c._defn) {
                {
                    var __tmp__ = @:check2r @:check2r _root.new_(_c._in?.__copy__()).parse(_d?.__copy__());
                    _m = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    @:check2r _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var _buf = (stdgo.Go.setRef((new stdgo._internal.strings.Strings_Builder.Builder() : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
            {
                var _err = (@:check2r _m.execute(stdgo.Go.asInterface(_buf), stdgo.Go.toInterface(_c._in)) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.error(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            if ((@:check2r _buf.string() : stdgo.GoString) != (_c._want)) {
                @:check2r _t.errorf(("expected string %q: got %q" : stdgo.GoString), stdgo.Go.toInterface(_c._want), stdgo.Go.toInterface((@:check2r _buf.string() : stdgo.GoString)));
            };
        };
    }
