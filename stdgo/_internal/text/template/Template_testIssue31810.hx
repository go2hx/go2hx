package stdgo._internal.text.template;
function testIssue31810(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        {};
        var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(stdgo.Go.str()?.__copy__()).parse(("{{ (.)  }}" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(_err));
        };
        _err = @:check2r _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.toInterface(("result" : stdgo.GoString)));
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(_err));
        };
        if ((@:check2 _b.string() : stdgo.GoString) != (("result" : stdgo.GoString))) {
            @:check2r _t.errorf(("%s got %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface(("{{ (.)  }}" : stdgo.GoString)), stdgo.Go.toInterface((@:check2 _b.string() : stdgo.GoString)), stdgo.Go.toInterface(("result" : stdgo.GoString)));
        };
        var _f = (function():stdgo.GoString {
            return ("result" : stdgo.GoString);
        } : () -> stdgo.GoString);
        @:check2 _b.reset();
        _err = @:check2r _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.toInterface(_f));
        if (_err == null) {
            @:check2r _t.error(stdgo.Go.toInterface(("expected error with no call, got none" : stdgo.GoString)));
        };
        {};
        {
            var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(stdgo.Go.str()?.__copy__()).parse(("{{ (call .)  }}" : stdgo.GoString));
            _tmpl = __tmp__._0;
            _err = __tmp__._1;
        };
        @:check2 _b.reset();
        _err = @:check2r _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.toInterface(_f));
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(_err));
        };
        if ((@:check2 _b.string() : stdgo.GoString) != (("result" : stdgo.GoString))) {
            @:check2r _t.errorf(("%s got %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface(("{{ (call .)  }}" : stdgo.GoString)), stdgo.Go.toInterface((@:check2 _b.string() : stdgo.GoString)), stdgo.Go.toInterface(("result" : stdgo.GoString)));
        };
    }
