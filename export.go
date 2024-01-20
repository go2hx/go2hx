package main

import (
	"bytes"
	"compress/zlib"
	"encoding/binary"
	"encoding/json"
	"fmt"
	"go/ast"
	"go/constant"
	"go/importer"
	"go/parser"
	"go/printer"
	"go/token"
	"go/types"
	"log"
	"math/rand"
	"net"
	"path"
	"path/filepath"
	"runtime"
	"runtime/debug"

	_ "embed"
	"os"
	"reflect"
	"strconv"
	"strings"

	"golang.org/x/tools/go/ast/astutil"
	"golang.org/x/tools/go/packages"
	"golang.org/x/tools/go/types/typeutil"
)

type dataType struct {
	Args     []string                 `json:"args"`
	Pkgs     []packageType            `json:"pkgs"`
	Index    string                   `json:"index"`
	TypeList []map[string]interface{} `json:"typeList"`
}
type packageType struct {
	Path  string     `json:"path"`
	Name  string     `json:"name"`
	Order []string   `json:"order"`
	Files []fileType `json:"files"`
}
type fileType struct {
	Path     string                   `json:"path"`
	Location string                   `json:"location"`
	Decls    []map[string]interface{} `json:"decls"`
	Doc      map[string]interface{}   `json:"doc"`
}

type interfaceType struct {
	Name string `json:"name"`
	Path string `json:"path"`
}

type interfaceData struct {
	t        *types.Interface
	name     string
	path     string
	isExport bool
}

//go:embed data/stdgo.json
var stdgoListBytes []byte

//go:embed data/excludes.json
var excludesBytes []byte

var fset *token.FileSet
var stdgoList map[string]bool

//go:embed data/stdgoExports.json
var stdgoExportsBytes []byte

//go:embed data/stdgoExterns.json
var stdgoExternsBytes []byte

var stdgoExterns map[string]bool
var stdgoExports map[string]bool

var excludes map[string]bool
var visited map[string]bool
var conf = types.Config{Importer: importer.Default(), FakeImportC: true}
var checker *types.Checker

var typeMap *typeutil.Map = nil
var typeMapIndex uint32 = 0
var hashMap map[uint32]map[string]interface{}
var testBool = false
var debugBool = false
var noDepsBool = false

func compile(params []string, excludesData []string, index string, debug bool) []byte {
	args := []string{}
	testBool = false
	for _, param := range params {
		switch param {
		case "-test", "--test":
			testBool = true
		case "-nodeps", "--nodeps":
			noDepsBool = true
		case "-debug", "--debug":
			debugBool = true
		default:
			args = append(args, param)
		}
	}

	b := []byte("null")
	localPath := args[len(args)-1]
	var err error
	if err != nil {
		log.Fatal(err.Error())
		return b
	}
	err = os.Chdir(localPath)
	args = args[0 : len(args)-1] //remove chdir
	if err != nil {
		log.Fatal(err.Error() + " = " + localPath + " args: " + strings.Join(args, ","))
		return b
	}
	cfg.Tests = testBool
	initial, err := packages.Load(cfg, &types.StdSizes{WordSize: 4, MaxAlign: 8}, args...)
	if err != nil {
		log.Fatal("load error: " + err.Error())
		return []byte{}
	}
	//init
	typeMapIndex = 0
	methodCache = typeutil.MethodSetCache{}
	excludes = make(map[string]bool, len(excludesData))
	hashMap = make(map[uint32]map[string]interface{})
	visited = make(map[string]bool)
	for _, exclude := range excludesData {
		excludes[exclude] = true
	}
	if len(initial) > 0 {
		if !noDepsBool {
			for exclude := range stdgoList {
				excludes[exclude] = true
			}
		}
		for _, pkg := range initial { //remove initial packages from exclude list
			delete(excludes, pkg.PkgPath)
		}
	}
	typeMap = &typeutil.Map{}
	data := parsePkgList(initial, excludes)
	data.Index = index
	data.TypeList = make([]map[string]interface{}, len(hashMap))
	i := 0
	for _, value := range hashMap {
		data.TypeList[i] = value
		i++
	}
	//reset
	hashMap = nil
	excludes = nil
	data.Args = args
	if debug {
		b, _ = json.MarshalIndent(data, "", "  ")
		os.WriteFile("check.json", b, 0766)
		fmt.Println("create check.json")
	}
	b, err = json.Marshal(data)
	if err != nil {
		log.Fatal("encoding err: " + err.Error())
		return b
	}
	var buff bytes.Buffer
	w := zlib.NewWriter(&buff)
	_, err = w.Write(b)
	if err != nil {
		log.Fatal(err)
	}
	w.Close()
	if debug {
		memoryStats()
	}
	return buff.Bytes()
}

var cfg = &packages.Config{
	Mode: packages.NeedName |
		packages.NeedSyntax |
		packages.NeedImports | packages.NeedDeps |
		packages.NeedFiles | packages.NeedTypes | packages.NeedTypesInfo | packages.NeedModule | packages.NeedTypesSizes,
	BuildFlags: []string{"-tags", "netgo,purego,math_big_pure_go"}, // build tags
}

var r = rand.New(rand.NewSource(99))

func main() {
	_ = make([]byte, 20<<20) // allocate 20 mb virtually
	// set log output to log.out
	cfg.Env = append(os.Environ(), "CGO_ENABLED=0")
	cfg.Env = append(cfg.Env, "GOOS=js", "GOARCH=wasm")
	args := os.Args
	port := args[len(args)-1]
	var excludesData []string
	var err error
	var logFile *os.File
	logFile, err = os.OpenFile("log.out", os.O_RDWR|os.O_CREATE, 0666)
	if err != nil {
		fmt.Println(err.Error())
	} else {
		log.SetOutput(logFile)
	}

	err = json.Unmarshal(excludesBytes, &excludesData)
	if err != nil {
		log.Fatal(err.Error())
	}
	list2 := make([]string, 0, 150)
	err = json.Unmarshal(stdgoListBytes, &list2)
	if err != nil {
		log.Fatal(err.Error())
	}
	stdgoList = make(map[string]bool, len(list2))
	for _, s := range list2 {
		stdgoList[s] = true
	}
	externList := make([]string, 0, 150)
	exportList := make([]string, 0, 150)

	err = json.Unmarshal(stdgoExportsBytes, &exportList)
	if err != nil {
		log.Fatal(err.Error())
	}
	err = json.Unmarshal(stdgoExternsBytes, &externList)
	if err != nil {
		log.Fatal(err.Error())
	}

	stdgoExports = make(map[string]bool, len(exportList))
	stdgoExterns = make(map[string]bool, len(externList))

	for _, s := range exportList {
		stdgoExports[s] = true
	}
	for _, s := range externList {
		stdgoExterns[s] = true
	}
	_, err = strconv.Atoi(port)
	if err != nil { // not set to a port, test compile
		compile(args[1:], excludesData, "0", true)
		return
	}
	conn, err := net.Dial("tcp", "127.0.0.1:"+port)
	if err != nil {
		log.Fatal("dial: " + err.Error())
		return
	}
	defer conn.Close()
	for {
		input := make([]byte, 2056)
		c, err := conn.Read(input)
		if err != nil {
			log.Fatal("read error: " + err.Error())
			return
		}
		input = input[:c]
		//fmt.Println("input: " + string(input))
		args := strings.Split(string(input), " ")
		index := args[0]
		data := compile(args[1:], excludesData, index, false)
		length := len(data)
		buff := make([]byte, 8)
		binary.LittleEndian.PutUint64(buff, uint64(length))
		_, err = conn.Write(buff)
		if err != nil {
			log.Fatal("write length error: " + err.Error())
			return
		}
		//fmt.Println("write data:", len(data))
		_, err = conn.Write(data)
		data = nil
		input = nil
		if err != nil {
			log.Fatal("write error: " + err.Error())
			return
		}
		debug.FreeOSMemory()
		runtime.GC()
	}
}

