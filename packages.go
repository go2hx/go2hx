package main

import (
	//"bytes"
	"flag"
	"fmt"
	"io/ioutil"
	"os/exec"
	"reflect"
	"strings"

	"go.mongodb.org/mongo-driver/bson"

	"go/printer"
	"go/token"

	//"go/types"
	//"go/constant"
	"os"
	"path/filepath"

	"strconv"

	"golang.org/x/tools/go/packages"

	//"golang.org/x/tools/go/ssa/ssautil"
	//"golang.org/x/tools/go/ast/inspector"
	"go/ast"
	//"golang.org/x/tools/go/ssa"
)

type Data struct {
	Pkgs []packageType `json:"pkgs"`
}
type funcType struct {
	Name     string   `json:"name"`
	Exported bool     `json:"exported"`
	Params   []string `json:"params"`
	Results  []string `json:"results"`
	Doc      string   `json:"doc"`
	Body     []string `json:"body"`
	Recv     string   `json:"recv"`
}
type varType struct {
	Name     string `json:"name"`
	Constant bool   `json:"constant"`
	Exported bool   `json:"exported"`
	Type     string `json:"type"`
	Value    string `json:"value"`
}
type packageType struct {
	PackagePath string       `json:"packagepath"`
	Name        string       `json:"name"`
	Imports     [][2]string  `json:"imports"`
	Funcs       []funcType   `json:"funcs"`
	Vars        []varType    `json:"vars"`
	Structs     []structType `json:"structs"`
}
type structType struct {
	Name             string   `json:"name"`
	Exported         bool     `json:"exported"`
	Fields           []string `json:"fields"`
	InterfaceMethods []string `json:"interfaceMethods"` //interface haxe
	InterfaceBool bool `json:"interfaceBool"` //toggles interface whether it's an interface or class
	Def              string   `json:"def"`
}

// Example demonstrates how to load the packages specified on the
// command line from source syntax.
var cfg = &packages.Config{Mode: packages.LoadAllSyntax, Tests: false}
var excludes = map[string]bool{
	"math":                            true,
	"fmt":                             true,
	"os":                              true,
	//"flag":                            true,
	"errors":                          true,
	"internal/reflectlite":            true,
	"internal/unsafeheader":           true,
	"unsafe":                          true,
	"runtime":                         true,
	"internal/cpu":                    true,
	"runtime/internal/sys":            true,
	"runtime/internal/atomic":         true,
	"runtime/internal/math":           true,
	"internal/bytealg":                true,
	"io":                              true,
	"sync":                            true,
	"sync/atomic":                     true,
	"internal/race":                   true,
	"reflect":                         true,
	"strconv":                         true,
	"math/bits":                       true,
	"unicode/utf8":                    true,
	"unicode":                         true,
	"sort":                            true,
	"strings":                         true,
	"io/ioutil":                       true,
	"bytes":                           true,
	"path/filepath":                   true,
	"syscall":                         true,
	"internal/syscall/windows/sysdll": true,
	"unicode/utf16":                   true,
	"internal/oserror":                true,
	//"go/token": true,
	"encoding/json":   true,
	"encoding/hex":    true,
	"encoding":        true,
	"encoding/base64": true,
	"encoding/binary": true,
	//"golang.org/x/tools/go/packages"
	"os/exec":                  true,
	"context":                  true,
	"internal/syscall/execenv": true,
	"internal/syscall/windows": true,
	//"go/types": true,
	//"go/ast": true,
	//"go/scanner": true,
	//"go/constant": true,
	"math/big":  true,
	"math/rand": true,
	//"go/parser": true,
	"container/heap": true,
	"log":            true,
	"path":           true,
	//"golang.org/x/tools/go/internal/packagesdriver": true,
	"golang.org/x/tools/internal/gocommand": true,
	"regexp":                                true,
	"regexp/syntax":                         true,
	"golang.org/x/sys/cpu": true,
	//"golang.org/x/tools/internal/event": true,
	//"golang.org/x/tools/internal/event/core": true,
	//"golang.org/x/tools/internal/event/label": true,
	//"golang.org/x/tools/internal/event/keys": true,
	//"golang.org/x/mod/semver": true,
	//"golang.org/x/xerrors": true,
	//"golang.org/x/xerrors/internal": true,
	//"golang.org/x/tools/go/gcexportdata": true,
	"bufio": true,
	"golang.org/x/tools/go/internal/gcimporter": true,
	"go/build":            true,
	"go/doc":              true,
	"internal/lazyregexp": true,
	"text/template":       true,
	"internal/fmtsort":    true,
	"text/template/parse": true,
	"net/url":             true,
	"net":                 true,
	"time":                true,
	//"internal/goroot": true,
	//"internal/goversion": true,
	"text/scanner": true,
	//"golang.org/x/tools/internal/packagesinternal": true,
	//"golang.org/x/tools/internal/typesinternal": true,
	//"golang.org/x/tools/go/ssa/ssautil": true,
	//"golang.org/x/tools/go/loader": true,
	//"golang.org/x/tools/go/ast/astutil": true,
	//"golang.org/x/tools/go/internal/cgo": true,
	//"golang.org/x/tools/go/buildutil": true,
	//"golang.org/x/tools/go/ssa": true,
	//"golang.org/x/tools/go/types/typeutil"
	"internal/syscall/windows/registry":      true,
	"internal/nettrace":                      true,
	"golang.org/x/net/dns/dnsmessage": true,
	"golang.org/x/text/unicode/bidi":  true,
	"golang.org/x/text/transform":     true,
	"golang.org/x/text/secure/bidirule":  true,
	"golang.org/x/text/unicode/norm":     true,
	"internal/poll":                          true,
	"internal/singleflight":                  true,
	"internal/testlog":                       true,
	"hash": true,
	"crypto/internal/randutil": true,
	"crypto": true,
	"crypto/hmac": true,
	"crypto/sha1": true,
	"crypto/rand": true,
	"crypto/sha256": true,
	"hash/crc32": true,
	"hash/adler32": true,
	"crypto/md5": true,
	"compress/flate": true,

	"database/sql/driver": true,
}
var types = []string{
	"float",
	"int",
	"string",
	"bool",
	"uint64",
	"byte",
	"int64",
	"int32",
	"float32",
	"float64",
	//"uint", //declared below
}
var replaceMap = map[string]string{}
var exportData = Data{}
var debugComment = !true
var debugTypeTrace = false
var noFieldName = false
var mapField = false
var asserted = ""
var labels = []string{}
var importLoadBool = true

