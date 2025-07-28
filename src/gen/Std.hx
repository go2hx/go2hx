package gen;

function moveStd(outputPath:String) {
    if (shared.Util.copyDirectoryRecursively("_std/.", outputPath) != 0) {
        trace("failed to copy over _std folder into output folder");
    }
}