func memoryStats() {
	var m runtime.MemStats
	runtime.ReadMemStats(&m)
	fmt.Println("memory:", m.Alloc/1024/1024)
}

func parseLocalPackage(pkg *packages.Package, excludes map[string]bool) {
	if excludes[pkg.PkgPath] {
		return
	}
	for _, val := range pkg.Imports {
		/*if excludes[val.PkgPath] || strings.HasPrefix(val.PkgPath, "internal") {
			continue
		}*/
		parseLocalPackage(val, excludes)
	}
	checker = types.NewChecker(&conf, fset, pkg.Types, pkg.TypesInfo)
	for _, file := range pkg.Syntax {
		parseLocalFile(file, pkg)
	}
	checker = nil
}

func parseLocalFile(file *ast.File, pkg *packages.Package) {
	parseLocalTypes(file, pkg)
	parseLocalConstants(file, pkg)
}

func randomIdentifier() *ast.Ident {
	b := make([]byte, 8)
	_, err := r.Read(b)
	if err != nil {
		log.Fatal(err)
	}
	return ast.NewIdent(fmt.Sprintf("_%x", b))
}

var restrictedDebugPkgs = map[string]bool{"strconv": true, "log": true, "math/bits": true, "os": true, "internal/poll": true, "syscall": true, "internal/syscall/unix": true, "internal/syscall": true, "internal/abi": true, "unsafe": true, "runtime": true, "reflect": true, "sync": true, "sync/atomic": true, "internal/reflectlite": true, "internal/bytealg": true, "math": true, "time": true, "time/tzdata": true, "runtime/debug": true, "os/exec": true, "os/signal": true, "runtime/pprof": true, "runtime/trace": true}

