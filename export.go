package main

import (
	"bytes"
	"compress/zlib"
	"crypto/sha256"
	"encoding/binary"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"go/ast"
	"go/constant"
	"go/importer"
	"go/printer"
	"go/token"
	"go/types"
	"log"
	"net"
	"path"
	"path/filepath"
	"runtime"
	"slices"
	"sync"

	_ "embed"
	"os"
	"reflect"
	"strconv"
	"strings"

	"github.com/go2hx/go4hx/analysis"
	"golang.org/x/exp/typeparams"
	"golang.org/x/tools/go/packages"
	"golang.org/x/tools/go/types/typeutil"
)

type packageType struct {
	Path     string                   `json:"path"`
	Name     string                   `json:"name"`
	Order    []string                 `json:"order"`
	Files    []fileType               `json:"files"`
	TypeList []map[string]interface{} `json:"typeList"`
	Checksum string                   `json:"checksum"`
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

var stdgoList map[string]bool

//go:embed data/stdgoExports.json
var stdgoExportsBytes []byte

//go:embed data/stdgoExterns.json
var stdgoExternsBytes []byte

var stdExterns map[string]bool
var stdExports map[string]bool

var conf = types.Config{Importer: importer.Default(), FakeImportC: true}

var testBool = false
var systemGo = false
var noCache = false

func compile(conn net.Conn, params []string, debug bool) {
	args := []string{}
	testBool = false
	systemGo = false
	noCache = false
	for _, param := range params {
		switch param {
		case "-systemgo", "--systemgo", "-systemGo", "--systemGo":
			systemGo = true
		case "-test", "--test":
			testBool = true
		case "-nocache", "--nocache":
			noCache = true
		default:
			args = append(args, param)
		}
	}
	if !systemGo {
		b, err := os.ReadFile(".gorc")
		panicIfError(err)
		home, err := os.UserHomeDir()
		panicIfError(err)
		goroot := home + "/.go/go" + string(b)
		goCommand := goroot + "/bin/go"
		cfg.Env = append(cfg.Env, "GOROOT="+goroot)
		os.Setenv("GOROOT", goroot)
		os.Setenv("GOCMD", goCommand)
	}
	localPath := args[len(args)-1]
	outputPath := args[0]
	// before localPath is chdir
	versionBytes, _ := os.ReadFile("version.txt")
	panicIfError(os.Chdir(localPath))
	args = args[1 : len(args)-1] //remove outputPath & remove localPath (chdir)
	cfg.Tests = testBool
	excludes := map[string]bool{}
	checksumMap := map[string]string{}
	skipPkgs := map[string]bool{"time/tzdata": true}
	pkgs := processPkgs(outputPath, checksumMap, excludes, versionBytes, args, skipPkgs)
	// always required pkgs
	pkgs = append(pkgs, processPkgs(outputPath, checksumMap, excludes, versionBytes, []string{
		"unicode/utf8", "reflect",
	}, skipPkgs)...)
	dep := &depth{Path: "init", Skipped: false, Deps: []depth{}}
	for _, arg := range args {
		delete(skipPkgs, arg)
	}
	pkgs = getPkgs(pkgs, excludes, skipPkgs, dep)
	// send amount of pkgs
	//println("len(pkgs)", len(pkgs))
	sendLen(conn, len(pkgs))
	sendData(conn, *dep)
	// send pkg data
	parsePkgList(conn, pkgs, excludes, checksumMap)
}

func processPkgs(outputPath string, checksumMap map[string]string, excludes map[string]bool, versionBytes []byte, args []string, skipPkgs map[string]bool) (newPkgs []*packages.Package) {
	sizes := &types.StdSizes{WordSize: 4, MaxAlign: 8}
	l, response, err := packages.Init(cfg, sizes, args...)
	panicIfError(err)
	deletePkgs := map[string]bool{}
	// checksums
	if !noCache {
		for i, pkg := range response.Packages {
			anotherExists := false
			for _, pkg2 := range response.Packages[i+1:] {
				if pkg.PkgPath != pkg2.PkgPath {
					continue
				}
				anotherExists = true
				break
			}
			const hashSize = 32
			checksumChan := make(chan [hashSize]byte, len(pkg.GoFiles))
			for _, f := range pkg.GoFiles {
				f := f
				go func() {
					b, err := os.ReadFile(f)
					panicIfError(err)
					checksumChan <- sha256.Sum256(b)
				}()
			}
			checksSums := make([][hashSize]byte, len(pkg.GoFiles))
			for i := range pkg.GoFiles {
				checksSums[i] = <-checksumChan
			}
			slices.SortStableFunc(checksSums, func(a, b [hashSize]byte) int {
				if len(a) > len(b) {
					return 1
				} else if len(a) < len(b) {
					return -1
				}
				for i := range a {
					if a[i] == b[i] {
						continue
					}
					if a[i] > b[i] {
						return 1
					} else {
						return -1
					}
				}
				return 0
			})
			pkgPath := normalizePath(pkg.PkgPath)
			addedPkg := "_internal"
			if stdgoList[pkg.PkgPath] { // add stdgo prefix
				addedPkg = "stdgo/_internal"
			}
			dir := path.Join(outputPath, addedPkg, pkgPath)
			b, err := os.ReadFile(path.Join(dir, ".go2hx_cache"))
			checksum := combineCheckSums(checksSums, versionBytes)
			if err == nil {
				// checksum is the same
				sameSum := string(b) == checksum
				if sameSum && !anotherExists {
					// remove from root
					response.Roots = slices.DeleteFunc(response.Roots, func(root string) bool {
						rootPath := strings.Split(root, " ")[0]
						return pkg.PkgPath == rootPath
					})
					// mark as delete
					skipPkgs[pkg.PkgPath] = true
					//deletePkgs[pkg.PkgPath] = true
					continue
				}
			} else if !os.IsNotExist(err) {
				panic(err)
			}
			// write checksum
			checksumMap[pkg.PkgPath] = checksum
		}
	}
	// add imports for type information
	for _, pkg := range response.Packages {
		if deletePkgs[pkg.PkgPath] {
			continue
		}
		for impPath := range pkg.Imports {
			// if import move from delete -> skip
			if deletePkgs[impPath] {
				delete(deletePkgs, impPath)
				skipPkgs[impPath] = true
			}
		}
	}
	newResponsePackages := []*packages.Package{}
	for _, pkg := range response.Packages {
		if deletePkgs[pkg.PkgPath] {
			continue
		}
		newResponsePackages = append(newResponsePackages, pkg)
	}
	// refine
	l.Mode = releaseMode
	l.Config.Mode = releaseMode
	response.Packages = newResponsePackages
	initial, err := packages.Refine(l, response)
	panicIfError(err)
	//init
	methodCache = typeutil.MethodSetCache{}
	return initial
}

func combineCheckSums(checksums [][32]byte, versionBytes []byte) string {
	singleCheckSum := make([]byte, 32*len(checksums))
	for i := range checksums {
		singleCheckSum = slices.Insert(singleCheckSum, i*32, checksums[i][:]...)
	}
	singleCheckSum = append(singleCheckSum, versionBytes...)
	sum := sha256.Sum256(singleCheckSum)
	return hex.EncodeToString(sum[:])
}

type depth struct {
	Path    string  `json:"path"`
	Skipped bool    `json:"skipped"`
	Deps    []depth `json:"deps"`
}

func normalizePath(path string) string {
	path = strings.ReplaceAll(path, ".", "dot")
	path = strings.ReplaceAll(path, ":", "colon")
	path = strings.ReplaceAll(path, "go-", "godash")
	path = strings.ReplaceAll(path, "-", "dash")
	paths := strings.Split(path, "/")
	for i := range paths {
		if slices.Contains(reserved, paths[i]) {
			paths[i] += "_"
		}
	}
	return strings.Join(paths, "/")
}

var reserved = []string{
	"iterator",
	"keyValueIterator",
	"switch",
	"case",
	"break",
	"continue",
	"default",
	"is",
	"abstract",
	"cast",
	"catch",
	"class",
	"do",
	"function",
	"dynamic",
	"else",
	"enum",
	"extends",
	"extern",
	"final",
	"for",
	"function",
	"if",
	"interface",
	"implements",
	"import",
	"in",
	"inline",
	"macro",
	"new",
	"operator",
	"overload",
	"override",
	"package",
	"private",
	"public",
	"return",
	"static",
	"this",
	"throw",
	"try",
	"typedef",
	"untyped",
	"using",
	"var",
	"while",
	"construct",
	"null",
	"in",
	"wait",
	"length",
	"capacity",
	"bool",
	"float",
	"int",
	"struct",
	"offsetof",
	"alignof",
	"atomic",
	"map",
	"comparable",
	"environ",
	"trace",
	"haxe",
	"std",
	"_new",
}

func panicIfError(err error) {
	if err != nil {
		panic(err)
	}
}

var mutex sync.Mutex

func sendData(conn net.Conn, data any) {
	b, err := json.Marshal(data)
	panicIfError(err)
	var buff bytes.Buffer
	w, err := zlib.NewWriterLevel(&buff, zlib.BestCompression)
	panicIfError(err)
	_, err = w.Write(b)
	panicIfError(err)
	w.Close()
	if conn != nil {
		_, err = conn.Write(createLenMessage(buff.Bytes()))
		panicIfError(err)
	}
}

func getLen(conn net.Conn) uint32 {
	bytesBuff := make([]byte, 4)
	n, err := conn.Read(bytesBuff)
	if n != 4 {
		if n == 0 {
			println("CLOSED COMPILER")
			os.Exit(0)
		}
		println(n)
		println(err.Error())
		panic("wrong n")
	}
	panicIfError(err)
	return binary.LittleEndian.Uint32(bytesBuff)
}

func sendLen(conn net.Conn, length int) {
	bytesBuff := make([]byte, 8)
	binary.LittleEndian.PutUint64(bytesBuff, uint64(length))
	if conn != nil {
		_, err := conn.Write(bytesBuff)
		panicIfError(err)
	}
}

func createLenMessage(b []byte) []byte {
	bytesBuff := make([]byte, 8)
	binary.LittleEndian.PutUint64(bytesBuff, uint64(len(b)))
	return append(bytesBuff, b...)
}

func getPkgs(list []*packages.Package, excludes map[string]bool, skipPkgs map[string]bool, dep *depth) []*packages.Package {
	newList := []*packages.Package{}
	for i, pkg := range list {
		continueLoop := false
		// remove normal one and replace with test version
		for _, pkg2 := range list[i+1:] {
			if pkg.PkgPath != pkg2.PkgPath {
				continue
			}
			continueLoop = true
			break
		}
		if continueLoop {
			continue
		}
		if excludes[pkg.PkgPath] {
			dep.Deps = append(dep.Deps, depth{
				Path:    pkg.PkgPath,
				Skipped: true,
				Deps:    []depth{},
			})
			continue
		}
		excludes[pkg.PkgPath] = true
		dep2 := &depth{
			Path:    pkg.PkgPath,
			Skipped: skipPkgs[pkg.PkgPath],
			Deps:    []depth{},
		}
		if !skipPkgs[pkg.PkgPath] {
			for _, pkg := range pkg.Imports {
				newPkgs := getPkgs([]*packages.Package{pkg}, excludes, skipPkgs, dep2)
				newList = append(newList, newPkgs...)
			}
		}
		dep.Deps = append(dep.Deps, *dep2)
		if !skipPkgs[pkg.PkgPath] {
			newList = append(newList, pkg)
		}
	}
	return newList
}

var cfg = &packages.Config{
	Mode:       releaseMode,
	BuildFlags: []string{"-tags", "netgo,purego,math_big_pure_go,compiler_bootstrap"}, // build tags
}

const releaseMode packages.LoadMode = packages.NeedName |
	packages.NeedSyntax |
	packages.NeedImports | packages.NeedDeps | packages.NeedEmbedFiles | packages.NeedEmbedPatterns |
	packages.NeedFiles |
	packages.NeedTypes | packages.NeedTypesInfo |
	packages.NeedModule | packages.NeedTypesSizes

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
	CRLF := strings.ReplaceAll(string(stdgoListBytes), "\r\n", "\n")
	CR := strings.ReplaceAll(CRLF, "\r", "\n")
	list2 := strings.Split(CR, "\n")
	stdgoList = make(map[string]bool, len(list2))
	for _, s := range list2 {
		stdgoList[s] = true
	}
	externList := []string{}
	exportList := []string{}

	err = json.Unmarshal(stdgoExportsBytes, &exportList)
	panicIfError(err)
	err = json.Unmarshal(stdgoExternsBytes, &externList)
	panicIfError(err)

	stdExports = make(map[string]bool, len(exportList))
	stdExterns = make(map[string]bool, len(externList))

	for _, s := range exportList {
		stdExports[s] = true
	}
	for _, s := range externList {
		stdExterns[s] = true
	}
	_, err = strconv.Atoi(port)
	if err != nil { // not set to a port, test compile
		compile(nil, append([]string{"golibs"}, args[1:]...), true)
		return
	}
	conn, err := net.Dial("tcp", "127.0.0.1:"+port)
	panicIfError(err)
	defer conn.Close()
	for {
		input := make([]byte, getLen(conn))
		c, err := conn.Read(input)
		panicIfError(err)
		input = input[:c]
		//fmt.Println("input: " + string(input))
		args := strings.Split(string(input), " ")
		compile(conn, args, false)
		//debug.FreeOSMemory()
	}
}

