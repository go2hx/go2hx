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
@:structInit @:using(stdgo._internal.text.template.Template_T_testIssue48215___localname___B_58304_static_extension.T_testIssue48215___localname___B_58304_static_extension) class T_testIssue48215___localname___B_58304 {
    @:embedded
    public var a : stdgo.Ref<stdgo._internal.text.template.Template_T_testIssue48215___localname___A_58273.T_testIssue48215___localname___A_58273> = (null : stdgo.Ref<stdgo._internal.text.template.Template_T_testIssue48215___localname___A_58273.T_testIssue48215___localname___A_58273>);
    public function new(?a:stdgo.Ref<stdgo._internal.text.template.Template_T_testIssue48215___localname___A_58273.T_testIssue48215___localname___A_58273>) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testIssue48215___localname___B_58304(a);
    }
}
