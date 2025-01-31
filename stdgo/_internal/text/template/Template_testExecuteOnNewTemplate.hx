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
function testExecuteOnNewTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        @:check2r stdgo._internal.text.template.Template_new_.new_(("Name" : stdgo.GoString)).templates();
        @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>).templates();
        @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>).parse(stdgo.Go.str()?.__copy__());
        @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>).new_(("abc" : stdgo.GoString)).parse(stdgo.Go.str()?.__copy__());
        @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>).execute((null : stdgo._internal.io.Io_Writer.Writer), (null : stdgo.AnyInterface));
        @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>).executeTemplate((null : stdgo._internal.io.Io_Writer.Writer), ("XXX" : stdgo.GoString), (null : stdgo.AnyInterface));
    }
