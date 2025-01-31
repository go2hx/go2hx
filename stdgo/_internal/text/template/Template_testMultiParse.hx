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
function testMultiParse(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _test in stdgo._internal.text.template.Template__multiParseTests._multiParseTests) {
            var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString)).parse(_test._input?.__copy__()), _template:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && !_test._ok : Bool)) {
                @:check2r _t.errorf(("%q: expected error; got none" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
                continue;
            } else if (((_err != null) && _test._ok : Bool)) {
                @:check2r _t.errorf(("%q: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
                continue;
            } else if (((_err != null) && !_test._ok : Bool)) {
                if (stdgo._internal.text.template.Template__debug._debug.value) {
                    stdgo._internal.fmt.Fmt_printf.printf(("%s: %s\n\t%s\n" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_err));
                };
                continue;
            };
            if ((_template == null || (_template : Dynamic).__nil__)) {
                continue;
            };
            if (((@:checkr _template ?? throw "null pointer dereference")._common._tmpl.length) != (((_test._names.length) + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                @:check2r _t.errorf(("%s: wrong number of templates; wanted %d got %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface((_test._names.length)), stdgo.Go.toInterface(((@:checkr _template ?? throw "null pointer dereference")._common._tmpl.length)));
                continue;
            };
            for (_i => _name in _test._names) {
                var __tmp__ = ((@:checkr _template ?? throw "null pointer dereference")._common._tmpl != null && (@:checkr _template ?? throw "null pointer dereference")._common._tmpl.exists(_name?.__copy__()) ? { _0 : (@:checkr _template ?? throw "null pointer dereference")._common._tmpl[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), _1 : false }), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    @:check2r _t.errorf(("%s: can\'t find template %q" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_name));
                    continue;
                };
                var _result = ((@:check2r (@:checkr _tmpl ?? throw "null pointer dereference").tree.root.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_result != (_test._results[(_i : stdgo.GoInt)])) {
                    @:check2r _t.errorf(("%s=(%q): got\n\t%v\nexpected\n\t%v" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_test._results[(_i : stdgo.GoInt)]));
                };
            };
        };
    }