func memoryStats() {
	var m runtime.MemStats
	runtime.ReadMemStats(&m)
	println("memory:", m.Alloc/1024/1024)
}

func parseLocalPackage(pkg *packages.Package, pkgData *PackageData, excludes map[string]bool) {
	if excludes[pkg.PkgPath] {
		return
	}
	excludes[pkg.PkgPath] = true
	for _, file := range pkg.Syntax {
		_ = file
		parseLocalFile(file, pkg, pkgData)
	}
}

func parseLocalFile(file *ast.File, pkg *packages.Package, pkgData *PackageData) {
	checker := types.NewChecker(&conf, pkg.Fset, pkg.Types, pkg.TypesInfo)
	hashType2 := func(t types.Type) (value uint32) {
		return hashType(t, pkgData)
	}
	analysis.ParseLocalTypes(file, pkg, checker, hashType2, &countStruct, &countInterface)
	analysis.ParseLocalConstants(file, pkg, checker)
	analysis.ParseLocalPointers(file, checker, pkg.Fset, false)
	// println("parseLocalFile", pkg.PkgPath, file.Name.Name)
	analysis.ParseLocalGotos(file, checker, pkg.Fset, false)
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

func hashType(t types.Type, pkg *PackageData) (value uint32) {
	e := pkg.typeMap.At(t)
	if e == nil {
		pkg.typeMap.Set(t, pkg.typeMapIndex)
		value = pkg.typeMapIndex
		pkg.typeMapIndex++
	} else {
		value = e.(uint32)
	}
	return
}

func parsePkgList(conn net.Conn, list []*packages.Package, excludes map[string]bool, checksumMap map[string]string) {
	// merge packages
	for i := 0; i < len(list); i++ {
		mergePackage(list[i])
		if stdExports[list[i].PkgPath] {
			filterFile(list[i].Syntax[0], ast.IsExported, true)
		}
		if (stdExterns[list[i].PkgPath]) && !strings.HasSuffix(list[i].PkgPath, "_test") && !strings.HasSuffix(list[i].PkgPath, ".test") { // remove function bodies
			for _, file := range list[i].Syntax {
				for _, d := range file.Decls {
					switch f := d.(type) {
					case *ast.FuncDecl:
						f.Body = nil
					default:
					}
				}
			}
		}
	}
	// 2nd pass
	var wg sync.WaitGroup
	sem := make(chan struct{}, 20) // Semaphore to limit concurrency
	for _, pkg := range list {
		wg.Add(1)
		//memoryStats()
		pkg := pkg
		// TODO make this not eat up so much memory
		go func() {
			defer wg.Done()          // Done for wait group
			sem <- struct{}{}        // Acquire a token
			defer func() { <-sem }() // Release the token

			localExcludes := map[string]bool{}
			checker := types.NewChecker(&conf, pkg.Fset, pkg.Types, pkg.TypesInfo)
			pkgData := PackageData{pkg.Fset, checker, make(map[uint32]map[string]interface{}), &typeutil.Map{}, 0}
			parseLocalPackage(pkg, &pkgData, localExcludes)
			// parse
			syntax := parsePkg(pkg)
			// set checksum
			if checksum, exists := checksumMap[pkg.PkgPath]; exists {
				syntax.Checksum = checksum
			}
			pkg = nil
			checker = nil
			// send data
			sendData(conn, *syntax)
			if conn == nil {
				b, err := json.MarshalIndent(*syntax, "", "    ")
				panicIfError(err)
				println("write check.json")
				panicIfError(os.WriteFile("check.json", b, 0666))
			}
			syntax = nil
			localExcludes = nil
			// leave
			//debug.FreeOSMemory()
			//memoryStats()
		}()
	}
	wg.Wait()
}

func parsePkg(pkg *packages.Package) *packageType {
	fset := pkg.Fset
	data := &packageType{}
	for _, obj := range pkg.TypesInfo.InitOrder {
		for _, v := range obj.Lhs {
			if !stdExports[pkg.PkgPath] || v.Exported() {
				//println(v.Name(), stdgoExports[pkg.PkgPath], v.Exported())
				data.Order = append(data.Order, v.Name())
			}
		}

	}
	data.Name = pkg.Name
	data.Path = pkg.PkgPath
	checker := types.NewChecker(&conf, fset, pkg.Types, pkg.TypesInfo)
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
		pkgData := &PackageData{pkg.Fset, checker, make(map[uint32]map[string]interface{}), &typeutil.Map{}, 0}
		data.Files = []fileType{parseFile(pkg.Syntax[0], name, pkgData)}
		data.TypeList = make([]map[string]interface{}, len(pkgData.hashMap))
		i := 0
		for _, value := range pkgData.hashMap {
			data.TypeList[i] = value
			i++
		}
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

func parseFile(file *ast.File, path string, pkg *PackageData) fileType {
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
				obj := parseData(decl, pkg)
				data.Decls = append(data.Decls, obj)
			default:
				obj := parseData(decl, pkg)
				data.Decls = append(data.Decls, obj)
			}
		default:
			obj := parseData(decl, pkg)
			data.Decls = append(data.Decls, obj)
		}
	}
	return data
}
func parseBody(list []ast.Stmt, pkg *PackageData) []map[string]interface{} {
	data := make([]map[string]interface{}, len(list))
	for i, obj := range list {
		data[i] = parseData(obj, pkg)
	}
	return data
}
func parseExprList(list []ast.Expr, pkg *PackageData) []map[string]interface{} {
	data := make([]map[string]interface{}, len(list))
	for i, obj := range list {
		data[i] = parseData(obj, pkg)
	}
	return data
}