func debugPkg(pkg *packages.Package) {
	if !debugBool || restrictedDebugPkgs[pkg.PkgPath] {
		return
	}
	// for assembly files
	s := "go/src/"
	index := 0
	for _, file := range pkg.OtherFiles {
		index = strings.Index(file, s)
		if index != -1 {
			index += len(s)
			p := "debug/" + file[index:]
			_ = os.MkdirAll(path.Dir(p), 0766)
			rf, err := os.ReadFile(file)
			if err != nil {
				log.Fatal(err)
			}
			// fmt.Println(p)
			os.WriteFile(p, rf, 0766)
		}
	}
	fset = pkg.Fset
	if visited[pkg.PkgPath] {
		return
	}
	visited[pkg.PkgPath] = true
	for _, val := range pkg.Imports {
		if stdgoList[val.PkgPath] {
			continue
		}
		debugPkg(val)
	}
	checker = types.NewChecker(&conf, fset, pkg.Types, pkg.TypesInfo)
	addedLog := false
	mainBool := false
	//astutil.App
	applyAssign := func(cursor *astutil.Cursor) bool {
		if cursor.Index() == -1 {
			return true
		}
		switch node := cursor.Node().(type) {
		case *ast.AssignStmt:
			if node.Tok == token.ASSIGN || node.Tok == token.ADD_ASSIGN || node.Tok == token.SUB_ASSIGN || node.Tok == token.MUL_ASSIGN || node.Tok == token.QUO_ASSIGN || node.Tok == token.REM_ASSIGN || node.Tok == token.AND_ASSIGN || node.Tok == token.OR_ASSIGN || node.Tok == token.XOR_ASSIGN || node.Tok == token.SHL_ASSIGN || node.Tok == token.SHR_ASSIGN || node.Tok == token.AND_NOT_ASSIGN {
				if node.Lhs != nil {
					for _, expr := range node.Lhs {
						switch expr := expr.(type) {
						case *ast.Ident:
							if expr.Name == "_" || expr.Name == "nil" {
								continue
							}
						}
						location := ast.BasicLit{Kind: token.STRING, Value: `"` + fset.Position(expr.Pos()).String() + `"`}
						_ = location
						addedLog = true
						callExpr := &ast.CallExpr{Fun: ast.NewIdent("log.Println"), Args: []ast.Expr{&location, expr}}
						cursor.InsertAfter(&ast.ExprStmt{X: callExpr})
					}
				}
			}
		case *ast.ForStmt, *ast.RangeStmt:
			return false
		default:
		}
		return true
	}
	applyReturn := func(cursor *astutil.Cursor) bool {
		if cursor.Index() == -1 {
			return true
		}

		switch node := cursor.Node().(type) {
		case *ast.ReturnStmt:
			results := []ast.Expr{}
			for _, expr := range node.Results {
				names := []ast.Expr{}
				exitBool := false
				switch expr.(type) {
				case *ast.CallExpr:
				default:
					exitBool = true
				}
				if exitBool {
					results = append(results, expr)
					continue
				}
				t := checker.TypeOf(expr)
				switch t := t.(type) {
				case *types.Tuple:
					for i := 0; i < t.Len(); i++ {
						id := randomIdentifier()
						names = append(names, id)
						pkg.TypesInfo.Defs[id] = types.NewVar(0, pkg.Types, id.Name, t)
					}
				default:
					id := randomIdentifier()
					names = append(names, id)
					pkg.TypesInfo.Defs[id] = types.NewVar(0, pkg.Types, id.Name, t)
				}
				expr := &ast.AssignStmt{Tok: token.DEFINE, Lhs: names, Rhs: []ast.Expr{expr}}

				cursor.InsertBefore(expr)
				location := ast.BasicLit{Kind: token.STRING, Value: `"` + fset.Position(expr.Pos()).String() + `"`}
				cursor.InsertBefore(&ast.ExprStmt{X: &ast.CallExpr{Fun: ast.NewIdent("log.Println"), Args: append([]ast.Expr{&location}, names...)}})
				addedLog = true
				results = append(results, names...)
			}
			if len(results) > 0 {
				cursor.Replace(&ast.ReturnStmt{Results: results, Return: node.Return})
			}
		default:
		}
		return true
	}
	// TODO: set back to log
	requiredImports := map[string]bool{"log": true}
	if pkg.Name == "main" {
		requiredImports = map[string]bool{"os": true, "log": true, "runtime": true}
	}
	newDecls := []ast.Decl{}
	importDecl := &ast.GenDecl{Tok: token.IMPORT}
	file := pkg.Syntax[0]
	file.Comments = nil
	//file.Doc = nil
	// Remove any comments that start with "//go:build"
	for i := 0; i < len(file.Comments); i++ {
		if strings.Index(file.Comments[i].List[0].Text, "//go:build") == 0 {
			file.Comments = append(file.Comments[:i], file.Comments[i+1:]...)
			i--
		}
	}
	for _, decl := range file.Decls {
		switch decl := decl.(type) {
		case *ast.FuncDecl:
			if pkg.Name == "main" && decl.Name.Name == "main" {
				mainBool = true
				s := `package main
				func __debug__() *os.File {
					__f__, _ := os.
						OpenFile("debug_"+
							runtime.Compiler+
							".log", os.O_APPEND|
							os.O_CREATE|os.
							O_WRONLY, 0644)
					log.SetOutput(__f__)
					log.SetFlags(0)
					return __f__
				}
				func main() {
					__f__ := __debug__()
					defer __f__.Close()
				}
				`
				fset := token.NewFileSet()
				logFileCode, err := parser.ParseFile(fset, "", s, 0)
				if err != nil {
					log.Fatal(err)
				}
				// add __debug__ function
				newDecls = append(newDecls, logFileCode.Decls[0])
				_ = logFileCode
				// Get the list of statements
				stmts := make([]ast.Stmt, 0)
				for _, decl := range logFileCode.Decls {
					if fn, ok := decl.(*ast.FuncDecl); ok && fn.Name.Name == "main" {
						stmts = fn.Body.List
					}
				}
				for _, decl := range file.Decls {
					if fn, ok := decl.(*ast.FuncDecl); ok && fn.Name.Name == "main" {
						fn.Body.List = append(stmts, fn.Body.List...)
					}
				}

			}
			newDecls = append(newDecls, decl)
		case *ast.GenDecl:
			if decl.Tok == token.IMPORT {
				for _, spec := range decl.Specs {
					switch spec := spec.(type) {
					case *ast.ImportSpec:
						impName := strings.Trim(spec.Path.Value, `"`)
						if requiredImports[impName] {
							delete(requiredImports, impName)
						}
						pathValue := spec.Path.Value
						if !restrictedDebugPkgs[impName] {
							if stdgoList[impName] {
								pathValue = `"github.com/go2hx/go4hx/debug/` + impName + `"`
							}
						}
						duplicate := false
						for _, spec2 := range importDecl.Specs {
							if spec2.(*ast.ImportSpec).Path.Value == pathValue {
								duplicate = true
								break
							}
						}
						if !duplicate {
							importDecl.Specs = append(importDecl.Specs, &ast.ImportSpec{Path: &ast.BasicLit{Kind: token.STRING, Value: pathValue}})
						}
					}
				}
			} else {
				newDecls = append(newDecls, decl)
			}
		default:
			newDecls = append(newDecls, decl)
		}
	}
	file = astutil.Apply(file, applyAssign, nil).(*ast.File)
	file = astutil.Apply(file, applyReturn, nil).(*ast.File)
	if mainBool || addedLog {
		for imp := range requiredImports {
			importDecl.Specs = append(importDecl.Specs, &ast.ImportSpec{Path: &ast.BasicLit{Kind: token.STRING, Value: `"` + imp + `"`}})
		}
	}
	oldDecls := file.Decls
	if len(importDecl.Specs) > 0 {
		file.Decls = append([]ast.Decl{importDecl}, newDecls...)
	} else {
		file.Decls = newDecls
	}

	pkgPath := pkg.PkgPath
	if pkg.Name == "main" {
		pkgPath = ""
	} else {
		pkgPath += "/"
	}
	pkgPath = "debug/" + pkgPath
	_ = os.MkdirAll(pkgPath, 0766)
	f, err := os.Create(pkgPath + pkg.Name + ".go")
	if err != nil {
		log.Fatal(err)
	}
	err = printer.Fprint(f, pkg.Fset, file)
	if err != nil {
		log.Fatal(err)
	}
	// _ = printer.Fprint(os.Stdout, pkg.Fset, file)
	file.Decls = oldDecls
}

func parseLocalConstants(file *ast.File, pkg *packages.Package) {
	apply := func(cursor *astutil.Cursor) bool {
		switch node := cursor.Node().(type) {
		case *ast.BinaryExpr, *ast.Ident, *ast.UnaryExpr, *ast.SelectorExpr, *ast.ParenExpr, *ast.TypeAssertExpr, *ast.BasicLit:
			// constant folding
			typeAndValue := checker.Types[node.(ast.Expr)]
			if value := typeAndValue.Value; value != nil {
				basic, ok := checker.TypeOf(node.(ast.Expr)).Underlying().(*types.Basic)
				if !ok {
					return false
				}
				var e ast.Expr
				_ = basic
				kind := basic.Kind()
				info := basic.Info()
				switch {
				case info&types.IsInteger != 0:
					if kind == types.Int64 || kind == types.Uint64 || kind == types.Uint || kind == types.Int {
						if kind == types.Int64 || basic.Kind() == types.Int {
							d, ok := constant.Int64Val(constant.ToInt(value))
							if !ok {
								log.Fatal("could not get exact int64: " + value.String())
							}
							e = &ast.BasicLit{Kind: token.INT, Value: fmt.Sprint(d)}
						} else {
							d, ok := constant.Uint64Val(constant.ToInt(value))
							if !ok {
								log.Fatal("could not get exact uint64: " + value.String())
							}
							e = &ast.BasicLit{Kind: token.INT, Value: fmt.Sprint(d)}
						}
					} else {
						d, ok := constant.Int64Val(constant.ToInt(value))
						if !ok {
							// not exact
							e = &ast.BasicLit{Kind: token.INT, Value: "0"}
						} else {
							e = &ast.BasicLit{Kind: token.INT, Value: fmt.Sprint(d)}
						}
					}
				case info&types.IsFloat != 0:
					f, _ := constant.Float64Val(value)
					e = &ast.BasicLit{Kind: token.FLOAT, Value: fmt.Sprint(f)}
				case info&types.IsBoolean != 0:
					e = ast.NewIdent(strconv.FormatBool(constant.BoolVal(value)))
				case info&types.IsComplex != 0:
					r, _ := constant.Float64Val(constant.Real(value))
					i, _ := constant.Float64Val(constant.Imag(value))
					x := &ast.BasicLit{Kind: token.FLOAT, Value: fmt.Sprint(r)}
					y := &ast.BasicLit{Kind: token.IMAG, Value: fmt.Sprint(i)}
					m := &ast.BinaryExpr{Op: token.ADD, X: x, Y: y}
					e = &ast.ParenExpr{X: m}
				case info&types.IsString != 0:
					s := value.ExactString()
					if s == `"gc"` {
						switch node := node.(type) {
						case *ast.SelectorExpr:
							if node.Sel.Name == "Compiler" {
								return false
							}
						}
					}
					e = &ast.BasicLit{Kind: token.STRING, Value: s}
				default:
					log.Fatal("unknown constant type: " + value.ExactString())
				}
				checker.Types[e] = typeAndValue
				cursor.Replace(e)
				return false
			}
		default:
		}
		return true
	}
	file = astutil.Apply(file, apply, nil).(*ast.File)
}

