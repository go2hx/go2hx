package stdgo._internal.flag;
function newFlagSet(_name:stdgo.GoString, _errorHandling:stdgo._internal.flag.Flag_errorhandling.ErrorHandling):stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> {
        var _f = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _errorHandling : _errorHandling } : stdgo._internal.flag.Flag_flagset.FlagSet)) : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        (@:checkr _f ?? throw "null pointer dereference").usage = _f._defaultUsage;
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L1222"
        return _f;
    }
