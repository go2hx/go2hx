package stdgo._internal.text.template;
function testIssue48215(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(stdgo.Go.str()?.__copy__()).parse(("{{ .S }}" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _err = _tmpl.execute(stdgo._internal.io.Io_discard.discard, stdgo.Go.toInterface((new stdgo._internal.text.template.Template_T_testIssue48215___localname___B_58304.T_testIssue48215___localname___B_58304() : stdgo._internal.text.template.Template_T_testIssue48215___localname___B_58304.T_testIssue48215___localname___B_58304)));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("did not get error for nil embedded struct" : stdgo.GoString)));
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("reflect: indirection through nil pointer to embedded struct field A" : stdgo.GoString))) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }