package stdgo._internal.text.template;
function testMessageForExecuteEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tmpl = stdgo._internal.text.template.Template_new_.new_(("empty" : stdgo.GoString));
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _err = (@:check2r _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo.Error);
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("expected initial error" : stdgo.GoString)));
        };
        var _got = (_err.error()?.__copy__() : stdgo.GoString);
        var _want = (("template: empty: \"empty\" is an incomplete or empty template" : stdgo.GoString) : stdgo.GoString);
        if (_got != (_want)) {
            @:check2r _t.errorf(("expected error %s got %s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
        var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_((stdgo.Go.str() : stdgo.GoString)?.__copy__()).parse(("{{define \"one\"}}one{{end}}{{define \"two\"}}two{{end}}" : stdgo.GoString)), _tests:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        @:check2r _tmpl.addParseTree(("secondary" : stdgo.GoString), (@:checkr _tests ?? throw "null pointer dereference").tree);
        _err = @:check2r _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("expected second error" : stdgo.GoString)));
        };
        _got = _err.error()?.__copy__();
        _want = ("template: empty: \"empty\" is an incomplete or empty template" : stdgo.GoString);
        if (_got != (_want)) {
            @:check2r _t.errorf(("expected error %s got %s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
        _err = @:check2r _tmpl.executeTemplate(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("secondary" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