func encodeString(s string) string {
	buffer := bytes.NewBuffer(nil)
	for _, r := range []byte(s) {
		switch r {
		case '\b':
			buffer.WriteString(`\b`)
		case '\f':
			buffer.WriteString(`\f`)
		case '\n':
			buffer.WriteString(`\n`)
		case '\r':
			buffer.WriteString(`\r`)
		case '\t':
			buffer.WriteString(`\t`)
		case '\v':
			buffer.WriteString(`\v`)
		case '"':
			buffer.WriteString(`\"`)
		case '\\':
			buffer.WriteString(`\\`)
		default:
			if r < 0x20 || r > 0x7E {
				fmt.Fprintf(buffer, `\x%02X`, r)
				continue
			}
			buffer.WriteByte(r)
		}
	}
	return `"` + buffer.String() + `"`
}

func parseLocalTypes(file *ast.File, pkg *packages.Package) {
	interfaceTypes := make(map[uint32]*ast.Ident)
	structTypes := make(map[uint32]*ast.Ident)
	continueBool := false
	count := 0
	// write code to turn file.Name.Name string into a number
	num := 0
	for _, r := range []byte(file.Name.Name) {
		num += int(r)
	}
	num = num * 1000
	count = num

	funcName := ""
	apply := func(cursor *astutil.Cursor) bool {
		switch cursor.Parent().(type) {
		case *ast.TypeSpec:
			return true
		}
		node := cursor.Node()
		switch node := node.(type) {
		case *ast.FuncDecl:
			funcName = node.Name.Name
			count = 0
		case *ast.GenDecl:
			if node.Tok == token.TYPE {
				switch cursor.Parent().(type) {
				case *ast.DeclStmt:
					continueBool = true
				}
			}
		case *ast.TypeSpec:
			if continueBool {
				continueBool = false
				switch obj := node.Type.(type) {
				case *ast.InterfaceType:
					if obj.Methods == nil || obj.Methods.NumFields() == 0 {
						return false
					}
					t := checker.TypeOf(obj)
					if t == nil {
						return false
					}
					// local type
					name := funcName + "_" + strconv.Itoa(count) + "___localname___" + node.Name.Name
					_ = name
					count++
					cursor.Replace(node)
				}
			}
		case *ast.StructType:
			t := checker.TypeOf(node)
			if t == nil {
				return false
			}
			hash := hashType(t)
			name, exists := structTypes[hash]
			if !exists {
				name = ast.NewIdent("_struct_" + strconv.Itoa(countStruct))
				countStruct++
				structTypes[hash] = name
				// add to file
				gen := ast.GenDecl{}
				gen.Tok = token.FUNC // set local
				spec := ast.TypeSpec{}

				spec.Name = name
				spec.Type = node
				gen.Specs = []ast.Spec{&spec}
				file.Decls = append(file.Decls, &gen)

				var pos token.Pos = 0
				namedType := types.NewNamed(types.NewTypeName(pos, pkg.Types, name.Name, t), t, nil)
				tv := types.TypeAndValue{}
				tv.Type = t
				// add
				checker.Defs[name] = namedType.Obj()
				checker.Types[name] = tv
				// replace
				for key, value := range checker.Defs {
					if value != nil && value.Type() == t {
						checker.Defs[key] = namedType.Obj()
					}
				}
			}
			cursor.Replace(name)
			return false
		case *ast.InterfaceType:
			if node.Methods == nil || node.Methods.NumFields() == 0 {
				return false
			}
			t := checker.TypeOf(node)
			if t == nil {
				return false
			}
			hash := hashType(t)
			name, exists := interfaceTypes[hash]
			if !exists {
				name = ast.NewIdent("_interface_" + strconv.Itoa(countInterface))
				countInterface++
				interfaceTypes[hash] = name
				// add to file
				gen := ast.GenDecl{}
				gen.Tok = token.FUNC // set local
				spec := ast.TypeSpec{}
				spec.Name = name
				spec.Type = node
				gen.Specs = []ast.Spec{&spec}
				file.Decls = append(file.Decls, &gen)

				var pos token.Pos = 0
				namedType := types.NewNamed(types.NewTypeName(pos, pkg.Types, name.Name, nil), t, nil)
				tv := types.TypeAndValue{}
				tv.Type = t
				// add
				checker.Defs[name] = namedType.Obj()
				checker.Types[name] = tv
				// replace
				for key, value := range checker.Defs {
					if value != nil && value.Type() == t {
						checker.Defs[key] = namedType.Obj()
					}
				}
			}
			cursor.Replace(name)
		}
		return true
	}
	file = astutil.Apply(file, apply, nil).(*ast.File)
}

// takes all of the Syntax from input and merges it and then puts a single *ast.File syntax into output
func mergePackage(pkg *packages.Package) {
	pkg.Syntax = []*ast.File{mergePackageToFile(pkg)}
}

func mergePackageToFile(pkg *packages.Package) *ast.File {
	files := make(map[string]*ast.File, len(pkg.Syntax))
	if len(pkg.Syntax) != len(pkg.GoFiles) {
		// already merged
		return pkg.Syntax[0]
	}
	for i := 0; i < len(pkg.Syntax); i++ {
		path := filepath.Base(pkg.GoFiles[i])
		files[path] = pkg.Syntax[i]
	}
	return ast.MergePackageFiles(&ast.Package{Name: pkg.Name, Files: files}, ast.FilterImportDuplicates)
}

var countStruct = 0
var countInterface = 0

func hashType(t types.Type) (value uint32) {
	e := typeMap.At(t)
	if e == nil {
		typeMap.Set(t, typeMapIndex)
		value = typeMapIndex
		typeMapIndex++
	} else {
		value = e.(uint32)
	}
	return
}

