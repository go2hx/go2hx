package main

import (
	//"bytes"
	"flag"
	"fmt"
	"io/ioutil"
	//"os/exec"
	"reflect"
	"strings"
	"go.mongodb.org/mongo-driver/bson"

	//"go/token"
	//"go/types"
	//"go/constant"
	"os"

	//"go/parser"
	//"path/filepath"
	//"encoding/json"

	"strconv"

	"golang.org/x/tools/go/packages"

	//"golang.org/x/tools/go/ssa/ssautil"
	//"golang.org/x/tools/go/ast/inspector"
	"go/ast"
	//"golang.org/x/tools/go/ssa"
)

type excludeJSON struct {
	Excludes []string `json:"excludes"`
}
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
	Recv     string `json:"recv"`
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
	Name     string   `json:"name"`
	Exported bool     `json:"exported"`
	Fields   []string `json:"fields"`
	Def string        `json:"def"`
}

// Example demonstrates how to load the packages specified on the
// command line from source syntax.
var cfg = &packages.Config{Mode: packages.LoadAllSyntax, Tests: false}
var excludes = make(map[string]bool)
var replaceMap = map[string]string{}
var exportData = Data{}
var debugComment = false
var asserted = ""
var labels = []string{}


var replaceFunctionContext map[string]string
var deferStack []string

const debug = true

