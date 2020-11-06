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
	"os/exec"
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
	Params  []string `json:"params"`
	Results []string `json:"results"`
	Body []string `json:"body"`
}
type varType struct {
	Name     string `json:"name"`
	Constant bool   `json:"constant"`
	Exported bool   `json:"exported"`
	Type     string `json:"type"`
	Value    string `json:"value"`
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
var replaceMap = map[string]string{}
var exportData = jsonData{}
var debugComment = true
var asserted = ""

const debug = true

func main() {
	bytes, err := ioutil.ReadFile("excludes.json")
	var exclude_data = excludeJSON{}
	//replaceMap["int64"] = ""
	types := []string{"float","int","string","bool"}
	for _,ty := range types {
		replaceMap[ty] = strings.Title(ty)
	}
	replaceMap["nill"] = "null"
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
	
	out,err := exec.Command("haxe","build.hxml").Output()
	if err != nil {
		fmt.Println(err)
		return
	}
	fmt.Println(string(out[:]))
}
func load(args ...string) {
	inital, err := packages.Load(cfg, args...)
	if err != nil {
		fmt.Fprintf(os.Stderr, "load: %v\n", err)
		return
	}
	for _, pkg := range inital {
		dataPkg := packageType{}
		str := strings.Replace(pkg.PkgPath,".","_",-1)
		str = strings.Replace(str,"-","_",-1)
		array := strings.Split(str,"/")
		for i,_ := range array {
			array[i] = reserved(array[i])
		}
		pkg.PkgPath = strings.Join(array,"/")
		
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
										v.Value = parseExpr(spec.Values[i],false) //as to not add semicolon
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
func addSemicolon (obj interface{}, init bool) string {
	if init {
		buffer := strings.Builder{}
		buffer.WriteString(";")
		buffer.WriteString(addDebug(obj))
		return buffer.String()
	}
	return ""
}
func addDebug (obj interface {}) string {
	buffer := strings.Builder{}
	if debugComment {
		buffer.WriteString("//")
		buffer.WriteString(reflect.TypeOf(obj).String())
		buffer.WriteString("\n")
		return buffer.String()
	}
	return buffer.String()
}
func parseStatement (stmt ast.Stmt, init bool) []string {
	body := []string{}
	switch stmt := stmt.(type) {
		case *ast.ExprStmt:
			body = append(body,parseExpr(stmt.X,init))
		case *ast.ReturnStmt:
			body = append(body,"return;")
		case *ast.TypeSwitchStmt:
			fmt.Println("assign",reflect.TypeOf(stmt.Assign))
			buffer := strings.Builder{}
			buffer.WriteString("{\n")
			if stmt.Init != nil {
				buffer.WriteString(strings.Join(parseStatement(stmt.Init,true),"\n"))
			}
			asserted = ""
			buffer.WriteString(strings.Join(parseStatement(stmt.Assign,true),""))
			def := ast.CaseClause{}
			setDefault := false
			first := true
			for _,stmt := range stmt.Body.List {
				switch stmt := stmt.(type) {
					case *ast.CaseClause:
						if len(stmt.List) == 0 {
							def = *stmt
							setDefault = true
							continue
						}
						if !first {
							buffer.WriteString("else ")
						}
						buffer.WriteString(caseAsIf(stmt,asserted))
					default:
						fmt.Println("switch-type",reflect.TypeOf(stmt))
				}
				first = false
			}
			if setDefault {
				if len(stmt.Body.List) > 1 {
					buffer.WriteString("else ")
				}
				buffer.WriteString(caseAsIf(&def,""))
			}
			buffer.WriteString("}")
			body = append(body,buffer.String())
		case *ast.SwitchStmt:
			buffer := strings.Builder{}
			if stmt.Init != nil {
				buffer.WriteString("{")
				buffer.WriteString(strings.Join(parseStatement(stmt.Init,true),"\n"))
			}
			if stmt.Tag == nil {
				//if statements
				def := ast.CaseClause{}
				setDefault := false
				first := true
				for _,stmt := range stmt.Body.List {
					switch stmt := stmt.(type) {
						case *ast.CaseClause:
							if len(stmt.List) == 0 {
								def = *stmt
								setDefault = true
								continue
							}
							if !first {
								buffer.WriteString("else ")
							}
							buffer.WriteString(caseAsIf(stmt,""))
						default:
							fmt.Println("switch-if",reflect.TypeOf(stmt))
					}
					first = false
				}
				if setDefault {
					if len(stmt.Body.List) > 1 {
						buffer.WriteString("else ")
					}
					buffer.WriteString(caseAsIf(&def,""))
				}
			}else{
				//actual switch
				buffer.WriteString("switch(")
				buffer.WriteString(parseExpr(stmt.Tag,false))
				buffer.WriteString(") {\n")
				//body
				buffer.WriteString(strings.Join(parseBody(stmt.Body.List),"\n"))
				buffer.WriteString("}")
			}
			if stmt.Init != nil {
				buffer.WriteString("}")
			}
			body = append(body,buffer.String())
		case *ast.DeclStmt:
			switch stmt := stmt.Decl.(type) {
				case *ast.GenDecl:
					for _, spec := range stmt.Specs {
						switch spec := spec.(type) {
							case *ast.ValueSpec:
								buffer := strings.Builder{}
								for i,_ := range spec.Names {
									//spec.Names[i].Obj.Kind
									buffer.WriteString("var ")
									buffer.WriteString(spec.Names[i].Name)
									if spec.Type != nil {
										buffer.WriteString(":")
										buffer.WriteString(parseExpr(spec.Type,false))
									}
									if len(spec.Values) > i {
										buffer.WriteString(" = ")
										buffer.WriteString(parseExpr(spec.Values[i],false))
									}else{
										buffer.WriteString(" = ")
										buffer.WriteString(getDefaultType(spec.Type))
									}
									buffer.WriteString(addSemicolon(stmt,init))
								}
								body = append(body,buffer.String())
							default:
								fmt.Println("decl not found",reflect.TypeOf(spec))
						}
					}
				default:
					fmt.Println("gen decl not found",reflect.TypeOf(stmt))
			}
		case *ast.AssignStmt: //short variable declaration.
			buffer := strings.Builder{}
			buffer.WriteString(parseAssignStatement(stmt,init))
			body = append(body,buffer.String())
		case *ast.ForStmt:
			//fmt.Println("post",reflect.TypeOf(stmt.Post))
			
			buffer := strings.Builder{}
			if stmt.Init != nil {
				buffer.WriteString("{")
				buffer.WriteString(parseAssignStatement(stmt.Init.(*ast.AssignStmt),true))
			}
			if stmt.Post != nil {
				buffer.WriteString("cfor(")
			}else{
				buffer.WriteString("while(")
			}
			if stmt.Cond != nil {
				buffer.WriteString(parseExpr(stmt.Cond,false))
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
			buffer.WriteString(parseExpr(stmt.Cond,false))
			buffer.WriteString(") {")
			buffer.WriteString(strings.Join(parseBody(stmt.Body.List),"\n"))
			buffer.WriteString("}")
			if stmt.Else != nil {
				buffer.WriteString("else {")
				switch stmt := stmt.Else.(type) {
					case *ast.BlockStmt:
						buffer.WriteString(strings.Join(parseBody(stmt.List),"\n"))
					default:
						buffer.WriteString(strings.Join(parseStatement(stmt,true),"\n"))
				}
				buffer.WriteString("}")
			}
			if stmt.Init != nil {
				buffer.WriteString("}")
			}
			body = append(body,buffer.String())
		case *ast.CaseClause:
			//stmt.List
			buffer := strings.Builder{}
			if len(stmt.List) > 0 {
				buffer.WriteString("case ")
				buffer.WriteString(strings.Join(parseExprs(stmt.List,false),","))
			}else{
				buffer.WriteString("default")
			}
			buffer.WriteString(":\n")
			buffer.WriteString(strings.Join(parseBody(stmt.Body),"\n"))
			body = append(body,buffer.String())
		default:
			fmt.Println("statement not found",reflect.TypeOf(stmt))
			body = append(body,addDebug(stmt))
	}
	return body
}
func parseBody (stmts []ast.Stmt) []string {
	body := []string{}
	for _,stmt := range stmts {
		body = append(body,parseStatement(stmt,true)...)
	}
	return body
}
func parseAssignStatement(stmt *ast.AssignStmt,init bool) string {
	buffer := strings.Builder{}
	for i,_ := range stmt.Lhs {
		if stmt.Tok.String() == ":=" {
			buffer.WriteString("var ")
		}
		buffer.WriteString(parseExpr(stmt.Lhs[i],false))
		buffer.WriteString(" = ")
		buffer.WriteString(parseExpr(stmt.Rhs[i],false))
		buffer.WriteString(addSemicolon(stmt,init))
	}
	return buffer.String()
}
func removeParan(str string) string {
	return str[1 : len(str)-1]
}
func parseFields(list []*ast.Field) []string {
	array := []string{}
	for _, field := range list {
		buffer := strings.Builder{}
		switch ty := field.Type.(type) {
			case *ast.InterfaceType:
				
				/*buffer.WriteString("{")
				if ty.Methods.List != nil {
					
				}
				buffer.WriteString("}")*/
				fmt.Println("interfacetype list:",ty.Methods.List)
				buffer.WriteString("Any")
			default:
				_ = ty
				buffer.WriteString("Any")
				fmt.Println("parse field type not found",reflect.TypeOf(ty))
		}
		ty := buffer.String()
		buffer.Reset()

		for _,name := range field.Names {
			buffer.WriteString(parseExpr(name,false))
			buffer.WriteString(":")
			buffer.WriteString(ty)
		}

		array = append(array,buffer.String())
	}
	return array
}
func parseExprs (list []ast.Expr,init bool) []string {
	array := []string{}
	for _,expr := range list {
		array = append(array,parseExpr(expr,init))
	}
	return array
}
func parseExpr(expr ast.Expr,init bool) string {
	buffer := strings.Builder{}
	switch expr := expr.(type) {
		case *ast.ArrayType:
			name := parseExpr(expr.Elt,false)
			value,ok := replaceMap[name]
			if ok {
				name = value
			}
			buffer.WriteString("Array<")
			buffer.WriteString(name)
			buffer.WriteString(">")
		case *ast.FuncLit:
			buffer.WriteString("function(")
			if expr.Type.Params != nil {
				params := parseFields(expr.Type.Params.List)
				buffer.WriteString(strings.Join(params,","))
			}
			buffer.WriteString(")")
			if expr.Type.Results != nil {
				res := parseFields(expr.Type.Results.List)
				_ = res
			}
			buffer.WriteString("{")
			buffer.WriteString(strings.Join(parseBody(expr.Body.List),"\n"))
			buffer.WriteString("}")
		case *ast.BasicLit:
			buffer.WriteString(expr.Value)
		case *ast.BinaryExpr:
			buffer.WriteString(parseExpr(expr.X,false))
			//buffer.WriteString(" ")
			buffer.WriteString(expr.Op.String())
			//buffer.WriteString(" ")
			buffer.WriteString(parseExpr(expr.Y,false))
		case *ast.SelectorExpr: //1st class
			name := parseExpr(expr.X,false)
			//name := expr.X.(*ast.Ident).String()
			value,ok := replaceMap[name]
			if ok {
				name = value
			}
			buffer.WriteString(name)
			buffer.WriteString(".")
			sel := untitle(expr.Sel.Name)
			buffer.WriteString(sel)
		case *ast.Ident:
			name := expr.Name
			value,ok := replaceMap[name]
			if ok {
				name = value
			}
			buffer.WriteString(name)
		case *ast.CallExpr: //1st class
			switch init := expr.Fun.(type) {
				case *ast.Ident:
					name := init.Name
					value,ok := replaceMap[name]
					if ok {
						name = value
					}
					buffer.WriteString(name)
				default:
					buffer.WriteString(parseExpr(expr.Fun,false))
			}
			buffer.WriteString("(")
			buffer.WriteString(strings.Join(parseExprs(expr.Args,false),", "))
			buffer.WriteString(")")
			buffer.WriteString(addSemicolon(expr,init))
		case *ast.UnaryExpr: //3rd class
			op := expr.Op.String()
			if op != "*" && op != "&" {
				buffer.WriteString(op)
				buffer.WriteString(" ")
			}
			buffer.WriteString(parseExpr(expr.X,false))
		case *ast.TypeAssertExpr: //pass through
			buffer.WriteString(typeAssert(*expr,init))
		case *ast.IndexExpr:
			buffer.WriteString(parseExpr(expr.X,false))
			buffer.WriteString("[")
			buffer.WriteString(parseExpr(expr.Index,false))
			buffer.WriteString("]")
			/*switch ty := x.Obj.Type.(type) {
				case *ast.ArrayType:
					ty.
			}*/
		case *ast.CompositeLit:
			buffer.WriteString("[")
			buffer.WriteString(strings.Join(parseExprs(expr.Elts,false),","))
			buffer.WriteString("]")
		default:
			//fmt.Println("parse expr not found",reflect.TypeOf(expr))
			ast.Print(nil,expr)
			return addDebug(expr)
	}
	return buffer.String()
}
func getDefaultType(expr ast.Expr) string {
	switch expr := expr.(type) {
		case *ast.ArrayType:
			buffer := strings.Builder{}
			buffer.WriteString("[")
			switch l := expr.Len.(type) {
				case *ast.BasicLit:
					buffer.WriteString("for (i in 0...")
					buffer.WriteString(l.Value)
					buffer.WriteString(")")
			}
			buffer.WriteString(getDefaultType(expr.Elt))
			
			buffer.WriteString("]")
			return buffer.String()
		case *ast.Ident:
			switch expr.Name {
				case "int": return "0"
			}
			return ""
		default: 
			_ = expr
			return "null"
	}
}
func caseAsIf (stmt *ast.CaseClause,obj string) string {
	//stmt.List
	buffer := strings.Builder{}
	if len(stmt.List) > 0 {
		buffer.WriteString("if")
		buffer.WriteString("(")
		list := []string{}
		for _,stmt := range stmt.List {
			piece := strings.Builder{}
			if obj != "" {
				piece.WriteString("Std.isOfType(")
				piece.WriteString(obj)
				piece.WriteString(",")
			}
			piece.WriteString(parseExpr(stmt,false))
			if obj != "" {
				piece.WriteString(")")
			}
			list = append(list,piece.String())
		}
		buffer.WriteString(strings.Join(list,"||"))
		buffer.WriteString(") ")
	}
	buffer.WriteString("{\n")
	buffer.WriteString(strings.Join(parseBody(stmt.Body),"\n"))
	buffer.WriteString("}")
	return buffer.String()
}
func typeAssert(expr ast.TypeAssertExpr,init bool) string {
	buffer := strings.Builder{}
	//buffer.WriteString("Type.typeof(")
	asserted = parseExpr(expr.X,false)
	buffer.WriteString(asserted)
	//buffer.WriteString(")")
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
func reserved(str string) string {
	switch str {
		case "var","switch","for","if","else","case","using","final":
			return strings.Join([]string{str,"tmp"},"_")
		default:
			return str
	}
}