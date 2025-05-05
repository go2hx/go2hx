package stdgo._internal.flag;
function nFlag():stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L715"
        return ((@:checkr stdgo._internal.flag.Flag_commandline.commandLine ?? throw "null pointer dereference")._actual.length);
    }