var methodCache typeutil.MethodSetCache

func parseSpecList(list []ast.Spec, pkg *PackageData) []map[string]interface{} {
	data := make([]map[string]interface{}, len(list))
	for i, obj := range list {
		switch obj := obj.(type) {
		case *ast.ValueSpec:
			values := make([]map[string]interface{}, len(obj.Values))
			for j := range obj.Values {
				values[j] = parseData(obj.Values[j], pkg)
			}
			for j := range obj.Names {
				if c, ok := pkg.checker.ObjectOf(obj.Names[j]).(*types.Const); ok {
					basic, ok := pkg.checker.TypeOf(obj.Names[j]).Underlying().(*types.Basic)
					if ok {
						e := analysis.GetConstant(basic, c.Val(), nil, true)
						if e != nil {
							if len(values) == 0 && j == 0 || j >= len(values) {
								values = append(values, parseData(e, pkg))
							} else {
								values[j] = parseData(e, pkg)
							}
						}
					}
				}
			}
			data[i] = map[string]interface{}{
				"id":      "ValueSpec",
				"names":   parseIdents(obj.Names, pkg),
				"type":    parseData(obj.Type, pkg),
				"values":  values,
				"doc":     parseCommentGroup(obj.Doc),
				"comment": parseCommentGroup(obj.Comment),
			}
		case *ast.TypeSpec:
			named := pkg.checker.ObjectOf(obj.Name)
			if named == nil {
				continue
			}
			object := pkg.checker.ObjectOf(obj.Name)

			methods := parseMethods(object.Type(), &methodCache, 1, map[string]bool{}, true, pkg)
			var params map[string]interface{} = nil

			if obj.TypeParams != nil {
				params = parseFieldList(obj.TypeParams.List, pkg)
			}
			data[i] = map[string]interface{}{
				"id":      "TypeSpec",
				"assign":  parsePos(obj.Assign, pkg.fset),
				"name":    parseData(obj.Name, pkg),
				"type":    parseData(obj.Type, pkg),
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
				typeObj = pkg.checker.Info.Defs[obj.Name]
			} else {
				typeObj = pkg.checker.Info.Implicits[obj]
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
			data[i] = parseData(obj, pkg)
		}
		data[i]["pos"] = parsePos(obj.Pos(), pkg.fset)
		data[i]["end"] = parsePos(obj.End(), pkg.fset)
	}
	return data
}

func parseMethods(object types.Type, methodCache *typeutil.MethodSetCache, index int, marked map[string]bool, intuitionBool bool, pkg *PackageData) []map[string]interface{} {
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
				recvParseType = parseType(recv.Type(), marked, pkg)
			}
			methods = append(methods, map[string]interface{}{
				"name":  sel.Obj().Name(),
				"type":  parseType(sel.Type(), marked, pkg),
				"recv":  recvParseType,
				"index": sel.Index(),
			})
		}
	}
	return methods
}

