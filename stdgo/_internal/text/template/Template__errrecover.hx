package stdgo._internal.text.template;
function _errRecover(_errp:stdgo.Ref<stdgo.Error>):Void {
        var _e = (stdgo._internal.text.template.Template__recover._recover() : stdgo.AnyInterface);
        if (_e != null) {
            {
                final __type__ = _e;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.runtime.Runtime_error.Error))) {
                    var _err:stdgo._internal.runtime.Runtime_error.Error = __type__ == null ? (null : stdgo._internal.runtime.Runtime_error.Error) : __type__.__underlying__() == null ? (null : stdgo._internal.runtime.Runtime_error.Error) : __type__ == null ? (null : stdgo._internal.runtime.Runtime_error.Error) : __type__.__underlying__().value;
                    throw stdgo.Go.toInterface(_e);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.text.template.Template_t_writeerror.T_writeError))) {
                    var _err:stdgo._internal.text.template.Template_t_writeerror.T_writeError = __type__ == null ? ({} : stdgo._internal.text.template.Template_t_writeerror.T_writeError) : __type__.__underlying__() == null ? ({} : stdgo._internal.text.template.Template_t_writeerror.T_writeError) : __type__ == null ? ({} : stdgo._internal.text.template.Template_t_writeerror.T_writeError) : __type__.__underlying__().value;
                    {
                        var __tmp__ = _err.err;
                        var x = (_errp : stdgo.Error);
                        x.error = __tmp__.error;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.text.template.Template_execerror.ExecError))) {
                    var _err:stdgo._internal.text.template.Template_execerror.ExecError = __type__ == null ? ({} : stdgo._internal.text.template.Template_execerror.ExecError) : __type__.__underlying__() == null ? ({} : stdgo._internal.text.template.Template_execerror.ExecError) : __type__ == null ? ({} : stdgo._internal.text.template.Template_execerror.ExecError) : __type__.__underlying__().value;
                    {
                        var __tmp__ = stdgo.Go.asInterface(_err);
                        var x = (_errp : stdgo.Error);
                        x.error = __tmp__.error;
                    };
                } else {
                    var _err:stdgo.AnyInterface = __type__?.__underlying__();
                    throw stdgo.Go.toInterface(_e);
                };
            };
        };
    }
