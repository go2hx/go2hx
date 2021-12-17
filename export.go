package main

import (
	"encoding/binary"
	"encoding/json"
	"fmt"
	"go/ast"
	"go/importer"
	"go/token"
	"go/types"
	"io/ioutil"
	"net"
	"path/filepath"
	"runtime"
	"runtime/debug"
	"time"

	"go.mongodb.org/mongo-driver/bson"

	//"go/types"

	_ "embed"
	"os"
	"reflect"
	"strconv"
	"strings"

	"golang.org/x/tools/go/ast/astutil"
	"golang.org/x/tools/go/packages"
	"golang.org/x/tools/go/types/typeutil"
)

type stdgoListType struct {
	Stdgo []string `json:"stdgo"`
}

type dataType struct {
	Args []string      `json:"args"`
	Pkgs []packageType `json:"pkgs"`
}
type packageType struct {
	Path  string     `json:"path"`
	Name  string     `json:"name"`
	Files []fileType `json:"files"`
}
type fileType struct {
	Path     string                   `json:"path"`
	Location string                   `json:"location"`
	Decls    []map[string]interface{} `json:"decls"`
	Doc      map[string]interface{}   `json:"doc"`
}
type excludesType struct {
	Excludes []string `json:"excludes"`
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

//go:embed stdgo.json
var stdgoListBytes []byte

//go:embed excludes.json
var excludesBytes []byte

var fset *token.FileSet
var stdgoList map[string]bool

var excludes map[string]bool
var conf = types.Config{Importer: importer.Default()}
var marked map[string]bool //prevent infinite recursion of types
var checker *types.Checker
var typeHasher typeutil.Hasher
var logBool = false
var logBuffer = ""
var testBool = false
var externBool = false

func compile(params []string, excludesData excludesType) []byte {
	args := []string{}
	testBool = false
	logBool = false
	externBool = false
	logBuffer = ""
	for _, param := range params {
		switch param {
		case "-test", "--test":
			testBool = true
		case "-log", "--log":
			logBool = true
		case "-extern", "--extern", "-externs", "--externs":
			externBool = true
		default:
			args = append(args, param)
		}
	}
	bytes := []byte("null")
	localPath := args[len(args)-1]
	var err error
	if err != nil {
		throw(err.Error())
		return bytes
	}
	err = os.Chdir(localPath)
	args = args[0 : len(args)-1] //remove chdir
	if err != nil {
		throw(err.Error() + " = " + localPath + " args: " + strings.Join(args, ","))
		return bytes
	}

	cfg := &packages.Config{Mode: packages.NeedName |
		packages.NeedSyntax |
		packages.NeedImports | packages.NeedDeps |
		packages.NeedFiles | packages.NeedTypes | packages.NeedTypesInfo | packages.NeedModule}
	cfg.Tests = testBool
	cfg.Env = append(os.Environ(), "GOOS=js", "GOARCH=wasm", "CGO_ENABLED=0")
	initial, err := packages.Load(cfg, args...)
	cfg = nil
	if err != nil {
		throw("load error: " + err.Error())
		return []byte{}
	}
	//init
	methodCache = typeutil.MethodSetCache{}
	excludes = make(map[string]bool, len(excludesData.Excludes))
	for _, exclude := range excludesData.Excludes {
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
	data := parsePkgList(initial, excludes)
	//reset
	excludes = nil
	typeHasher = typeutil.Hasher{}
	methodCache = typeutil.MethodSetCache{}
	data.Args = args
	bytes, err = bson.Marshal(data)
	if err != nil {
		throw("encoding err: " + err.Error())
		return bytes
	}
	if logBool {
		os.Remove("log.txt")
		ioutil.WriteFile("log.txt", []byte(logBuffer), 0764)
	}
	return bytes
}

func log(a ...interface{}) {
	if !logBool {
		return
	}
	logBuffer += fmt.Sprintln(a...)
}

func main() {
	_ = make([]byte, 20<<20) //allocate 20 mb virtually
	args := os.Args
	port := args[len(args)-1]
	var excludesData excludesType
	var stdgoDataList stdgoListType
	var err error
	err = json.Unmarshal(excludesBytes, &excludesData)
	if err != nil {
		throw(err.Error())
	}
	err = json.Unmarshal(stdgoListBytes, &stdgoDataList)
	if err != nil {
		throw(err.Error())
	}
	stdgoList = make(map[string]bool, len(stdgoDataList.Stdgo))
	for _, stdgo := range stdgoDataList.Stdgo {
		stdgoList[stdgo] = true
	}

	conn, err := net.Dial("tcp", "127.0.0.1:"+port)
	if err != nil {
		throw("dial: " + err.Error())
		return
	}
	tick := 0
	for {
		input := make([]byte, 2056)
		c, err := conn.Read(input)
		tick++
		if c == 0 {
			if tick > 40 {
				return
			}
			time.Sleep(60 * time.Millisecond)
			continue
		}
		if err != nil {
			throw("read error: " + err.Error())
			return
		}
		input = input[:c]
		if string(input) == "exit" {
			return
		}
		tick = 0
		args := strings.Split(string(input), " ")
		data := compile(args, excludesData)
		length := len(data)
		buff := make([]byte, 8)
		binary.LittleEndian.PutUint64(buff, uint64(length))
		_, err = conn.Write(buff)
		if err != nil {
			throw("write length error: " + err.Error())
			return
		}
		_, err = conn.Write(data)
		data = nil
		input = nil
		if err != nil {
			throw("write error: " + err.Error())
			return
		}
		debug.FreeOSMemory()
		runtime.GC()
	}
}

func addExclude(pkg *packages.Package) {
	excludes[pkg.PkgPath] = true
}

func parseLocalPackage(pkg *packages.Package, excludes map[string]bool) {
	if excludes[pkg.PkgPath] {
		return
	}
	for _, val := range pkg.Imports {
		if excludes[val.PkgPath] || strings.HasPrefix(val.PkgPath, "internal") {
			continue
		}
		parseLocalPackage(val, excludes)
	}
	checker = types.NewChecker(&conf, pkg.Fset, pkg.Types, pkg.TypesInfo)
	for _, file := range pkg.Syntax {
		parseLocalFile(file, pkg)
	}
	checker = nil
}

func parseLocalFile(file *ast.File, pkg *packages.Package) {
	interfaceTypes := make(map[uint32]*ast.Ident)
	structTypes := make(map[uint32]*ast.Ident)
	continueBool := false
	count := 0
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
					name := node.Name.Name + "_" + funcName + "_" + strconv.Itoa(count)
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
			hash := typeHasher.Hash(t)
			name, exists := structTypes[hash]
			if !exists {
				name = ast.NewIdent("_struct_" + strconv.Itoa(countStruct))
				countStruct++
				structTypes[hash] = name
				//add to file
				gen := ast.GenDecl{}
				gen.Tok = token.FUNC //set local
				spec := ast.TypeSpec{}

				spec.Name = name
				spec.Type = node
				gen.Specs = []ast.Spec{&spec}
				file.Decls = append(file.Decls, &gen)

				var pos token.Pos = 0
				namedType := types.NewNamed(types.NewTypeName(pos, pkg.Types, name.Name, nil), t, nil)
				tv := types.TypeAndValue{}
				tv.Type = t
				//add
				pkg.TypesInfo.Defs[name] = namedType.Obj()
				pkg.TypesInfo.Types[name] = tv
				//replace
				for key, value := range pkg.TypesInfo.Defs {
					if value != nil && value.Type() == t {
						pkg.TypesInfo.Defs[key] = namedType.Obj()
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
			hash := typeHasher.Hash(t)
			name, exists := interfaceTypes[hash]
			if !exists {
				name = ast.NewIdent("_interface_" + strconv.Itoa(countInterface))
				countInterface++
				interfaceTypes[hash] = name
				//add to file
				gen := ast.GenDecl{}
				gen.Tok = token.FUNC //set local
				spec := ast.TypeSpec{}
				spec.Name = name
				spec.Type = node
				gen.Specs = []ast.Spec{&spec}
				file.Decls = append(file.Decls, &gen)

				var pos token.Pos = 0
				namedType := types.NewNamed(types.NewTypeName(pos, pkg.Types, name.Name, nil), t, nil)
				tv := types.TypeAndValue{}
				tv.Type = t
				//add
				pkg.TypesInfo.Defs[name] = namedType.Obj()
				pkg.TypesInfo.Types[name] = tv
				//replace
				for key, value := range pkg.TypesInfo.Defs {
					if value != nil && value.Type() == t {
						pkg.TypesInfo.Defs[key] = namedType.Obj()
					}
				}
			}
			cursor.Replace(name)
		}
		return true
	}
	file = astutil.Apply(file, apply, nil).(*ast.File)
}

func throw(str string) {
	panic(str)
}

func mergePackage(input *packages.Package, output *packages.Package) {
	files := make(map[string]*ast.File, len(input.Syntax))
	for i := 0; i < len(input.Syntax); i++ {
		path := filepath.Base(input.GoFiles[i])
		files[path] = input.Syntax[i]
	}
	if input != output {
		for i := 0; i < len(output.Syntax); i++ {
			path := filepath.Base(output.GoFiles[i])
			files[path] = output.Syntax[i]
		}
	}
	newFiles := []*ast.File{ast.MergePackageFiles(&ast.Package{Name: output.Name, Files: files}, ast.FilterImportDuplicates)}
	output.Syntax = newFiles
}

var countStruct = 0
var countInterface = 0

func parsePkgList(list []*packages.Package, excludes map[string]bool) dataType {
	for _, pkg := range list {
		mergePackage(pkg, pkg)
		if externBool {
			for _, file := range pkg.Syntax {
				ast.FileExports(file) // trim unexported fields
			}
		}
		i := 0
		for i < len(list) {
			if pkg == list[i] {
				i++
				continue
			}
			if pkg.PkgPath == list[i].PkgPath {
				mergePackage(list[i], pkg)
				list = append(list[:i], list[i+1:]...) // delete
			}
			i++
		}
	}
	typeHasher = typeutil.MakeHasher()
	countInterface = 0
	countStruct = 0
	for _, pkg := range list {
		parseLocalPackage(pkg, excludes)
	}
	//2nd pass
	data := dataType{}
	data.Pkgs = []packageType{}
	for _, pkg := range list {
		if excludes[pkg.PkgPath] {
			continue
		}
		addExclude(pkg)
		syntax := parsePkg(pkg)
		if len(syntax.Files) > 0 {
			data.Pkgs = append(data.Pkgs, syntax)
		}
		for _, val := range pkg.Imports { //imports
			if excludes[val.PkgPath] {
				continue
			}
			addExclude(pkg)
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
	data.Name = pkg.Name
	data.Path = pkg.PkgPath
	checker = types.NewChecker(&conf, pkg.Fset, pkg.Types, pkg.TypesInfo)
	name := pkg.Name
	if name == "main" {
		if pkg.PkgPath == "command-line-arguments" {
			name = filepath.Base(pkg.GoFiles[0])
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
	data.Doc = parseData(file.Doc)
	data.Path = path
	for _, decl := range file.Decls {
		obj := parseData(decl)
		data.Decls = append(data.Decls, obj)
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
			constants := make([]bool, len(obj.Names))
			for i := range constants {
				constants[i] = obj.Names[i].Obj.Kind.String() == "const"
			}
			values := make([]map[string]interface{}, len(obj.Values))
			for i := range obj.Values {
				values[i] = parseData(obj.Values[i])
			}
			data[i] = map[string]interface{}{
				"id":        "ValueSpec",
				"names":     parseIdents(obj.Names),
				"type":      parseData(obj.Type),
				"values":    values,
				"constants": constants,
				"doc":       parseData(obj.Comment),
			}
		case *ast.TypeSpec:
			named := checker.ObjectOf(obj.Name)
			if named == nil {
				continue
			}
			object := checker.ObjectOf(obj.Name)

			methods := parseMethods(object.Type(), &methodCache)

			data[i] = map[string]interface{}{
				"id":      "TypeSpec",
				"assign":  fset.Position(obj.Assign).Offset,
				"name":    parseData(obj.Name),
				"type":    parseData(obj.Type),
				"doc":     parseData(obj.Comment),
				"comment": parseData(obj.Comment),
				"methods": methods,
			}
		default:
			data[i] = parseData(obj)
		}
		data[i]["pos"] = fset.Position(obj.Pos()).Offset
		data[i]["end"] = fset.Position(obj.End()).Offset
	}
	return data
}

func parseMethods(object types.Type, methodCache *typeutil.MethodSetCache) []map[string]interface{} {
	set := typeutil.IntuitiveMethodSet(object, methodCache)
	methods := []map[string]interface{}{}
	for _, sel := range set {
		if len(sel.Index()) > 1 {
			methods = append(methods, map[string]interface{}{
				"name":  sel.Obj().Name(),
				"type":  parseType(sel.Type()),
				"recv":  parseType(sel.Recv()),
				"index": sel.Index(),
			})
		}
	}
	return methods
}

func parseType(node interface{}) map[string]interface{} {
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
		throw("data does not have id")
	}
	isVar := false
	switch data["id"] {
	case "Named":
		named := node.(*types.Named)
		isAlias := named.Obj().IsAlias()
		if isAlias { //alias is type X = Y, equivlant to a typedef
			data["underlying"] = parseType(named.Underlying())
			data["alias"] = true
			isVar = true
		} else {
			path := named.String()
			if !strings.HasPrefix(path, "syscall/") &&
				!strings.HasPrefix(path, "internal.") &&
				//!strings.Contains(path, "error") &&
				//!strings.HasPrefix(path, "reflect.") &&
				//!strings.HasPrefix(path, "runtime.") &&
				//!strings.HasPrefix(path, "sync.") &&
				!marked[path] {
				init := false
				if marked == nil {
					marked = make(map[string]bool)
					init = true
				}
				marked[path] = true
				data["underlying"] = parseType(named.Underlying())
				data["alias"] = false
				if init {
					marked = nil
				}
			}
			data["path"] = named.String()
		}
	case "Slice":
		s := node.(*types.Slice)
		data["elem"] = parseType(s.Elem())
	case "Struct":
		s := node.(*types.Struct)
		fields := make([]map[string]interface{}, s.NumFields())
		for i := 0; i < s.NumFields(); i++ {
			v := s.Field(i)
			fields[i] = map[string]interface{}{
				"name":     v.Name(),
				"type":     parseType(v.Type()),
				"embedded": v.Embedded(),
			}
		}
		data["fields"] = fields
	case "Interface":
		s := node.(*types.Interface)
		data["empty"] = s.Empty()
		data["methods"] = parseMethods(s, &methodCache)
	case "Pointer":
		s := node.(*types.Pointer)
		data["elem"] = parseType(s.Elem())
	case "Basic":
		s := node.(*types.Basic)
		data["kind"] = s.Kind() //is int
	case "Array":
		s := node.(*types.Array)
		data["elem"] = parseType(s.Elem())
		data["len"] = s.Len()
	case "Map":
		s := node.(*types.Map)
		data["elem"] = parseType(s.Elem())
		data["key"] = parseType(s.Key())
	case "Signature":
		s := node.(*types.Signature)
		data["variadic"] = s.Variadic()
		data["params"] = parseType(s.Params())
		data["results"] = parseType(s.Results())
		data["recv"] = parseType(s.Recv())
	case "Tuple":
		s := node.(*types.Tuple)
		data["len"] = s.Len()
		vars := make([]map[string]interface{}, s.Len())
		for i := 0; i < s.Len(); i++ {
			a := s.At(i)
			vars[i] = parseType(a)
		}
		data["vars"] = vars
	case "Var":
		s := node.(*types.Var)
		data["name"] = s.Name()
		data["type"] = parseType(s.Type())
		isVar = true
	case "Chan":
		s := node.(*types.Chan)
		data["elem"] = parseType(s.Elem())
		data["dir"] = s.Dir()
	default:
		throw("unknown parse type id: " + data["id"].(string))
	}
	if !isVar {
		t := node.(types.Type)
		data["hash"] = fmt.Sprint(typeHasher.Hash(t))
	}
	return data
}
func parseKind(val reflect.Value) interface{} {
	switch val.Kind() {
	case reflect.String:
		return val.String()
	case reflect.Ptr:
		return parseKind(reflect.New(val.Type().Elem()).Elem())
	case reflect.Int, reflect.Int8, reflect.Int16, reflect.Int32, reflect.Int64:
		return val.Int()
	case reflect.Uint, reflect.Uint8, reflect.Uint16, reflect.Uint32, reflect.Uint64:
		return val.Uint()
	case reflect.Slice:
		return reflect.New(val.Type().Elem()).Elem().Interface()
	case reflect.Bool:
		return val.Bool()
	case reflect.Struct:
		i := val.Interface()
		return parseType(&i)
	case reflect.Interface:
		if val.CanSet() {
			i := val.Interface()
			return parseType(&i)
		}
		return nil
	default:
		throw("unknown type kind: " + val.Kind().String())
		return nil
	}
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
			data[field.Name] = fset.PositionFor(value, true).Offset
		case token.Token:
			data[field.Name] = value.String()
		case *ast.InterfaceType, *ast.StructType, *ast.ArrayType, *ast.MapType, *ast.ChanType:
			data[field.Name] = parseData(value)
		case *ast.BasicLit:
			data[field.Name] = parseBasicLit(value)
		case *ast.BadExpr, *ast.Ellipsis, *ast.FuncLit, *ast.CompositeLit, *ast.ParenExpr:
			data[field.Name] = parseData(value)
		case *ast.SelectorExpr, *ast.IndexExpr, *ast.SliceExpr, *ast.TypeAssertExpr, *ast.CallExpr, *ast.StarExpr, *ast.UnaryExpr, *ast.KeyValueExpr:
			data[field.Name] = parseData(value)
		case *ast.ExprStmt:
			data[field.Name] = map[string]interface{}{
				"id":  "ExprStmt",
				"x":   parseData(value.X),
				"pos": fset.PositionFor(value.X.Pos(), true).Offset,
				"end": fset.PositionFor(value.X.End(), true).Offset,
			}
		case *ast.BadStmt, *ast.DeclStmt, *ast.EmptyStmt, *ast.LabeledStmt, *ast.SendStmt, *ast.IncDecStmt, *ast.GoStmt, ast.DeferStmt:
			data[field.Name] = parseData(value)
		case *ast.ReturnStmt, *ast.BranchStmt, *ast.SelectStmt:
			data[field.Name] = parseData(value)
		case *ast.BinaryExpr:
			obj := parseData(value)
			data[field.Name] = obj
		case *ast.BlockStmt, *ast.IfStmt, *ast.CaseClause, *ast.SwitchStmt, *ast.ForStmt, *ast.RangeStmt, *ast.TypeSwitchStmt, *ast.CommClause, *ast.FuncType: //in scopes
			data[field.Name] = parseData(value)
		case *ast.AssignStmt:
			data[field.Name] = parseData(value)
		case *ast.GenDecl:
			file := ast.File{}
			file.Decls = append(file.Decls, value)
			data[field.Name] = parseFile(&file, "")
		case *ast.Ident:
			data[field.Name] = parseIdent(value)
		case ast.ChanDir, bool, string, int: //is an int
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
		case *ast.Object: //skip
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
			var list []string
			if value == nil {
				list = []string{}
			} else {
				list = make([]string, len(value.List))
				for i := 0; i < len(list); i++ {
					list[i] = value.List[i].Text
				}
			}
			data[field.Name] = map[string]interface{}{
				"id":   "CommentGroup",
				"list": list,
			}
		default:
			throw("unknown parse data value: " + reflect.TypeOf(value).String())
		}
	}

	switch node := node.(type) {
	case *ast.CompositeLit, *ast.SelectorExpr, *ast.IndexExpr, *ast.Ellipsis:
		data["type"] = parseType(checker.TypeOf(node.(ast.Expr)))
	case *ast.InterfaceType, *ast.MapType, *ast.ArrayType, *ast.ChanType, *ast.FuncType, *ast.StructType:
		data["type"] = parseType(checker.TypeOf(node.(ast.Expr)))
	case *ast.TypeAssertExpr:
	case *ast.UnaryExpr:

	case *ast.BinaryExpr, *ast.CallExpr, *ast.SliceExpr, *ast.ParenExpr:
		data["type"] = parseType(checker.TypeOf(node.(ast.Expr)))
	case *ast.KeyValueExpr:
	case *ast.FuncDecl:
		data["pos"] = fset.Position(node.Pos()).Offset
		data["end"] = fset.Position(node.End()).Offset
	default:
	}
	return data
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
	kind := 0
	if value.Obj != nil {
		kind = int(value.Obj.Kind)
	}
	data := map[string]interface{}{
		"id":   "Ident",
		"name": value.Name,
		"kind": kind,
	}
	obj := checker.ObjectOf(value)
	if obj != nil {
		data["type"] = parseType(obj.Type())
	}
	return data
}
func parseBasicLit(value *ast.BasicLit) map[string]interface{} {
	output := ""
	raw := false
	switch value.Kind {
	case token.INT:
		i, err := strconv.ParseInt(value.Value, 0, 64)
		if err != nil {
			j, err2 := strconv.ParseUint(value.Value, 0, 64)
			if err2 != nil {
				k, err3 := strconv.ParseFloat(value.Value, 64)
				if err3 != nil {
					throw("parse uint/int 64 and float64 error: " + err3.Error())
				} else {
					output = fmt.Sprintf("%f", k) //decimal format
					//try hexadecimal format
					//uint64,int64,float64 as constant
					//untyped binary operations at compile time
				}
			} else {
				output = fmt.Sprint(j)
			}
		} else {
			output = fmt.Sprint(i)
		}
	case token.FLOAT:
		i, err := strconv.ParseFloat(value.Value, 64)
		if err != nil {
			throw("parse float 64 error: " + err.Error())
		}
		output = fmt.Sprint(i)
	case token.CHAR:
		if len(value.Value) >= 2 && value.Value[0:1] == `'` {
			value.Value = value.Value[1 : len(value.Value)-1]
		}
		output = value.Value
	case token.STRING:
		raw = value.Value[0:1] == "`"
		if len(value.Value) >= 2 && (value.Value[0:1] == `"` || raw) {
			value.Value = string(value.Value[1 : len(value.Value)-1])
		}
		output = value.Value
	case token.IMAG: //TODO: implement imaginary numbers (complex)
		output = value.Value[0 : len(value.Value)-1]
	}
	return map[string]interface{}{
		"id":    "BasicLit",
		"kind":  value.Kind.String(),
		"value": output,
		"raw":   raw,
		"type":  parseType(checker.TypeOf(value)),
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
			"id": "Ident",

			"name": name.Name,
		}
	}
	var tag map[string]interface{} = nil
	if field.Tag != nil {
		tag = parseBasicLit(field.Tag)
	}
	return map[string]interface{}{
		//"doc": parseData(field.Doc)
		"names": names,
		"type":  parseData(field.Type),
		"tag":   tag,
		//"comment": parseData(field.Comment)
	}
}
