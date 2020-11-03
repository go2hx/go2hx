package main

import (
	"flag"
	"fmt"
	"strings"
	"io/ioutil"
	"reflect"
	"bytes"
	//"go/token"
	//"go/types"
	//"go/constant"
	"encoding/json"
	"os"
	//"go/parser"
	//"path/filepath"
	//"strconv"
	"golang.org/x/tools/go/packages"
	//"golang.org/x/tools/go/ssa/ssautil"
	//"golang.org/x/tools/go/ast/inspector"
	"go/ast"
	//"golang.org/x/tools/go/ssa"
)

type excludeJSON struct {
	Excludes []string `json:"excludes"`
}
type jsonData struct {
	Pkgs []packageType `json:"pkgs"`
}
type funcType struct {
	Name    string      `json:"name"`
	Params  []fieldType `json:"params"`
	Results []fieldType `json:"results"`
	Body []string `json:"body"`
}
type varType struct {
	Name     string `json:"name"`
	Constant bool   `json:"constant"`
	Exported bool   `json:"exported"`
	Type     string `json:"type"`
	Value    string `json:"value"`
}
type fieldType struct {
	name string `json:"name"`
}
type packageType struct {
	PackagePath string     `json:"packagepath"`
	Files       []fileType `json:"files"`
}
type fileType struct {
	Name    string      `json:"name"`
	Main    bool        `json:"main"`
	Imports [][2]string `json:"imports"`
	Funcs   []funcType  `json:"funcs"`
	Vars    []varType   `json:"vars"`
	Types   []typeType  `json:"types"`
}
type typeType struct {
	Name string `json:"nane"`
}
// Example demonstrates how to load the packages specified on the
// command line from source syntax.
var cfg = &packages.Config{Mode: packages.LoadAllSyntax, Tests: false}
var excludes = make(map[string]bool)
var replaceMap = make(map[string]string)
var exportData = jsonData{}

const debug = true

