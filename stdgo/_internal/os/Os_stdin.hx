package stdgo._internal.os;
import stdgo._internal.unsafe.Unsafe;
var stdin : stdgo.Ref<stdgo._internal.os.Os_File.File> = {
        final input:haxe.io.Input = #if (target.sys || hxnodejs) std.Sys.stdin() #else null #end;
        new stdgo._internal.os.Os_File.File(input, null);
    };
