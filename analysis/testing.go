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
	//create(dir, "test.go")
	all()
}

func all() {
	dir := "analysis/tests/unit"
	paths, err := os.ReadDir(dir)
	if err != nil {
		panic(err)
	}
	for _, path := range paths {
		if path.Name() == "test.go" {
			continue
		}
		create(dir, path.Name())
	}
}

func create(filePath string, fileName string) {
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
	ParseLocalGotos(file, checker, fset)

	// Print the result
	config := printer.Config{Mode: printer.UseSpaces, Tabwidth: 4}
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
