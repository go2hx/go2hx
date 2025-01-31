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
function testTemplateLookUp(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _t1 = stdgo._internal.text.template.Template_new_.new_(("foo" : stdgo.GoString));
        if ((@:check2r _t1.lookup(("foo" : stdgo.GoString)) != null && ((@:check2r _t1.lookup(("foo" : stdgo.GoString)) : Dynamic).__nil__ == null || !(@:check2r _t1.lookup(("foo" : stdgo.GoString)) : Dynamic).__nil__))) {
            @:check2r _t.error(stdgo.Go.toInterface(("Lookup returned non-nil value for undefined template foo" : stdgo.GoString)));
        };
        @:check2r _t1.new_(("bar" : stdgo.GoString));
        if ((@:check2r _t1.lookup(("bar" : stdgo.GoString)) != null && ((@:check2r _t1.lookup(("bar" : stdgo.GoString)) : Dynamic).__nil__ == null || !(@:check2r _t1.lookup(("bar" : stdgo.GoString)) : Dynamic).__nil__))) {
            @:check2r _t.error(stdgo.Go.toInterface(("Lookup returned non-nil value for undefined template bar" : stdgo.GoString)));
        };
        @:check2r _t1.parse(("{{define \"foo\"}}test{{end}}" : stdgo.GoString));
        if ((@:check2r _t1.lookup(("foo" : stdgo.GoString)) == null || (@:check2r _t1.lookup(("foo" : stdgo.GoString)) : Dynamic).__nil__)) {
            @:check2r _t.error(stdgo.Go.toInterface(("Lookup returned nil value for defined template" : stdgo.GoString)));
        };
    }
