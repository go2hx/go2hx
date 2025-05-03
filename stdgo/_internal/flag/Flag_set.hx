package stdgo._internal.flag;
function set(_name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L533"
        return stdgo._internal.flag.Flag_commandline.commandLine._set(_name?.__copy__(), _value?.__copy__());
    }
