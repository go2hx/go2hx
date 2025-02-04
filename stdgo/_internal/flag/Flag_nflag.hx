package stdgo._internal.flag;
function nFlag():stdgo.GoInt {
        return ((@:checkr stdgo._internal.flag.Flag_commandline.commandLine ?? throw "null pointer dereference")._actual.length);
    }
