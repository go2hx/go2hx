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
function _indirect(_v:stdgo._internal.reflect.Reflect_Value.Value):{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; } {
        var _rv = ({} : stdgo._internal.reflect.Reflect_Value.Value), _isNil = false;
        while (((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || (_v.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
            if (_v.isNil()) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; } = { _0 : _v.__copy__(), _1 : true };
                    _rv = __tmp__._0;
                    _isNil = __tmp__._1;
                    __tmp__;
                };
            };
            _v = _v.elem()?.__copy__();
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; } = { _0 : _v?.__copy__(), _1 : false };
            _rv = __tmp__._0;
            _isNil = __tmp__._1;
            __tmp__;
        };
    }
