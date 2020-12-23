package main

import (
	//"bytes"
	"flag"
	"fmt"
	"io/ioutil"
	"os/exec"
	"reflect"
	"strings"

	"github.com/kardianos/osext"
	"go.mongodb.org/mongo-driver/bson"

	"go/build"
	"go/printer"
	"go/token"

	//"go/constant"
	"os"
	"path/filepath"

	"strconv"

	"golang.org/x/tools/go/packages"

	//"golang.org/x/tools/go/ssa/ssautil"
	//"golang.org/x/tools/go/ast/inspector"
	"go/ast"
	//"golang.org/x/tools/go/ssa"
	"github.com/pxshadow/gotools/refactor/rename"
)

type Data struct {
	Pkgs []packageType `json:"pkgs"`
}
type funcType struct {
	Name     string   `json:"name"`
	Exported bool     `json:"exported"`
	Params   []string `json:"params"`
	Defaults []string `json:"defaults"`
	Result   string   `json:"results"`
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
	InterfaceBool    bool     `json:"interfaceBool"`    //toggles interface whether it's an interface or class
	Imps             []string `json:"imps"`             //interface implements
	Define           string   `json:"define"`
}

// Example demonstrates how to load the packages specified on the
// command line from source syntax.
var cfg = &packages.Config{Mode: packages.LoadAllSyntax, Tests: false}
var excludes = map[string]bool{
	"math": true,
	"fmt":  true,
	"os":   true,
	"sort": true,
	//"flag":                            true,
	"errors":                  true,
	"internal/reflectlite":    true,
	"internal/unsafeheader":   true,
	"unsafe":                  true,
	"runtime":                 true,
	"internal/cpu":            true,
	"runtime/internal/sys":    true,
	"runtime/internal/atomic": true,
	"runtime/internal/math":   true,
	"internal/bytealg":        true,
	"io":                      true,
	"sync":                    true,
	"sync/atomic":             true,
	"internal/race":           true,
	"reflect":                 true,
	"strconv":                 true,
	"math/bits":               true,
	"unicode/utf8":            true,
	"unicode":                 true,
	//"sort":                            true,
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
	"golang.org/x/sys/cpu":                  true,
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
	"internal/syscall/windows/registry": true,
	"internal/nettrace":                 true,
	"golang.org/x/net/dns/dnsmessage":   true,
	"golang.org/x/text/unicode/bidi":    true,
	"golang.org/x/text/transform":       true,
	"golang.org/x/text/secure/bidirule": true,
	"golang.org/x/text/unicode/norm":    true,
	"internal/poll":                     true,
	"internal/singleflight":             true,
	"internal/testlog":                  true,
	"hash":                              true,
	"crypto/internal/randutil":          true,
	"crypto":                            true,
	"crypto/hmac":                       true,
	"crypto/sha1":                       true,
	"crypto/rand":                       true,
	"crypto/sha256":                     true,
	"hash/crc32":                        true,
	"hash/adler32":                      true,
	"crypto/md5":                        true,
	"compress/flate":                    true,

	"database/sql/driver": true,
}
var goTypes = []string{
	"float",
	"int",
	"string",
	"bool",
	//"uint64",
	"byte",
	"int64",
	"int32",
	"float32",
	"float64",
	//"uint", //declared below
}
var basicTypes = map[string]bool{
	"Float": true,
	"Int": true,
	"String":true,
	"Bool": true,
	"UInt64":true,
	"UInt32": true,
	"UInt": true,
	"Float32": true,
	"Float64": true,
	"Int32": true,
	"Int64": true,
}
var iotaIndex = -1
var replaceTypeMap = map[string]string{}
var replaceMap = map[string]string{}
var ellipsisFuncMap = map[string]int{}
var exportData = Data{}
var debugComment = !true
var debugTypeTrace = false
var mapField = false
var asserted = ""
var labels = []string{}
var importLoadBool = true

var replaceFunctionContext map[string]string
var typeNames []string
var typedefNames []string

var deferStack []string
var funcDecl *ast.FuncDecl
var generateGo = false
var sources = map[string]source{}
var src source
var file ast.File
var imps []string

