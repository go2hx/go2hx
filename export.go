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
	"go/token"
	"go/types"
	"net"
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

//go:embed stdgo.json
var stdgoListBytes []byte

//go:embed excludes.json
var excludesBytes []byte

var fset *token.FileSet
var stdgoList map[string]bool

var excludes map[string]bool
var conf = types.Config{Importer: importer.Default(), FakeImportC: true}
var checker *types.Checker

// var typeHasher typeutil.Hasher
var typeMap typeutil.Map
var typeMapIndex uint32 = 0
var hashMap map[uint32]map[string]interface{}
var testBool = false
var externBool = false

func compile(params []string, excludesData []string, index string, debug bool) []byte {
	args := []string{}
	testBool = false
	externBool = false
	for _, param := range params {
		switch param {
		case "-test", "--test":
			testBool = true
		case "-extern", "--extern", "-externs", "--externs":
			externBool = true
		default:
			args = append(args, param)
		}
	}

	b := []byte("null")
	localPath := args[len(args)-1]
	var err error
	if err != nil {
		panic(err.Error())
		return b
	}
	err = os.Chdir(localPath)
	args = args[0 : len(args)-1] //remove chdir
	if err != nil {
		panic(err.Error() + " = " + localPath + " args: " + strings.Join(args, ","))
		return b
	}
	cfg.Tests = testBool
	initial, err := packages.Load(cfg, &types.StdSizes{WordSize: 4, MaxAlign: 8}, args...)
	if err != nil {
		panic("load error: " + err.Error())
		return []byte{}
	}
	//init
	methodCache = typeutil.MethodSetCache{}
	//typeHasher = typeutil.MakeHasher()
	typeMap = typeutil.Map{}
	excludes = make(map[string]bool, len(excludesData))
	hashMap = make(map[uint32]map[string]interface{})
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
	//typeHasher = typeutil.Hasher{}
	//methodCache = typeutil.MethodSetCache{}
	data.Args = args
	if debug {
		b, _ = json.MarshalIndent(data, "", "  ")
		os.WriteFile("check.json", b, 0766)
		fmt.Println("create check.json")
	}
	b, err = json.Marshal(data)
	if err != nil {
		panic("encoding err: " + err.Error())
		return b
	}
	var buff bytes.Buffer
	w := zlib.NewWriter(&buff)
	_, err = w.Write(b)
	if err != nil {
		panic(err)
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
	BuildFlags: []string{"-tags", "netgo,purego,math_big_pure_go,compiler_bootstrap"}, // build tags
}

func main() {
	_ = make([]byte, 20<<20) // allocate 20 mb virtually
	cfg.Env = append(os.Environ(), "GOOS=js", "GOARCH=wasm", "CGO_ENABLED=0")
	args := os.Args
	port := args[len(args)-1]
	var excludesData []string
	var err error
	err = json.Unmarshal(excludesBytes, &excludesData)
	if err != nil {
		panic(err.Error())
	}
	list2 := make([]string, 150)
	err = json.Unmarshal(stdgoListBytes, &list2)
	if err != nil {
		panic(err.Error())
	}
	stdgoList = make(map[string]bool, len(list2))
	for _, s := range list2 {
		stdgoList[s] = true
	}
	_, err = strconv.Atoi(port)
	if err != nil { // not set to a port, test compile
		compile(args[1:], excludesData, "0", true)
		return
	}
	conn, err := net.Dial("tcp", "127.0.0.1:"+port)
	if err != nil {
		panic("dial: " + err.Error())
		return
	}
	defer conn.Close()
	for {
		input := make([]byte, 2056)
		c, err := conn.Read(input)
		if err != nil {
			panic("read error: " + err.Error())
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
			panic("write length error: " + err.Error())
			return
		}
		//fmt.Println("write data:", len(data))
		_, err = conn.Write(data)
		data = nil
		input = nil
		if err != nil {
			panic("write error: " + err.Error())
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
	parseLocalTypes(file, pkg)
	parseLocalConstants(file, pkg)
}

func parseLocalConstants(file *ast.File, pkg *packages.Package) {
	apply := func(cursor *astutil.Cursor) bool {
		switch node := cursor.Node().(type) {
		case *ast.BinaryExpr, *ast.Ident, *ast.UnaryExpr, *ast.SelectorExpr, *ast.ParenExpr, *ast.TypeAssertExpr:
			// constant folding
			typeAndValue := checker.Types[node.(ast.Expr)]
			if value := typeAndValue.Value; value != nil {
				basic := checker.TypeOf(node.(ast.Expr)).Underlying().(*types.Basic)
				var e ast.Expr
				_ = basic
				switch {
				case basic.Info()&types.IsInteger != 0:
					if basic.Kind() == types.Int64 || basic.Kind() == types.Uint64 || basic.Kind() == types.Uint || basic.Kind() == types.Int {
						if basic.Kind() == types.Int64 || basic.Kind() == types.Int {
							d, ok := constant.Int64Val(constant.ToInt(value))
							if !ok {
								panic("could not get exact int64: " + value.String())
							}
							e = &ast.BasicLit{Kind: token.INT, Value: fmt.Sprint(d)}
						} else {
							d, ok := constant.Uint64Val(constant.ToInt(value))
							if !ok {
								panic("could not get exact uint64: " + value.String())
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
				case basic.Info()&types.IsFloat != 0:
					f, _ := constant.Float64Val(value)
					e = &ast.BasicLit{Kind: token.FLOAT, Value: fmt.Sprint(f)}
				case basic.Info()&types.IsBoolean != 0:
					e = ast.NewIdent(strconv.FormatBool(constant.BoolVal(value)))
				case basic.Info()&types.IsComplex != 0:
					r, _ := constant.Float64Val(constant.Real(value))
					i, _ := constant.Float64Val(constant.Imag(value))
					x := &ast.BasicLit{Kind: token.FLOAT, Value: fmt.Sprint(r)}
					y := &ast.BasicLit{Kind: token.IMAG, Value: fmt.Sprint(i)}
					m := &ast.BinaryExpr{Op: token.ADD, X: x, Y: y}
					e = &ast.ParenExpr{X: m}
				case basic.Info()&types.IsString != 0:
					s := value.ExactString()
					e = &ast.BasicLit{Kind: token.STRING, Value: s}
				default:
					panic("unknown constant type: " + value.ExactString())
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
	files := make(map[string]*ast.File, len(pkg.Syntax))
	for i := 0; i < len(pkg.Syntax); i++ {
		path := filepath.Base(pkg.GoFiles[i])
		files[path] = pkg.Syntax[i]
	}
	newFiles := []*ast.File{ast.MergePackageFiles(&ast.Package{Name: pkg.Name, Files: files}, ast.FilterImportDuplicates)}
	pkg.Syntax = newFiles
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
		if externBool && !strings.HasSuffix(list[i].PkgPath, "_test") && !strings.HasSuffix(list[i].PkgPath, ".test") { // remove function bodies
			for _, file := range list[i].Syntax {
				for _, d := range file.Decls {
					switch f := d.(type) {
					case *ast.FuncDecl:
						f.Body = nil
					case *ast.GenDecl:
						for _, s := range f.Specs {
							switch s := s.(type) {
							case *ast.ValueSpec:
								_ = s
								//s.Values = nil
							default:
							}
						}
					default:
					}
				}
			}
		}
	}
	countInterface = 0
	countStruct = 0
	for _, pkg := range list {
		parseLocalPackage(pkg, excludes)
	}
	// 2nd pass
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
		for _, val := range pkg.Imports { // imports
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
	for _, obj := range pkg.TypesInfo.InitOrder {
		for _, v := range obj.Lhs {
			data.Order = append(data.Order, v.Name())
		}
	}
	data.Name = pkg.Name
	data.Path = pkg.PkgPath
	checker = types.NewChecker(&conf, pkg.Fset, pkg.Types, pkg.TypesInfo)
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
				"id":     "ValueSpec",
				"names":  parseIdents(obj.Names),
				"type":   parseData(obj.Type),
				"values": values,
				"doc":    parseCommentGroup(obj.Doc),
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
				"assign":  fset.Position(obj.Assign).Offset,
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
		data[i]["pos"] = fset.Position(obj.Pos()).Offset
		data[i]["end"] = fset.Position(obj.End()).Offset
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
		panic("data does not have id")
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
				params := make([]map[string]interface{}, named.TypeParams().Len())
				for i := 0; i < len(params); i++ {
					params[i] = parseType(named.TypeParams().At(i), marked)
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
		data["methods"] = parseMethods(s, &methodCache, 1, marked)
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
		panic("unknown parse type id: " + data["id"].(string))
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
			data[field.Name] = fset.PositionFor(value, true).Offset
		case token.Token:
			data[field.Name] = value.String()
		case *ast.InterfaceType, *ast.StructType, *ast.ArrayType, *ast.MapType, *ast.ChanType:
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
			panic("unknown parse data value: " + reflect.TypeOf(value).String())
		}
	}
	switch node := node.(type) {
	case *ast.CompositeLit:
	case *ast.SelectorExpr:
		typeAndValue := checker.Types[node.X.(ast.Expr)]
		typ := typeAndValue.Type
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
	case *ast.StarExpr, *ast.BinaryExpr, *ast.CallExpr, *ast.SliceExpr, *ast.ParenExpr:
		data["type"] = parseType(checker.TypeOf(node.(ast.Expr)), map[string]bool{})
	case *ast.KeyValueExpr:
	case *ast.FuncDecl:
		data["pos"] = fset.Position(node.Pos()).Offset
		data["end"] = fset.Position(node.End()).Offset
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

	obj := checker.ObjectOf(value)
	if obj != nil {
		data["type"] = parseType(obj.Type(), map[string]bool{})
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
					panic("parse uint/int 64 and float64 error: " + err3.Error())
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
		i, err := strconv.ParseFloat(value.Value, 64)
		if err != nil {
			panic("parse float 64 error: " + err.Error())
		}
		output = fmt.Sprint(i)
	case token.CHAR:
		if len(value.Value) >= 2 && value.Value[0:1] == `'` {
			value.Value = value.Value[1 : len(value.Value)-1]
		}
		output = value.Value
	case token.STRING:
		if len(value.Value) > 0 {
			raw = value.Value[0:1] == "`"
			if len(value.Value) >= 2 && (value.Value[0:1] == `"` || raw) {
				value.Value = string(value.Value[1 : len(value.Value)-1])
			}
		}
		output = value.Value
	case token.IMAG:
		i, err := strconv.ParseComplex(value.Value, 128)
		if err != nil {
			panic(err)
		}
		output = fmt.Sprint(imag(i)) + "i" + fmt.Sprint(real(i))
	}
	return map[string]interface{}{
		"id":    "BasicLit",
		"kind":  value.Kind.String(),
		"value": output,
		"raw":   raw,
		"type":  parseType(checker.TypeOf(value), map[string]bool{}),
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