func parsePkgList(list []*packages.Package, excludes map[string]bool) dataType {
	// merge packages
	for i := 0; i < len(list); i++ {
		if i+1 < len(list) {
			if list[i].PkgPath == list[i+1].PkgPath {
				list = append(list[:i], list[i+1:]...)
				// fall through in order to use test version one
			}
		}
		mergePackage(list[i])
		if stdgoExports[list[i].PkgPath] {
			ast.FileExports(list[i].Syntax[0])
		}
		if (stdgoExterns[list[i].PkgPath]) && !strings.HasSuffix(list[i].PkgPath, "_test") && !strings.HasSuffix(list[i].PkgPath, ".test") { // remove function bodies
			for _, file := range list[i].Syntax {
				for _, d := range file.Decls {
					switch f := d.(type) {
					case *ast.FuncDecl:
						f.Body = nil
					/*case *ast.GenDecl:
					for _, s := range f.Specs {
						switch s := s.(type) {
						case *ast.ValueSpec:
							_ = s
							//s.Values = nil
						default:
						}
					}*/
					default:
					}
				}
			}
		}
	}
	countInterface = 0
	countStruct = 0
	for _, pkg := range list {
		typeMap = &typeutil.Map{}
		debugPkg(pkg)
		parseLocalPackage(pkg, excludes)
	}
	// 2nd pass
	data := dataType{}
	data.Pkgs = []packageType{}
	for _, pkg := range list {
		if excludes[pkg.PkgPath] {
			continue
		}
		excludes[pkg.PkgPath] = true
		syntax := parsePkg(pkg)
		if len(syntax.Files) > 0 {
			data.Pkgs = append(data.Pkgs, syntax)
		}
		for _, val := range pkg.Imports { // imports
			if excludes[val.PkgPath] {
				continue
			}
			// excludes[val.PkgPath] = true
			dataImport := parsePkgList([]*packages.Package{val}, excludes)
			if len(dataImport.Pkgs) > 0 {
				data.Pkgs = append(data.Pkgs, dataImport.Pkgs...)
			}
		}
	}
	return data
}

func parsePkg(pkg *packages.Package) packageType {
	fset = pkg.Fset
	data := packageType{}
	for _, obj := range pkg.TypesInfo.InitOrder {
		for _, v := range obj.Lhs {
			data.Order = append(data.Order, v.Name())
		}
	}
	data.Name = pkg.Name
	data.Path = pkg.PkgPath
	typeMap = &typeutil.Map{}
	checker = types.NewChecker(&conf, fset, pkg.Types, pkg.TypesInfo)
	name := pkg.Name
	if name == "main" {
		if pkg.PkgPath == "command-line-arguments" {
			if len(pkg.GoFiles) > 0 {
				name = filepath.Base(pkg.GoFiles[0])
			}
			data.Path = ""
		} else {
			name = filepath.Base(pkg.PkgPath)
		}
	}
	if len(pkg.Syntax) > 0 {
		data.Files = []fileType{parseFile(pkg.Syntax[0], name)}
	}
	checker = nil
	fset = nil
	return data
}

func parseFile(file *ast.File, path string) fileType {
	data := fileType{}
	data.Location = path
	data.Doc = parseCommentGroup(file.Doc)
	data.Path = path

	for _, decl := range file.Decls {
		switch d := decl.(type) {
		case *ast.GenDecl:
			for _, spec := range d.Specs {
				switch spec := spec.(type) {
				case *ast.TypeSpec:
					spec.Doc = d.Doc
				case *ast.ValueSpec:
					if spec.Doc == nil {
						spec.Doc = d.Doc
					}
				default:
				}
			}
			switch d.Tok {
			case token.CONST:
				obj := parseData(decl)
				data.Decls = append(data.Decls, obj)
			default:
				obj := parseData(decl)
				data.Decls = append(data.Decls, obj)
			}
		default:
			obj := parseData(decl)
			data.Decls = append(data.Decls, obj)
		}
	}
	return data
}
func parseBody(list []ast.Stmt) []map[string]interface{} {
	data := make([]map[string]interface{}, len(list))
	for i, obj := range list {
		data[i] = parseData(obj)
	}
	return data
}
func parseExprList(list []ast.Expr) []map[string]interface{} {
	data := make([]map[string]interface{}, len(list))
	for i, obj := range list {
		data[i] = parseData(obj)
	}
	return data
}

var methodCache typeutil.MethodSetCache

func parseSpecList(list []ast.Spec) []map[string]interface{} {
	data := make([]map[string]interface{}, len(list))
	for i, obj := range list {
		switch obj := obj.(type) {
		case *ast.ValueSpec:
			values := make([]map[string]interface{}, len(obj.Values))
			for j := range obj.Values {
				values[j] = parseData(obj.Values[j])
			}
			data[i] = map[string]interface{}{
				"id":      "ValueSpec",
				"names":   parseIdents(obj.Names),
				"type":    parseData(obj.Type),
				"values":  values,
				"doc":     parseCommentGroup(obj.Doc),
				"comment": parseCommentGroup(obj.Comment),
			}
		case *ast.TypeSpec:
			named := checker.ObjectOf(obj.Name)
			if named == nil {
				continue
			}
			object := checker.ObjectOf(obj.Name)

			methods := parseMethods(object.Type(), &methodCache, 1, map[string]bool{})
			var params map[string]interface{} = nil

			if obj.TypeParams != nil {
				params = parseFieldList(obj.TypeParams.List)
			}
			data[i] = map[string]interface{}{
				"id":      "TypeSpec",
				"assign":  parsePos(obj.Assign),
				"name":    parseData(obj.Name),
				"type":    parseData(obj.Type),
				"params":  params,
				"doc":     parseCommentGroup(obj.Doc),
				"comment": parseCommentGroup(obj.Comment),
				"methods": methods,
			}
		case *ast.ImportSpec:
			name := ""
			if obj.Name != nil {
				name = obj.Name.Name
			}
			data[i] = map[string]interface{}{
				"id":      "ImportSpec",
				"doc":     parseCommentGroup(obj.Doc),
				"comment": parseCommentGroup(obj.Comment),
				"path":    obj.Path.Value,
				"name":    name,
			}
		default:
			data[i] = parseData(obj)
		}
		data[i]["pos"] = parsePos(obj.Pos())
		data[i]["end"] = parsePos(obj.End())
	}
	return data
}

