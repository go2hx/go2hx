package stdgo._internal.log;
function new_(_out:stdgo._internal.io.Io_Writer.Writer, _prefix:stdgo.GoString, _flag:stdgo.GoInt):stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> {
        var _l = (stdgo.Go.setRef(({} : stdgo._internal.log.Log_Logger.Logger)) : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        @:check2r _l.setOutput(_out);
        @:check2r _l.setPrefix(_prefix?.__copy__());
        @:check2r _l.setFlags(_flag);
        return _l;
    }