const debug = true

type source struct {
	file ast.File
	path string
}
type funcData struct {
	vars  []string
	types []string
}

func main() {
	dir, _ := osext.ExecutableFolder()
	cmd := exec.Command("haxe", "build.hxml")
	cmd.Dir = dir
	o, _ := cmd.CombinedOutput()
	fmt.Println((string(o[:])))

	//excludes = make(map[string]bool) //clear excludes
	for _, ty := range goTypes {
		replaceMap[ty] = strings.Title(ty)
	}
	replaceTypeMap["uint"] = "UInt" //cap diffrent
	replaceTypeMap["uint32"] = "UInt32"
	replaceTypeMap["uint64"] = "UInt64"
	replaceTypeMap["errors"] = "Errors"
	replaceTypeMap["error"] = "Errors"
	replaceTypeMap["rune"] = "String"

	replaceMap["nil"] = "null"
	replaceMap["_"] = "null"
	setup(dir)
	

	currentPath, err := os.Getwd()
	fmt.Println("current path:", currentPath)
	if err != nil {
		panic(err)
	}
	binPath := filepath.Join(currentPath, "bin")
	err = os.RemoveAll(binPath)
	if err != nil {
		fmt.Println("Remove all error:", err)
		return
	}
	cmd = exec.Command("neko", "parser.n", binPath)
	cmd.Dir = dir
	out, err := cmd.CombinedOutput()
	fmt.Println(string(out[:]))
	/*out, _ = exec.Command("parser", binPath).Output()
	fmt.Println(string(out[:]))*/
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
func setup(dir string) {
	// Examples: . , fmt, math, etc
	flag.Parse()
	args := flag.Args()
	//parse out commands from source input
	for i := 0; i < len(args); i++ {
		str := args[i]
		if string(str[0:1]) == "-" {
			switch string(str[1:]) {
			case "test", "testing":
				cfg.Tests = true
			}
			args = append(args[:i], args[i+1:]...)
		}
	}
	inital, err := packages.Load(cfg, args...)
	for _,pkg := range inital {
		runGoRename(pkg)
	}
	if gorenameExecuted {
		//recursive try setup again
		setup(dir)
		return 
	}
	if err != nil {
		fmt.Fprintf(os.Stderr, "load: %v\n", err)
		return
	}
	for i := 0; i < len(inital); i++ {
		if inital[i] != nil {
			load(inital[i])
		}
	}
	for _, source := range sources {
		compile(source)
	}
	bytes, err := bson.Marshal(exportData)
	if err != nil {
		fmt.Println(err)
		return
	}
	exportPath := filepath.Join(dir, "export.bson")
	os.Remove(exportPath)
	_ = ioutil.WriteFile(exportPath, bytes, 0644)
}
func load(pkg *packages.Package) {
	str := strings.Replace(pkg.PkgPath, ".", "_", -1)
	str = strings.Replace(str, "-", "_", -1)
	array := strings.Split(str, "/")
	for i, _ := range array {
		array[i] = reserved(array[i])
	}
	pkg.PkgPath = strings.Join(array, "/")
	imps = []string{}
	file := mergePackageFiles(pkg, !true)
	if file.Name == nil {
		return
	}
	sources[file.Name.Name] = source{file, pkg.PkgPath}
	for path, imp := range pkg.Imports {
		if !excludes[path] {
			if importLoadBool {
				load(imp)
				fmt.Println(path)
			}
			excludes[path] = true
		}
	}
}

var lastValue ast.Expr

func compile(src source) {
	export := packageType{}
	export.PackagePath = src.path
	file = src.file

	if file.Name != nil {
		export.Name = file.Name.Name
	}
	for _, decl := range file.Decls {
		switch decl := decl.(type) {
		case *ast.GenDecl:
			iotaIndex = -1
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
						export.Imports = append(export.Imports, imp)
						name := getName(path)
						replaceMap[imp[1]] = strings.Title(imp[1])
						replaceMap[name] = strings.Title(name)
						name = strings.Title(name)
						typeNames = append(typeNames, name)
					}
				case *ast.ValueSpec: //TODO: Variables declared without an explicit initial value are given their zero value.
					/*if v, ok := spec.Values[0].(*ast.Ident); ok && v.Name == "iota" {

					}*/
					iotaBool := false
					if len(spec.Values) > 0 {
						if v, ok := spec.Values[0].(*ast.Ident); ok && v.Name == "iota" {
							iotaBool = true
							lastValue = nil
						} else if v, ok := spec.Values[0].(*ast.CallExpr); ok && len(v.Args) == 1 {
							iotaBool = true
							lastValue = nil
						}
					}
					_ = iotaBool
					if len(spec.Names) > len(spec.Values) && spec.Type == nil {
						if lastValue == nil {
							iotaIndex++
							spec.Values = append(spec.Values, &ast.BasicLit{
								Kind:  token.INT,
								Value: strconv.Itoa(iotaIndex),
							})
							iotaBool = true
							lastValue = nil
						} else {
							spec.Values = append(spec.Values, lastValue)
						}

					}
					for i := range spec.Names {
						v := varType{}
						//spec.Names[i].Obj.Kind
						v.Constant = spec.Names[i].Obj.Kind.String() == "const"
						v.Exported = spec.Names[i].IsExported()
						name := untitle(spec.Names[i].Name)
						if name != spec.Names[i].Name {
							replaceMap[spec.Names[i].Name] = name
						}
						v.Name = name
						if len(spec.Values) <= i {
							continue
						}
						if !iotaBool {
							lastValue = spec.Values[i]
						}
						v.Value = parseExpr(spec.Values[i], false)
						export.Vars = append(export.Vars, v)
					}
				case *ast.TypeSpec:
					ty := structType{}
					ty.Name = strings.Title(spec.Name.Name)
					typeNames = append(typeNames, ty.Name)
					ty.Exported = spec.Name.IsExported()
					replaceMap[spec.Name.Name] = ty.Name
					switch structType := spec.Type.(type) {
					case *ast.StructType:
						ty.Fields = parseFields(structType.Fields.List, true, false)
						//ty.Imps = imps
					case *ast.InterfaceType:
						imps = append(imps, ty.Name)
						ty.InterfaceBool = true
					case *ast.Ident, *ast.ArrayType, *ast.SelectorExpr:
						ty.Define = parseTypeExpr(spec.Type)
						typedefNames = append(typedefNames, spec.Name.Name)
						//ty.Imps = imps
					default:
						fmt.Println("type spec type unknown", reflect.TypeOf(structType))
					}
					export.Structs = append(export.Structs, ty)
				default:
					_ = spec
					fmt.Println("spec not found", reflect.TypeOf(spec))
				}
			}
		case *ast.FuncDecl:
			data := funcData{}
			deferStack = []string{}
			replaceFunctionContext = make(map[string]string)
			funcDecl = decl
			fn := funcType{}
			fn.Exported = decl.Name.IsExported()
			fn.Name = reserved(untitle(decl.Name.Name))
			if fn.Name != decl.Name.Name {
				replaceMap[decl.Name.Name] = fn.Name
			}
			if fn.Exported {
				fn.Doc = parseComment(decl.Doc)
			} else {
				fn.Doc = ""
			}
			if decl.Type.Params != nil {
				fn.Params = parseFields(decl.Type.Params.List, false, false)
			}
			if decl.Type.Results != nil {
				fn.Result = ":" + parseRes(parseFields(decl.Type.Results.List, false, true), decl.Type.Results.NumFields(), &data)
			} else {
				fn.Result = ":Void"
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
				fn.Body = parseBody(decl.Body.List, &data)
			}
			if len(deferStack) > 0 {
				fn.Body = append(fn.Body, deferStack...) //add defer to end of function

			}
			export.Funcs = append(export.Funcs, fn)
		default:
			_ = decl
			fmt.Println("decl not found loader", reflect.TypeOf(decl))
		}
	}
	exportData.Pkgs = append(exportData.Pkgs, export)
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
func parseStatement(stmt ast.Stmt, init bool, data *funcData) []string {
	body := []string{}
	switch stmt := stmt.(type) {
	case *ast.LabeledStmt:
		buffer := "function " + stmt.Label.Name + "() {\n"
		labels = append(labels, stmt.Label.Name)
		body = append(body, buffer)
	case *ast.ExprStmt:
		body = append(body, parseExpr(stmt.X, init))
	case *ast.ReturnStmt: //return expr;
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
				if funcDecl.Type.Results != nil {
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
			}
			buffer += "}"
		} else if len(stmt.Results) == 1 {
			buffer += parseExpr(stmt.Results[0], false)
		} else {
			if data != nil {
				if len(data.vars) == 1 {
					buffer += data.vars[0]
				} else if len(data.vars) > 1 {
					params := []string{}
					for i := 0; i < len(data.vars); i++ {
						params = append(params, data.vars[i]+":"+data.vars[i])
					}
					buffer += "{" + strings.Join(params, ", ") + "}"
				}
			}
		}
		buffer += ";\n"
		body = append(body, buffer)
	case *ast.TypeSwitchStmt:
		buffer := "{\n"
		if stmt.Init != nil {
			buffer += strings.Join(parseStatement(stmt.Init, true, nil), "\n")
		}
		asserted := strings.Join(parseStatement(stmt.Assign, true, nil), "")
		//buffer += strings.Join(parseStatement(stmt.Assign, true), "")
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
			buffer += "{" + strings.Join(parseStatement(stmt.Init, true, nil), "\n")
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
			buffer += strings.Join(parseBody(stmt.Body.List, nil), "\n")
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
						name := spec.Names[i].Name
						if name == "null" {
							buffer = ""
						} else {
							buffer += "var " + name
						}
						defType := ""
						if spec.Type != nil {
							//buffer += ":" + defType
							defType = parseTypeExpr(spec.Type)
						}
						if len(spec.Values) > i {
							buffer += " = " + "Go.copy(" + parseExpr(spec.Values[i], false) + ")"
						} else {
							buffer += " = " + getDefaultValue(spec.Type, defType)
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
			buffer += "Go.cfor("
		} else {
			buffer += "while("
		}
		if stmt.Cond != nil {
			buffer += parseExpr(stmt.Cond, false)
			if stmt.Post != nil {
				buffer += "," + strings.Join(parseStatement(stmt.Post, false, nil), "\n") + ","
			}
		} else {
			buffer += "true"
		}
		if stmt.Post == nil {
			buffer += ") {\n"
		} else {
			buffer += " {\n"
		}

		buffer += strings.Join(parseBody(stmt.Body.List, nil), "\n")
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
		buffer += strings.Join(parseBody(stmt.Body.List, nil), "")
		buffer += "}"
		if stmt.Else != nil {
			buffer += "else {"
			switch stmt := stmt.Else.(type) {
			case *ast.BlockStmt:
				buffer += strings.Join(parseBody(stmt.List, nil), "")
			default:
				buffer += strings.Join(parseStatement(stmt, true, nil), "")
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
		buffer += strings.Join(parseBody(stmt.Body, nil), "\n")
		body = append(body, buffer)
	case *ast.GoStmt:
		body = append(body, "//go routines not supported yet\n")
	case *ast.IncDecStmt:
		buffer := parseExpr(stmt.X, false) + stmt.Tok.String() + addSemicolon(stmt, init)
		body = append(body, buffer)
	case *ast.RangeStmt:
		buffer := "Go.range(" + parseExpr(stmt.Key, false) + ","
		buffer += parseExpr(stmt.Value, false) + ","
		buffer += parseExpr(stmt.X, false) + ", {\n"
		buffer += strings.Join(parseBody(stmt.Body.List, nil), "\n") + "});"
		body = append(body, buffer)
	case *ast.DeferStmt:
		buffer := parseExpr(stmt.Call, init) + "/*defer*/"
		deferStack = append([]string{buffer}, deferStack...)
	case *ast.SelectStmt:
		buffer := "/*select*/"
		_ = buffer
	default:
		fmt.Println("statement not found", reflect.TypeOf(stmt))
		body = append(body, addDebug(stmt))
	}
	return body
}
func parseBody(stmts []ast.Stmt, data *funcData) []string {
	body := []string{}
	before := len(labels)
	for _, stmt := range stmts {
		body = append(body, parseStatement(stmt, true, data)...)
	}
	if before != len(labels) {
		tmp := labels[before:len(labels)]
		for _, label := range tmp {
			body = append(body, strings.Join([]string{"}\n", label, "();"}, ""))
		}
		//slice
		labels = labels[0:before]
	}
	if data != nil && len(data.vars) > 0 {
		vars := []string{}
		for i := 0; i < len(data.vars); i++ {
			vars = append(vars, "var "+data.vars[i]+" = "+getDefaultTypeFromName(untitle(data.types[i]))+";")
		}
		body = append(vars, body...)
	}
	return body
}

//multiple-value test() in single-value context
func parseMultiReturn(stmt *ast.AssignStmt, init bool) string {
	buffer := ""
	args := []string{}
	for i := range stmt.Lhs {
		set := parseExpr(stmt.Lhs[i], false)
		if stmt.Tok.String() == ":=" && set != "null" {
			buffer += "var " + set + addSemicolon(stmt, init)
		}
		args = append(args, set)
	}
	buffer += "Go.setMulti([" + strings.Join(args, ",") + "],"
	buffer += parseExpr(stmt.Rhs[0], false) + ")"
	buffer += addSemicolon(stmt, init)
	return buffer
}
func parseAssignStatement(stmt *ast.AssignStmt, init bool) string {
	multi := false
	if len(stmt.Rhs) == 1 && len(stmt.Lhs) > 1 {
		switch stmt.Rhs[0].(type) {
		case *ast.CallExpr, *ast.FuncLit:
			multi = true
		default:
			multi = false
		}
	}
	if len(stmt.Lhs) != len(stmt.Rhs) {
		multi = true
	}
	if multi {
		return parseMultiReturn(stmt, init)
	}
	buffer := ""
	for i, _ := range stmt.Lhs {
		set := parseExpr(stmt.Lhs[i], false)
		empty := false
		if set == "null" {
			empty = true
		}
		copyBool := true
		tok := stmt.Tok.String()
		if !empty {
			switch tok {
			case ":=":
				buffer += "var "
				tok = "="
			case "=":
			default:
				copyBool = false
			}

			buffer += set + " " + tok
		}
		str := parseExpr(stmt.Rhs[i], false)
		switch stmt.Rhs[i].(type) {
		case *ast.FuncLit:
			copyBool = false
		case *ast.BasicLit:
			copyBool = false
		case *ast.SelectorExpr:
			switch stmt.Rhs[i].(*ast.SelectorExpr).Sel.Name {
			case "new":
				copyBool = false
			}
		case *ast.CallExpr:
			switch initType := stmt.Rhs[i].(*ast.CallExpr).Fun.(type) {
			case *ast.Ident:
				switch initType.Name {
				case "make", "new", "append", "copy":
					copyBool = false
				}
			}
		}
		if copyBool {
			buffer += "Go.copy(" + str + ")"
		} else {
			buffer += str
		}
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
		x := parseTypeExpr(expr.X)
		if basicTypes[x] {
			return "Pointer<Pointer.InternalPointer<" + x + ">>"
		}else{
			return "Pointer<Pointer.PointerWrapper<" + x + ">>"
		}
	case *ast.Ident:
		value, ok := replaceTypeMap[expr.Name]
		if ok {
			return value
		}
		for _, imp := range imps {
			if imp == expr.Name {
				return "Any"
			}
		}
		return strings.Title(expr.Name)
	case *ast.SelectorExpr:
		sel := expr.Sel.Name
		return parseExpr(expr.X, false) + "." + sel
	case *ast.ArrayType: //pass through
	case *ast.InterfaceType:
	case *ast.FuncType:
	case *ast.MapType:
	case *ast.Ellipsis:
		return "haxe.Rest<" + parseTypeExpr(expr.Elt) + ">"
	case *ast.ChanType:
	case *ast.StructType:
	default:
		fmt.Println("type expr unknown:", reflect.TypeOf(expr))
	}
	return parseExpr(expr, false)
}
func parseFields(list []*ast.Field, defaults bool, result bool) []string {
	array := []string{}
	buffer := ""
	for index, field := range list {
		_ = index
		ty := parseTypeExpr(field.Type)
		if len(field.Names) == 0 {
			if result {
				array = append(array, "v"+strconv.Itoa(index)+":"+ty)
			} else {
				array = append(array, ty)
			}
		} else {
			for _, name := range field.Names {
				name := parseExpr(name, false)
				buffer = name + ":"
				buffer += ty
				if defaults {
					buffer += " = " + getDefaultValue(field.Type, parseTypeExpr(field.Type))
				}
				array = append(array, buffer)
			}
		}
	}
	//fmt.Println("array field:",array)
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
		data := funcData{}
		params := parseFields(expr.Params.List, false, false)
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
			res := parseFields(expr.Results.List, false, true)
			resString := parseRes(res, expr.Results.NumFields(), &data)
			buffer += resString
		}
	case *ast.Ident:
		name := renameString(expr.Name)
		buffer += name
	case *ast.StarExpr: //pointer
		x := parseExpr(expr.X, false)
		buffer = x + "._value"
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
		buffer = strings.Join(parseFields(expr.Fields.List, true, false), ",\n")
	case *ast.KeyValueExpr: //map
		buffer = parseExpr(expr.Key, false)
		if mapField {
			buffer += " : "
		} else {
			buffer += " => "
		}
		buffer += parseExpr(expr.Value, false)
	case *ast.FuncLit:
		data := funcData{}
		buffer = "function("
		if expr.Type.Params != nil {
			params := parseFields(expr.Type.Params.List, false, false)
			buffer += strings.Join(params, ",")
		}
		buffer += "):"
		if expr.Type.Results != nil {
			buffer += parseRes(parseFields(expr.Type.Results.List, false, true), expr.Type.Results.NumFields(), &data)
		} else {
			buffer += "Void"
		}
		buffer += " {\n"
		buffer += strings.Join(parseBody(expr.Body.List, &data), "")
		buffer += "}\n"
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
		name := parseTypeExpr(expr.Elt)
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
		name := ""
		sel := reserved(renameString(expr.Sel.Name))
		//sel = strings.Title(sel)
		switch expr.X.(type) { //switch for either ident or selector
		case *ast.Ident:
			name = parseExpr(expr.X, false)
			for _, ty := range typeNames {
				if ty == name {
					sel = untitle(sel)
					break
				}
			}
			switch sel {
			case "new":
				name = "new " + strings.Title(name)
				sel = ""
			default:
				name += "."
			}
		case *ast.SelectorExpr:
			x := expr.X.(*ast.SelectorExpr)
			name = parseExpr(x.X, false) + "." + untitle(x.Sel.Name)
			sel = untitle(sel)
		default:
			name = parseExpr(expr.X, false) + "."
			sel = untitle(sel)
		}
		buffer = name + sel
	case *ast.CallExpr: //1st class TODO: Type Conversions The expression T(v) converts the value v to the type T.
		finish := true
		start := true
		end := false
		switch initType := expr.Fun.(type) {
		case *ast.FuncLit:
			buffer = "{\n var a = "
			buffer += parseExpr(initType, false)
			buffer += ";\na"
			end = true
		case *ast.Ident:
			name := renameString(initType.Name)
			for _, n := range typeNames {
				if n == name {
					start = false
					name = "new " + name
					break
				}
			}
			if start {
				name = untitle(name)
				switch name {
				case "this":
					name = ""
				case "string":
					name = "Go.str"
				case "int64":
					name = ""
				case "make":
					name = "new "
					name += parseTypeExpr(expr.Args[0])
					expr.Args = expr.Args[1:]
				case "new":
					name = "create"
				}
			}
			buffer = name
		case *ast.ArrayType:
			value := parseExpr(initType.Elt, false)
			switch value {
			case "Rune":
				buffer += "Std.int"
			case "Byte":
				buffer += "haxe.io.Bytes.ofString"
			}
		case *ast.ParenExpr: //casting conversion
			if len(expr.Args) == 1 {
				buffer = "cast(" + parseExpr(expr.Args[0], false) + "," + parseTypeExpr(expr.Fun.(*ast.ParenExpr).X) + ")"
				finish = false
			}
		default:
			buffer += parseExpr(expr.Fun, false)
		}
		if finish {
			args := parseExprs(expr.Args, false)
			if expr.Ellipsis != token.NoPos {
				args[len(args)-1] = "..." + args[len(args)-1]
			}
			buffer += "(" + strings.Join(args, ", ") + ")"
		}
		buffer += addSemicolon(expr, init)
		if end {
			buffer += ";\n}"
			buffer += addSemicolon(expr, init)
		}
	case *ast.UnaryExpr: //star and address
		op := expr.Op.String()
		switch op {
		case "*": //represented as *ast.StarExpr
		case "&": //adress acess
			x := parseExpr(expr.X, false)
			buffer = "Go.makePointer(" + x + ")"
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
			buffer = "new " + parseTypeExpr(ty) + "("
			buffer += strings.Join(parseExprs(expr.Elts, false), ",")
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
		return addDebug(expr)
	}
	return buffer
}
func parseRes(res []string, numFields int, data *funcData) string {
	buffer := ""
	index := 0
	for _, str := range res {
		index = strings.Index(str, ":")
		if index != -1 {
			data.vars = append(data.vars, string(str[0:index]))
			data.types = append(data.types, string(str[index+1:]))
		}
	}
	if len(res) == 0 {
		if numFields > 0 {
			return "Any"
		} else {
			return "Void"
		}
	} else if len(res) == 1 {
		buffer += res[0]
		if index != -1 && len(data.vars) == 1 {
			return data.types[0]
		}
	}
	if len(res) != 1 {

		buffer = "{" + strings.Join(res, ",") + "}"
	}
	return buffer
}
func getDefaultTypeFromName(name string) string {
	switch name {
	case "int", "float", "uint64", "uint", "int64", "float64":
		return "0"
	case "string":
		return "''"
	case "bool":
		return "false"
	default:
		//return "new " + defType + "()"
		return "null"
	}
}
func getDefaultValue(expr ast.Expr, defType string) string {
	switch expr := expr.(type) {
	case *ast.ArrayType:
		buffer := "["
		switch l := expr.Len.(type) {
		case *ast.BasicLit:
			buffer += "for (i in 0..." + l.Value + ")" + getDefaultValue(expr.Elt,defType)
		}
		buffer += "]"
		return buffer
	case *ast.Ident:
		return getDefaultTypeFromName(expr.Name)
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
			piece += parseTypeExpr(stmt)
			if obj != "" {
				piece += ")"
			}
			list = append(list, piece)
		}
		buffer += strings.Join(list, "||")
		buffer += ") "
	}
	buffer += "{\n"
	buffer += strings.Join(parseBody(stmt.Body, nil), "")
	buffer += "}"
	return buffer
}
func renameScope(pkg string, def string, method string, to string, allowGlobal bool) {
	from := `"` + pkg + `".` + def
	if method != "" {
		from += "." + method
	}
	fmt.Println("-from","'" + from + "'")
	gorenameExecuted = true
	rename.Main(&build.Default, "", from, to,allowGlobal)
}
func renameString(name string) string {
	if name == "iota" {
		iotaIndex++
		return strconv.Itoa(iotaIndex)
	}
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

//https://github.com/elliotchance/switch-check/blob/master/main.go
func getIotaType(ty ast.Expr, values []ast.Expr) ast.Expr {
	if len(values) == 0 {
		return nil
	}

	// "iota" as the raw keyword
	if v, ok := values[0].(*ast.Ident); ok && v.Name == "iota" {
		return ty
	}

	// iota wrapped in a type cast, like: Foo(iota)
	if v, ok := values[0].(*ast.CallExpr); ok && len(v.Args) == 1 {
		return getIotaType(v.Fun, v.Args)
	}

	return nil
}
func scopeInsert(scope *ast.Scope, obj *ast.Object) {
	switch obj.Kind { //ast.Con = Constant
	case ast.Bad:
	case ast.Pkg:
	case ast.Typ:
		obj.Name = strings.Title(obj.Name)
	case ast.Fun, ast.Var, ast.Con:
		obj.Name = untitle(obj.Name)
	case ast.Lbl: //nothing
	default:
	}
	scope.Insert(obj)
}
var gorenameExecuted = false
func scopePackageName(name string, names map[string]bool,pkg *packages.Package) string {
	if !names[name] {
		names[name] = true
		return name
	}
	gorenameExecuted = true
	renameScope(pkg.ExportFile,name,"","_" + name,true)
	name = "_" + name
	names[name] = true
	return name
}
func runGoRename(pkg *packages.Package) {
	names := make(map[string]bool)
	structs := make(map[string][]string)
	_ = names
	//struct type
	for _,file := range pkg.Syntax {
		for i := 0; i < len(file.Decls); i++ {
			switch decl := file.Decls[i].(type) {
			case *ast.GenDecl: //token.IMPORT  *ImportSpec*ValueSpec*TypeSpec *ValueSpec
				for _,spec := range decl.Specs {
					switch spec := spec.(type) {
					case *ast.TypeSpec:
						switch typeExpr := spec.Type.(type) {
						case *ast.StructType:
							fields := structs[spec.Name.Name]
							for _,field := range typeExpr.Fields.List {
								for _,name := range field.Names {
									fields = append(fields,name.Name)
								}
							}
							structs[spec.Name.Name] = fields
						}
					}
				}
			case *ast.FuncDecl:
				if decl.Recv != nil {
					recvName := ""
					switch expr := decl.Recv.List[0].Type.(type) {
					case *ast.StarExpr:
						recvName = expr.X.(*ast.Ident).Name
					case *ast.Ident:
						recvName = expr.Name
					}
					fields := structs[recvName]
					fields = append(fields, decl.Name.Name)
					structs[recvName] = fields
				}
			}
		}
	}
	//go through and find issues with naming
	for structName := range structs {
		fields := structs[structName]
		for i := 0; i < len(fields); i++ {
			c := fields[i][0:1]
			//skip uppercase
			if c == strings.Title(c) {
				continue
			}
			for j := 0; i < len(fields); i++ {
				if fields[i] == untitle(fields[j]) {
					fmt.Println("NAME CONFLICT",fields[i],fields[j])
					renameScope(pkg.GoFiles[0],structName,fields[i],"_" + fields[i],false)
				}
			}
			/*if untitle(field) == fields[i] {
				fmt.Println("NAME CONFLICT",field,fields[i])
				fmt.Println("path:",pkg.PkgPath,"def",def,field)
				renameScope(pkg.PkgPath,def,field,"_" + field,false)
				break
			}*/
		}
	}
}
func mergePackageFiles(pkg *packages.Package, exports bool) ast.File {
	data := ast.File{}
	data.Scope = &ast.Scope{}
	data.Scope.Objects = map[string]*ast.Object{}
	data.Scope.Outer = &ast.Scope{}
	data.Scope.Outer.Objects = map[string]*ast.Object{}
	//data.Name = ast.NewIdent(pkg.Name)
	imports := make(map[string]bool)
	_ = imports
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
		/*if file.Scope != nil {
			if file.Scope.Objects != nil {
				for _, obj := range file.Scope.Objects {
					scopeInsert(data.Scope, obj)
				}
			}
			if file.Scope.Outer != nil && file.Scope.Outer.Objects != nil {
				for _, obj := range file.Scope.Outer.Objects {
					scopeInsert(data.Scope.Outer, obj)
				}
			}
		}*/
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
						for i, name := range specType.Names {
							nameString := untitle(name.Name)
							replaceMap[name.Name] = nameString
							specType.Names[i].Name = nameString
						}
					case *ast.TypeSpec:
						name := strings.Title(specType.Name.Name)
						if name != specType.Name.Name {
							replaceMap[specType.Name.Name] = name
						}
						specType.Name.Name = name
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
				declData.Name.Name = decl.Name.Name
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
