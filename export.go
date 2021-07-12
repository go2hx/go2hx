package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"go/ast"
	"go/importer"
	"go/token"
	"go/types"

	//"go/types"
	"io/ioutil"
	"os"
	"path/filepath"
	"reflect"
	"strconv"
	"strings"

	"golang.org/x/tools/go/ast/astutil"
	"golang.org/x/tools/go/packages"
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

var fset *token.FileSet
var excludes map[string]bool
var stdgoList map[string]bool
var interfaces []interfaceData

func main() {
	//exclude types system
	excludesBytes, err := ioutil.ReadFile("excludes.json")
	if err != nil {
		fmt.Println(err)
		return
	}
	stdgoListBytes, err := ioutil.ReadFile("stdgo.json")
	var excludesData excludesType
	var stdgoDataList stdgoListType
	err = json.Unmarshal(excludesBytes, &excludesData)
	if err != nil {
		panic(err.Error())
	}

	err = json.Unmarshal(stdgoListBytes, &stdgoDataList)
	if err != nil {
		panic(err.Error())
	}
	stdgoList = make(map[string]bool, len(stdgoDataList.Stdgo))
	for _, stdgo := range stdgoDataList.Stdgo {
		stdgoList[stdgo] = true
	}
	//flags
	testBool := flag.Bool("test", false, "testing the go library in haxe")
	identBool := flag.Bool("ident", false, "ident json")
	os.Remove("export.json")
	flag.Parse() //help stops the program here
	args := flag.Args()
	localPath := args[len(args)-1]
	cwd, err := os.Getwd()
	if err != nil {
		fmt.Println(err)
		return
	}
	err = os.Chdir(localPath)
	if err != nil {
		fmt.Println(err)
		return
	}
	args = args[0 : len(args)-1] //remove chdir

	//args = args[0:10]

	cfg := &packages.Config{Mode: packages.NeedName |
		packages.NeedSyntax | packages.NeedDeps |
		packages.NeedImports | packages.NeedTypes |
		packages.NeedFiles | packages.NeedTypes | packages.NeedTypesInfo}
	cfg.Tests = *testBool
	cfg.Env = append(os.Environ(), "GOOS=linux", "GOARCH=arm")
	initial, err := packages.Load(cfg, args...)
	if err != nil {
		fmt.Println("load error:", err)
		return
	}
	excludes = make(map[string]bool, len(excludesData.Excludes))
	for _, exclude := range excludesData.Excludes {
		excludes[exclude] = true
	}
	//parse interfaces 1st past
	for _, pkg := range initial {
		parseInterface(pkg)
	}
	//2nd pass

	excludes = make(map[string]bool, len(excludesData.Excludes))
	for _, exclude := range excludesData.Excludes {
		excludes[exclude] = true
	}

	data := parsePkgList(initial)

	data.Args = args
	var bytes []byte
	if *identBool {
		bytes, err = json.MarshalIndent(data, "", "    ")
	} else {
		bytes, err = json.Marshal(data)
	}
	if err != nil {
		fmt.Println("encoding err:", err)
		return
	}
	err = os.Chdir(cwd)
	if err != nil {
		fmt.Println(err)
		return
	}
	ioutil.WriteFile("export.json", bytes, 0644)
}

func parseFileInterface(file *ast.File, pkgPath string, pkg *packages.Package) []interfaceData {
	interfaces := []interfaceData{}
	isMain := pkgPath == "main"
	if isMain {
		pkgPath = "main__" + file.Name.Name
	}
	count := 0
	interfaceTypes := make(map[string]*ast.Ident)
	_ = count
	_ = interfaceTypes
	node := astutil.Apply(file,func (cursor *astutil.Cursor) bool {
		x := cursor.Node()
		switch cursor.Parent().(type) {
		case *ast.TypeSpec:
			return false
		}
		_ = x
		switch x := x.(type) {
			case *ast.InterfaceType: //grab interface type
				if x.Methods == nil || x.Methods.NumFields() == 0 {
					return false
				}
				t := checker.TypeOf(x)
				if t == nil {
					return false
				}
				name,exists := interfaceTypes[t.String()]
				if !exists {
					name = ast.NewIdent("_s_" + strconv.Itoa(count))
					count++
					interfaceTypes[t.String()] = name
					//add to interfaces
					interfaces = append(interfaces, interfaceData{t.(*types.Interface), name.Name, pkgPath, false})
					//add to file
					gen := ast.GenDecl{}
					spec := ast.TypeSpec{}

					spec.Name = name
					inter := ast.InterfaceType{}
					inter.Methods = x.Methods
					spec.Type = ast.Expr(&inter)
					gen.Tok = token.TYPE
					gen.Specs = []ast.Spec{&spec}
					file.Decls = append(file.Decls, &gen)
					var pos token.Pos = 0
					typeName := types.NewTypeName(pos,pkg.Types,name.Name,t)
					pkg.TypesInfo.Defs[name] = types.NewNamed(typeName,t,nil).Obj()
					tv := types.TypeAndValue{}
					tv.Type = t
					pkg.TypesInfo.Types[name] = tv
				}
				cursor.Replace(name)
				return false
			default:
				return true
			}
			return true
	},nil)
	file = node.(*ast.File)
	for _, decl := range file.Decls { //typespec named interfaces
		switch decl := decl.(type) {
		case *ast.GenDecl:
			for _, spec := range decl.Specs {
				switch spec := spec.(type) {
				case *ast.TypeSpec:
					t := checker.TypeOf(spec.Type)
					switch t := t.(type) {
					case *types.Interface:
						if t.NumMethods() > 0 {
							exported := spec.Name.IsExported()
							if isMain {
								exported = false
							}
							interfaces = append(interfaces, interfaceData{t, spec.Name.Name, pkgPath, exported})
						}
						
					default:
					}
				default:
				}
			}
		default:
		}
	}
	return interfaces
}

