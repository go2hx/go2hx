package stdgo._internal.os;
var stderr : stdgo.Ref<stdgo._internal.os.Os_file.File> = {
        final output:haxe.io.Output = #if (sys || hxnodejs) std.Sys.stderr() #else null #end;
        new stdgo._internal.os.Os_file.File(null, output);
    };
