package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_error__asInterface) class T_error__static_extension {
    @:keep
    @:tdfield
    static public function _errorf( _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>, _at:stdgo._internal.go.token.Token_pos.Pos, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_> = _err;
        (@:checkr _err ?? throw "null pointer dereference")._desc = ((@:checkr _err ?? throw "null pointer dereference")._desc.__append__((new stdgo._internal.go.types.Types_t_errordesc.T_errorDesc(stdgo.Go.asInterface((_at : stdgo._internal.go.types.Types_t_atpos.T_atPos)), _format?.__copy__(), _args) : stdgo._internal.go.types.Types_t_errordesc.T_errorDesc)) : stdgo.Slice<stdgo._internal.go.types.Types_t_errordesc.T_errorDesc>);
    }
    @:keep
    @:tdfield
    static public function string( _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>):stdgo.GoString {
        @:recv var _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_> = _err;
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L82"
        if (_err._empty()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L83"
            return ("no error" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L85"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_err._pos())), stdgo.Go.toInterface(_err._msg(null, null)))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _msg( _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier):stdgo.GoString {
        @:recv var _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_> = _err;
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L63"
        if (_err._empty()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L64"
            return ("no error" : stdgo.GoString);
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L67"
        for (_i => _ in (@:checkr _err ?? throw "null pointer dereference")._desc) {
            var _p = (stdgo.Go.setRef((@:checkr _err ?? throw "null pointer dereference")._desc[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.types.Types_t_errordesc.T_errorDesc>);
            //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L69"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L70"
                stdgo._internal.fmt.Fmt_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(("\n\t" : stdgo.GoString)));
                //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L71"
                if ((@:checkr _p ?? throw "null pointer dereference")._posn.pos().isValid()) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L72"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("%s: " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position((@:checkr _p ?? throw "null pointer dereference")._posn.pos()))));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L75"
            _buf.writeString(stdgo._internal.go.types.Types__sprintf._sprintf(_fset, _qf, false, (@:checkr _p ?? throw "null pointer dereference")._format?.__copy__(), ...((@:checkr _p ?? throw "null pointer dereference")._args : Array<stdgo.AnyInterface>))?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L77"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _pos( _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_> = _err;
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L56"
        if (_err._empty()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L57"
            return stdgo._internal.go.types.Types__nopos._nopos;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L59"
        return (@:checkr _err ?? throw "null pointer dereference")._desc[(0 : stdgo.GoInt)]._posn.pos();
    }
    @:keep
    @:tdfield
    static public function _empty( _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>):Bool {
        @:recv var _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_> = _err;
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L52"
        return (@:checkr _err ?? throw "null pointer dereference")._desc == null;
    }
}