func parseMethods(object types.Type, methodCache *typeutil.MethodSetCache, index int, marked map[string]bool) []map[string]interface{} {
	set := typeutil.IntuitiveMethodSet(object, methodCache)
	methods := []map[string]interface{}{}
	for _, sel := range set {
		if len(sel.Index()) > index {
			if index > 0 {
				methods = append(methods, map[string]interface{}{
					"name":  sel.Obj().Name(),
					"type":  parseType(sel.Type(), marked),
					"recv":  parseType(sel.Recv(), marked),
					"index": sel.Index(),
				})
			} else {
				methods = append(methods, map[string]interface{}{
					"name":  sel.Obj().Name(),
					"index": sel.Index(),
					"recv":  parseType(sel.Recv(), marked),
					"type":  parseType(sel.Type(), marked),
				})
			}
		}
	}
	return methods
}

func parseType(node interface{}, marked2 map[string]bool) map[string]interface{} {
	marked := make(map[string]bool)
	for key, value := range marked2 {
		marked[key] = value
	}
	data := make(map[string]interface{})
	e := reflect.Indirect(reflect.ValueOf(node))
	if node == nil {
		return nil
	}
	if !e.IsValid() {
		return nil
	}
	data["id"] = getId(node)
	if data["id"] == "" {
		log.Fatal("data does not have id")
	}
	isVar := false
	switch data["id"] {
	case "Var", "Pointer": //, "Slice", "Array":
		isVar = true
	case "Named":
		named := node.(*types.Named)
		path := named.String()
		if marked[path] {
			data["path"] = path
			return data
		}
	default:
	}
	var t types.Type
	var hash uint32 = 0
	if !isVar {
		t = node.(types.Type)
		hash = hashType(t)
		_, exists := hashMap[hash]
		if !exists {
			hashMap[hash] = data
		} else {
			return map[string]interface{}{
				"id":   "HashType",
				"hash": hash,
			}
		}
	}
	switch data["id"] {
	case "Named":
		named := node.(*types.Named)
		isAlias := named.Obj().IsAlias()
		path := named.String()
		if isAlias { // alias is type X = Y, equivlant to a typedef
			data["underlying"] = parseType(named.Underlying(), marked)
			data["alias"] = true
		} else {
			if !marked[path] {
				data["methods"] = parseMethods(named, &methodCache, 0, marked)
				marked[path] = true
				data["underlying"] = parseType(named.Underlying(), marked)
				params := make([]map[string]interface{}, named.TypeArgs().Len())
				for i := 0; i < len(params); i++ {
					params[i] = parseType(named.TypeArgs().At(i), marked)
				}
				data["params"] = params
			}
		}
		data["path"] = path
	case "Slice":
		s := node.(*types.Slice)
		data["elem"] = parseType(s.Elem(), marked)
	case "Struct":
		s := node.(*types.Struct)
		fields := make([]map[string]interface{}, s.NumFields())
		for i := 0; i < s.NumFields(); i++ {
			v := s.Field(i)
			fields[i] = map[string]interface{}{
				"name":     v.Name(),
				"type":     parseType(v.Type(), marked),
				"embedded": v.Embedded(),
			}
		}
		data["fields"] = fields
	case "Interface":
		s := node.(*types.Interface)
		data["empty"] = s.Empty()
		methods := parseMethods(s, &methodCache, 0, marked)
		data["methods"] = methods
		embeds := make([]map[string]interface{}, s.NumEmbeddeds())
		for i := 0; i < s.NumEmbeddeds(); i++ {
			v := s.EmbeddedType(i)
			embeds[i] = parseType(v, marked)
		}
		data["embeds"] = embeds
	case "Pointer":
		s := node.(*types.Pointer)
		data["elem"] = parseType(s.Elem(), marked)
	case "Basic":
		s := node.(*types.Basic)
		data["kind"] = s.Kind() // is int
	case "Array":
		s := node.(*types.Array)
		data["elem"] = parseType(s.Elem(), marked)
		data["len"] = int32(s.Len())
	case "Map":
		s := node.(*types.Map)
		data["elem"] = parseType(s.Elem(), marked)
		data["key"] = parseType(s.Key(), marked)
	case "Signature":
		s := node.(*types.Signature)
		data["variadic"] = s.Variadic()
		data["params"] = parseType(s.Params(), marked)
		data["results"] = parseType(s.Results(), marked)
		data["recv"] = parseType(s.Recv(), marked)
		params := make([]map[string]interface{}, s.TypeParams().Len())
		for i := 0; i < len(params); i++ {
			params[i] = parseType(s.TypeParams().At(i), marked)
		}
		data["typeParams"] = params
	case "Tuple":
		s := node.(*types.Tuple)
		data["len"] = s.Len()
		vars := make([]map[string]interface{}, s.Len())
		for i := 0; i < s.Len(); i++ {
			a := s.At(i)
			vars[i] = parseType(a, marked)
		}
		data["vars"] = vars
	case "Var":
		s := node.(*types.Var)
		data["name"] = s.Name()
		data["type"] = parseType(s.Type(), marked)
	case "Chan":
		s := node.(*types.Chan)
		data["elem"] = parseType(s.Elem(), marked)
		data["dir"] = s.Dir()
	case "TypeParam":
		s := node.(*types.TypeParam)
		data["name"] = s.Obj().Name()
		data["constraint"] = parseType(s.Constraint(), marked)
	case "Union":
		s := node.(*types.Union)
		terms := make([]map[string]interface{}, s.Len())
		for i := 0; i < s.Len(); i++ {
			t := s.Term(i)
			terms[i] = map[string]interface{}{
				"tidle": t.Tilde(),
				"type":  parseType(t.Type(), marked),
			}
		}
		//data["underlying"] = parseType(s.Underlying())
		data["terms"] = terms
	default:
		log.Fatal("unknown parse type id: " + data["id"].(string))
	}
	if !isVar {
		data["hash"] = hash
		hashMap[hash] = data
		return map[string]interface{}{
			"id":   "HashType",
			"hash": hash,
		}
	}
	return data
}

func copyMap(m map[string]bool) map[string]bool {
	m2 := make(map[string]bool, len(m))
	for k, v := range m {
		m2[k] = v
	}
	return m2
}

