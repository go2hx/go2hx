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
function _prepareArg(_value:stdgo._internal.reflect.Reflect_Value.Value, _argType:stdgo._internal.reflect.Reflect_Type_.Type_):{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : stdgo.Error; } {
        if (!_value.isValid()) {
            if (!stdgo._internal.text.template.Template__canBeNil._canBeNil(_argType)) {
                return { _0 : (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("value is nil; should be of type %s" : stdgo.GoString), stdgo.Go.toInterface(_argType)) };
            };
            _value = stdgo._internal.reflect.Reflect_zero.zero(_argType)?.__copy__();
        };
        if (_value.type().assignableTo(_argType)) {
            return { _0 : _value?.__copy__(), _1 : (null : stdgo.Error) };
        };
        if (((stdgo._internal.text.template.Template__intLike._intLike(_value.kind()) && stdgo._internal.text.template.Template__intLike._intLike(_argType.kind()) : Bool) && _value.type().convertibleTo(_argType) : Bool)) {
            _value = _value.convert(_argType)?.__copy__();
            return { _0 : _value?.__copy__(), _1 : (null : stdgo.Error) };
        };
        return { _0 : (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("value has type %s; should be %s" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_argType)) };
    }
