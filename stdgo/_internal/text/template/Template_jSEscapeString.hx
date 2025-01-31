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
function jSEscapeString(_s:stdgo.GoString):stdgo.GoString {
        if ((stdgo._internal.strings.Strings_indexFunc.indexFunc(_s?.__copy__(), stdgo._internal.text.template.Template__jsIsSpecial._jsIsSpecial) < (0 : stdgo.GoInt) : Bool)) {
            return _s?.__copy__();
        };
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        stdgo._internal.text.template.Template_jSEscape.jSEscape(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), (_s : stdgo.Slice<stdgo.GoUInt8>));
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