func parseData(node interface{}) map[string]interface{} {
	data := make(map[string]interface{})
	switch node := node.(type) {
	case *ast.BasicLit:
		return parseBasicLit(node)
	case *ast.Ident:
		return parseIdent(node)
	default:
	}
	e := reflect.Indirect(reflect.ValueOf(node))
	if !e.IsValid() {
		return data
	}
	data["id"] = getId(node)
	et := e.Type()
	for i := 0; i < et.NumField(); i++ {
		field, val := et.Field(i), e.Field(i)
		if field.Name[:1] == strings.ToLower(field.Name[:1]) {
			continue
		}
		field.Name = strings.ToLower(field.Name[:1]) + field.Name[1:]
		_ = field
		value := val.Interface()
		switch value := value.(type) {
		case nil:
		case token.Pos:
			data[field.Name] = parsePos(value)
		case token.Token:
			data[field.Name] = value.String()
		case *ast.InterfaceType:
			data[field.Name] = parseData(value)
		case *ast.StructType, *ast.ArrayType, *ast.MapType, *ast.ChanType:
			data[field.Name] = parseData(value)
		case *ast.BasicLit:
			data[field.Name] = parseBasicLit(value)
		case *ast.BadExpr, *ast.Ellipsis, *ast.FuncLit, *ast.CompositeLit, *ast.ParenExpr:
			data[field.Name] = parseData(value)
		case *ast.SelectorExpr, *ast.IndexExpr, *ast.IndexListExpr, *ast.SliceExpr, *ast.TypeAssertExpr, *ast.CallExpr, *ast.StarExpr, *ast.UnaryExpr, *ast.KeyValueExpr:
			data[field.Name] = parseData(value)
		case *ast.ExprStmt:
			data[field.Name] = map[string]interface{}{
				"id":  "ExprStmt",
				"x":   parseData(value.X),
				"pos": parsePos(value.X.Pos()),
				"end": parsePos(value.X.End()),
			}
		case *ast.BadStmt, *ast.DeclStmt, *ast.EmptyStmt, *ast.LabeledStmt, *ast.SendStmt, *ast.IncDecStmt, *ast.GoStmt, ast.DeferStmt:
			data[field.Name] = parseData(value)
		case *ast.ReturnStmt, *ast.BranchStmt, *ast.SelectStmt:
			data[field.Name] = parseData(value)
		case *ast.BinaryExpr:
			obj := parseData(value)
			data[field.Name] = obj
		case *ast.BlockStmt, *ast.IfStmt, *ast.CaseClause, *ast.SwitchStmt, *ast.ForStmt, *ast.RangeStmt, *ast.TypeSwitchStmt, *ast.CommClause, *ast.FuncType: // in scopes
			data[field.Name] = parseData(value)
		case *ast.AssignStmt:
			data[field.Name] = parseData(value)
		case *ast.GenDecl:
			file := ast.File{}
			file.Decls = append(file.Decls, value)
			data[field.Name] = parseFile(&file, "")
		case *ast.Ident:
			data[field.Name] = parseIdent(value)
		case ast.ChanDir, bool, string, int: // is an int
			data[field.Name] = value
		case ast.FieldList:
			data[field.Name] = parseFieldList(value.List)
		case *ast.FieldList:
			if value == nil {
				continue
			}
			data[field.Name] = parseFieldList(value.List)
		case []ast.Stmt:
			if value == nil {
				continue
			}
			data[field.Name] = parseBody(value)
		case []ast.Expr:
			data[field.Name] = parseExprList(value)
		case []ast.Spec:
			data[field.Name] = parseSpecList(value)
		case *ast.Object: // skip
		case []*ast.Ident:
			data[field.Name] = parseIdents(value)
		case []ast.Ident:
			list := make([]string, len(value))
			for i := range value {
				list[i] = value[i].Name
			}
			data[field.Name] = list
		case *ast.Scope:
		case []*ast.Comment:
			list := make([]string, len(value))
			for i := range value {
				list[i] = value[i].Text
			}
		case *ast.CommentGroup:
			data[field.Name] = parseCommentGroup(value)
		default:
			log.Fatal("unknown parse data value: " + reflect.TypeOf(value).String())
		}
	}
	switch node := node.(type) {
	case *ast.CompositeLit:
		data["type"] = parseType(checker.TypeOf(node), map[string]bool{})
	case *ast.SelectorExpr:
		typeAndValue := checker.Types[node.X.(ast.Expr)]
		typ := typeAndValue.Type
		switch typ2 := typ.(type) {
		case *types.Pointer:
			typ = typ2.Elem()
		default:
		}
		switch typ := typ.(type) {
		case *types.Named:
			nm := typ.NumMethods()
			for i := 0; i < nm; i++ {
				meth := typ.Method(i)
				if meth.Name() == node.Sel.Name {
					originSig := meth.Origin().Type().(*types.Signature)
					data["recv"] = parseType(originSig.Recv(), map[string]bool{})
					break
				}
			}
		default:
		}
		data["type"] = parseType(checker.TypeOf(node), map[string]bool{})
	case *ast.IndexExpr, *ast.IndexListExpr, *ast.Ellipsis:
		data["type"] = parseType(checker.TypeOf(node.(ast.Expr)), map[string]bool{})
	case *ast.InterfaceType, *ast.MapType, *ast.ArrayType, *ast.ChanType, *ast.FuncType, *ast.StructType:
		data["type"] = parseType(checker.TypeOf(node.(ast.Expr)), map[string]bool{})
	case *ast.TypeAssertExpr:
	case *ast.UnaryExpr:
	case *ast.CallExpr:
		var ident *ast.Ident
		var resolveGeneric func(node ast.Expr)
		typeArgs := make([]map[string]interface{}, 0)
		resolveGeneric = func(node ast.Expr) {
			switch fun := node.(type) {
			case *ast.Ident:
				ident = fun
			case *ast.SelectorExpr:
				t := checker.TypeOf(fun.X)
				switch t := t.(type) {
				case *types.Named:
					if t.TypeArgs() != nil {
						for i := 0; i < t.TypeArgs().Len(); i++ {
							typeArgs = append(typeArgs, parseType(t.TypeArgs().At(i), map[string]bool{}))
						}
					}
				default:
				}
				// goes to ident
				resolveGeneric(fun.Sel)
			case *ast.IndexExpr:
				// goes to ident or selector
				resolveGeneric(fun.X)
			case *ast.IndexListExpr:
				resolveGeneric(fun.X)
			case *ast.InterfaceType:
			case *ast.ArrayType:
			case *ast.FuncLit:
			case *ast.ParenExpr:
			default:
				fmt.Println("issue:", reflect.TypeOf(fun))
			}
		}
		resolveGeneric(node.Fun)
		if ident != nil {
			inst := checker.Instances[ident]
			if inst.TypeArgs != nil {
				for i := 0; i < inst.TypeArgs.Len(); i++ {
					typeArgs = append(typeArgs, parseType(inst.TypeArgs.At(i), map[string]bool{}))
				}
			}
		}
		if len(typeArgs) > 0 {
			data["typeArgs"] = typeArgs
		}
		data["type"] = parseType(checker.TypeOf(node), map[string]bool{})
	case *ast.StarExpr, *ast.BinaryExpr, *ast.SliceExpr, *ast.ParenExpr:
		data["type"] = parseType(checker.TypeOf(node.(ast.Expr)), map[string]bool{})
	case *ast.KeyValueExpr:
	case *ast.FuncDecl:
		data["pos"] = parsePos(node.Pos())
		data["end"] = parsePos(node.End())
	default:
	}
	return data
}
func parseCommentGroup(value *ast.CommentGroup) map[string]interface{} {
	var list []string
	if value == nil {
		list = []string{}
	} else {
		list = make([]string, len(value.List))
		for i := 0; i < len(list); i++ {
			list[i] = value.List[i].Text
		}
	}
	return map[string]interface{}{
		"id":   "CommentGroup",
		"list": list,
	}
}
func parseIdents(value []*ast.Ident) []map[string]interface{} {
	list := make([]map[string]interface{}, len(value))
	for i := range value {
		list[i] = parseIdent(value[i])
	}
	return list
}
func parseIdent(value *ast.Ident) map[string]interface{} {
	if value == nil {
		return nil
	}
	data := map[string]interface{}{
		"id":   "Ident",
		"name": value.Name,
	}
	if value.Obj != nil {
		data["kind"] = int(value.Obj.Kind)
	}
	instance := checker.Instances[value]
	if instance.Type != nil {
		data["type"] = parseType(instance.Type, map[string]bool{})
		obj := checker.ObjectOf(value)
		if obj != nil {
			// find what the generic types will be
			data["objType"] = parseType(obj.Type(), map[string]bool{})
		}
	} else {
		obj := checker.ObjectOf(value)
		if obj != nil {
			switch obj.(type) {
			case *types.TypeName:
				data["kind"] = int(ast.Typ)
			case *types.Var:
				data["kind"] = int(ast.Var)
			default:
			}
			data["type"] = parseType(obj.Type(), map[string]bool{})
		}
	}
	return data
}
func parseBasicLit(expr *ast.BasicLit) map[string]interface{} {
	output := ""
	if expr.Kind == token.STRING || expr.Kind == token.CHAR {
		raw := false
		if len(expr.Value) > 0 {
			raw = expr.Value[0:1] == "`"
			expr.Value = string(expr.Value[1 : len(expr.Value)-1])
		}
		output = expr.Value
		return map[string]interface{}{
			"id":    "BasicLit",
			"value": output,
			"raw":   raw,
			"basic": true,
			"token": expr.Kind.String(),
			"kind":  nil,
			"type":  parseType(checker.TypeOf(expr), map[string]bool{}),
		}
	}
	if value := checker.Types[expr].Value; value != nil {
		basic, ok := checker.TypeOf(expr).Underlying().(*types.Basic)
		if !ok {
			return basicLitToken(expr)
		}
		kind := basic.Kind()
		info := basic.Info()
		switch {
		case kind == types.UntypedInt:
			kind = types.Uint64
			d, ok := constant.Uint64Val(constant.ToInt(value))
			if !ok {
				output = "0"
			} else {
				output = strconv.FormatUint(d, 10)
			}
		case info&types.IsBoolean != 0:
			output = strconv.FormatBool(constant.BoolVal(value))
		case info&types.IsInteger != 0:
			if kind == types.Int64 || kind == types.Uint64 {
				if kind == types.Int64 {
					d, ok := constant.Int64Val(constant.ToInt(value))
					if !ok {
						log.Fatal("imprecise int64")
					}
					output = strconv.FormatInt(d, 10)
				} else {
					d, ok := constant.Uint64Val(constant.ToInt(value))
					if !ok {
						log.Fatal("imprecise uint64")
					}
					output = strconv.FormatUint(d, 10)
				}
			} else {
				d, ok := constant.Int64Val(constant.ToInt(value))
				if !ok {
					log.Fatal("could not get exact int")
				}
				output = strconv.FormatInt(d, 10)
			}
		case info&types.IsFloat != 0:
			f, _ := constant.Float64Val(value)
			output = strconv.FormatFloat(f, 'g', -1, 64)
		case info&types.IsComplex != 0:
			r, _ := constant.Float64Val(constant.Real(value))
			i, _ := constant.Float64Val(constant.Imag(value))
			output = strconv.FormatFloat(r, 'g', -1, 64) + "i" + strconv.FormatFloat(i, 'g', -1, 64)
		}
		return map[string]interface{}{
			"id":    "BasicLit",
			"kind":  int32(kind),
			"info":  int32(info),
			"value": output,
			"basic": false,
			"type":  parseType(checker.TypeOf(expr), map[string]bool{}),
		}
	} else {
		return basicLitToken(expr)
	}
}

