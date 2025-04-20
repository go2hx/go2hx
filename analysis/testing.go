package analysis

import (
	"fmt"
	"go/ast"
	"go/importer"
	"go/parser"
	"go/printer"
	"go/token"
	"go/types"
	"log"
	"os"
	"os/exec"
)

const dir = "analysis/tests/unit"

func GotoParseTest() {
	//create(dir+"/goto", "test.go")
	all(dir+"/goto", ParseLocalGotos)
}

func PointerParseTest() {
	//create(dir+"/pointer", "issue5056.go")
	//create(dir+"/pointer", "ref2.go")
	all(dir+"/pointer", ParseLocalPointers)
}

func all(dir string, runFunc func(file *ast.File, checker *types.Checker, fset *token.FileSet, testBool bool)) {
	paths, err := os.ReadDir(dir)
	if err != nil {
		panic(err)
	}
	for _, path := range paths {
		if path.Name() == "test.go" {
			continue
		}
		create(dir, path.Name(), runFunc)
	}
}

func create(filePath string, fileName string, runFunc func(file *ast.File, checker *types.Checker, fset *token.FileSet, setTestBool bool)) {
	// Parse the code
	code, err := os.ReadFile(filePath + "/" + fileName)
	if err != nil {
		panic(err)
	}
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, "code.go", code, 0)
	if err != nil {
		panic(err)
	}

	// Create a new type checker
	conf := types.Config{Importer: importer.Default()}
	info := &types.Info{
		Types: make(map[ast.Expr]types.TypeAndValue),
		Defs:  make(map[*ast.Ident]types.Object),
		Uses:  make(map[*ast.Ident]types.Object),
	}
	pkg, err := conf.Check("main", fset, []*ast.File{file}, info)
	if err != nil {
		log.Fatal(err)
	}

	checker := types.NewChecker(&conf, fset, pkg, info)

	// Rewrite the function body without goto statements
	runFunc(file, checker, fset, true)
	//ParseLocalGotos(file, checker, fset)

	// Print the result
	config := printer.Config{Mode: printer.UseSpaces, Tabwidth: 4}
	_ = os.MkdirAll(filePath+"mod/", 0777)
	// new file
	newPath := filePath + "mod/" + fileName
	modFile, err := os.Create(newPath)
	if err != nil {
		panic(err)
	}
	// wrap it in main func
	//modFile.WriteString("package main\nfunc main() \n")
	config.Fprint(modFile, token.NewFileSet(), file)
	//modFile.WriteString("\n}")

	oldPath := filePath + "/" + fileName
	run(oldPath, newPath)
}

func run(oldPath, newPath string) {
	if runCmd(oldPath) != runCmd(newPath) {
		panic("output not equal")
	}
}

func runCmd(runPath string) string {
	out, err := exec.Command("go", "run", runPath).CombinedOutput()
	fmt.Println(runPath + ":")
	fmt.Println(string(out))
	if err != nil {
		panic(err)
	}
	return string(out)
}
