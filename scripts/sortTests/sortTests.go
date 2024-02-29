package main

import (
	"encoding/json"
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
)

var std = map[string]bool{}

func main() {
	// Specify the directory path
	mapStd()
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
	err = os.WriteFile("tests/sort_"+r.Name+".json", jsonData, 0644)
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

	// Walk through the directory and its subdirectories
	err := filepath.Walk(dir, func(path string, info os.FileInfo, err error) error {
		// Check if the file is a Go file
		if filepath.Ext(path) == ".go" && !strings.HasSuffix(path, "_test.go") {
			// Parse the Go file
			fset := token.NewFileSet()
			file, err := parser.ParseFile(fset, path, nil, parser.ImportsOnly)
			if err != nil {
				return nil
			}
			if file.Name.Name != "main" {
				return nil
			}
			wanted := ""
			switch name {
			case "yaegi":
				// Check if the file is a test file
				res, _, err := wantedFromCommentYaegi(path)
				if err {
					return nil
				}
				wanted = res
			case "go":
				// check if the first comment is // errorcheck
				file, err := parser.ParseFile(fset, path, nil, parser.ParseComments)
				if err != nil {
					return nil
				}
				if len(file.Comments) == 0 {
					return nil
				}
				text := file.Comments[0].Text()
				if strings.HasPrefix(text, "runoutput") {
					return nil
				}
				if !strings.HasPrefix(text, "run") {
					return nil
				}
				// make sure the file does not use channels
				chanBool := false
				ast.Inspect(file, func(n ast.Node) bool {
					switch n.(type) {
					case *ast.ChanType:
						chanBool = true
						return false
					}
					return true
				})
				if chanBool {
					return nil
				}
			case "tinygo":
				b, err := os.ReadFile(path[:len(path)-2] + "txt")
				if err == nil {
					wanted = string(b)
				}
			}

			// Print the imports
			if file.Imports == nil || len(file.Imports) == 0 {
				r.Easy = append(r.Easy, path+"\n"+wanted)
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

func wantedFromCommentYaegi(p string) (res string, goPath string, err bool) {
	fset := token.NewFileSet()
	f, _ := parser.ParseFile(fset, p, nil, parser.ParseComments)
	if len(f.Comments) == 0 {
		return
	}
	text := f.Comments[len(f.Comments)-1].Text()
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
