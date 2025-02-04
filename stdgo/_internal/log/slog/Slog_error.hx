package stdgo._internal.log.slog;
function error(_msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:check2r stdgo._internal.log.slog.Slog_default_.default_()._log(stdgo._internal.context.Context_background.background(), (8 : stdgo._internal.log.slog.Slog_level.Level), _msg?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
