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

	"github.com/go2hx/go4hx/analysis"
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

//go:embed data/stdgo.list
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
var systemGo = false

func compile(params []string, excludesData []string, index string, debug bool) []byte {
	args := []string{}
	testBool = false
	systemGo = false
	for _, param := range params {
		switch param {
		case "-systemgo", "--systemgo", "-systemGo", "--systemGo":
			systemGo = true
		case "-test", "--test":
			testBool = true
		case "-nodeps", "--nodeps", "-nodep", "--nodep":
			noDepsBool = true
		case "-debug", "--debug":
			debugBool = true
		default:
			args = append(args, param)
		}
	}
	if !systemGo {
		b, err := os.ReadFile(".gorc")

		if err != nil {
			println("require .gorc file")
			panic(err)
		}
		home, err := os.UserHomeDir()
		if err != nil {
			println("finding home directory caused an error")
			panic(err)
		}
		goroot := home + "/.go/go" + string(b)
		goCommand := goroot + "/bin/go"
		cfg.Env = append(cfg.Env, "GOROOT="+goroot)
		os.Setenv("GOROOT", goroot)
		os.Setenv("GOCMD", goCommand)
	}
	b := []byte("null")
	localPath := args[len(args)-1]
	var err error
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
		for exclude := range stdgoList {
			excludes[exclude] = true
		}

		for _, pkg := range initial { //remove initial packages from exclude list
			delete(excludes, pkg.PkgPath)
		}
	}
	//fmt.Println(excludes)
	typeMap = &typeutil.Map{}
	data := parsePkgList(initial, excludes)
	// add back initial packages to exclude list
	for _, pkg := range initial {
		excludes[pkg.PkgPath] = true
	}
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
		packages.NeedImports | packages.NeedDeps | packages.NeedEmbedFiles | packages.NeedEmbedPatterns |
		packages.NeedFiles | packages.NeedTypes | packages.NeedTypesInfo | packages.NeedModule | packages.NeedTypesSizes,
	BuildFlags: []string{"-tags", "netgo,purego,math_big_pure_go,compiler_bootstrap"}, // build tags
}

var r = rand.New(rand.NewSource(99))

func main() {
	_ = make([]byte, 20<<20) // allocate 20 mb virtually
	// set log output to log.out
	cfg.Env = append(os.Environ(), "CGO_ENABLED=0")
	var err error
	cfg.Env = append(cfg.Env, "GOOS=js", "GOARCH=wasm")
	args := os.Args
	if len(args) < 2 {
		panic("The Haxe part of the compiler is supposed to invoke the Go part of the compiler")
	}
	if args[1] == "-goto" {
		analysis.GotoParseTest()
		return
	}
	if args[1] == "-pointer" {
		analysis.PointerParseTest()
		return
	}
	port := args[len(args)-1]
	var excludesData []string
	var logFile *os.File
	log.SetFlags(log.LstdFlags | log.Lshortfile)
	logFile, err = os.OpenFile("log.out", os.O_RDWR|os.O_CREATE, 0666)
	if err != nil {
		fmt.Println(err.Error())
	} else {
		_ = logFile
		//log.SetOutput(logFile)
	}

	err = json.Unmarshal(excludesBytes, &excludesData)
	if err != nil {
		log.Fatal(err.Error())
	}
	CRLF := strings.ReplaceAll(string(stdgoListBytes), "\r\n", "\n")
	CR := strings.ReplaceAll(CRLF, "\r", "\n")
	list2 := strings.Split(CR, "\n")
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
	analysis.ParseLocalTypes(file, pkg, checker, hashType, &countStruct, &countInterface)
	analysis.ParseLocalConstants(file, pkg, checker)
	analysis.ParseLocalPointers(file, checker, pkg.Fset, false)
	analysis.ParseLocalGotos(file, checker, pkg.Fset, false)
}

