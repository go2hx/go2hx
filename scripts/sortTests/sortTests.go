package main

import (
	"encoding/json"
	"fmt"
	"go/ast"
	"go/importer"
	"go/parser"
	"go/token"
	"go/types"
	"os"
	"os/exec"
	"path/filepath"
	"strings"

	"golang.org/x/tools/go/packages"
)

var std = map[string]bool{}

func main() {
	// Specify the directory path
	mapStd()
	fmt.Println(len(os.Args))
	if len(os.Args) == 1 {
		cmd := exec.Command("go", "env", "GOROOT")
		out, err := cmd.Output()
		if err != nil {
			fmt.Println(err)
			return
		}
		createConfig(sortImports(string(out[:len(out)-1])+"/test", "go"))
	} else {
		// write code to run command go env GOROOT
		createConfig(sortImports("tests/go/test", "go"))
	}
	createConfig(sortImports("tests/tinygo/testdata", "tinygo"))
	createConfig(sortImports("tests/yaegi/_test", "yaegi"))
}

func createConfig(r Result) {
	fmt.Println(r)
	jsonData, err := json.MarshalIndent(r, "", "    ")
	if err != nil {
		fmt.Println(err)
		return
	}
	name := "tests/sort_" + r.Name + ".json"
	err = os.WriteFile(name, jsonData, 0644)
	if err != nil {
		fmt.Println(err)
		return
	}
}

func mapStd() {
	// std.json into a map
	b, err := os.ReadFile("tests/std.json")
	if err != nil {
		fmt.Println(err)
		return
	}
	var stdList []string
	err = json.Unmarshal(b, &stdList)
	if err != nil {
		fmt.Println(err)
		return
	}
	for _, s := range stdList {
		std[strings.Split(s, "|")[1]] = true
	}
}

func sortImports(dir string, name string) (r Result) {
	r.Name = name
	r.Easy = make([]string, 0)
	r.Medium = make([]string, 0)
	r.Hard = make([]string, 0)

	var cfg = &packages.Config{
		Mode: packages.NeedName |
			packages.NeedSyntax |
			packages.NeedFiles | packages.NeedTypes | packages.NeedTypesInfo | packages.NeedTypesSizes,
		BuildFlags: []string{"-tags", "netgo,purego,math_big_pure_go"}, // build tags
	}
	var conf = types.Config{Importer: importer.Default(), FakeImportC: true}
	_, _ = cfg, conf
	// Walk through the directory and its subdirectories
	err := filepath.Walk(dir, func(path string, info os.FileInfo, err error) error {
		// Check if the file is a Go file
		if filepath.Ext(path) == ".go" && !strings.HasSuffix(path, "_test.go") && !strings.Contains(path, "typeparam") && !strings.Contains(path, "chan") {
			// Parse the Go file
			fset := token.NewFileSet()
			file, err := parser.ParseFile(fset, path, nil, parser.ParseComments|parser.SkipObjectResolution)
			if err != nil {
				return nil
			}
			if file.Name.Name != "main" {
				return nil
			}
			wanted := ""
			// specific
			switch name {
			case "yaegi":
				// Check if the file is a test file
				res, _, err := wantedFromCommentYaegi(file)
				if err {
					return nil
				}
				wanted = res
			case "go":
				if len(file.Comments) == 0 {
					return nil
				}
				text := file.Comments[0].Text()
				if len(file.Comments) > 1 {
					if strings.Contains(file.Comments[1].Text(), "+build !wasm") {
						return nil
					}
				}
				if strings.HasPrefix(text, "runoutput") {
					return nil
				}
				if !strings.HasPrefix(text, "run") {
					return nil
				}
				/*initial, err := packages.Load(cfg, &types.StdSizes{WordSize: 4, MaxAlign: 8}, path)
				checker := types.NewChecker(&conf, fset, initial[0].Types, initial[0].TypesInfo)
				for _, obj := range checker.Types {
					switch obj.Type.(type) {
					case *types.TypeParam:
						fmt.Println("RID OF:", path)
						return nil
					}
				}*/
				//fmt.Println(i, path)
			case "tinygo":
				b, err := os.ReadFile(path[:len(path)-2] + "txt")
				if err == nil {
					wanted = string(b)
				}
			}
			// if check ast
			mode := "easy"
			if file.Imports == nil || len(file.Imports) == 0 {
				mode = "easy"
			} else {
				mediumBool := true
				for _, imp := range file.Imports {
					imp.Path.Value = imp.Path.Value[1 : len(imp.Path.Value)-1]
					if !std[imp.Path.Value] && imp.Path.Value != "fmt" {
						mediumBool = false
						break
					}
				}
				if mediumBool {
					mode = "medium"
				} else {
					mode = "hard"
				}
			}

			switch name {
			case "yaegi", "go", "tinygo":
				// make sure the file does not use channels
				chanBool := false
				typeParams := false
				ast.Inspect(file, func(n ast.Node) bool {
					switch n := n.(type) {
					case *ast.SendStmt, *ast.ChanType:
						chanBool = true
						return false
					case *ast.GoStmt:
						chanBool = true
						return false
					case *ast.UnaryExpr:
						if n.Op == token.ARROW {
							chanBool = true
							return false
						}
					case *ast.FuncType:
						if n.TypeParams != nil {
							typeParams = true
							return false
						}
					case *ast.IndexListExpr:
						typeParams = true
						return false
					}
					return true
				})
				// Do not skip chanBool
				_ = chanBool
				if chanBool {
					//println(path)
				}
				if typeParams {
					return nil
				}
			}

			// Print the imports
			if mode == "easy" {
				r.Easy = append(r.Easy, path+"\n"+wanted)
			} else {
				if mode != "hard" {
					r.Medium = append(r.Medium, path+"\n"+wanted)
				} else {
					r.Hard = append(r.Hard, path+"\n"+wanted)
				}
			}
		}
		return nil
	})

	if err != nil {
		fmt.Println(err)
	}
	return
}

type Result struct {
	Name   string   `json:"name"`
	Easy   []string `json:"easy"`
	Medium []string `json:"medium"`
	Hard   []string `json:"hard"`
}

func (r Result) String() string {
	return fmt.Sprintf("%s: easy: %d, medium: %d, hard: %d", r.Name, len(r.Easy), len(r.Medium), len(r.Hard))
}

func wantedFromCommentYaegi(file *ast.File) (res string, goPath string, err bool) {
	if len(file.Comments) == 0 {
		return
	}
	text := file.Comments[len(file.Comments)-1].Text()
	if strings.HasPrefix(text, "GOPATH:") {
		parts := strings.SplitN(text, "\n", 2)
		text = parts[1]
		wd, err := os.Getwd()
		if err != nil {
			panic(err)
		}
		goPath = filepath.Join(wd, "..", "_test", strings.TrimPrefix(parts[0], "GOPATH:"))
	}
	if strings.HasPrefix(text, "Output:\n") {
		return strings.TrimPrefix(text, "Output:\n"), goPath, false
	} else {
		return "", goPath, true
	}
	/*if strings.HasPrefix(text, "Error:\n") {
		return strings.TrimPrefix(text, "Error:\n"), goPath, true
	}
	return*/
}
