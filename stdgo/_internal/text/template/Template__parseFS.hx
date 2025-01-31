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
function _parseFS(_t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _fsys:stdgo._internal.io.fs.Fs_FS.FS, _patterns:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        var _filenames:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__8 => _pattern in _patterns) {
            var __tmp__ = stdgo._internal.io.fs.Fs_glob.glob(_fsys, _pattern?.__copy__()), _list:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            if ((_list.length) == ((0 : stdgo.GoInt))) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("template: pattern matches no files: %#q" : stdgo.GoString), stdgo.Go.toInterface(_pattern)) };
            };
            _filenames = (_filenames.__append__(...(_list : Array<stdgo.GoString>)));
        };
        return stdgo._internal.text.template.Template__parseFiles._parseFiles(_t, stdgo._internal.text.template.Template__readFileFS._readFileFS(_fsys), ...(_filenames : Array<stdgo.GoString>));
    }
