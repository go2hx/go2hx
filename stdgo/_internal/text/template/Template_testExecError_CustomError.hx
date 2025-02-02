package stdgo._internal.text.template;
function testExecError_CustomError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _failingFunc = (function():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.text.template.Template_CustomError.CustomError() : stdgo._internal.text.template.Template_CustomError.CustomError)) : stdgo.Ref<stdgo._internal.text.template.Template_CustomError.CustomError>)) };
        } : () -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; });
        var _tmpl = ({
            var __f__ = stdgo._internal.text.template.Template_must.must;
            var __tmp__ = @:check2r @:check2r stdgo._internal.text.template.Template_new_.new_(("top" : stdgo.GoString)).funcs((({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                x.set(("err" : stdgo.GoString), stdgo.Go.toInterface(_failingFunc));
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo._internal.text.template.Template_FuncMap.FuncMap)).parse(("{{ err }}" : stdgo.GoString));
            __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), (__tmp__._1 : stdgo.Error));
        });
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _err = (@:check2r _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), (null : stdgo.AnyInterface)) : stdgo.Error);
        var _e:stdgo.Ref<stdgo._internal.text.template.Template_CustomError.CustomError> = (null : stdgo.Ref<stdgo._internal.text.template.Template_CustomError.CustomError>);
        if (!stdgo._internal.errors.Errors_as.as(_err, stdgo.Go.toInterface((stdgo.Go.setRef(_e) : stdgo.Ref<stdgo.Ref<stdgo._internal.text.template.Template_CustomError.CustomError>>)))) {
            @:check2r _t.fatalf(("expected custom error; got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
