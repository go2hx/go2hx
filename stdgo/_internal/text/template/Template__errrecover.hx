package stdgo._internal.text.template;
function _errRecover(_errp:stdgo.Ref<stdgo.Error>):Void {
        var _e = ({
            final r = stdgo.Go.recover_exception;
            stdgo.Go.recover_exception = null;
            r;
        } : stdgo.AnyInterface);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L167"
        if (_e != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L168"
            {
                final __type__ = _e;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.runtime.Runtime_error.Error))) {
                    var _err:stdgo._internal.runtime.Runtime_error.Error = __type__ == null ? (null : stdgo._internal.runtime.Runtime_error.Error) : __type__.__underlying__() == null ? (null : stdgo._internal.runtime.Runtime_error.Error) : __type__ == null ? (null : stdgo._internal.runtime.Runtime_error.Error) : __type__.__underlying__().value;
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L170"
                    throw stdgo.Go.toInterface(_e);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.text.template.Template_t_writeerror.T_writeError))) {
                    var _err:stdgo._internal.text.template.Template_t_writeerror.T_writeError = __type__ == null ? ({} : stdgo._internal.text.template.Template_t_writeerror.T_writeError) : __type__.__underlying__() == null ? ({} : stdgo._internal.text.template.Template_t_writeerror.T_writeError) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.text.template.Template_t_writeerror.T_writeError) : __type__.__underlying__().value);
                    {
                        var __tmp__ = _err.err;
                        var x = (_errp : stdgo.Error);
                        x.error = __tmp__.error;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.text.template.Template_execerror.ExecError))) {
                    var _err:stdgo._internal.text.template.Template_execerror.ExecError = __type__ == null ? ({} : stdgo._internal.text.template.Template_execerror.ExecError) : __type__.__underlying__() == null ? ({} : stdgo._internal.text.template.Template_execerror.ExecError) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.text.template.Template_execerror.ExecError) : __type__.__underlying__().value);
                    {
                        var __tmp__ = stdgo.Go.asInterface(_err);
                        var x = (_errp : stdgo.Error);
                        x.error = __tmp__.error;
                    };
                } else {
                    var _err:stdgo.AnyInterface = __type__?.__underlying__();
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L176"
                    throw stdgo.Go.toInterface(_e);
                };
            };
        };
    }