func main() {
	bytes, err := ioutil.ReadFile("excludes.json")
	var exclude_data = excludeJSON{}
	replaceMap["int64"] = ""
	if err != nil {
		fmt.Println(err)
	} else {
		if json.Unmarshal(bytes, &exclude_data) == nil {
			for _, v := range exclude_data.Excludes {
				excludes[v] = true
			}
		}
	}
	// Examples: . , fmt, math, etc
	flag.Parse()
	args := flag.Args()
	load(args...)

	bytes, err = json.MarshalIndent(exportData, "", "    ")
	bytes = safeEncode(bytes)
	if err != nil {
		fmt.Println(err)
		return
	}
	os.Remove("export.json")
	_ = ioutil.WriteFile("export.json", bytes, 0644)
}
func load(args ...string) {
	inital, err := packages.Load(cfg, args...)
	if err != nil {
		fmt.Fprintf(os.Stderr, "load: %v\n", err)
		return
	}
	for _, pkg := range inital {
		dataPkg := packageType{}
		pkg.PkgPath = strings.Replace(pkg.PkgPath,".","_",-1)
		dataPkg.PackagePath = pkg.PkgPath
		for _, file := range pkg.Syntax {
			//func MergePackageFiles(pkg *Package, mode MergeMode) *File
			ast.Print(nil,file)
			data := fileType{}
			data.Name = file.Name.Name
			for _, decl := range file.Decls {
				switch decl := decl.(type) {
					case *ast.GenDecl:
						for _,spec := range decl.Specs {
							switch spec := spec.(type) {
								case *ast.ImportSpec:
									path := spec.Path.Value
									path = removeParan(path)
									path = strings.Replace(path,".","_",-1)
									imp := [2]string{path,""}
									if spec.Name != nil {
										imp[1] = spec.Name.Name
									}
									data.Imports = append(data.Imports,imp)
									fmt.Println("excludes",path,excludes[path])
									if !excludes[path] {
										load(path)
										excludes[path] = true
									}
									name := getName(path)
									replaceMap[name] = strings.Title(name)
									if name == "math" {

									}
								case *ast.ValueSpec:
									for i,_ := range spec.Names {
										v := varType{}
										//spec.Names[i].Obj.Kind
										v.Constant = spec.Names[i].Obj.Kind.String() == "const"
										v.Name = spec.Names[i].Name
										v.Exported = spec.Names[i].IsExported()
										v.Value = parseExpr(spec.Values[i],-1) //as to not add semicolon
										data.Vars = append(data.Vars,v)
									}
								default:
									_ = spec
									fmt.Println("spec not found",)
							}
						}
					case *ast.FuncDecl:
						fmt.Println("func",decl.Name.Name)
						fn := funcType{}
						fn.Name = decl.Name.Name
						if decl.Type.Params != nil {
							fn.Params = parseFields(decl.Type.Params.List)
						}
						if decl.Type.Results != nil {
							fn.Results = parseFields(decl.Type.Results.List)
						}
						fn.Body = parseBody(decl.Body.List)
					data.Funcs = append(data.Funcs, fn)
				default:
					_ = decl
					fmt.Println("decl not found")
				}
			}
			dataPkg.Files = append(dataPkg.Files, data)
		}
		exportData.Pkgs = append(exportData.Pkgs, dataPkg)
	}
}
func parseBody (stmts []ast.Stmt) []string {
	body := []string{}
	for _,stmt := range stmts {
		switch stmt := stmt.(type) {
			case *ast.ExprStmt:
				body = append(body,parseExpr(stmt.X,0))
			case *ast.ReturnStmt:
				body = append(body,"return;")
			case *ast.DeclStmt:
				switch stmt := stmt.Decl.(type) {
					case *ast.GenDecl:
						for _, spec := range stmt.Specs {
							switch spec := spec.(type) {
								case *ast.ValueSpec:
									buffer := strings.Builder{}
									for i,_ := range spec.Names {
										//spec.Names[i].Obj.Kind
										buffer.WriteString("final ")
										buffer.WriteString(spec.Names[i].Name)
										buffer.WriteString(" = ")
										buffer.WriteString(parseExpr(spec.Values[i],1))
										buffer.WriteString(";")
									}
									body = append(body,buffer.String())
								default:
									fmt.Println("decl not found",reflect.TypeOf(spec))
							}
						}
					default:
						fmt.Println("gen decl not found",reflect.TypeOf(stmt))
				}
				fmt.Println("decl",reflect.TypeOf(stmt.Decl))
			case *ast.AssignStmt: //short variable declaration.
				buffer := strings.Builder{}
				buffer.WriteString(parseAssignStatement(stmt,true))
				body = append(body,buffer.String())
			case *ast.ForStmt:
				//fmt.Println("post",reflect.TypeOf(stmt.Post))
				
				buffer := strings.Builder{}
				if stmt.Init != nil {
					buffer.WriteString("{")
					buffer.WriteString(parseAssignStatement(stmt.Init.(*ast.AssignStmt),true))
				}
				if stmt.Post != nil {
					buffer.WriteString("go.For.cfor(")
				}else{
					buffer.WriteString("while(")
				}
				if stmt.Cond != nil {
					buffer.WriteString(parseExpr(stmt.Cond,2))
					if stmt.Post != nil {
						buffer.WriteString(",")
						post := stmt.Post.(*ast.IncDecStmt)
						buffer.WriteString(post.X.(*ast.Ident).Name)
						buffer.WriteString(post.Tok.String())
						buffer.WriteString(",")
					}
				}else{
					buffer.WriteString("true")
				}
				if stmt.Post == nil {
					buffer.WriteString(") {\n")
				}else{
					buffer.WriteString(" {\n")
				}

				buffer.WriteString(strings.Join(parseBody(stmt.Body.List),"\n"))
				buffer.WriteString("}")
				if stmt.Post != nil {
					buffer.WriteString(");")
				}
				if stmt.Init != nil {
					buffer.WriteString("}")
				}
				body = append(body,buffer.String())
			case *ast.BranchStmt:
				buffer := strings.Builder{}
				buffer.WriteString(stmt.Tok.String())
				buffer.WriteString(";")
				body = append(body,buffer.String())
			case *ast.IfStmt:
				buffer := strings.Builder{}
				if stmt.Init != nil {
					buffer.WriteString("{")
					buffer.WriteString(parseAssignStatement(stmt.Init.(*ast.AssignStmt),true))
				}
				buffer.WriteString("if(")
				buffer.WriteString(parseExpr(stmt.Cond,2))
				buffer.WriteString(") {")
				buffer.WriteString(strings.Join(parseBody(stmt.Body.List),"\n"))
				buffer.WriteString("}")
				if stmt.Else != nil {
					buffer.WriteString("else {")
					switch stmt := stmt.Else.(type) {
						case *ast.BlockStmt:
							buffer.WriteString(strings.Join(parseBody(stmt.List),"\n"))
						default:
							buffer.WriteString(strings.Join(parseBody([]ast.Stmt{stmt}),"\n"))
					}
					buffer.WriteString("}")
				}
				if stmt.Init != nil {
					buffer.WriteString("}")
				}
				body = append(body,buffer.String())
			default:
				fmt.Println("statement not found",reflect.TypeOf(stmt))
		}
	}
	return body
}
func parseAssignStatement(stmt *ast.AssignStmt,semicolon bool) string {
	buffer := strings.Builder{}
	for i,_ := range stmt.Lhs {
		if stmt.Tok.String() == ":=" {
			buffer.WriteString("var ")
		}
		buffer.WriteString(parseExpr(stmt.Lhs[i],2))
		buffer.WriteString(" = ")
		buffer.WriteString(parseExpr(stmt.Rhs[i],2))
		if semicolon {
			buffer.WriteString(";")
		}
	}
	return buffer.String()
}
func removeParan(str string) string {
	return str[1 : len(str)-1]
}
func parseFields(list []*ast.Field) []fieldType {
	array := []fieldType{}
	for _, field := range list {
		switch ty := field.Type.(type) {
		default:
			_ = ty
			fmt.Println("parse field type not found")
		}
	}
	return array
}
func parseExprs (list []ast.Expr, level int) []string {
	array := []string{}
	level++
	for _,expr := range list {
		array = append(array,parseExpr(expr,level))
	}
	return array
}
func parseExpr(expr ast.Expr,level int) string {
	buffer := strings.Builder{}
	level++
	switch expr := expr.(type) {
		case *ast.BasicLit:
			buffer.WriteString(expr.Value)
		case *ast.BinaryExpr:
			buffer.WriteString(parseExpr(expr.X,level))
			//buffer.WriteString(" ")
			buffer.WriteString(expr.Op.String())
			//buffer.WriteString(" ")
			buffer.WriteString(parseExpr(expr.Y,level))
		case *ast.SelectorExpr:
			name := expr.X.(*ast.Ident).String()
			value,ok := replaceMap[name]
			//fmt.Println("selector",name,"ok",ok," ",replaceMap[name])
			if ok {
				name = value
			}
			buffer.WriteString(name)
			buffer.WriteString(".")
			sel := untitle(expr.Sel.Name)
			buffer.WriteString(sel)
		case *ast.Ident:
			buffer.WriteString(expr.Name)
		case *ast.CallExpr:
			switch init := expr.Fun.(type) {
				case *ast.Ident:
					name := init.Name
					value,ok := replaceMap[name]
					if ok {
						name = value
					}
					buffer.WriteString(name)
				default:
					buffer.WriteString(parseExpr(expr.Fun,level))
			}
			buffer.WriteString("(")
			buffer.WriteString(strings.Join(parseExprs(expr.Args,level),", "))
			buffer.WriteString(")")
		case *ast.UnaryExpr:
			op := expr.Op.String()
			if op != "*" && op != "&" {
				buffer.WriteString(op)
				buffer.WriteString(" ")
			}
			buffer.WriteString(parseExpr(expr.X,level))
		default:
			_ = expr
			fmt.Println("parse expr not found",reflect.TypeOf(expr))
			return ""
	}
	if level == 1 {
		buffer.WriteString(";")
	}
	return buffer.String()
}
func untitle (name string) string {
	buffer := strings.Builder{}
	buffer.WriteString(strings.ToLower(name[0:1]))
	buffer.WriteString(name[1:len(name)])
	return buffer.String()
}
func getName(path string) string {
	index := strings.LastIndex(path,"/") + 1
	return path[index:len(path)]
}
func unparan (name string) string {
	buffer := strings.Builder{}
	buffer.WriteString(strings.ToLower(name[0:1]))
	buffer.WriteString(name[1:len(name)])
	return buffer.String()
}
func safeEncode(b []byte) []byte {
	b = bytes.Replace(b, []byte("\\u003c"), []byte("<"), -1)
	b = bytes.Replace(b, []byte("\\u003e"), []byte(">"), -1)
	b = bytes.Replace(b, []byte("\\u0026"), []byte("&"), -1)
    return b
}