var replaceFunctionContext map[string]string
var deferStack []string
var funcDecl *ast.FuncDecl
var generateGo = false
var sources = []source{}

const debug = true

type source struct {
	file ast.File
	path string
}

func main() {
	dir, err := filepath.Abs(filepath.Dir(os.Args[0]))
	cmd := exec.Command("haxe", "build.hxml")
	cmd.Dir = dir
	o, _ := cmd.CombinedOutput()
	fmt.Println((string(o[:])))

	//excludes = make(map[string]bool) //clear excludes
	for _, ty := range types {
		replaceMap[ty] = strings.Title(ty)
	}
	replaceMap["uint"] = "UInt" //cap diffrent
	replaceMap["uint32"] = "UInt32"
	replaceMap["uint64"] = "UInt64"
	replaceMap["errors"] = "std.Errors"
	replaceMap["error"] = "std.Errors"
	replaceMap["nil"] = "null"
	// Examples: . , fmt, math, etc
	flag.Parse()
	args := flag.Args()
	inital, err := packages.Load(cfg, args...)
	if err != nil {
		fmt.Fprintf(os.Stderr, "load: %v\n", err)
		return
	}
	for i := 0; i < len(inital); i++ {
		load(inital[i])
	}
	bytes, err := bson.Marshal(exportData)
	if err != nil {
		fmt.Println(err)
		return
	}
	exportPath := filepath.Join(dir, "export.bson")
	os.Remove(exportPath)
	_ = ioutil.WriteFile(exportPath, bytes, 0644)

	currentPath, err := os.Getwd()
	if err != nil {
		panic(err)
	}
	binPath := filepath.Join(currentPath, "bin")
	err = os.RemoveAll(binPath)
	if err != nil {
		fmt.Println("Remove all error:", err)
		return
	}
	cmd = exec.Command("parser", binPath)
	cmd.Dir = dir
	out, _ := cmd.CombinedOutput()
	fmt.Println(string(out[:]))
	//print go
	if generateGo {
		fmt.Println("sources", len(sources))
		for _, source := range sources {
			if source.file.Name == nil {
				continue
			}
			path := filepath.Join(binPath, source.file.Name.Name) + ".go"
			f, err := os.OpenFile(path, os.O_CREATE|os.O_WRONLY|os.O_TRUNC, 0644)
			if err != nil {
				fmt.Println("print open file", path, "error:", err)
			}
			printer.Fprint(f, token.NewFileSet(), &source.file)
		}
	}
}
func load(pkg *packages.Package) {
	str := strings.Replace(pkg.PkgPath, ".", "_", -1)
	str = strings.Replace(str, "-", "_", -1)
	array := strings.Split(str, "/")
	for i, _ := range array {
		array[i] = reserved(array[i])
	}
	pkg.PkgPath = strings.Join(array, "/")
	file := mergePackageFiles(pkg, !true)
	sources = append(sources, source{file, pkg.PkgPath})
	for path,imp := range pkg.Imports {
		if !excludes[path] {
			if importLoadBool {
				load(imp)
				fmt.Println(path)
			}
			excludes[path] = true
		}
	}
}
func compile(src source) {
	data := packageType{}
	data.PackagePath = src.path
	file := src.file
	for _, decl := range file.Decls {
		//fmt.Println(ast.Print(nil, decl))
		switch decl := decl.(type) {
		case *ast.GenDecl:
			for _, spec := range decl.Specs {
				switch spec := spec.(type) {
				case *ast.ImportSpec:
					if spec.Path.Value != "" {
						path := spec.Path.Value
						path = removeParan(path)
						imp := [2]string{strings.Replace(path, ".", "_", -1), ""}
						if spec.Name != nil {
							imp[1] = spec.Name.Name
						}
						data.Imports = append(data.Imports, imp)
						name := getName(path)
						replaceMap[imp[1]] = strings.Title(imp[1])
						replaceMap[name] = strings.Title(name)
					}
				case *ast.ValueSpec: //TODO: Variables declared without an explicit initial value are given their zero value.
					for i, _ := range spec.Names {
						v := varType{}
						//spec.Names[i].Obj.Kind
						v.Constant = spec.Names[i].Obj.Kind.String() == "const"
						v.Exported = spec.Names[i].IsExported()
						name := untitle(spec.Names[i].Name)
						if name != spec.Names[i].Name {
							replaceMap[spec.Names[i].Name] = name
						}
						v.Name = name
						if i >= len(spec.Values) {
							continue
						}
						v.Value = parseExpr(spec.Values[i], false) //as to not add semicolon
						data.Vars = append(data.Vars, v)
					}
				case *ast.TypeSpec:
					ty := structType{}
					ty.Name = strings.Title(spec.Name.Name)
					ty.Exported = spec.Name.IsExported()
					replaceMap[spec.Name.Name] = ty.Name
					switch structType := spec.Type.(type) {
					case *ast.StructType:
						ty.Fields = parseFields(structType.Fields.List, true)
					case *ast.InterfaceType:
						ty.InterfaceMethods = parseFields(structType.Methods.List, true)
					case *ast.Ident, *ast.ArrayType, *ast.SelectorExpr:
						ty.Def = parseTypeExpr(spec.Type)
					default:
						ty.Def = parseTypeExpr(spec.Type)
						fmt.Println("type spec type unknown", reflect.TypeOf(structType))
					}
					data.Structs = append(data.Structs, ty)
				default:
					_ = spec
					fmt.Println("spec not found", reflect.TypeOf(spec))
				}
			}
		case *ast.FuncDecl:
			deferStack = []string{}
			replaceFunctionContext = make(map[string]string)
			funcDecl = decl
			fn := funcType{}
			fn.Exported = decl.Name.IsExported()
			fn.Name = untitle(decl.Name.Name)
			if fn.Name != decl.Name.Name {
				replaceMap[decl.Name.Name] = fn.Name
			}
			//fmt.Println("name:",fn.Name,"export:",fn.Exported)
			if fn.Exported {
				fn.Doc = parseComment(decl.Doc)
			} else {
				fn.Doc = ""
			}
			if decl.Type.Params != nil {
				fn.Params = parseFields(decl.Type.Params.List, true)
			}
			if decl.Type.Results != nil {
				fn.Results = parseFields(decl.Type.Results.List, false)
			}
			if decl.Recv != nil {
				//fn.
				if len(decl.Recv.List) != 1 {
					fmt.Println("error recv list is not length of 1:", decl.Recv.List)
				}
				recv := decl.Recv.List[0]
				fn.Recv = parseTypeExpr(recv.Type)
				if len(recv.Names) == 1 {
					replaceFunctionContext[recv.Names[0].Name] = "this"
					replaceFunctionContext[untitle(recv.Names[0].Name)] = "this"
				} else {
					if len(recv.Names) > 1 {
						fmt.Println("function error recv names more then 1:", recv.Names)
					}
				}
			}
			if decl.Body != nil {
				fn.Body = parseBody(decl.Body.List)
			}
			if len(deferStack) > 0 {
				fn.Body = append(fn.Body, deferStack...) //add defer to end of function
			}
			data.Funcs = append(data.Funcs, fn)
		default:
			_ = decl
			fmt.Println("decl not found loader",reflect.TypeOf(decl))
		}
	}
	exportData.Pkgs = append(exportData.Pkgs, data)
}
func parseComment(comments *ast.CommentGroup) string {
	if comments == nil {
		return ""
	}
	buffer := ""
	//buffer.WriteString("/**\n")
	/*for _, comment := range comments.List {
		buffer.WriteString(comment.Text[2:])
		buffer.WriteString("\n")
	}*/
	//buffer.WriteString("**/")
	return buffer
}
func addSemicolon(obj interface{}, init bool) string {
	if init {
		return ";" + addDebug(obj)
	}
	return ""
}
func addDebug(obj interface{}) string {
	if debugComment && obj != nil {
		return "//" + reflect.TypeOf(obj).String() + "\n"
	}
	return ""
}
func parseStatement(stmt ast.Stmt, init bool) []string {
	body := []string{}
	switch stmt := stmt.(type) {
	case *ast.LabeledStmt:
		buffer := "function " + stmt.Label.Name + "() {\n"
		labels = append(labels, stmt.Label.Name)
		body = append(body, buffer)
	case *ast.ExprStmt:
		body = append(body, parseExpr(stmt.X, init))
	case *ast.ReturnStmt:
		buffer := ""
		if len(deferStack) > 0 {
			for _, obj := range deferStack {
				buffer += obj + "\n"
			}
		}
		buffer += "return "

		if len(stmt.Results) > 1 {
			buffer += "{"
			for index, res := range stmt.Results {
				if index > 0 {
					buffer += ","
				}
				name := parseFieldName(funcDecl.Type.Results.List, index)
				if name == "" {
					buffer += "v"
					buffer += strconv.Itoa(index)
				} else {
					buffer += name
				}
				//buffer.WriteString(funcDecl.Type.Results.List[index].Type)
				buffer += " : "
				buffer += parseExpr(res, false)
				buffer += " "
			}
			buffer += "}"
		} else if len(stmt.Results) == 1 {
			buffer += parseExpr(stmt.Results[0], false)
		}
		buffer += ";\n"
		body = append(body, buffer)
	case *ast.TypeSwitchStmt:
		buffer := "{\n"
		if stmt.Init != nil {
			buffer += strings.Join(parseStatement(stmt.Init, true), "\n")
		}
		asserted = ""
		buffer += strings.Join(parseStatement(stmt.Assign, true), "")
		def := ast.CaseClause{}
		setDefault := false
		first := true
		for _, stmt := range stmt.Body.List {
			switch stmt := stmt.(type) {
			case *ast.CaseClause:
				if len(stmt.List) == 0 {
					def = *stmt
					setDefault = true
					continue
				}
				if !first {
					buffer += "else "
				}
				buffer += caseAsIf(stmt, asserted)
			default:
				fmt.Println("switch-type", reflect.TypeOf(stmt))
			}
			first = false
		}
		if setDefault {
			if len(stmt.Body.List) > 1 {
				buffer += "else "
			}
			buffer += caseAsIf(&def, "")
		}
		buffer += "}"
		body = append(body, buffer)
	case *ast.SwitchStmt:
		buffer := ""
		if stmt.Init != nil {
			buffer += "{" + strings.Join(parseStatement(stmt.Init, true), "\n")
		}
		if stmt.Tag == nil {
			//if statements
			def := ast.CaseClause{}
			setDefault := false
			first := true
			for _, stmt := range stmt.Body.List {
				switch stmt := stmt.(type) {
				case *ast.CaseClause:
					if len(stmt.List) == 0 {
						def = *stmt
						setDefault = true
						continue
					}
					if !first {
						buffer += "else "
					}
					buffer += caseAsIf(stmt, "")
				default:
					fmt.Println("switch-if", reflect.TypeOf(stmt))
				}
				first = false
			}
			if setDefault {
				if len(stmt.Body.List) > 1 {
					buffer += "else "
				}
				buffer += caseAsIf(&def, "")
			}
		} else {
			//actual switch
			buffer += "switch(" + parseExpr(stmt.Tag, false) + ") {\n"
			//body
			buffer += strings.Join(parseBody(stmt.Body.List), "\n")
			buffer += "}"
		}
		if stmt.Init != nil {
			buffer += "}"
		}
		body = append(body, buffer)
	case *ast.DeclStmt:
		switch stmt := stmt.Decl.(type) {
		case *ast.GenDecl:
			for _, spec := range stmt.Specs {
				switch spec := spec.(type) {
				case *ast.ValueSpec: //TODO: Variables declared without an explicit initial value are given their zero value.
					buffer := ""
					for i, _ := range spec.Names {
						//spec.Names[i].Obj.Kind
						buffer += "var " + spec.Names[i].Name
						if spec.Type != nil {
							buffer += ":" + parseTypeExpr(spec.Type)
						}
						if len(spec.Values) > i {
							buffer += " = " + parseExpr(spec.Values[i], false)
						} else {
							buffer += " = " + getDefaultType(spec.Type)
						}
						buffer += addSemicolon(stmt, init)
					}
					body = append(body, buffer)
				case *ast.TypeSpec:
					
				default:
					fmt.Println("decl not found", reflect.TypeOf(spec))
				}
			}
		default:
			fmt.Println("gen decl not found", reflect.TypeOf(stmt))
		}
	case *ast.AssignStmt: //short variable declaration.
		buffer := parseAssignStatement(stmt, init)
		body = append(body, buffer)
	case *ast.ForStmt:
		//fmt.Println("post",reflect.TypeOf(stmt.Post))
		buffer := ""
		if stmt.Init != nil {
			buffer += "{"
			switch init := stmt.Init.(type) {
			case *ast.AssignStmt:
				buffer += parseAssignStatement(init, true)
			case *ast.IncDecStmt:
				buffer += parseExpr(init.X, true)
			}
		}
		if stmt.Post != nil {
			buffer += "cfor("
		} else {
			buffer += "while("
		}
		if stmt.Cond != nil {
			buffer += parseExpr(stmt.Cond, false)
			if stmt.Post != nil {
				buffer += "," + strings.Join(parseStatement(stmt.Post, false), "\n") + ","
			}
		} else {
			buffer += "true"
		}
		if stmt.Post == nil {
			buffer += ") {\n"
		} else {
			buffer += " {\n"
		}

		buffer += strings.Join(parseBody(stmt.Body.List), "\n")
		buffer += "}"
		if stmt.Post != nil {
			buffer += ");"
		}
		if stmt.Init != nil {
			buffer += "}"
		}
		body = append(body, buffer)
	case *ast.BranchStmt:
		buffer := stmt.Tok.String() + ";"
		body = append(body, buffer)
	case *ast.IfStmt:
		buffer := ""
		if stmt.Init != nil {
			buffer += "{"
			switch init := stmt.Init.(type) {
			case *ast.AssignStmt:
				buffer += parseAssignStatement(init, true)
			default:
				fmt.Println("if init unknown type", reflect.TypeOf(init))
			}
		}
		buffer += "if(" + parseExpr(stmt.Cond, false) + ") {"
		buffer += strings.Join(parseBody(stmt.Body.List), "")
		buffer += "}"
		if stmt.Else != nil {
			buffer += "else {"
			switch stmt := stmt.Else.(type) {
			case *ast.BlockStmt:
				buffer += strings.Join(parseBody(stmt.List), "")
			default:
				buffer += strings.Join(parseStatement(stmt, true), "")
			}
			buffer += "}"
		}
		if stmt.Init != nil {
			buffer += "}"
		}
		body = append(body, buffer)
	case *ast.CaseClause:
		//stmt.List
		buffer := ""
		if len(stmt.List) > 0 {
			buffer += "case "
			buffer += strings.Join(parseExprs(stmt.List, false), ",")
		} else {
			buffer += "default"
		}
		buffer += ":\n"
		buffer += strings.Join(parseBody(stmt.Body), "\n")
		body = append(body, buffer)
	case *ast.GoStmt:
		body = append(body, "//go routines not supported yet\n")
	case *ast.IncDecStmt:
		buffer := parseExpr(stmt.X, false) + stmt.Tok.String() + addSemicolon(stmt, init)
		body = append(body, buffer)
	case *ast.RangeStmt:
		buffer := "range(" + parseExpr(stmt.Key, false) + ","
		buffer += parseExpr(stmt.Value, false) + ","
		buffer += parseExpr(stmt.X, false) + ", {\n"
		buffer += strings.Join(parseBody(stmt.Body.List), "\n") + "});"
		body = append(body, buffer)
	case *ast.DeferStmt:
		buffer := parseExpr(stmt.Call, init) + "/*defer*/"
		deferStack = append(deferStack, buffer)
	case *ast.SelectStmt:
		buffer := "/*select*/"
		_ = buffer
	default:
		fmt.Println("statement not found", reflect.TypeOf(stmt))
		body = append(body, addDebug(stmt))
	}
	return body
}
func parseBody(stmts []ast.Stmt) []string {
	body := []string{}
	before := len(labels)
	for _, stmt := range stmts {
		body = append(body, parseStatement(stmt, true)...)
	}
	if before != len(labels) {
		tmp := labels[before:len(labels)]
		for _, label := range tmp {
			body = append(body, strings.Join([]string{"}\n", label, "();"}, ""))
		}
		//slice
		labels = labels[0:before]
	}
	return body
}