type PackageData struct {
	fset         *token.FileSet
	checker      *types.Checker
	hashMap      map[uint32]map[string]interface{}
	typeMap      *typeutil.Map
	typeMapIndex uint32
}

func parseType(node interface{}, marked2 map[string]bool, pkg *PackageData) map[string]interface{} {
	marked := copyMap(marked2)
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
	case "Var", "Pointer", "Union", "TypeParams": //, "Slice", "Array":
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
		hash = hashType(t, pkg)
		_, exists := pkg.hashMap[hash]
		if !exists {
			pkg.hashMap[hash] = data
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
			data["underlying"] = parseType(named.Underlying(), marked, pkg)
			data["alias"] = true
		} else {
			if !marked[path] {
				data["methods"] = parseMethods(named, &methodCache, 0, marked, true, pkg)
				marked[path] = true
				data["underlying"] = parseType(named.Underlying(), marked, pkg)
				params := make([]map[string]interface{}, named.TypeArgs().Len())
				for i := 0; i < len(params); i++ {
					params[i] = parseType(named.TypeArgs().At(i), marked, pkg)
				}
				data["params"] = params
			}
		}
		data["path"] = path
	case "Slice":
		s := node.(*types.Slice)
		data["elem"] = parseType(s.Elem(), marked, pkg)
	case "Struct":
		s := node.(*types.Struct)
		fields := make([]map[string]interface{}, s.NumFields())
		for i := 0; i < s.NumFields(); i++ {
			v := s.Field(i)
			fields[i] = map[string]interface{}{
				"name":     v.Name(),
				"type":     parseType(v.Type(), marked, pkg),
				"embedded": v.Embedded(),
			}
		}
		data["fields"] = fields
	case "Interface":
		s := node.(*types.Interface)
		data["empty"] = s.Empty()
		methods := parseMethods(s, &methodCache, 0, marked, true, pkg)
		data["methods"] = methods
		embeds := make([]map[string]interface{}, s.NumEmbeddeds())
		for i := 0; i < s.NumEmbeddeds(); i++ {
			v := s.EmbeddedType(i)
			embeds[i] = parseType(v, marked, pkg)
		}
		data["embeds"] = embeds
		normalTerms, err := typeparams.NormalTerms(s)
		if normalTerms != nil {
			panicIfError(err)
			terms := make([]map[string]interface{}, len(normalTerms))
			for i, t := range normalTerms {
				terms[i] = map[string]interface{}{
					"tidle": t.Tilde(),
					"type":  parseType(t.Type(), marked, pkg),
				}
			}
			data["id"] = "Union"
			data["terms"] = terms
		}
	case "Pointer":
		s := node.(*types.Pointer)
		data["elem"] = parseType(s.Elem(), marked, pkg)
	case "Basic":
		s := node.(*types.Basic)
		data["kind"] = s.Kind() // is int
	case "Array":
		s := node.(*types.Array)
		data["elem"] = parseType(s.Elem(), marked, pkg)
		data["len"] = int32(s.Len())
	case "Map":
		s := node.(*types.Map)
		data["elem"] = parseType(s.Elem(), marked, pkg)
		data["key"] = parseType(s.Key(), marked, pkg)
	case "Signature":
		s := node.(*types.Signature)
		data["variadic"] = s.Variadic()
		data["params"] = parseType(s.Params(), marked, pkg)
		data["results"] = parseType(s.Results(), marked, pkg)
		data["recv"] = parseType(s.Recv(), marked, pkg)
		var params []map[string]interface{}
		if s.TypeParams().Len() > s.RecvTypeParams().Len() {
			params = make([]map[string]interface{}, s.TypeParams().Len())
			for i := 0; i < len(params); i++ {
				params[i] = parseType(s.TypeParams().At(i), marked, pkg)
			}
		} else {
			params = make([]map[string]interface{}, s.RecvTypeParams().Len())
			for i := 0; i < len(params); i++ {
				params[i] = parseType(s.RecvTypeParams().At(i), marked, pkg)
			}
		}
		data["typeParams"] = params
	case "Tuple":
		s := node.(*types.Tuple)
		data["len"] = s.Len()
		vars := make([]map[string]interface{}, s.Len())
		for i := 0; i < s.Len(); i++ {
			a := s.At(i)
			vars[i] = parseType(a, marked, pkg)
		}
		data["vars"] = vars
	case "Var":
		s := node.(*types.Var)
		data["name"] = s.Name()
		data["type"] = parseType(s.Type(), marked, pkg)
		data["origin"] = parseType(s.Origin().Type(), marked, pkg)
	case "Chan":
		s := node.(*types.Chan)
		data["elem"] = parseType(s.Elem(), marked, pkg)
		data["dir"] = s.Dir()
	case "TypeParam":
		s := node.(*types.TypeParam)
		data["name"] = s.Obj().Name()
		data["constraint"] = parseType(s.Constraint(), marked, pkg)
	case "Union":
		s := node.(*types.Union)
		terms := make([]map[string]interface{}, s.Len())
		if s.Len() == 1 && s.Term(0).Tilde() {
			data = parseType(s.Term(0).Type(), marked, pkg)
			//fmt.Println(data)
		} else {
			for i := 0; i < s.Len(); i++ {
				t := s.Term(i)
				terms[i] = map[string]interface{}{
					"tidle": t.Tilde(),
					"type":  parseType(t.Type(), marked, pkg),
				}
			}
			//data["underlying"] = parseType(s.Underlying())
			data["terms"] = terms
		}
	default:
		log.Fatal("unknown parse type id: " + data["id"].(string))
	}
	if !isVar {
		data["hash"] = hash
		pkg.hashMap[hash] = data
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

func parseData(node interface{}, pkg *PackageData) map[string]interface{} {
	data := make(map[string]interface{})
	switch node := node.(type) {
	case *ast.BasicLit:
		return parseBasicLit(node, pkg)
	case *ast.Ident:
		return parseIdent(node, pkg)
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
			data[field.Name] = parsePos(value, pkg.fset)
		case token.Token:
			data[field.Name] = value.String()
		case *ast.InterfaceType:
			data[field.Name] = parseData(value, pkg)
		case *ast.StructType, *ast.ArrayType, *ast.MapType, *ast.ChanType:
			data[field.Name] = parseData(value, pkg)
		case *ast.BasicLit:
			data[field.Name] = parseBasicLit(value, pkg)
		case *ast.BadExpr, *ast.Ellipsis, *ast.FuncLit, *ast.CompositeLit, *ast.ParenExpr:
			data[field.Name] = parseData(value, pkg)
		case *ast.SelectorExpr, *ast.IndexExpr, *ast.IndexListExpr, *ast.SliceExpr, *ast.TypeAssertExpr, *ast.CallExpr, *ast.StarExpr, *ast.UnaryExpr, *ast.KeyValueExpr:
			data[field.Name] = parseData(value, pkg)
		case *ast.ExprStmt:
			data[field.Name] = map[string]interface{}{
				"id":  "ExprStmt",
				"x":   parseData(value.X, pkg),
				"pos": parsePos(value.X.Pos(), pkg.fset),
				"end": parsePos(value.X.End(), pkg.fset),
			}
		case *ast.BadStmt, *ast.DeclStmt, *ast.EmptyStmt, *ast.LabeledStmt, *ast.SendStmt, *ast.IncDecStmt, *ast.GoStmt, ast.DeferStmt:
			data[field.Name] = parseData(value, pkg)
		case *ast.ReturnStmt, *ast.BranchStmt, *ast.SelectStmt:
			data[field.Name] = parseData(value, pkg)
		case *ast.BinaryExpr:
			obj := parseData(value, pkg)
			data[field.Name] = obj
		case *ast.BlockStmt, *ast.IfStmt, *ast.CaseClause, *ast.SwitchStmt, *ast.ForStmt, *ast.RangeStmt, *ast.TypeSwitchStmt, *ast.CommClause, *ast.FuncType: // in scopes
			data[field.Name] = parseData(value, pkg)
		case *ast.AssignStmt:
			data[field.Name] = parseData(value, pkg)
		case *ast.GenDecl:
			file := ast.File{}
			file.Decls = append(file.Decls, value)
			data[field.Name] = parseFile(&file, "", pkg)
		case *ast.Ident:
			data[field.Name] = parseIdent(value, pkg)
		case ast.ChanDir, bool, string, int: // is an int
			data[field.Name] = value
		case ast.FieldList:
			data[field.Name] = parseFieldList(value.List, pkg)
		case *ast.FieldList:
			if value == nil {
				continue
			}
			data[field.Name] = parseFieldList(value.List, pkg)
		case []ast.Stmt:
			if value == nil {
				continue
			}
			data[field.Name] = parseBody(value, pkg)
		case []ast.Expr:
			data[field.Name] = parseExprList(value, pkg)
		case []ast.Spec:
			data[field.Name] = parseSpecList(value, pkg)
		case *ast.Object: // skip
		case []*ast.Ident:
			data[field.Name] = parseIdents(value, pkg)
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
		data["exprType"] = parseData(node.Type, pkg)
		data["type"] = parseType(pkg.checker.TypeOf(node), map[string]bool{}, pkg)
	case *ast.ExprStmt, *ast.BlockStmt, *ast.IfStmt, *ast.BadStmt, *ast.EmptyStmt, *ast.LabeledStmt, *ast.SendStmt, *ast.IncDecStmt, *ast.GoStmt, ast.DeferStmt, *ast.ReturnStmt, *ast.BranchStmt, *ast.SelectStmt, *ast.CaseClause, *ast.SwitchStmt, *ast.ForStmt, *ast.RangeStmt, *ast.TypeSwitchStmt:
		data["location"] = parseLocation(node.(ast.Stmt).Pos(), pkg.fset)
	case *ast.DeclStmt:
		data["pos"] = parsePos(node.Pos(), pkg.fset)
	case *ast.SelectorExpr:
		typeAndValue := pkg.checker.Types[node.X.(ast.Expr)]
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
					data["recv"] = parseType(originSig.Recv(), map[string]bool{}, pkg)
					break
				}
			}
		default:
		}
		data["type"] = parseType(pkg.checker.TypeOf(node), map[string]bool{}, pkg)
	case *ast.IndexExpr, *ast.IndexListExpr, *ast.Ellipsis:
		data["type"] = parseType(pkg.checker.TypeOf(node.(ast.Expr)), map[string]bool{}, pkg)
	case *ast.InterfaceType, *ast.MapType, *ast.ArrayType, *ast.ChanType, *ast.FuncType, *ast.StructType:
		data["type"] = parseType(pkg.checker.TypeOf(node.(ast.Expr)), map[string]bool{}, pkg)
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
				t := pkg.checker.TypeOf(fun.X)
				switch t := t.(type) {
				case *types.Named:
					if t.TypeArgs() != nil {
						for i := 0; i < t.TypeArgs().Len(); i++ {
							typeArgs = append(typeArgs, parseType(t.TypeArgs().At(i), map[string]bool{}, pkg))
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
				println("issue generic:", reflect.TypeOf(fun).String())
			}
		}
		resolveGeneric(node.Fun)
		if ident != nil {
			inst := pkg.checker.Instances[ident]
			if inst.TypeArgs != nil {
				for i := 0; i < inst.TypeArgs.Len(); i++ {
					typeArgs = append(typeArgs, parseType(inst.TypeArgs.At(i), map[string]bool{}, pkg))
				}
			}
		}
		if len(typeArgs) > 0 {
			data["typeArgs"] = typeArgs
		}
		data["type"] = parseType(pkg.checker.TypeOf(node), map[string]bool{}, pkg)
	case *ast.StarExpr, *ast.BinaryExpr, *ast.SliceExpr, *ast.ParenExpr:
		data["type"] = parseType(pkg.checker.TypeOf(node.(ast.Expr)), map[string]bool{}, pkg)
	case *ast.KeyValueExpr:
	case *ast.FuncDecl:
		data["pos"] = parsePos(node.Pos(), pkg.fset)
		data["end"] = parsePos(node.End(), pkg.fset)
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
func parseIdents(value []*ast.Ident, pkg *PackageData) []map[string]interface{} {
	list := make([]map[string]interface{}, len(value))
	for i := range value {
		list[i] = parseIdent(value[i], pkg)
	}
	return list
}
func parseIdent(value *ast.Ident, pkg *PackageData) map[string]interface{} {
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
	instance := pkg.checker.Instances[value]
	obj := pkg.checker.ObjectOf(value)
	if obj != nil {
		if obj.Pkg() != nil && obj.Pkg().Scope().Lookup(obj.Name()) == obj {
			if obj.Pkg().Path() != "command-line-arguments" {
				data["objPath"] = obj.Pkg().Path()
			}
		}
	}
	if instance.Type != nil {
		data["type"] = parseType(instance.Type, map[string]bool{}, pkg)
		if obj != nil {
			// find what the generic types will be
			data["objType"] = parseType(obj.Type(), map[string]bool{}, pkg)
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
			data["type"] = parseType(obj.Type(), map[string]bool{}, pkg)
		} else {
			data["type"] = parseType(pkg.checker.TypeOf(value), map[string]bool{}, pkg)
		}
	}
	return data
}
func parseBasicLit(expr *ast.BasicLit, pkg *PackageData) map[string]interface{} {
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
			"type":  parseType(pkg.checker.TypeOf(expr), map[string]bool{}, pkg),
		}
	}
	if value := pkg.checker.Types[expr].Value; value != nil {
		basic, ok := pkg.checker.TypeOf(expr).Underlying().(*types.Basic)
		if !ok {
			return basicLitFallback(expr, pkg)
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
			"type":  parseType(pkg.checker.TypeOf(expr), map[string]bool{}, pkg),
		}
	} else {
		return basicLitFallback(expr, pkg)
	}
}

