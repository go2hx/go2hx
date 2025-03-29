package analysis

import (
	"fmt"
	"go/ast"
	"go/constant"
	"go/token"
	"go/types"
	"log"
	"strconv"

	"golang.org/x/tools/go/ast/astutil"
	"golang.org/x/tools/go/packages"
)

func GetConstant(basic *types.Basic, value constant.Value, node ast.Node) (e ast.Expr) {
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
		if node != nil && s == `"gc"` {
			switch node := node.(type) {
			case *ast.SelectorExpr:
				if node.Sel.Name == "Compiler" {
					return nil
				}
			}
		}
		e = &ast.BasicLit{Kind: token.STRING, Value: s}
	default:
		log.Fatal("unknown constant type: " + value.ExactString())
	}
	return e
}

func ParseLocalConstants(file *ast.File, pkg *packages.Package, checker *types.Checker) {
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
				e := GetConstant(basic, value, node)
				if e == nil {
					return false
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

func ParseLocalTypes(file *ast.File, pkg *packages.Package, checker *types.Checker, hashType func(t types.Type) (value uint32), countStruct *int, countInterface *int) {
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
		//fmt.Println(reflect.TypeOf(node))
		switch node := node.(type) {
		case *ast.FuncDecl:
			funcName = node.Name.Name
			//fmt.Println(funcName)
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
				// TODO: add recv identifier into extra info
				name = ast.NewIdent(funcName + ":_struct_" + strconv.Itoa(*countStruct))
				(*countStruct)++
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
					if value != nil {
						//log.Println("t:", t)
						//log.Println("value.Type:", value.Type())
						t := replaceType(t, value.Type(), t)
						namedType := types.NewNamed(types.NewTypeName(pos, pkg.Types, name.Name, t), t, nil)
						if value.Type() == t {
							checker.Defs[key] = namedType.Obj()
						}
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
				name = ast.NewIdent("_interface_" + strconv.Itoa(*countInterface))
				(*countInterface)++
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
				methods := []*types.Func{}
				switch t := t.(type) {
				case *types.Interface:
					for i := 0; i < t.NumMethods(); i++ {
						methods = append(methods, t.Method(i))
					}
				}
				namedType := types.NewNamed(types.NewTypeName(pos, pkg.Types, name.Name, nil), t, methods)
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
