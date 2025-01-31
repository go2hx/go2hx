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
function testMissingMapKey(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("x" : stdgo.GoString), (99 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("t1" : stdgo.GoString)).parse(("{{.x}} {{.y}}" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _err = @:check2r _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.toInterface(_data));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _want = ("99 <no value>" : stdgo.GoString);
        var _got = ((@:check2 _b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_got != (_want)) {
            @:check2r _t.errorf(("got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        @:check2r _tmpl.option(("missingkey=default" : stdgo.GoString));
        @:check2 _b.reset();
        _err = @:check2r _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.toInterface(_data));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("default:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _want = ("99 <no value>" : stdgo.GoString);
        _got = (@:check2 _b.string() : stdgo.GoString)?.__copy__();
        if (_got != (_want)) {
            @:check2r _t.errorf(("got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        @:check2r _tmpl.option(("missingkey=zero" : stdgo.GoString));
        @:check2 _b.reset();
        _err = @:check2r _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.toInterface(_data));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("zero:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _want = ("99 0" : stdgo.GoString);
        _got = (@:check2 _b.string() : stdgo.GoString)?.__copy__();
        if (_got != (_want)) {
            @:check2r _t.errorf(("got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        @:check2r _tmpl.option(("missingkey=error" : stdgo.GoString));
        _err = @:check2r _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.toInterface(_data));
        if (_err == null) {
            @:check2r _t.errorf(("expected error; got none" : stdgo.GoString));
        };
        _err = @:check2r _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), (null : stdgo.AnyInterface));
        @:check2r _t.log(stdgo.Go.toInterface(_err));
        if (_err == null) {
            @:check2r _t.errorf(("expected error for nil-interface; got none" : stdgo.GoString));
        };
    }
