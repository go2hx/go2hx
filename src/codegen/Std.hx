package codegen;

function moveStd(outputPath:String) {
    shared.Util.copyDirectoryRecursively("_std/.", outputPath);
}