func parseInterface(pkg *packages.Package) {
	for _, val := range pkg.Imports {
		if excludes[val.PkgPath] {
			continue
		}
		excludes[val.PkgPath] = true
		parseInterface(val)
	}
	conf := types.Config{
		Importer: importer.Default(),
		//DisableUnusedImportCheck: true,
	}
	checker = types.NewChecker(&conf, pkg.Fset, pkg.Types, pkg.TypesInfo)
	fmt.Println("new checker")
	for _,file := range pkg.Syntax {
		interfaces = append(interfaces, parseFileInterface(file,pkg.PkgPath,pkg)...)
	}
}

func parsePkgList(list []*packages.Package) dataType {
	data := dataType{}
	data.Pkgs = make([]packageType, len(list))
	for _, pkg := range list {
		syntax := parsePkg(pkg)
		if len(syntax.Files) > 1 {
			data.Pkgs = append(data.Pkgs, syntax)
		}
		for _, val := range pkg.Imports {
			if excludes[val.PkgPath] {
				continue
			}
			syntax := parsePkg(val)
			if len(syntax.Files) > 1 {
				data.Pkgs = append(data.Pkgs, syntax)
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
	data.Files = make([]fileType, len(pkg.Syntax))

	conf := types.Config{Importer: importer.Default()}
	checker = types.NewChecker(&conf, pkg.Fset, pkg.Types, pkg.TypesInfo)
	for i, file := range pkg.Syntax {
		data.Files = append(data.Files, parseFile(file, pkg.GoFiles[i]))
	}
	return data
}

func parseFile(file *ast.File, path string) fileType {
	data := fileType{}
	data.Location = path
	data.Doc = parseData(file.Doc)
	path = filepath.Base(path)
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
	//fmt.Println("list:",list)
	for i, obj := range list {
		data[i] = parseData(obj)
	}
	return data
}
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
			implements := []interfaceType{}
			named := checker.ObjectOf(obj.Name)
			if named == nil {
				continue
			}
			interfaces := interfaces
			for _, inter := range interfaces {
				if obj.Name.Name == inter.name && named.Pkg().Path() == inter.path {
					continue
				}
				if !inter.isExport && named.Pkg().Path() != inter.path {
					continue
				}
				object := checker.ObjectOf(obj.Name)
				if object != nil {
					b := types.Implements(types.NewPointer(object.Type()), inter.t)
					if b {
						implements = append(implements, interfaceType{inter.name, inter.path})
					}
				}
			}
			data[i] = map[string]interface{}{
				"id":        "TypeSpec",
				"assign":    fset.Position(obj.Assign).Offset,
				"name":      parseData(obj.Name),
				"type":      parseData(obj.Type),
				"doc":       parseData(obj.Comment),
				"comment":   parseData(obj.Comment),
				"implicits": implements,
			}
		default:
			data[i] = parseData(obj)
		}
		data[i]["pos"] = fset.Position(obj.Pos()).Offset
		data[i]["end"] = fset.Position(obj.End()).Offset
	}
	return data
}

