package stdgo._internal.debug.plan9obj;
@:keep @:allow(stdgo._internal.debug.plan9obj.Plan9obj.T_formatError_asInterface) class T_formatError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError> = _e;
        var _msg = ((@:checkr _e ?? throw "null pointer dereference")._msg?.__copy__() : stdgo.GoString);
        if ((@:checkr _e ?? throw "null pointer dereference")._val != null) {
            _msg = (_msg + (stdgo._internal.fmt.Fmt_sprintf.sprintf(((" \'%v\'" : stdgo.GoString) : stdgo.GoString), (@:checkr _e ?? throw "null pointer dereference")._val))?.__copy__() : stdgo.GoString);
        };
        _msg = (_msg + (stdgo._internal.fmt.Fmt_sprintf.sprintf(((" in record at byte %#x" : stdgo.GoString) : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference")._off)))?.__copy__() : stdgo.GoString);
        return _msg?.__copy__();
    }
}