func parsePos(pos token.Pos, fset *token.FileSet) int {
	fpos := fset.PositionFor(pos, true)
	return fpos.Offset
}

func parseLocation(pos token.Pos, fset *token.FileSet) string {
	fpos := fset.PositionFor(pos, true)
	return fpos.Filename + "#L" + strconv.Itoa(fpos.Line)
}

func basicLitFallback(expr *ast.BasicLit, pkg *PackageData) map[string]interface{} {
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
		panicIfError(err)
		output = fmt.Sprint(i)
		if output == "+Inf" || output == "-Inf" {
			output = "0.0"
		}
	case token.IMAG:
		i, err := strconv.ParseComplex(expr.Value, 128)
		panicIfError(err)
		output = fmt.Sprint(real(i)) + "i" + fmt.Sprint(imag(i))
	}
	return map[string]interface{}{
		"id":    "BasicLit",
		"kind":  nil,
		"token": expr.Kind.String(),
		"value": output,
		"basic": true,
		"type":  parseType(pkg.checker.TypeOf(expr), map[string]bool{}, pkg),
	}
}

func getId(obj interface{}) string {
	if obj == nil {
		return ""
	}
	return reflect.TypeOf(obj).Elem().Name()
}
func parseFieldList(list []*ast.Field, pkg *PackageData) map[string]interface{} {
	data := make([]map[string]interface{}, len(list))
	for i, field := range list {
		data[i] = parseField(field, pkg)
	}
	return map[string]interface{}{
		"id":   "FieldList",
		"list": data,
	}
}
func parseField(field *ast.Field, pkg *PackageData) map[string]interface{} {
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
		"type":    parseData(field.Type, pkg),
		"tag":     tag,
	}
}

func printExpr(node any, fset *token.FileSet) {
	var buf bytes.Buffer
	printer.Fprint(&buf, fset, node)
	println(buf.String())
}
