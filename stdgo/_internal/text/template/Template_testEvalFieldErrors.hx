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
function testEvalFieldErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<stdgo._internal.text.template.Template_T__struct_4.T__struct_4>(6, 6, ...[({ _name : ("MissingFieldOnNil" : stdgo.GoString), _src : ("{{.MissingField}}" : stdgo.GoString), _value : stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>))), _want : ("can\'t evaluate field MissingField in type *template.T" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_4.T__struct_4), ({ _name : ("MissingFieldOnNonNil" : stdgo.GoString), _src : ("{{.MissingField}}" : stdgo.GoString), _value : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.text.template.Template_T_.T_() : stdgo._internal.text.template.Template_T_.T_)) : stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>))), _want : ("can\'t evaluate field MissingField in type *template.T" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_4.T__struct_4), ({ _name : ("ExistingFieldOnNil" : stdgo.GoString), _src : ("{{.X}}" : stdgo.GoString), _value : stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>))), _want : ("nil pointer evaluating *template.T.X" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_4.T__struct_4), ({ _name : ("MissingKeyOnNilMap" : stdgo.GoString), _src : ("{{.MissingKey}}" : stdgo.GoString), _value : stdgo.Go.toInterface((null : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoString>>)), _want : ("nil pointer evaluating *map[string]string.MissingKey" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_4.T__struct_4), ({ _name : ("MissingKeyOnNilMapPtr" : stdgo.GoString), _src : ("{{.MissingKey}}" : stdgo.GoString), _value : stdgo.Go.toInterface((null : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoString>>)), _want : ("nil pointer evaluating *map[string]string.MissingKey" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_4.T__struct_4), ({ _name : ("MissingKeyOnMapPtrToNil" : stdgo.GoString), _src : ("{{.MissingKey}}" : stdgo.GoString), _value : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>)) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoString>>)), _want : ("<nil>" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_4.T__struct_4)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _src : ("" : stdgo.GoString), _value : (null : stdgo.AnyInterface), _want : ("" : stdgo.GoString) } : stdgo._internal.text.template.Template_T__struct_4.T__struct_4)])) : stdgo.Slice<stdgo._internal.text.template.Template_T__struct_4.T__struct_4>);
        for (__8 => _tc in _tests) {
            @:check2r _t.run(_tc._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _tmpl = ({
                    var __f__ = stdgo._internal.text.template.Template_must.must;
                    var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("tmpl" : stdgo.GoString)).parse(_tc._src?.__copy__());
                    __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), (__tmp__._1 : stdgo.Error));
                });
                var _err = (@:check2r _tmpl.execute(stdgo._internal.io.Io_discard.discard, _tc._value) : stdgo.Error);
                var _got = ("<nil>" : stdgo.GoString);
                if (_err != null) {
                    _got = _err.error()?.__copy__();
                };
                if (!stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_got?.__copy__(), _tc._want?.__copy__())) {
                    @:check2r _t.fatalf(("got error %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._want));
                };
            });
        };
    }
