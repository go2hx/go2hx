package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"go/ast"
	"go/token"
	"io/ioutil"
	"os"
	"reflect"
	"strconv"
	"strings"

	"golang.org/x/tools/go/packages"
)
type dataType struct {
	Args []string `json:"args"`
	Pkgs []packageType `json:"pkgs"`
}
type packageType struct {
	Path string `json:"path"`
	Name string `json:"name"`
	Files []fileType `json:"files"`
}
type fileType struct {
	Path string `json:"path"`
	Decls []map[string]interface{} `json:"decls"`
}
type ExcludesType struct {
	Excludes []string `json:"excludes"`
}
var excludes map[string]bool

var fset *token.FileSet

func main() {
	//exclude types system
	excludesBytes,err := ioutil.ReadFile("excludes.json")
	if err != nil {
		fmt.Println(err)
		return
	}
	var excludesData ExcludesType
	err = json.Unmarshal(excludesBytes,&excludesData)
	if err != nil {
		fmt.Println(err)
	}
	excludes = make(map[string]bool,len(excludesData.Excludes))
	for _,exclude := range excludesData.Excludes {
		excludes[exclude] = true
	}
	//flags
	testBool := flag.Bool("test",false,"testing the go library in haxe")
	flag.Parse()
	args := flag.Args()
	cwd := args[len(args) - 1]
	rootPath,err := os.Getwd()
	if err != nil {
		fmt.Println(err)
		return
	}
	err = os.Chdir(cwd)
	if err != nil {
		fmt.Println(err)
		return
	}
	args = args[0:len(args) - 1] //remove chdir
	cfg := &packages.Config{Mode: packages.NeedName |
		packages.NeedSyntax | packages.NeedDeps |
		packages.NeedImports | packages.NeedTypes |
		packages.NeedTypesInfo | packages.NeedFiles}
	cfg.Tests = *testBool
	initial,err := packages.Load(cfg,args...)
	if err != nil {
		fmt.Println("load error:", err)
		return
	}
	err = os.Chdir(rootPath)
	if err != nil {
		fmt.Println(err)
		return
	}
	data := parsePkgList(initial)
	data.Args = args
	bytes,err :=  json.MarshalIndent(data,"","    ")
	if err != nil {
		fmt.Println("encoding err:",err)
		return
	}
	os.Remove("export.json")
	ioutil.WriteFile("export.json",bytes,0644)
}
func parsePkgList (list []*packages.Package) dataType {
	data := dataType{}
	data.Pkgs = make([]packageType, len(list))
	for _,pkg := range list {
		data.Pkgs = append(data.Pkgs, parsePkg(pkg))
		for _,val := range pkg.Imports {
			if excludes[val.Name] {
				continue
			}
			data.Pkgs = append(data.Pkgs, parsePkg(val))
		}
	}
	return data
}

func parsePkg (pkg *packages.Package) packageType {
	fset = pkg.Fset
	data := packageType{}
	data.Name = pkg.Name
	data.Path = pkg.PkgPath
	data.Files = make([]fileType, len(pkg.Syntax))
	for i,file := range pkg.Syntax {
		data.Files[i] = parseFile(file,pkg.GoFiles[i])
	}
	return data
}