func main() {
	/*bytes, err := ioutil.ReadFile("excludes.json")
	var exclude_data = excludeJSON{}
	if err != nil {
		fmt.Println(err)
	} else {
		if json.Unmarshal(bytes, &exclude_data) == nil {
			for _, v := range exclude_data.Excludes {
				excludes[v] = true
			}
		}
	}*/
	types := []string{"float", "int", "string", "bool", "uint64", "byte", "int64", "int32"}
	for _, ty := range types {
		replaceMap[ty] = strings.Title(ty)
	}
	replaceMap["error"] = "std.Errors"
	replaceMap["nil"] = "null"
	// Examples: . , fmt, math, etc
	flag.Parse()
	args := flag.Args()
	load(args...)
	bytes, err := bson.Marshal(exportData)
	if err != nil {
		fmt.Println(err)
		return
	}
	os.Remove("export.bson")
	_ = ioutil.WriteFile("export.bson", bytes, 0644)

	/*out, err := exec.Command("haxe", "build.hxml").Output()
	if err != nil {
		fmt.Println(err)
		return
	}
	fmt.Println(string(out[:]))*/
}
func load(args ...string) {
	inital, err := packages.Load(cfg, args...)
	if err != nil {
		fmt.Fprintf(os.Stderr, "load: %v\n", err)
		return
	}
	for _, pkg := range inital {
		data := packageType{}
		str := strings.Replace(pkg.PkgPath, ".", "_", -1)
		str = strings.Replace(str, "-", "_", -1)
		array := strings.Split(str, "/")
		for i, _ := range array {
			array[i] = reserved(array[i])
		}
		pkg.PkgPath = strings.Join(array, "/")
		//fmt.Println("path:",pkg.PkgPath)
		data.PackagePath = pkg.PkgPath
		file := mergePackageFiles(pkg, !true)
		if file.Name != nil {
			data.Name = file.Name.Name
		}
		for _, decl := range file.Decls {
			//fmt.Println("inter", ast.Print(nil, decl))
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
							//fmt.Println("excludes", path, excludes[path])
							if !excludes[path] {
								load(path)
								excludes[path] = true
							}
							name := getName(path)
							replaceMap[imp[1]] = strings.Title(imp[1])
							replaceMap[name] = strings.Title(name)
						}
					case *ast.ValueSpec:
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
							ty.Fields = parseFields(structType.Fields.List)
						default:
							ty.Def = parseExpr(structType,false)
							//fmt.Println("type spec type unknown", reflect.TypeOf(structType))
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
				fn := funcType{}
				fn.Exported = decl.Name.IsExported()
				fn.Name = untitle(decl.Name.Name)
				replaceMap[decl.Name.Name] = fn.Name
				//fmt.Println("name:",fn.Name,"export:",fn.Exported)
				if fn.Exported {
					fn.Doc = parseComment(decl.Doc)
				} else {
					fn.Doc = ""
				}
				if decl.Type.Params != nil {
					fn.Params = parseFields(decl.Type.Params.List)
				}
				if decl.Type.Results != nil {
					fn.Results = parseFields(decl.Type.Results.List)
				}
				if decl.Recv != nil {
					//fn.
					if len(decl.Recv.List) != 1 {
						fmt.Println("error recv list is not length of 1:",decl.Recv.List)
					}
					recv := decl.Recv.List[0]
					fn.Recv = parseExpr(recv.Type,false)
					if len(recv.Names) == 1 {
						replaceFunctionContext[recv.Names[0].Name] = "this"
						replaceFunctionContext[untitle(recv.Names[0].Name)] = "this"
					}else{
						if len(recv.Names) > 1 {
							fmt.Println("function error recv names more then 1:",recv.Names)
						}
					}
				}
				if decl.Body != nil {
					fn.Body = parseBody(decl.Body.List)
				}
				data.Funcs = append(data.Funcs, fn)
			default:
				_ = decl
				fmt.Println("decl not found")
			}
		}
		exportData.Pkgs = append(exportData.Pkgs, data)
	}
}
func parseComment(comments *ast.CommentGroup) string {
	if comments == nil {
		return ""
	}
	buffer := strings.Builder{}
	//buffer.WriteString("/**\n")
	/*for _, comment := range comments.List {
		buffer.WriteString(comment.Text[2:])
		buffer.WriteString("\n")
	}*/
	//buffer.WriteString("**/")
	return buffer.String()
}
func addSemicolon(obj interface{}, init bool) string {
	if init {
		buffer := strings.Builder{}
		buffer.WriteString(";")
		buffer.WriteString(addDebug(obj))
		return buffer.String()
	}
	return ""
}
func addDebug(obj interface{}) string {
	buffer := strings.Builder{}
	if debugComment && obj != nil {
		buffer.WriteString("//")
		buffer.WriteString(reflect.TypeOf(obj).String())
		buffer.WriteString("\n")
		return buffer.String()
	}
	return buffer.String()
}
func parseStatement(stmt ast.Stmt, init bool) []string {
	body := []string{}
	switch stmt := stmt.(type) {
	case *ast.LabeledStmt:
		buffer := strings.Builder{}

		labels = append(labels, stmt.Label.Name)
		buffer.WriteString("function ")
		buffer.WriteString(stmt.Label.Name)
		buffer.WriteString("() {\n")

		body = append(body, buffer.String())
	case *ast.ExprStmt:
		body = append(body, parseExpr(stmt.X, init))
	case *ast.ReturnStmt:
		buffer := strings.Builder{}
		buffer.WriteString("return ")

		if len(stmt.Results) > 1 {
			buffer.WriteString("{")
			for index, res := range stmt.Results {
				if index > 0 {
					buffer.WriteString(",")
				}
				buffer.WriteString("v")
				buffer.WriteString(strconv.Itoa(index))
				buffer.WriteString(" : ")
				buffer.WriteString(parseExpr(res, false))
				buffer.WriteString(" ")
			}
			buffer.WriteString("}")
		} else if len(stmt.Results) == 1 {
			buffer.WriteString(parseExpr(stmt.Results[0], false))
		}
		buffer.WriteString(";\n")
		body = append(body, buffer.String())
	case *ast.TypeSwitchStmt:
		fmt.Println("assign", reflect.TypeOf(stmt.Assign))
		buffer := strings.Builder{}
		buffer.WriteString("{\n")
		if stmt.Init != nil {
			buffer.WriteString(strings.Join(parseStatement(stmt.Init, true), "\n"))
		}
		asserted = ""
		buffer.WriteString(strings.Join(parseStatement(stmt.Assign, true), ""))
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
					buffer.WriteString("else ")
				}
				buffer.WriteString(caseAsIf(stmt, asserted))
			default:
				fmt.Println("switch-type", reflect.TypeOf(stmt))
			}
			first = false
		}
		if setDefault {
			if len(stmt.Body.List) > 1 {
				buffer.WriteString("else ")
			}
			buffer.WriteString(caseAsIf(&def, ""))
		}
		buffer.WriteString("}")
		body = append(body, buffer.String())
	case *ast.SwitchStmt:
		buffer := strings.Builder{}
		if stmt.Init != nil {
			buffer.WriteString("{")
			buffer.WriteString(strings.Join(parseStatement(stmt.Init, true), "\n"))
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
						buffer.WriteString("else ")
					}
					buffer.WriteString(caseAsIf(stmt, ""))
				default:
					fmt.Println("switch-if", reflect.TypeOf(stmt))
				}
				first = false
			}
			if setDefault {
				if len(stmt.Body.List) > 1 {
					buffer.WriteString("else ")
				}
				buffer.WriteString(caseAsIf(&def, ""))
			}
		} else {
			//actual switch
			buffer.WriteString("switch(")
			buffer.WriteString(parseExpr(stmt.Tag, false))
			buffer.WriteString(") {\n")
			//body
			buffer.WriteString(strings.Join(parseBody(stmt.Body.List), "\n"))
			buffer.WriteString("}")
		}
		if stmt.Init != nil {
			buffer.WriteString("}")
		}
		body = append(body, buffer.String())
	case *ast.DeclStmt:
		switch stmt := stmt.Decl.(type) {
		case *ast.GenDecl:
			for _, spec := range stmt.Specs {
				switch spec := spec.(type) {
				case *ast.ValueSpec:
					buffer := strings.Builder{}
					for i, _ := range spec.Names {
						//spec.Names[i].Obj.Kind
						buffer.WriteString("var ")
						buffer.WriteString(spec.Names[i].Name)
						if spec.Type != nil {
							buffer.WriteString(":")
							buffer.WriteString(parseExpr(spec.Type, false))
						}
						if len(spec.Values) > i {
							buffer.WriteString(" = ")
							buffer.WriteString(parseExpr(spec.Values[i], false))
						} else {
							buffer.WriteString(" = ")
							buffer.WriteString(getDefaultType(spec.Type))
						}
						buffer.WriteString(addSemicolon(stmt, init))
					}
					body = append(body, buffer.String())
				default:
					fmt.Println("decl not found", reflect.TypeOf(spec))
				}
			}
		default:
			fmt.Println("gen decl not found", reflect.TypeOf(stmt))
		}
	case *ast.AssignStmt: //short variable declaration.
		buffer := strings.Builder{}
		buffer.WriteString(parseAssignStatement(stmt, init))
		body = append(body, buffer.String())
	case *ast.ForStmt:
		//fmt.Println("post",reflect.TypeOf(stmt.Post))

		buffer := strings.Builder{}
		if stmt.Init != nil {
			buffer.WriteString("{")
			switch init := stmt.Init.(type) {
			case *ast.AssignStmt:
				buffer.WriteString(parseAssignStatement(init, true))
			case *ast.IncDecStmt:
				buffer.WriteString(parseExpr(init.X, true))
			}
		}
		if stmt.Post != nil {
			buffer.WriteString("cfor(")
		} else {
			buffer.WriteString("while(")
		}
		if stmt.Cond != nil {
			buffer.WriteString(parseExpr(stmt.Cond, false))
			if stmt.Post != nil {
				buffer.WriteString(",")

				/*post := stmt.Post.(*ast.IncDecStmt)
				buffer.WriteString(post.X.(*ast.Ident).Name)
				buffer.WriteString(post.Tok.String())*/

				buffer.WriteString(strings.Join(parseStatement(stmt.Post, false), "\n"))
				buffer.WriteString(",")
			}
		} else {
			buffer.WriteString("true")
		}
		if stmt.Post == nil {
			buffer.WriteString(") {\n")
		} else {
			buffer.WriteString(" {\n")
		}

		buffer.WriteString(strings.Join(parseBody(stmt.Body.List), "\n"))
		buffer.WriteString("}")
		if stmt.Post != nil {
			buffer.WriteString(");")
		}
		if stmt.Init != nil {
			buffer.WriteString("}")
		}
		body = append(body, buffer.String())
	case *ast.BranchStmt:
		buffer := strings.Builder{}
		buffer.WriteString(stmt.Tok.String())
		buffer.WriteString(";")
		body = append(body, buffer.String())
	case *ast.IfStmt:
		buffer := strings.Builder{}
		if stmt.Init != nil {
			buffer.WriteString("{")
			switch init := stmt.Init.(type) {
			case *ast.AssignStmt:
				buffer.WriteString(parseAssignStatement(init, true))
			default:
				fmt.Println("if init unknown type", reflect.TypeOf(init))
			}
		}
		buffer.WriteString("if(")
		buffer.WriteString(parseExpr(stmt.Cond, false))
		buffer.WriteString(") {")
		buffer.WriteString(strings.Join(parseBody(stmt.Body.List), ""))
		buffer.WriteString("}")
		if stmt.Else != nil {
			buffer.WriteString("else {")
			switch stmt := stmt.Else.(type) {
			case *ast.BlockStmt:
				buffer.WriteString(strings.Join(parseBody(stmt.List), ""))
			default:
				buffer.WriteString(strings.Join(parseStatement(stmt, true), ""))
			}
			buffer.WriteString("}")
		}
		if stmt.Init != nil {
			buffer.WriteString("}")
		}
		body = append(body, buffer.String())
	case *ast.CaseClause:
		//stmt.List
		buffer := strings.Builder{}
		if len(stmt.List) > 0 {
			buffer.WriteString("case ")
			buffer.WriteString(strings.Join(parseExprs(stmt.List, false), ","))
		} else {
			buffer.WriteString("default")
		}
		buffer.WriteString(":\n")
		buffer.WriteString(strings.Join(parseBody(stmt.Body), "\n"))
		body = append(body, buffer.String())
	case *ast.GoStmt:
		body = append(body, "//go routines not supported yet\n")
	case *ast.IncDecStmt:
		buffer := strings.Builder{}
		buffer.WriteString(parseExpr(stmt.X, false))
		buffer.WriteString(stmt.Tok.String())
		buffer.WriteString(addSemicolon(stmt, init))
		body = append(body, buffer.String())
	case *ast.RangeStmt:
		buffer := strings.Builder{}
		buffer.WriteString("range(")
		buffer.WriteString(parseExpr(stmt.Key, false))
		buffer.WriteString(",")
		buffer.WriteString(parseExpr(stmt.Value, false))
		buffer.WriteString(",")
		buffer.WriteString(parseExpr(stmt.X, false))
		buffer.WriteString(", {\n")
		buffer.WriteString(strings.Join(parseBody(stmt.Body.List), "\n"))
		buffer.WriteString("});")
		body = append(body, buffer.String())
	case *ast.DeferStmt:
		buffer := strings.Builder{}
		buffer.WriteString(parseExpr(stmt.Call,init))
		body = append(body,buffer.String())
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
	buffer := strings.Builder{}
	args := []string{}
	for i := range stmt.Lhs {
		set := parseExpr(stmt.Lhs[i], false)
		if set == "_" {
			args = append(args, "null")
			continue
		}
		if stmt.Tok.String() == ":=" {
			buffer.WriteString("var ")
			buffer.WriteString(set)
			buffer.WriteString(addSemicolon(stmt, init))
		}
		args = append(args, set)
	}
	buffer.WriteString("setMulti([")
	buffer.WriteString(strings.Join(args, ","))
	buffer.WriteString("],")
	buffer.WriteString(parseExpr(stmt.Rhs[0], false))
	buffer.WriteString(")")
	buffer.WriteString(addSemicolon(stmt, init))
	return buffer.String()
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
	buffer := strings.Builder{}
	for i, _ := range stmt.Lhs {
		set := parseExpr(stmt.Lhs[i], false)
		if set == "_" {
			continue
		}
		if stmt.Tok.String() == ":=" {
			buffer.WriteString("var ")
		}
		buffer.WriteString(set)
		buffer.WriteString(" = ")
		buffer.WriteString(parseExpr(stmt.Rhs[i], false))
		buffer.WriteString(addSemicolon(stmt, init))
	}
	return buffer.String()
}
func removeParan(str string) string {
	return str[1 : len(str)-1]
}
func parseFields(list []*ast.Field) []string {
	array := []string{}
	buffer := strings.Builder{}
	for index, field := range list {
		_ = index
		//fmt.Println("field type ",reflect.TypeOf(field.Type))
		ty := parseExpr(field.Type, false)
		if len(field.Names) == 0 {
			array = append(array, ty)
		} else {
			for _, name := range field.Names {
				buffer.Reset()
				buffer.WriteString(untitle(parseExpr(name, false)))
				buffer.WriteString(":")
				buffer.WriteString(ty)
				array = append(array, buffer.String())
			}
		}
	}
	return array
}
func parseExprs(list []ast.Expr, init bool) []string {
	array := []string{}
	for _, expr := range list {
		array = append(array, parseExpr(expr, init))
	}
	return array
}
func parseExpr(expr ast.Expr, init bool) string {
	buffer := strings.Builder{}
	switch expr := expr.(type) {
	case *ast.FuncType:
		params := parseFields(expr.Params.List)
		//fmt.Println("count of params", len(params))
		if len(params) == 0 {
			buffer.WriteString("Void")
		} else if len(params) == 1 {
			buffer.WriteString(params[0])
		} else {
			buffer.WriteString("(")
			buffer.WriteString(strings.Join(params, ", "))
			buffer.WriteString(")")
		}
		buffer.WriteString(" -> ")
		if expr.Results == nil {
			buffer.WriteString("Void")
		} else {
			res := parseFields(expr.Results.List)
			if len(res) == 0 {
				buffer.WriteString("Void")
			} else if len(res) == 1 {
				buffer.WriteString(res[0])
			} else {
				buffer.WriteString("{")

				buffer.WriteString(strings.Join(res, ","))
				buffer.WriteString("}")
			}
		}
	case *ast.Ident:
		buffer.WriteString(rename(expr.Name))
	case *ast.StarExpr:
		buffer.WriteString(parseExpr(expr.X, false))
	case *ast.MapType:
		buffer.WriteString("Map<")
		buffer.WriteString(parseExpr(expr.Key, false))
		buffer.WriteString(",")
		buffer.WriteString(parseExpr(expr.Value, false))
		buffer.WriteString(">")
	case *ast.ChanType:
		buffer.WriteString("Dynamic")
	case *ast.Ellipsis:
		buffer.WriteString("...")
		buffer.WriteString(parseExpr(expr.Elt, false))
	case *ast.InterfaceType:
		if expr.Methods == nil || len(expr.Methods.List) == 0 {
			return "Any"
		}
		//fmt.Println("count", len(expr.Methods.List))
	case *ast.StructType:
		buffer.WriteString(strings.Join(parseFields(expr.Fields.List), ",\n"))
	case *ast.KeyValueExpr: //map
		buffer.WriteString(parseExpr(expr.Key, false))
		buffer.WriteString(" : ")
		buffer.WriteString(parseExpr(expr.Value, false))
	case *ast.ArrayType:
		
		name := rename(parseExpr(expr.Elt,false))
		writeArrayBool := true
		switch name {
			case "bytes":
				writeArrayBool = false
				buffer.WriteString("haxe.io.BytesData")
		}
		if writeArrayBool {
			buffer.WriteString("Array<")
			buffer.WriteString(name)
			buffer.WriteString(">")
		}
	case *ast.FuncLit:
		buffer.WriteString("function(")
		if expr.Type.Params != nil {
			params := parseFields(expr.Type.Params.List)
			buffer.WriteString(strings.Join(params, ","))
		}
		buffer.WriteString(")")
		if expr.Type.Results != nil {
			res := parseFields(expr.Type.Results.List)
			_ = res
		}
		buffer.WriteString("{\n")
		buffer.WriteString(strings.Join(parseBody(expr.Body.List), ""))
		buffer.WriteString("}")
	case *ast.BasicLit:
		buffer.WriteString(expr.Value)
	case *ast.BinaryExpr:
		buffer.WriteString(parseExpr(expr.X, false))
		//buffer.WriteString(" ")
		buffer.WriteString(expr.Op.String())
		//buffer.WriteString(" ")
		buffer.WriteString(parseExpr(expr.Y, false))
	case *ast.SelectorExpr: //1st class
		name := rename(parseExpr(expr.X,false))
		buffer.WriteString(name)
		buffer.WriteString(".")
		sel := rename(untitle(expr.Sel.Name))
		switch sel {
		case "new":
			sel = "New" //in order to get around the restriction
		}
		buffer.WriteString(sel)
	case *ast.CallExpr: //1st class
		makeBool := false
		switch init := expr.Fun.(type) {
		case *ast.Ident:
			name := rename(init.Name)
			switch name {
			case "String":
				name = "str"
			case "Int64":
				name = ""
			case "make":
				name = "new "
				makeBool = true
			}
			buffer.WriteString(name)
		case *ast.ArrayType:
			value := parseExpr(init.Elt, false)
			switch value {
			case "Rune":
				buffer.WriteString("Std.int")
			case "Byte":
				buffer.WriteString("haxe.io.Bytes.ofString")
			}
		default:
			buffer.WriteString(parseExpr(expr.Fun, false))
		}
		if makeBool && len(expr.Args) == 1 {
			buffer.WriteString(parseExpr(expr.Args[0], false))
			buffer.WriteString("()")
		} else {
			buffer.WriteString("(")
			buffer.WriteString(strings.Join(parseExprs(expr.Args, false), ", "))
			buffer.WriteString(")")
		}
		buffer.WriteString(addSemicolon(expr, init))
	case *ast.UnaryExpr: //3rd class
		op := expr.Op.String()
		if op != "*" && op != "&" {
			buffer.WriteString(op)
			buffer.WriteString(" ")
		}
		buffer.WriteString(parseExpr(expr.X, false))
	case *ast.TypeAssertExpr: //pass through
		buffer.WriteString(typeAssert(*expr, init))
	case *ast.IndexExpr:
		buffer.WriteString(parseExpr(expr.X, false))
		buffer.WriteString("[")
		buffer.WriteString(parseExpr(expr.Index, false))
		buffer.WriteString("]")
		/*switch ty := x.Obj.Type.(type) {
			case *ast.ArrayType:
				ty.
		}*/
	case *ast.CompositeLit:
		switch ty := expr.Type.(type) {
		case *ast.ArrayType:
			buffer.WriteString("[")
			buffer.WriteString(strings.Join(parseExprs(expr.Elts, false), ","))
			buffer.WriteString("]")
		case *ast.SelectorExpr, *ast.Ident:
			buffer.WriteString("new ")
			buffer.WriteString(parseExpr(ty, false))
			buffer.WriteString("(")
			buffer.WriteString(strings.Join(parseExprs(expr.Elts, false), ","))
			buffer.WriteString(")")
		case nil:
			buffer.WriteString(strings.Join(parseExprs(expr.Elts,false), ","))
		default:
			fmt.Println("compositelit type unknown", reflect.TypeOf(ty))
		}
	case *ast.SliceExpr:
		//ast.Print(nil, expr)
		buffer.WriteString(parseExpr(expr.X, false))
		buffer.WriteString(".slice(")
		low := "0"
		if expr.Low != nil {
			low = parseExpr(expr.Low, false)
		}
		buffer.WriteString(low)
		if expr.High != nil {
			buffer.WriteString(",")
			buffer.WriteString(parseExpr(expr.High, false))
		}
		buffer.WriteString(")")
		if expr.Max != nil {
			buffer.WriteString(".slice(0,")
			buffer.WriteString(parseExpr(expr.Max, false))
			buffer.WriteString(")")
		}
	case *ast.ParenExpr:
		buffer.WriteString(parseExpr(expr.X, false))
	case nil:

	default:
		fmt.Println("parse expr not found", reflect.TypeOf(expr))
		//ast.Print(nil,expr)
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
		case "int", "float", "uint64":
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
	buffer := strings.Builder{}
	if len(stmt.List) > 0 {
		buffer.WriteString("if")
		buffer.WriteString("(")
		list := []string{}
		for _, stmt := range stmt.List {
			piece := strings.Builder{}
			if obj != "" {
				/*piece.WriteString("Std.isOfType(")
				piece.WriteString(obj)
				piece.WriteString(",")*/
				piece.WriteString("(")
				piece.WriteString(obj)
				piece.WriteString(" is ")
			}
			piece.WriteString(parseExpr(stmt, false))
			if obj != "" {
				piece.WriteString(")")
			}
			list = append(list, piece.String())
		}
		buffer.WriteString(strings.Join(list, "||"))
		buffer.WriteString(") ")
	}
	buffer.WriteString("{\n")
	buffer.WriteString(strings.Join(parseBody(stmt.Body), ""))
	buffer.WriteString("}")
	return buffer.String()
}
func rename(name string) string {
	{
		value, ok := replaceMap[name]
		if ok {
			name = value
		}
	}
	{
		value,ok := replaceFunctionContext[name]
		if ok {
			name = value
		}
	}
	return name
}
func typeAssert(expr ast.TypeAssertExpr, init bool) string {
	buffer := strings.Builder{}
	//buffer.WriteString("Type.typeof(")
	asserted = parseExpr(expr.X, false)
	buffer.WriteString(asserted)
	//buffer.WriteString(")")
	return buffer.String()
}
func untitle(name string) string {
	buffer := strings.Builder{}
	buffer.WriteString(strings.ToLower(name[0:1]))
	buffer.WriteString(name[1:len(name)])
	return buffer.String()
}
func getName(path string) string {
	index := strings.LastIndex(path, "/") + 1
	return path[index:len(path)]
}
func unparan(name string) string {
	buffer := strings.Builder{}
	buffer.WriteString(strings.ToLower(name[0:1]))
	buffer.WriteString(name[1:len(name)])
	return buffer.String()
}
func reserved(str string) string {
	switch str {
	case "switch","case","break","continue","default":
	case "abstract","cast","catch","class","do":
	case "dynamic","else","enum","extends","extern","true","false","final","for","function","if":
	case "implements","import","in","inline","interface","macro","new","null","operator","overload","override","package","private":
	case "public","return","static","this","throw","try","typedef","untyped","using","var","while":
	default:
		strings.Join([]string{str, "tmp"}, "_")
		return str
	}
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
						//names := []*ast.Ident{}
						//values := []ast.Expr{}
						for index := range specType.Names {
							/*if specType.Names[index].IsExported() {
								specType.Names[index].Name = name
								names = append(names, specType.Names[index])
								if index < len(specType.Values) {
									values = append(values, specType.Values[index])
								}
							}*/
							_ = index
						}
						//spec = specType
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
				fmt.Println("decl not found")
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
