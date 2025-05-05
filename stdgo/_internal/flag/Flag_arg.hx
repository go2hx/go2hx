package stdgo._internal.flag;
function arg(_i:stdgo.GoInt):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L731"
        return stdgo._internal.flag.Flag_commandline.commandLine.arg(_i)?.__copy__();
    }
