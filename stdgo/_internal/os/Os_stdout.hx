package stdgo._internal.os;
var stdout : stdgo.Ref<stdgo._internal.os.Os_File.File> = {
        var output:haxe.io.Output = null;
        #if js output = new stdgo._internal.os.Os_JsOutput.JsOutput() #else null #end;
        #if (sys || hxnodejs) output = std.Sys.stdout() #else null #end;
        new stdgo._internal.os.Os_File.File(null, output);
    };