func parseFile (file *ast.File, path string) fileType {
	data := fileType{}
	data.Path = path
	for _,decl := range file.Decls {
		data.Decls = append(data.Decls,parseData(decl))
	}
	return data
}
func parseBody(list []ast.Stmt) []map[string]interface{} {
	data := make([]map[string]interface{},len(list))
	for i,obj := range list {
		data[i] = parseData(obj)
	}
	return data
}
func parseExprList(list []ast.Expr) []map[string]interface{} {
	data := make([]map[string]interface{},len(list))
	//fmt.Println("list:",list)
	for i,obj := range list {
		data[i] = parseData(obj)
	}
	return data
}
func parseSpecList(list []ast.Spec) []map[string]interface{} {
	data := make([]map[string]interface{},len(list))
	for i,obj := range list {
		data[i] = parseData(obj)
	}
	return data
}
func parseData(node ast.Node) map[string]interface{} {
	data := make(map[string]interface{})
	data["id"] = getId(node)
	switch node := node.(type) {
	case *ast.BasicLit:
		return parseBasicLit(node)
	case *ast.Ident:
		return parseIdent(node)
	default:
		//fmt.Println("node:",reflect.TypeOf((node)))
	}
	e := reflect.Indirect(reflect.ValueOf(node))
	if !e.IsValid() {
		return data
	}
	et := e.Type()
	for i := 0; i < et.NumField(); i++ {
		field,val := et.Field(i),e.Field(i)
		field.Name = strings.ToLower(string(field.Name[:1])) + string(field.Name[1:])
		_ = field
		value := val.Interface()
		switch value := value.(type) {
		case nil:
		case token.Pos:
		case token.Token:
			data[field.Name] = value.String()
		case *ast.ArrayType,*ast.StructType,*ast.FuncType,*ast.InterfaceType,*ast.MapType,*ast.ChanType:
			data[field.Name] = parseData(value.(ast.Node))
		case *ast.BasicLit:
			data[field.Name] = parseBasicLit(value)
		case *ast.BadExpr,*ast.Ellipsis,*ast.FuncLit,*ast.CompositeLit,*ast.ParenExpr:
			data[field.Name] = parseData(value.(ast.Node))
		case *ast.SelectorExpr,*ast.IndexExpr,*ast.SliceExpr,*ast.TypeAssertExpr,*ast.CallExpr,*ast.StarExpr,*ast.UnaryExpr,*ast.BinaryExpr,*ast.KeyValueExpr:
			data[field.Name] = parseData(value.(ast.Node))
		case *ast.BadStmt,*ast.DeclStmt,*ast.EmptyStmt,*ast.LabeledStmt,*ast.ExprStmt,*ast.SendStmt,*ast.IncDecStmt,*ast.AssignStmt,*ast.GoStmt,ast.DeferStmt:
			data[field.Name] = parseData(value.(ast.Node))
		case *ast.ReturnStmt,*ast.BranchStmt,*ast.BlockStmt,*ast.IfStmt,*ast.CaseClause,*ast.SwitchStmt,*ast.TypeSwitchStmt,*ast.CommClause,*ast.SelectStmt,*ast.ForStmt,*ast.RangeStmt:
			data[field.Name] = parseData(value.(ast.Node))
		case *ast.GenDecl:
			file := ast.File{}
			file.Decls = append(file.Decls, value)
			data[field.Name] = parseFile(&file,"")
		case *ast.Ident:
			data[field.Name] = parseIdent(value)
		case ast.ChanDir: //is an int
			data[field.Name] = value
		case bool:
			data[field.Name] = value
		case string:
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
			list := make([]string,len(value))
			for i := range value {
				list[i] = value[i].Name
			}
			data[field.Name] = list
		case []ast.Ident:
			list := make([]string,len(value))
			for i := range value {
				list[i] = value[i].Name
			}
			data[field.Name] = list
		case *ast.Scope:
		case *ast.CommentGroup: //TODO: figure out comments
		default:
			fmt.Println(reflect.TypeOf(value))
		}
	}
	return data
}
func parseIdent(value *ast.Ident) map[string]interface{} {
	if value == nil {
		return nil
	}
	return map[string]interface{}{
		"id": "Ident",
		"name": value.Name,
	}
}
func parseBasicLit(value *ast.BasicLit) map[string]interface{} {
	output := ""
	switch value.Kind {
	case token.INT:
		i,err := strconv.ParseInt(value.Value,0,64)
		if err != nil {
			j,err2 := strconv.ParseUint(value.Value,0,64)
			if err2 != nil {
				fmt.Println("parse int 64 error:",err2)
				fmt.Println("parse uint 64 error:",err2)
			}else{
				output = fmt.Sprint(j)
			}
		}else{
			output = fmt.Sprint(i)
		}
	case token.FLOAT:
		i,err := strconv.ParseFloat(value.Value,64)
		if err != nil {
			fmt.Println("parse float 64 error:",err)
		}
		output = fmt.Sprint(i)
	case token.CHAR:
		if value.Value == `\` {
			value.Value = `"\\"`
		}
		output = fmt.Sprint(value.Value)
	case token.STRING:
		value.Value = strings.ReplaceAll(value.Value,`\`,"\\")
		value.Value = string(value.Value[1:len(value.Value) - 1])
		output = fmt.Sprint(value.Value)
	}
	return map[string]interface{}{
		"id": "BasicLit",
		"kind": value.Kind.String(),
		"value": output,
	}
}
func getId(obj interface{}) string {
	if obj == nil {
		return ""
	}
	id := reflect.TypeOf(obj).Elem().Name()
	return id
}
func parseFieldList(list []*ast.Field)map[string]interface{} {
	data := make([]map[string]interface{},len(list))
	for _,field := range list {
		data = append(data,parseField(field))
	}
	//fmt.Println("data:",data,"len",len(data))
	return map[string]interface{}{
		"id": "FieldList",
		"list": data,
	}
}
func parseField(field *ast.Field)map[string]interface{} {
	names := make([]map[string]interface{},len(field.Names))
	for i,name := range field.Names {
		names[i] = map[string]interface{}{
			"id": "Ident",
			"type": nil,
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
		"type": parseData(field.Type),
		"tag": tag,
		//"comment": parseData(field.Comment)
	}
}