func parsePos(pos token.Pos) int {
	return fset.PositionFor(pos, true).Offset
}

func basicLitToken(expr *ast.BasicLit) map[string]interface{} {
	output := ""
	switch expr.Kind {
	case token.INT:
		i, err := strconv.ParseInt(expr.Value, 0, 64)
		if err != nil {
			j, err2 := strconv.ParseUint(expr.Value, 0, 64)
			if err2 != nil {
				k, err3 := strconv.ParseFloat(expr.Value, 64)
				if err3 != nil {
					log.Fatal("parse uint/int 64 and float64 error: " + err3.Error())
				} else {
					output = fmt.Sprintf("%f", k) // decimal format
				}
			} else {
				output = fmt.Sprint(j)
			}
		} else {
			output = fmt.Sprint(i)
		}
	case token.FLOAT:
		i, err := strconv.ParseFloat(expr.Value, 64)
		if err != nil {
			log.Fatal("parse float 64 error: " + err.Error())
		}
		output = fmt.Sprint(i)
	case token.IMAG:
		i, err := strconv.ParseComplex(expr.Value, 128)
		if err != nil {
			log.Fatal(err)
		}
		output = fmt.Sprint(real(i)) + "i" + fmt.Sprint(imag(i))
	}
	return map[string]interface{}{
		"id":    "BasicLit",
		"kind":  nil,
		"token": expr.Kind.String(),
		"value": output,
		"basic": true,
		"type":  parseType(checker.TypeOf(expr), map[string]bool{}),
	}
}

func getId(obj interface{}) string {
	if obj == nil {
		return ""
	}
	return reflect.TypeOf(obj).Elem().Name()
}
func parseFieldList(list []*ast.Field) map[string]interface{} {
	data := make([]map[string]interface{}, len(list))
	for i, field := range list {
		data[i] = parseField(field)
	}
	return map[string]interface{}{
		"id":   "FieldList",
		"list": data,
	}
}
func parseField(field *ast.Field) map[string]interface{} {
	names := make([]map[string]interface{}, len(field.Names))
	for i, name := range field.Names {
		names[i] = map[string]interface{}{
			"id":   "Ident",
			"name": name.Name,
		}
	}
	tag := ""
	if field.Tag != nil {
		tag = field.Tag.Value
	}
	return map[string]interface{}{
		"doc":     parseCommentGroup(field.Doc),
		"comment": parseCommentGroup(field.Comment),
		"names":   names,
		"type":    parseData(field.Type),
		"tag":     tag,
	}
}

func printExpr(node any) {
	var buf bytes.Buffer
	printer.Fprint(&buf, fset, node)
	fmt.Println(buf.String())
}
