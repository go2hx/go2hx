# Go AST to Haxe AST walkthrough

The entry point for the compiler comes from running the command via haxelib.

```haxelib run go2hx ./finderrors.go``

This command will run ``Run.hx``, this file will clone the necessary repos for the Go part of the compiler, run ``go build .`` on the users behalf and then choose a target to build the Haxe part of the compiler, the target is chosen based on what is available or explicit arguments.

```sh
go build .
```

The go build command will build according to the root file ``go.mod`` and the main file ``export.go``, ``go.mod`` can be thought of a build configuration file for Go and will list the required dependencies. There is a special ``replace`` in the ``go.mod`` this allows the compiler to use a custom fork of tools found [here](https://github.com/go2hx/tools) (not very important but may come up when it comes to default sizes for int and uint)

``export.go`` is the main entry for the Go part of the compiler (also called go4hx) this program facilitates calling the Go compiler and pulling out all of the necessary type information and AST. This program is called from the Haxe side of the compiler, with the Haxe side creating a TCP server, launching go4hx with specific arguments and waits for go4hx (Go part of the compiler) to connect to the TCP server. Once connected go4hx will begin sending over the data in JSON form and after sending all of the data will stay connected in case the another package will need to be compiled.

``export.go`` also calls other go files such as in package/folder ``analysis`` these files perform passes over the Go AST for example, to add pointer variables for each pointer initiated, control flow flattening when goto jumps are detected etc. 

The Haxe part of the compiler receives the type information and AST, the AST in haxe is held in ``./src/Ast.hx`` the types are held in ``./src/Types.hx`` not to complicated!


``src/Main.hx`` entry point is ``function main`` this file coordinates go4hx and processes all of the command line arguments. The file calls ``src/Typer.hx`` for the typing process and after the typing takes place passes the Haxe AST to ``src/Gen.hx``. Gen is the generator and handles calling ``src/Printer.hx`` and creating the necessary files as well as creating the necessary wrappers for the interop between go2hx code and Haxe devs.

``src/Typer.hx`` entry point is ``function main`` it does multiple passes over the Go AST and handles all of the AST transformations. This is by far the most complex file and has so many things going on that it might be the single reason why this type of guide is being written. Fear not, the layout is actually more intuitive then it might initially appear. The bulk of the file is taking in Go AST and returning Haxe AST. The naming convention follows Go AST and a lot of the macro keyword is used to create the Go AST in a very intuitive way in Haxe code! Once you get used to it, you may never want to leave and hence why the file is so big! The Go AST is a File->Decl. Decl->FuncDecl or GenDecl, FuncDecl is a modular function which holds args, params (for generics), return, body (stmts->exprs), and if it is a variadic (final argument is a rest). GenDecl->Array<Spec>->Spec can be an import, type, or variable, an Array<Sepc> means it is all grouped together. For example an Array<Spec> or type specs would be:

```go
type (
    X struct{}
    Y int
)
```

If it 2 separate Specs it would be:

```go
type X struct{}
type Y int
```


Stmts or Statements are a special category of Exprs, in Haxe all Go stmts would be an expr because in Haxe everything is an expr, for example: for loop, if stmt etc. In Haxe terms these are Exprs that always return void type.

A Stmt also has a 2 special Statements, ExprStmt and DeclStmt. This allows Stmt to go up or down the abstraction layer in AST. DeclStmt allows having a Decl where a Stmt would be and likewise for an ExprStmt.

This is special in the case of DeclStmt because it allows creating DeclTypes inside of a function body (a function body is an Array of statement)

For example:

```go
func main() {
    type X struct{
        x int
        y int
    }
}