//multiple-value test() in single-value context
func parseMultiReturn(stmt *ast.AssignStmt, init bool) string {
	buffer := ""
	args := []string{}
	for i := range stmt.Lhs {
		set := parseExpr(stmt.Lhs[i], false)
		if set == "_" {
			args = append(args, "null")
			continue
		}
		if stmt.Tok.String() == ":=" {
			buffer += "var " + set + addSemicolon(stmt, init)
		}
		args = append(args, set)
	}
	buffer += "setMulti([" + strings.Join(args, ",") + "],"
	buffer += parseExpr(stmt.Rhs[0], false) + ")"
	buffer += addSemicolon(stmt, init)
	return buffer
}
func parseAssignStatement(stmt *ast.AssignStmt, init bool) string {
	multi := false
	if len(stmt.Lhs) != len(stmt.Rhs) {
		multi = true
	}
	if !multi && len(stmt.Rhs) == 1 {
		switch stmt.Rhs[0].(type) {
		case *ast.CallExpr, *ast.FuncLit:
			multi = true
		default:
			multi = false
		}
	}
	if multi {
		return parseMultiReturn(stmt, init)
	}
	buffer := ""
	for i, _ := range stmt.Lhs {
		set := parseExpr(stmt.Lhs[i], false)
		if set == "_" {
			continue
		}
		if stmt.Tok.String() == ":=" {
			buffer += "var "
		}
		buffer += set + " = "
		buffer += parseExpr(stmt.Rhs[i], false)
		buffer += addSemicolon(stmt, init)
	}
	return buffer
}
func removeParan(str string) string {
	return str[1 : len(str)-1]
}
func parseTypeExpr(expr ast.Expr) string {
	switch expr := expr.(type) {
	case *ast.StarExpr:
		x := parseExpr(expr.X, false)
		return "std.Pointer<" + x + ">"
	case *ast.Ident: //pass through
	case *ast.SelectorExpr: //pass through
	case *ast.ArrayType: //pass through
	case *ast.InterfaceType:
	case *ast.FuncType:
	case *ast.MapType:
	case *ast.Ellipsis:
	case *ast.ChanType:
	case *ast.StructType:
	default:
		fmt.Println("type expr unknown:", reflect.TypeOf(expr))
	}
	return parseExpr(expr, false)
}
func parseFields(list []*ast.Field, defaults bool) []string {
	array := []string{}
	buffer := ""
	for _, field := range list {
		ty := parseTypeExpr(field.Type)
		if len(field.Names) == 0 {
			array = append(array, ty)
		} else {
			for _, name := range field.Names {
				buffer = ""
				if !noFieldName {
					buffer += untitle(parseExpr(name, false)) + ":"
				}
				buffer += ty
				if defaults {
					buffer += " = " + getDefaultType(field.Type)
				}
				array = append(array, buffer)
			}
		}
	}
	return array
}
func parseFieldName(list []*ast.Field, index int) string {
	if len(list) <= index {
		return ""
	}
	field := list[index]
	if field == nil {
		return ""
	}
	for _, name := range field.Names {
		return untitle(parseExpr(name, false))
	}
	return ""
}
func parseExprs(list []ast.Expr, init bool) []string {
	array := []string{}
	for _, expr := range list {
		array = append(array, parseExpr(expr, init))
	}
	return array
}
func parseExpr(expr ast.Expr, init bool) string {
	buffer := ""
	if debugTypeTrace {
		debugTypeTrace = false
		fmt.Println("debug type trace:", reflect.TypeOf(expr))
	}
	switch expr := expr.(type) {
	case *ast.FuncType:
		params := parseFields(expr.Params.List, true)
		//fmt.Println("count of params", len(params))
		if len(params) == 0 {
			buffer += "Void"
		} else if len(params) == 1 {
			buffer += params[0]
		} else {
			buffer += "(" + strings.Join(params, ", ") + ")"
		}
		buffer += " -> "
		if expr.Results == nil {
			buffer += "Void"
		} else {
			res := parseFields(expr.Results.List, true)
			if len(res) == 0 {
				buffer += "Void"
			} else if len(res) == 1 {
				buffer += res[0]
			} else {
				buffer += "{"

				buffer += strings.Join(res, ",")
				buffer += "}"
			}
		}
	case *ast.Ident:
		name := rename(expr.Name)
		buffer += name
	case *ast.StarExpr: //pointer
		x := parseExpr(expr.X, false)
		buffer = x + ".value"
	case *ast.MapType:
		buffer = "Map<" + parseTypeExpr(expr.Key) + "," + parseTypeExpr(expr.Value) + ">"
	case *ast.ChanType:
		buffer = "Dynamic"
	case *ast.Ellipsis:
		buffer = "..." + parseExpr(expr.Elt, false)
	case *ast.InterfaceType:
		if expr.Methods == nil || len(expr.Methods.List) == 0 {
			return "Any"
		}
		//fmt.Println("count", len(expr.Methods.List))
	case *ast.StructType:
		buffer = strings.Join(parseFields(expr.Fields.List, true), ",\n")
	case *ast.KeyValueExpr: //map
		if !noFieldName {
			buffer = parseExpr(expr.Key, false)
			if mapField {
				buffer += " : "
			} else {
				buffer += " => "
			}
		}
		buffer += parseExpr(expr.Value, false)
	case *ast.FuncLit:
		buffer = "function("
		if expr.Type.Params != nil {
			params := parseFields(expr.Type.Params.List, true)
			buffer += strings.Join(params, ",")
		}
		buffer += ")"
		if expr.Type.Results != nil {
			res := parseFields(expr.Type.Results.List, false)
			_ = res
		}
		buffer += "{\n"
		buffer += strings.Join(parseBody(expr.Body.List), "")
		buffer += "}"
	case *ast.BasicLit: //A literal basic type
		value := expr.Value
		switch expr.Kind {
		case token.STRING:
			if len(value) > 1 {
				char := value[0:1]
				if char == "`" {
					value = `'` + value[1:len(value)-1] + `'`
				}
			}
			//remove invalid sequence
			//\b, \t, \n, \f, \r, \”, \’, \\
			for i := 0; i < len(value)-1; i++ {
				if string(value[i]) == `\` {
					switch string(value[i+1]) {
					case "b", "t", "n", "f", `"`, "’", `\`:
					default:
						value = string(value[0:i]) + string(value[i+1])
					}
				}
			}
		case token.INT:

		case token.FLOAT:

		case token.CHAR:
			if expr.Value == `\` {
				value = `"\\".substring(1)`
			}
		default:
			fmt.Println("unknown basic literal kind, value:", value, "kind:", expr.Kind.String())
		}
		buffer = value
	case *ast.BinaryExpr:
		buffer = parseExpr(expr.X, false) + expr.Op.String() + parseExpr(expr.Y, false)
	case *ast.ArrayType:
		name := rename(parseExpr(expr.Elt, false))
		writeArrayBool := true
		switch name {
		case "byte":
			writeArrayBool = false
			return "haxe.io.BytesData"
		}
		if writeArrayBool {
			return "Array<" + name + ">"
		}
	case *ast.SelectorExpr: //1st class
		name := rename(parseExpr(expr.X, false))
		sel := reserved(untitle(rename(expr.Sel.Name)))
		switch sel {
		case "new":
			sel = "New" //in order to get around the restriction
		}
		
		buffer = name + "." + sel
		
	case *ast.CallExpr: //1st class TODO: Type Conversions The expression T(v) converts the value v to the type T.
		makeBool := false
		switch init := expr.Fun.(type) {
		case *ast.Ident:
			name := rename(init.Name)
			switch name {
			case "String":
				name = "str"
			case "Int64":
				name = ""
			case "make", "new":
				name = "new "
				makeBool = true
			}
			buffer = name
		case *ast.ArrayType:
			value := parseExpr(init.Elt, false)
			switch value {
			case "Rune":
				buffer += "Std.int"
			case "Byte":
				buffer += "haxe.io.Bytes.ofString"
			}
		default:
			buffer += parseExpr(expr.Fun, false)
		}
		if makeBool && len(expr.Args) == 1 {
			buffer += parseExpr(expr.Args[0], false)
			buffer += "()"
		} else {
			buffer += "(" + strings.Join(parseExprs(expr.Args, false), ", ") + ")"
		}
		buffer += addSemicolon(expr, init)
	case *ast.UnaryExpr: //star and address
		op := expr.Op.String()
		switch op {
		case "*": //represented as *ast.StarExpr
		case "&": //adress acess
			x := parseExpr(expr.X, false)
			buffer = "std.Pointer.make(() -> " + x + ", (tmp) -> " + x + " = tmp)"
		default:
			buffer = op + " " + parseExpr(expr.X, false)
		}
	case *ast.TypeAssertExpr: //pass through
		buffer += typeAssert(*expr, init)
	case *ast.IndexExpr:
		buffer = parseExpr(expr.X, false) + "[" + parseExpr(expr.Index, false) + "]"
	case *ast.CompositeLit:
		switch ty := expr.Type.(type) { //specifically for lists of types
		case *ast.ArrayType:
			buffer = "[" + strings.Join(parseExprs(expr.Elts, false), ",") + "]"
		case *ast.SelectorExpr, *ast.Ident:
			buffer = "new " + parseExpr(ty, false) + "("
			noFieldName = true
			buffer += strings.Join(parseExprs(expr.Elts, false), ",")
			noFieldName = false
			buffer += ")"
		case *ast.MapType:
			buffer = "["
			mapField = true
			buffer += strings.Join(parseExprs(expr.Elts, false), ",")
			mapField = false
			buffer += "]"
		case nil:
			buffer = strings.Join(parseExprs(expr.Elts, false), ",")
		default:
			fmt.Println("compositelit type unknown", reflect.TypeOf(ty))
		}
	case *ast.SliceExpr:
		//ast.Print(nil, expr)
		buffer = parseExpr(expr.X, false) + ".slice("
		low := "0"
		if expr.Low != nil {
			low = parseExpr(expr.Low, false)
		}
		buffer += low
		if expr.High != nil {
			buffer += "," + parseExpr(expr.High, false)
		}
		buffer += ")"
		if expr.Max != nil {
			buffer += ".slice(0," + parseExpr(expr.Max, false) + ")"
		}
	case *ast.ParenExpr:
		buffer = parseExpr(expr.X, false)
	case nil:

	default:
		fmt.Println("parse expr not found", reflect.TypeOf(expr))
		//ast.Print(nil,expr)
		return addDebug(expr)
	}
	return buffer
}
func getDefaultType(expr ast.Expr) string {
	switch expr := expr.(type) {
	case *ast.ArrayType:
		buffer := ""
		buffer += "["
		switch l := expr.Len.(type) {
		case *ast.BasicLit:
			buffer += "for (i in 0..." + l.Value + ")"
		}
		buffer += getDefaultType(expr.Elt)
		buffer += "]"
		return buffer
	case *ast.Ident:
		switch expr.Name {
		case "int", "float", "uint64", "uint", "int64":
			return "0"
		case "string":
			return "''"
		case "bool":
			return "false"
		}
		return "null"
	default:
		_ = expr
		return "null"
	}
}
func caseAsIf(stmt *ast.CaseClause, obj string) string {
	//stmt.List
	buffer := ""
	if len(stmt.List) > 0 {
		buffer = "if("
		list := []string{}
		for _, stmt := range stmt.List {
			piece := ""
			if obj != "" {
				/*piece.WriteString("Std.isOfType(")
				piece.WriteString(obj)
				piece.WriteString(",")*/
				piece = "(" + obj + " is "
			}
			piece += parseExpr(stmt, false)
			if obj != "" {
				piece += ")"
			}
			list = append(list, piece)
		}
		buffer += strings.Join(list, "||")
		buffer += ") "
	}
	buffer += "{\n"
	buffer += strings.Join(parseBody(stmt.Body), "")
	buffer += "}"
	return buffer
}
func rename(name string) string {
	value, ok := replaceMap[name]
	if ok {
		name = value
	}
	value, ok = replaceFunctionContext[name]
	if ok {
		name = value
	}
	return name
}
func typeAssert(expr ast.TypeAssertExpr, init bool) string {
	asserted = parseExpr(expr.X, false)
	return asserted
}
func untitle(name string) string {
	buffer := strings.ToLower(name[0:1]) + name[1:len(name)]
	return buffer
}
func getName(path string) string {
	index := strings.LastIndex(path, "/") + 1
	return path[index:len(path)]
}
func unparan(name string) string {
	buffer := strings.ToLower(name[0:1]) + name[1:len(name)]
	return buffer
}
func reserved(str string) string {
	switch str {
	case "switch", "case", "break", "continue", "default":
	case "abstract", "cast", "catch", "class", "do":
	case "dynamic", "else", "enum", "extends", "extern", "true", "false", "final", "for", "function", "if", "interface":
	case "implements", "import", "in", "inline", "macro", "new", "null", "operator", "overload", "override", "package", "private":
	case "public", "return", "static", "this", "throw", "try", "typedef", "untyped", "using", "var", "while":
	default:
		return str
	}
	return strings.Join([]string{str, "tmp"}, "_")
}
func mergePackageFiles(pkg *packages.Package, exports bool) ast.File {
	data := ast.File{}
	//data.Name = ast.NewIdent(pkg.Name)
	names := make(map[string]bool)
	imports := make(map[string]bool)
	_ = imports
	_ = names
	// A language entity may be declared multiple
	// times in different package files; only at
	// build time declarations must be unique.
	// For now, exclude multiple declarations of
	// functions - keep the one with documentation.
	// TODO(gri): Expand this filtering to other
	//            entities (const, type, vars) if
	//            multiple declarations are common.
	for _, file := range pkg.Syntax {
		data.Name = file.Name
		for index := range file.Decls {
			switch decl := file.Decls[index].(type) {
			case *ast.GenDecl:
				declData := ast.GenDecl{}
				for _, spec := range decl.Specs {
					switch specType := spec.(type) {
					case *ast.ImportSpec:
						if !imports[specType.Path.Value] {
							imports[specType.Path.Value] = true
						} else {
							continue
						}
					case *ast.ValueSpec:
						
					case *ast.TypeSpec:
						name := strings.Title(specType.Name.Name)
						if name != specType.Name.Name {
							replaceMap[specType.Name.Name] = name
						}
						specType.Name.Name = name
						if exports && !specType.Name.IsExported() {
							continue
						}
					default:
						fmt.Println("spec not found2", reflect.TypeOf(spec))
					}
					declData.Specs = append(declData.Specs, spec)
				}
				data.Decls = append(data.Decls, &declData)
			case *ast.FuncDecl:
				if exports && !decl.Name.IsExported() {
					continue
				}
				declData := ast.FuncDecl{}
				declData.Name = decl.Name
				declData.Type = decl.Type
				declData.Body = decl.Body
				declData.Recv = decl.Recv
				declData.Doc = decl.Doc
				if exports && declData.Body != nil {
					declData.Body.List = []ast.Stmt{}
				}
				data.Decls = append(data.Decls, &declData)
			default:
				_ = decl
				fmt.Println("decl merge package not found")
			}
		}
	}
	// Eliminate nil entries from the decls list if entries were
	// filtered. We do this using a 2nd pass in order to not disturb
	// the original declaration order in the source (otherwise, this
	// would also invalidate the monotonically increasing position
	// info within a single file).
	/*i := 0
	for _, d := range data.Decls {
		if d != nil {
			data.Decls[i] = d
			i++
		}
	}
	data.Decls = data.Decls[0:i]*/
	return data
}