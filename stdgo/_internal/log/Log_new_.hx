package stdgo._internal.log;
function new_(_out:stdgo._internal.io.Io_writer.Writer, _prefix:stdgo.GoString, _flag:stdgo.GoInt):stdgo.Ref<stdgo._internal.log.Log_logger.Logger> {
        var _l = (stdgo.Go.setRef(({} : stdgo._internal.log.Log_logger.Logger)) : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L73"
        _l.setOutput(_out);
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L74"
        _l.setPrefix(_prefix?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L75"
        _l.setFlags(_flag);
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L76"
        return _l;
    }
