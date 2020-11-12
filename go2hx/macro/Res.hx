package go2hx.macro;
import haxe.Resource;
import haxe.macro.Context;
import sys.FileSystem;
import haxe.io.Bytes;
import sys.io.File;
using haxe.io.Path;
import haxe.Json;
class Res {
    #if macro
    static var data = {excludes:[
        "math",
        "flag",
        //"errors",
        "internal/reflectlite",
        "internal/unsafeheader",
        "unsafe",
        "runtime",
        "internal/cpu",
        "runtime/internal/sys",
        "runtime/internal/atomic",
        "runtime/internal/math",
        "internal/bytealg",
        "io",
        "sync",
        "sync/atomic",
        "internal/race",
        "reflect",
        "strconv",
        "math/bits",
        "unicode/utf8",
        "unicode",
        "sort",
        "strings",
        "io/ioutil",
        "bytes",
        "path/filepath",
        "syscall",
        "internal/syscall/windows/sysdll",
        "unicode/utf16",
        "internal/oserror",
        //"go/token",
        "encoding/json",
        "encoding",
        "encoding/base64",
        "encoding/binary",
        //"golang.org/x/tools/go/packages"
        "os/exec",
        "context",
        "internal/syscall/execenv",
        "internal/syscall/windows",
        //"go/types",
        //"go/ast",
        //"go/scanner",
        //"go/constant",
        "math/big",
        "math/rand",
        //"go/parser",
        "container/heap",
        "log",
        "path",
        //"golang.org/x/tools/go/internal/packagesdriver",
        "golang.org/x/tools/internal/gocommand",
        "regexp",
        "regexp/syntax",
        //"golang.org/x/tools/internal/event",
        //"golang.org/x/tools/internal/event/core",
        //"golang.org/x/tools/internal/event/label",
        //"golang.org/x/tools/internal/event/keys",
        //"golang.org/x/mod/semver",
        //"golang.org/x/xerrors",
        //"golang.org/x/xerrors/internal",
        //"golang.org/x/tools/go/gcexportdata",
        "bufio",
        "golang.org/x/tools/go/internal/gcimporter",
        "go/build",
        "go/doc",
        "internal/lazyregexp",
        "text/template",
        "internal/fmtsort",
        "text/template/parse",
        "net/url",
        //"internal/goroot",
        //"internal/goversion",
        "text/scanner",
        /*"golang.org/x/tools/internal/packagesinternal",
        "golang.org/x/tools/internal/typesinternal",
        "golang.org/x/tools/go/ssa/ssautil",
        "golang.org/x/tools/go/loader",
        "golang.org/x/tools/go/ast/astutil",
        "golang.org/x/tools/go/internal/cgo",
        "golang.org/x/tools/go/buildutil",
        "golang.org/x/tools/go/ssa",
        "golang.org/x/tools/go/types/typeutil"*/

        "internal/nettrace",
        "vendor/golang.org/x/net/dns/dnsmessage",
        "internal/poll",
        "internal/singleflight",
        "internal/testlog",
        //"hash",
        //"hash/crc32",
        //"compress/flate",

        "database/sql/driver",

    ]};
    public static function gen() {
        readDir("go");
        trace("list: " + Resource.listNames());
        File.saveContent("excludes.json",Json.stringify(data));
    }
    public static function readDir(path:String)
    {
        path = Path.addTrailingSlash(path);
        if (FileSystem.exists(path) && FileSystem.isDirectory(path))
        {
            var dir = FileSystem.readDirectory(path);
            for (name in dir)
            {
                if (name.substring(0,1) == ".") continue; //skip git

                if (FileSystem.isDirectory(path + name))
                {
                    readDir(path + name);
                }else{
                    var className = path.substr(3) + name.withoutExtension().toLowerCase();
                    Context.addResource(className,File.getBytes(path + name));
                    data.excludes.push(className);
                }
            }
        }
    }
    #end
}