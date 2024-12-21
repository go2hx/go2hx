package stdgo._internal.os;
var stdout : stdgo.Ref<stdgo._internal.os.Os_File.File> = {
        final output:haxe.io.Output = #if (sys || hxnodejs) std.Sys.stdout() #else null #end;
        new stdgo._internal.os.Os_File.File(null, output);
    };
