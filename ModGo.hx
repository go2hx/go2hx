import sys.FileSystem;
import sys.io.File;

function main() {
    if (FileSystem.exists("go")) {
        Sys.command("git clone --depth=1 https://go.googlesource.com/go");
    }
    if (FileSystem.exists("go/test")) {
        // delete folder recursively
        Sys.command("rm -rf go/test");
    }
    Sys.setCwd("go/src");
    //allowInternal();
    allowTypeInfer();
    //allowVarType();
    //allowGenericExprList();
    Sys.command("./make.bash");
    Sys.putEnv("GOROOT", Sys.getCwd());
    Sys.command("go version");
}

function mod(pkg:String,tag:String, findLine:String, f:(index:Int,content:String)->String) {
    trace("pkg:",pkg);
    final content = File.getContent(pkg);
    var index = content.indexOf(tag);
    if (index != -1) {
        trace("already modified");
        return;
    }
    final line = findLine;
    index = content.indexOf(line);
    if (index == -1)
        throw "line not found";
    // save with modification
    File.saveContent(pkg,f(index,content));
}

function allowInternal() {
    final tag = "// go2hx allowInternal modification";
    final line = "func disallowInternal(ctx context.Context, srcDir string, importer *Package, importerPath string, p *Package, stk *ImportStack) *PackageError {";
    mod("cmd/go/internal/load/pkg.go",tag,line,
    (index:Int,content:String) -> {
        return content.substring(0, index + line.length) + '\n$tag\nreturn nil\n' + content.substring(index + line.length);
    });
}

function allowTypeInfer() {
    final tag = "/* go2hx allowTypeInfer modification*/";
    final line = "func (check *Checker) infer";
    mod("go/types/infer.go",tag,line,
    (index:Int,content:String) -> {
        return content.substring(0, index) + tag + 'func (check *Checker) Infer(posn positioner, tparams []*TypeParam, targs []Type, params *Tuple, args []*operand) (inferred []Type) {
            return check.infer(posn, tparams, targs, params, args)
        }\n
        ' + content.substring(index);
    });
}

function allowVarType() {
    final tag = "/* go2hx allowVarType modification*/";
    final line = "func (check *Checker) varType";
    mod("go/types/typexpr.go",tag,line,
    (index:Int,content:String) -> {
        return content.substring(0, index) + tag + 'func (check *Checker) VarType(e ast.Expr) Type {
            return check.varType(e)
        }\n
        ' + content.substring(index);
    });
}

function allowGenericExprList() {
    final tag = "/* go2hx allowGenericExprList modification*/";
    final line = "func (check *Checker) genericExprList";
    mod("go/types/typexpr.go",tag,line,
    (index:Int,content:String) -> {
        return content.substring(0, index) + tag + 'func (check *Checker) GenericExprList(elist []ast.Expr) (resList []*operand, targsList [][]Type, xlistList [][]ast.Expr) {
            return check.genericExprList(elist)
        }\n
        ' + content.substring(index);
    });
}

function allowTParams() {
    final tag = "/* go2hx allowTParams modification*/";
    final line = "func (check *Checker) renameTParams";
    mod("go/types/infer.go",tag,line,
    (index:Int,content:String) -> {
        return content.substring(0, index) + tag + 'func (check *Checker) RenameTParams(pos token.Pos, tparams []*TypeParam, typ Type) ([]*TypeParam, Type) {
            return check.renameTParams(pos,tparams,typ)
        }\n
        ' + content.substring(index);
    });
}