func randomIdentifier() *ast.Ident {
	b := make([]byte, 8)
	_, err := r.Read(b)
	if err != nil {
		log.Fatal(err)
	}
	return ast.NewIdent(fmt.Sprintf("_%x", b))
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

func typeParamsFromType(t *types.Type) []string {
	return nil
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
	return ast.MergePackageFiles(&ast.Package{Name: pkg.Name, Files: files}, 0)
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
		// fmt.Println(list[i].PkgPath, list[i].GoFiles)
		if i+1 < len(list) {
			if list[i].PkgPath == list[i+1].PkgPath {
				list = append(list[:i], list[i+1:]...)
				// fall through in order to use test version one
			}
		}
		mergePackage(list[i])
		if stdgoExports[list[i].PkgPath] {
			//ast.FileExports(list[i].Syntax[0])
			filterFile(list[i].Syntax[0], ast.IsExported, true)
		}
		// fmt.Println(list[i].PkgPath, stdgoExterns[list[i].PkgPath])
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
			if !stdgoExports[pkg.PkgPath] || v.Exported() {
				//println(v.Name(), stdgoExports[pkg.PkgPath], v.Exported())
				data.Order = append(data.Order, v.Name())
			}
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
	// embed
	//fmt.Println(pkg.EmbedFiles)
	//goembed.CheckEmbed()

	//fmt.Println(pkg.EmbedPatterns)
	//pkg.EmbedFiles
	// parsFeFile
	if len(pkg.Syntax) > 0 {
		data.Files = []fileType{parseFile(pkg.Syntax[0], name)}
	}
	checker = nil
	fset = nil
	return data
}

func filterFile(src *ast.File, f ast.Filter, export bool) bool {
	j := 0
	for _, d := range src.Decls {
		if filterDecl(d, f, export) {
			src.Decls[j] = d
			j++
		}
	}
	src.Decls = src.Decls[0:j]
	return j > 0
}

func filterDecl(decl ast.Decl, f ast.Filter, export bool) bool {
	switch d := decl.(type) {
	case *ast.GenDecl:
		d.Specs = filterSpecList(d.Specs, f, export)
		return len(d.Specs) > 0
	case *ast.FuncDecl:
		return f(d.Name.Name)
	}
	return true
}

func filterSpecList(list []ast.Spec, f ast.Filter, export bool) []ast.Spec {
	j := 0
	for _, s := range list {
		if filterSpec(s, f, export) {
			list[j] = s
			j++
		}
	}
	return list[0:j]
}

func filterSpec(spec ast.Spec, f ast.Filter, export bool) bool {
	switch s := spec.(type) {
	case *ast.ValueSpec:
		s.Names = filterIdentList(s.Names, f)
		s.Values = filterExprList(s.Values, f, export)
		if len(s.Names) > 0 {
			if export {
				filterType(s.Type, f, export)
			}
			return true
		}
	case *ast.TypeSpec:
		//if f(s.Name.Name) {
		if export {
			filterType(s.Type, f, export)
		}
		return true
		//}
		if !export {
			// For general filtering (not just exports),
			// filter type even if name is not filtered
			// out.
			// If the type contains filtered elements,
			// keep the declaration.
			return filterType(s.Type, f, export)
		}
		filterType(s.Type, f, export)
		return true
	}
	return false
}

func filterCompositeLit(lit *ast.CompositeLit, filter ast.Filter, export bool) {
	n := len(lit.Elts)
	lit.Elts = filterExprList(lit.Elts, filter, export)
	if len(lit.Elts) < n {
		lit.Incomplete = true
	}
}

func filterExprList(list []ast.Expr, filter ast.Filter, export bool) []ast.Expr {
	j := 0
	for _, exp := range list {
		switch x := exp.(type) {
		case *ast.CompositeLit:
			filterCompositeLit(x, filter, export)
		case *ast.KeyValueExpr:
			if x, ok := x.Key.(*ast.Ident); ok && !filter(x.Name) {
				continue
			}
			if x, ok := x.Value.(*ast.CompositeLit); ok {
				filterCompositeLit(x, filter, export)
			}
		}
		list[j] = exp
		j++
	}
	return list[0:j]
}

func filterIdentList(list []*ast.Ident, f ast.Filter) []*ast.Ident {
	j := 0
	for _, x := range list {
		if f(x.Name) {
			list[j] = x
			j++
		}
	}
	return list[0:j]
}

func filterType(typ ast.Expr, f ast.Filter, export bool) bool {
	switch t := typ.(type) {
	case *ast.Ident:
		return f(t.Name)
	case *ast.ParenExpr:
		return filterType(t.X, f, export)
	case *ast.ArrayType:
		return filterType(t.Elt, f, export)
	case *ast.StructType:
		if filterFieldList(t.Fields, f, export) {
			t.Incomplete = true
		}
		return len(t.Fields.List) > 0
	case *ast.FuncType:
		b1 := filterParamList(t.Params, f, export)
		b2 := filterParamList(t.Results, f, export)
		return b1 || b2
	case *ast.InterfaceType:
		if filterFieldList(t.Methods, f, export) {
			t.Incomplete = true
		}
		return len(t.Methods.List) > 0
	case *ast.MapType:
		b1 := filterType(t.Key, f, export)
		b2 := filterType(t.Value, f, export)
		return b1 || b2
	case *ast.ChanType:
		return filterType(t.Value, f, export)
	}
	return false
}

func filterParamList(fields *ast.FieldList, filter ast.Filter, export bool) bool {
	if fields == nil {
		return false
	}
	var b bool
	for _, f := range fields.List {
		if filterType(f.Type, filter, export) {
			b = true
		}
	}
	return b
}

func filterFieldList(fields *ast.FieldList, filter ast.Filter, export bool) (removedFields bool) {
	if fields == nil {
		return false
	}
	list := fields.List
	j := 0
	for _, f := range list {
		keepField := false
		if len(f.Names) == 0 {
			// anonymous field
			//name := fieldName(f.Type)
			//keepField = name != nil && filter(name.Name)
			keepField = true
		} else {
			n := len(f.Names)
			f.Names = filterIdentList(f.Names, filter)
			if len(f.Names) < n {
				removedFields = true
			}
			keepField = len(f.Names) > 0
		}
		if keepField {
			if export {
				filterType(f.Type, filter, export)
			}
			list[j] = f
			j++
		}
	}
	if j < len(list) {
		removedFields = true
	}
	fields.List = list[0:j]
	return
}

// fieldName assumes that x is the type of an anonymous field and
// returns the corresponding field name. If x is not an acceptable
// anonymous field, the result is nil.
func fieldName(x ast.Expr) *ast.Ident {
	switch t := x.(type) {
	case *ast.Ident:
		return t
	case *ast.SelectorExpr:
		if _, ok := t.X.(*ast.Ident); ok {
			return t.Sel
		}
	case *ast.StarExpr:
		return fieldName(t.X)
	}
	return nil
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
			for j := range obj.Names {
				if c, ok := checker.ObjectOf(obj.Names[j]).(*types.Const); ok {
					basic, ok := checker.TypeOf(obj.Names[j]).Underlying().(*types.Basic)
					if ok {
						e := analysis.GetConstant(basic, c.Val(), nil)
						if len(values) == 0 && j == 0 {
							values = append(values, parseData(e))
						} else {
							values[j] = parseData(e)
						}
					}
				}
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

			methods := parseMethods(object.Type(), &methodCache, 1, map[string]bool{}, true)
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
			} else {
				importPath, _ := strconv.Unquote(obj.Path.Value)
				name = path.Base(importPath)
			}
			var typeObj types.Object
			if obj.Name != nil {
				typeObj = checker.Info.Defs[obj.Name]
			} else {
				typeObj = checker.Info.Implicits[obj]
			}
			pkgname, ok := typeObj.(*types.PkgName)
			if ok {
				name = pkgname.Name()
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

func parseMethods(object types.Type, methodCache *typeutil.MethodSetCache, index int, marked map[string]bool, intuitionBool bool) []map[string]interface{} {
	setObj := methodCache.MethodSet(object)
	var set []*types.Selection
	if intuitionBool {
		set = typeutil.IntuitiveMethodSet(object, methodCache)
	} else {
		set = make([]*types.Selection, setObj.Len())
		for i := 0; i < setObj.Len(); i++ {
			set[i] = setObj.At(i)
		}
	}
	methods := []map[string]interface{}{}
	for _, sel := range set {
		if len(sel.Index()) > index {
			recv := sel.Obj().Type().(*types.Signature).Recv()
			var recvParseType map[string]interface{} = nil
			if recv != nil {
				recvParseType = parseType(recv.Type(), marked)
			}
			methods = append(methods, map[string]interface{}{
				"name":  sel.Obj().Name(),
				"type":  parseType(sel.Type(), marked),
				"recv":  recvParseType,
				"index": sel.Index(),
			})
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
				data["methods"] = parseMethods(named, &methodCache, 0, marked, true)
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
		methods := parseMethods(s, &methodCache, 0, marked, true)
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
		data["exprType"] = parseData(node.Type)
		data["type"] = parseType(checker.TypeOf(node), map[string]bool{})
	case *ast.ExprStmt, *ast.BlockStmt, *ast.IfStmt, *ast.BadStmt, *ast.EmptyStmt, *ast.LabeledStmt, *ast.SendStmt, *ast.IncDecStmt, *ast.GoStmt, ast.DeferStmt, *ast.ReturnStmt, *ast.BranchStmt, *ast.SelectStmt, *ast.CaseClause, *ast.SwitchStmt, *ast.ForStmt, *ast.RangeStmt, *ast.TypeSwitchStmt:
		data["location"] = parseLocation(node.(ast.Stmt).Pos())
	case *ast.DeclStmt:
		data["pos"] = parsePos(node.Pos())
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
			case *ast.CallExpr:
			case *ast.TypeAssertExpr:
			case *ast.MapType:
			default:
				fmt.Println("issue generic:", reflect.TypeOf(fun))
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
	obj := checker.ObjectOf(value)
	if obj != nil {
		if obj.Pkg() != nil && obj.Pkg().Scope().Lookup(obj.Name()) == obj {
			if obj.Pkg().Path() != "command-line-arguments" {
				data["objPath"] = obj.Pkg().Path()
			}
		}
	}
	if instance.Type != nil {
		data["type"] = parseType(instance.Type, map[string]bool{})
		if obj != nil {
			// find what the generic types will be
			data["objType"] = parseType(obj.Type(), map[string]bool{})
		}
	} else {
		if obj != nil {
			switch obj.(type) {
			case *types.TypeName:
				data["kind"] = int(ast.Typ)
			case *types.Var:
				data["kind"] = int(ast.Var)
			default:
			}
			data["type"] = parseType(obj.Type(), map[string]bool{})
		} else {
			data["type"] = parseType(checker.TypeOf(value), map[string]bool{})
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
			if len(expr.Value) > 1 {
				expr.Value = string(expr.Value[1 : len(expr.Value)-1])
			} else {
				expr.Value = ""
			}
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
			return basicLitFallback(expr)
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
		return basicLitFallback(expr)
	}
}

func parsePos(pos token.Pos) int {
	fpos := fset.PositionFor(pos, true)
	return fpos.Offset
}

func parseLocation(pos token.Pos) string {
	fpos := fset.PositionFor(pos, true)
	return fpos.Filename + "#L" + strconv.Itoa(fpos.Line)
}

func basicLitFallback(expr *ast.BasicLit) map[string]interface{} {
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
		if output == "+Inf" || output == "-Inf" {
			output = "0.0"
		}
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
