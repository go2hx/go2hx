package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"go/ast"
	"go/token"
	"strconv"
	"strings"

	//"strings"

	//"go/token"
	"io/ioutil"
	"os"
	"reflect"

	//"strings"
	"go.mongodb.org/mongo-driver/bson"
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
	//"math/rand": true,
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

var fset *token.FileSet

func main() {
	testBool := flag.Bool("test",false,"testing the go library in haxe")
	jsonBool := flag.Bool("json",false,"default is bson encoding")
	flag.Parse()
	args := flag.Args()
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
	encoding := "bson"
	data := parsePkgList(initial)
	data.Args = args
	var bytes []byte
	if *jsonBool {
		bytes,err =  json.MarshalIndent(data,"","    ")
		encoding = "json"
	}else{
		bytes,err =  bson.Marshal(data)
	}
	if err != nil {
		fmt.Println("encoding err:",err)
		return
	}
	os.Remove("export." + encoding)
	ioutil.WriteFile("export." + encoding,bytes,0644)
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
		fmt.Println("node:",reflect.TypeOf((node)))
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
			/*if value == nil {
				continue
			}
			data[field.Name] = value.Name*/
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
	var output interface{} = value.Value
	switch value.Kind {
	case token.INT:
		i,err := strconv.ParseInt(value.Value,0,64)
		if err != nil {
			j,err2 := strconv.ParseUint(value.Value,0,64)
			if err2 != nil {
				fmt.Println("parse int 64 error:",err2)
				fmt.Println("parse uint 64 error:",err2)
			}else{
				output = j
			}
		}else{
			output = i
		}
	case token.FLOAT:
		i,err := strconv.ParseFloat(value.Value,64)
		if err != nil {
			fmt.Println("parse float 64 error:",err)
		}
		output = i
	case token.CHAR:
		if output == `\` {
			output = `"\\"`
		}
	case token.STRING:
		output = strings.ReplaceAll(value.Value,`\`,"\\")
		output = string(value.Value[1:len(value.Value) - 1])
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
func parseFieldList(list []*ast.Field)[]map[string]interface{} {
	data := make([]map[string]interface{},0)
	for _,field := range list {
		data = append(data, parseField(field)...)
	}
	return data
}
func parseField(field *ast.Field)[]map[string]interface{} {
	data := make([]map[string]interface{},len(field.Names))
	ty := parseData(field.Type)
	for _,name := range field.Names {
		obj := make(map[string]interface{})
		obj["name"] = name.Name
		obj["type"] = ty
		//obj["tag"] = parseData(field.Tag)
		data = append(data, obj)
	}
	return data
}