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
function _length(_item:stdgo._internal.reflect.Reflect_Value.Value):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.text.template.Template__indirect._indirect(_item?.__copy__()), _item:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _isNil:Bool = __tmp__._1;
        if (_isNil) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("len of nil pointer" : stdgo.GoString)) };
        };
        {
            final __value__ = _item.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((18u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return { _0 : _item.len(), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("len of type %s" : stdgo.GoString), stdgo.Go.toInterface(_item.type())) };
    }