func foo() {
    {
        type X struct{}
    }
    {
        type X int
    }
}
```

This allows scoped types. The types must be able to be inferred by the compiler at compile time, so no runtime types from an if else is allowed for instance.



## Next part (advanced notes)

Now onto the interesting part.

We will now go over a real world Go program, source code [here](https://gist.github.com/PXshadow/b3976953ad0c125e1e5359c915f94b60)

The program was written by me to be able to found the most repeating errors in the compiler from the test logs, in order to prioritize what to fix.

It uses some file operations and text and the go2hx compiler is able to compile it correctly.

The code is not very clean and could do with lots of optimization, but given it's job is one off analysis, it's not too important and hits the goal of going over something real and gaining insights for how the compiler handles it.


So to start off the compiler is ran (details found above) and the start, for our purposes will be inside ``./export.go`` the AST is obtained from:

```go
initial, err := packages.Load(cfg, &types.StdSizes{WordSize: 4, MaxAlign: 8}, args...)
```

initial now holds all of the packages and ``parsePkgList`` will now be called.

``parsePkList`` goes over every package in a loop and calls ``mergePackage`` to merge the package into a single File. The package is looped again and ``parseLocalPackage`` is called. ``parseLocalPackage`` runs all of the analyzers from the ``analysis`` folder/package. Then ``parsePkg`` is called, which in turn calls ``parseFile``. ``parseFile`` loops over the decls, and the specs, and ``parseData`` is then called. This function gets called iteratively.

If new information needs to be sent to the Haxe part of the compiler modification can be made by finding the type in the very large type switch stmts and adding a key map to new data exposed, for example:

```go
case *ast.CompositeLit:
    data["exprType"] = parseData(node.Type)
    data["type"] = parseType(checker.TypeOf(node), map[string]bool{})
    data["test"] = node.NewExposedThing // not valid field access for this type
```

and then have it be exposed in Haxe by adding it in ``./src/Ast.hx``:

```haxe
typedef CompositeLit = {
	// > Node,
	type:Expr,
	exprType:Expr,
	lbrace:Pos,
	elts:Array<Expr>,
	rbrace:Pos,
	incomplete:Bool,
	test:String, // this is the new field
};
```

Whenever a type needs to be parsed, ``parseType`` is called.


## The interesting part

The Go typed AST will be all be passed into ``./src/Typer.hx`` this is where most important things happen.

```go
package main
```

Sets what the package is, and is set into ``info.global.path``, info is passed to most functions in the codebase and ``info.global`` is always the same across an entire package, where as info fields are passed by value for each function, and some of the fields are reset.

Info holds lots of important context information when transpiling the AST.

```go
import (
	"os"
	"path/filepath"
	"sort"
	"strings"
)
```

Each import is run with ``typeImport``, and sets ``info.renameIdents`` in most caases which is a map that looks for a given identifier and renames it.

```go
var removeStrings = []string{
	",",
	".",
	":",
	"0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
}
```

``typeValue`` is run and returns an array of TypeDefinition. ``[]string`` is called with ``typeExprType`` which takes a Go AST expr, and turns it into a ``ComplexType`` ``[]string`` -> ``stdgo.Slice<stdgo.GoString>``.

The first check is if it's a destructure, in this case no

``value.names`` each name is ran through ``nameIdent``

All values exist, so ``defaultValue`` is not used, and instead every value expr is called with ``typeExpr`` 

```haxe
expr = typeExpr(value.values[i], info);
```

The ``GoType`` variable ``nameType`` is turned into a ``haxe.macro.ComplexType`` via the function ``toComplexType``. ``GoType`` is how Go type information is held for Haxe. It is an enum and found in ``./src/Types.hx``

In the end this creates a Haxe ``TDField`` of ``FVar``

Inside of ``typeExpr`` the expr is a ``CompositeLit`` and therefore ``typeCompositeLit`` is called, and turns the type into a ``ComplexType`` and runs over an array of Expr. The exprs are all ``BasicLit`` and runs ``typeBasicLit`` it is a string literal and is turned into a Haxe string expr.

```go
func main() {}
```

Is transformed inside function ``typeFunction`` the ``decl.body`` has ``typeBlockStmt`` called on it, and goes over every stmt with ``typeStmt``


The first stmt is a ``DeclStmt`` this leads to having ``typeValue`` be called, because it's a constant the ``analysis`` package already handles it so a ``macro {}`` is returned to denote nothing.



The second stmt is an ``AssignStmt`` which is transformed with function ``typeAssignStmt`` this is a destructure version and runs the lhs (left hand side) and rhs (right hand side) exprs with ``typeExpr``.