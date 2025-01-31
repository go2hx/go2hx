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
@:keep @:allow(stdgo._internal.text.template.Template.V_asInterface) class V_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:stdgo.Ref<stdgo._internal.text.template.Template_V.V>):stdgo.GoString {
        @:recv var _v:stdgo.Ref<stdgo._internal.text.template.Template_V.V> = _v;
        if ((_v == null || (_v : Dynamic).__nil__)) {
            return ("nilV" : stdgo.GoString);
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("<%d>" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _v ?? throw "null pointer dereference")._j))?.__copy__();
    }
}
