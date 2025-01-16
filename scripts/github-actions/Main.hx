import haxe.Template;
import sys.io.File;
import haxe.io.Path;
import sys.FileSystem;

inline var dir = "scripts/github-actions/";
// https://haxe.org/documentation/introduction/compiler-targets.html
// tier 1 and 2 support only
final targets = [
    "hl",     // 1
    "interp", // 1
    "js",     // 1
];

function main() {
    final buf = new StringBuf();
    buf.add(File.getContent(dir + "main.yml") + "\n");

    for (path in FileSystem.readDirectory(dir)) {
        final ex = Path.extension(path);
        if (ex != "yaml" && ex != "yml")
            continue;
        if (path == "main.yml")
            continue;
        final name = Path.withoutExtension(path);
        if (targets.indexOf(name) != -1 || path == "cppia.yml")
            continue;
        trace(path);
        for (target in targets) {
            var content = File.getContent(dir + path);
            var support = "";
            if (FileSystem.exists(dir + target + ".yml")) {
                support = File.getContent(dir + target + ".yml").split("\n").map(line -> "  " + line).join("\n");
            }
            content = new Template(content).execute({target: target, support: support});
            var lines = content.split("\n");
            lines = lines.map(line -> "    " + line);
            buf.add(
                content = "  " + name + "-" + target + ":\n" + 
                lines.join("\n") + "\n"
            );
        }
    }
    File.saveContent(".github/workflows/main.yml", "# DO NOT EDIT. Generated from scripts/github-action\n" + buf.toString());
}