var marked map[string]bool //prevent infinite recursion of types
var checker *types.Checker
var remapTypeIdent map[int]string

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
		panic(data)
	}
	switch data["id"] {
	case "Named":
		named := node.(*types.Named)
		path := named.String()
		if !strings.HasPrefix(path, "syscall/") &&
			!strings.HasPrefix(path, "internal.") &&
			//!strings.Contains(path, "error") &&
			!strings.HasPrefix(path, "reflect.") &&
			!strings.HasPrefix(path, "runtime.") &&
			!strings.HasPrefix(path, "sync.") &&
			!marked[path] {
			init := false
			if marked == nil {
				marked = make(map[string]bool)
				init = true
			}
			marked[path] = true
			data["underlying"] = parseType(named.Underlying())
			if init {
				marked = nil
			}
		}
		data["path"] = path
		return data
	case "Slice":
		s := node.(*types.Slice)
		data["elem"] = parseType(s.Elem())
		return data
	case "Struct":
		s := node.(*types.Struct)
		fields := make([]map[string]interface{}, s.NumFields())
		for i := 0; i < s.NumFields(); i++ {
			v := s.Field(i)
			fields[i] = map[string]interface{}{
				"name": v.Name(),
				"type": parseType(v.Type()),
			}
		}
		data["fields"] = fields
		return data
	case "Interface":
		s := node.(*types.Interface)
		data["numMethods"] = s.NumMethods()
		data["empty"] = s.Empty()
		return data
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
	case "Chan":
		s := node.(*types.Chan)
		data["elem"] = parseType(s.Elem())
		data["dir"] = s.Dir()
	default:
		fmt.Println("unknown parse type id:", data["id"])
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
		fmt.Println("unknown type kind:", val.Kind())
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
			data[field.Name] = fset.PositionFor(value,true).Offset
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
			fmt.Println("unknown parse data value:", reflect.TypeOf(value))
		}
	}
	switch node := node.(type) {
	case *ast.CompositeLit:
	case *ast.SelectorExpr:
		data["type"] = parseType(checker.TypeOf(node))
	case *ast.IndexExpr:
		data["type"] = parseType(checker.TypeOf(node))
	case *ast.Ellipsis:
		data["type"] = parseType(checker.TypeOf(node.Elt))
	case *ast.ParenExpr:
		data["type"] = parseType(checker.TypeOf(node.X))
	case *ast.InterfaceType, *ast.MapType, *ast.ArrayType, *ast.ChanType, *ast.FuncType, *ast.StructType:
		data["type"] = parseType(checker.TypeOf(node.(ast.Expr)))
	case *ast.SliceExpr:
		data["type"] = parseType(checker.TypeOf(node))
	case *ast.TypeAssertExpr:
	case *ast.StarExpr:
		data["type"] = parseType(checker.TypeOf(node))
	case *ast.CallExpr:
		data["type"] = parseType(checker.TypeOf(node))
	case *ast.UnaryExpr:
		data["type"] = parseType(checker.TypeOf(node))
	case *ast.BinaryExpr:
		data["type"] = parseType(checker.TypeOf(node))
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
		list[i] = map[string]interface{}{
			"id":   "Ident",
			"type": parseType(checker.TypeOf(value[i])),
			"name": value[i].Name,
		}
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
	obj := checker.ObjectOf(value)
	if obj != nil {
		data["type"] = parseType(obj.Type())
	}
	return data
}
func parseBasicLit(value *ast.BasicLit) map[string]interface{} {
	output := ""
	switch value.Kind {
	case token.INT:
		i, err := strconv.ParseInt(value.Value, 0, 64)
		if err != nil {
			j, err2 := strconv.ParseUint(value.Value, 0, 64)
			if err2 != nil {
				fmt.Println("parse int 64 error:", err2)
				fmt.Println("parse uint 64 error:", err2)
			} else {
				output = fmt.Sprint(j)
			}
		} else {
			output = fmt.Sprint(i)
		}
	case token.FLOAT:
		i, err := strconv.ParseFloat(value.Value, 64)
		if err != nil {
			fmt.Println("parse float 64 error:", err)
		}
		output = fmt.Sprint(i)
	case token.CHAR:
		if len(value.Value) >= 2 && value.Value[0:1] == `'` {
			value.Value = value.Value[1 : len(value.Value)-1]
		}
		output = fmt.Sprint(value.Value)
	case token.STRING:
		if len(value.Value) >= 2 && value.Value[0:1] == `"` {
			value.Value = string(value.Value[1 : len(value.Value)-1])
		}
		output = fmt.Sprint(value.Value)
	case token.IMAG: //TODO: implement imaginary numbers (complex)
		output = value.Value[0 : len(value.Value)-1]
	}
	return map[string]interface{}{
		"id":    "BasicLit",
		"kind":  value.Kind.String(),
		"value": output,
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
