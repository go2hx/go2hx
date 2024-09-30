package stdgo._internal.os;
var stderr : stdgo.Ref<stdgo._internal.os.Os_File.File> = {
        final output:haxe.io.Output = #if (target.sys || hxnodejs) std.Sys.stderr() #else null #end;
        new stdgo._internal.os.Os_File.File(null, output);
    };
