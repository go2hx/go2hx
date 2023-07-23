import sys.FileSystem;
import sys.io.File;

function main() {
    if (FileSystem.exists("go")) {
        Sys.command("git clone --depth=1 https://go.googlesource.com/go");
    }
    Sys.setCwd("go/src");
    final pkg = "cmd/go/internal/load/pkg.go";
    var content = File.getContent(pkg);
    trace(content);
    final tag = "// go2hx allowInternal modification";
    var index = content.indexOf(tag);
    if (index != -1) {
        trace("already modified");
        return;
    }
    final line = "func disallowInternal(ctx context.Context, srcDir string, importer *Package, importerPath string, p *Package, stk *ImportStack) *PackageError {";
    index = content.indexOf(line);
    if (index == -1)
        throw "line not found";
    content = content.substring(0, index + line.length) + '\n$tag\nreturn nil\n' + content.substring(index + line.length);
    // save with modification
    File.saveContent(pkg,content);
    Sys.command("./make.bash");
    Sys.putEnv("GOROOT", Sys.getCwd());
    Sys.command("go version");
}