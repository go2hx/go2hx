package gen;

import sys.io.File;


function generateHxb(instance:Compiler.CompilerInstanceData, exports:Array<String>=null):String {
    exports = exports ?? [];
    Sys.setCwd(instance.localPath);
    final filePath = instance.outputPath + "hxb.hxml";
    File.saveContent(instance.outputPath + "hxb.json", hxbJsonContent);
    File.saveContent(filePath, 
        '-cp ' + instance.outputPath + '\r\n' +
        '--hxb ' + instance.outputPath + 'hxb.json\r\n' +
        exports.join("\r\n") + 
        hxbHxmlContent
    );
    final procs = [];
    for (targetRun in targetRuns) {
        final command = 'haxe $filePath $targetRun';
        trace(command);
        procs.push(new sys.io.Process(command));
    }
    while (procs.length > 0) {
        for (proc in procs) {
            final code = proc.exitCode();
            if (code == null)
                continue;
            if (code != 0) {
                Sys.println("failed to generate HXB");
                Sys.println(proc.stderr.readAll().toString());
                for (proc in procs)
                    proc.close();
                return "";
            }
            procs.remove(proc);
            Sys.println("Completed hxb part " + (targetRuns.length - procs.length));
        }
    }
    
    return filePath;
}

final hxbJsonContent = '
{
    "archivePath": "go2hx.$$target.zip",
    "targetConfig": {
        "generateDocumentation": true
    }
}
'; 

final hxbHxmlContent = "
-w -WStaticInitOrder
-w -WUnboundTypeParameter
--no-output
-D no-compilation
-D no-opt
-D no-inline
-D hl-no-opt
";

final targetRuns = [
    "--hl dummy.hl",
    "--interp",
];