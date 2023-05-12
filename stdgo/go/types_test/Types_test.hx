package stdgo.go.types_test;
import stdgo.go.types.Types;
import stdgo.go.types.Types;
import stdgo.go.types.Types;
import stdgo.go.types.Types;
import stdgo.go.types.Types;
import stdgo.go.types.Types;
import stdgo.go.types.Types;
import stdgo.go.types.Types;
import stdgo.go.types.Types;
import stdgo.go.types.Types;
import stdgo.go.types.Types;
import stdgo.go.types.Types;
import stdgo.go.types.Types;
import stdgo.go.types.Types;
import stdgo.go.types.Types;
import stdgo.go.types.Types;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.go.types.Types;
/**
    
    
    
**/
private var _builtinCalls = (new Slice<T__struct_26>(
100,
100,
({ _name : ("append" : GoString), _src : ("var s []int; _ = append(s)" : GoString), _sig : ("func([]int, ...int) []int" : GoString) } : T__struct_26),
({ _name : ("append" : GoString), _src : ("var s []int; _ = append(s, 0)" : GoString), _sig : ("func([]int, ...int) []int" : GoString) } : T__struct_26),
({ _name : ("append" : GoString), _src : ("var s []int; _ = (append)(s, 0)" : GoString), _sig : ("func([]int, ...int) []int" : GoString) } : T__struct_26),
({ _name : ("append" : GoString), _src : ("var s []byte; _ = ((append))(s, 0)" : GoString), _sig : ("func([]byte, ...byte) []byte" : GoString) } : T__struct_26),
({ _name : ("append" : GoString), _src : ("var s []byte; _ = append(s, \"foo\"...)" : GoString), _sig : ("func([]byte, string...) []byte" : GoString) } : T__struct_26),
({ _name : ("append" : GoString), _src : ("type T []byte; var s T; var str string; _ = append(s, str...)" : GoString), _sig : ("func(p.T, string...) p.T" : GoString) } : T__struct_26),
({ _name : ("append" : GoString), _src : ("type T []byte; type U string; var s T; var str U; _ = append(s, str...)" : GoString), _sig : ("func(p.T, p.U...) p.T" : GoString) } : T__struct_26),
({ _name : ("cap" : GoString), _src : ("var s [10]int; _ = cap(s)" : GoString), _sig : ("invalid type" : GoString) } : T__struct_26),
({ _name : ("cap" : GoString), _src : ("var s [10]int; _ = cap(&s)" : GoString), _sig : ("invalid type" : GoString) } : T__struct_26),
({ _name : ("cap" : GoString), _src : ("var s []int64; _ = cap(s)" : GoString), _sig : ("func([]int64) int" : GoString) } : T__struct_26),
({ _name : ("cap" : GoString), _src : ("var c chan<-bool; _ = cap(c)" : GoString), _sig : ("func(chan<- bool) int" : GoString) } : T__struct_26),
({ _name : ("cap" : GoString), _src : ("type S []byte; var s S; _ = cap(s)" : GoString), _sig : ("func(p.S) int" : GoString) } : T__struct_26),
({ _name : ("cap" : GoString), _src : ("var s P; _ = cap(s)" : GoString), _sig : ("func(P) int" : GoString) } : T__struct_26),
({ _name : ("len" : GoString), _src : ("_ = len(\"foo\")" : GoString), _sig : ("invalid type" : GoString) } : T__struct_26),
({ _name : ("len" : GoString), _src : ("var s string; _ = len(s)" : GoString), _sig : ("func(string) int" : GoString) } : T__struct_26),
({ _name : ("len" : GoString), _src : ("var s [10]int; _ = len(s)" : GoString), _sig : ("invalid type" : GoString) } : T__struct_26),
({ _name : ("len" : GoString), _src : ("var s [10]int; _ = len(&s)" : GoString), _sig : ("invalid type" : GoString) } : T__struct_26),
({ _name : ("len" : GoString), _src : ("var s []int64; _ = len(s)" : GoString), _sig : ("func([]int64) int" : GoString) } : T__struct_26),
({ _name : ("len" : GoString), _src : ("var c chan<-bool; _ = len(c)" : GoString), _sig : ("func(chan<- bool) int" : GoString) } : T__struct_26),
({ _name : ("len" : GoString), _src : ("var m map[string]float32; _ = len(m)" : GoString), _sig : ("func(map[string]float32) int" : GoString) } : T__struct_26),
({ _name : ("len" : GoString), _src : ("type S []byte; var s S; _ = len(s)" : GoString), _sig : ("func(p.S) int" : GoString) } : T__struct_26),
({ _name : ("len" : GoString), _src : ("var s P; _ = len(s)" : GoString), _sig : ("func(P) int" : GoString) } : T__struct_26),
({ _name : ("clear" : GoString), _src : ("var m map[float64]int; clear(m)" : GoString), _sig : ("func(map[float64]int)" : GoString) } : T__struct_26),
({ _name : ("clear" : GoString), _src : ("var s []byte; clear(s)" : GoString), _sig : ("func([]byte)" : GoString) } : T__struct_26),
({ _name : ("clear" : GoString), _src : ("var p *[10]int; clear(p)" : GoString), _sig : ("func(*[10]int)" : GoString) } : T__struct_26),
({ _name : ("clear" : GoString), _src : ("var s P; clear(s)" : GoString), _sig : ("func(P)" : GoString) } : T__struct_26),
({ _name : ("close" : GoString), _src : ("var c chan int; close(c)" : GoString), _sig : ("func(chan int)" : GoString) } : T__struct_26),
({ _name : ("close" : GoString), _src : ("var c chan<- chan string; close(c)" : GoString), _sig : ("func(chan<- chan string)" : GoString) } : T__struct_26),
({ _name : ("complex" : GoString), _src : ("_ = complex(1, 0)" : GoString), _sig : ("invalid type" : GoString) } : T__struct_26),
({ _name : ("complex" : GoString), _src : ("var re float32; _ = complex(re, 1.0)" : GoString), _sig : ("func(float32, float32) complex64" : GoString) } : T__struct_26),
({ _name : ("complex" : GoString), _src : ("var im float64; _ = complex(1, im)" : GoString), _sig : ("func(float64, float64) complex128" : GoString) } : T__struct_26),
({ _name : ("complex" : GoString), _src : ("type F32 float32; var re, im F32; _ = complex(re, im)" : GoString), _sig : ("func(p.F32, p.F32) complex64" : GoString) } : T__struct_26),
({ _name : ("complex" : GoString), _src : ("type F64 float64; var re, im F64; _ = complex(re, im)" : GoString), _sig : ("func(p.F64, p.F64) complex128" : GoString) } : T__struct_26),
({ _name : ("copy" : GoString), _src : ("var src, dst []byte; copy(dst, src)" : GoString), _sig : ("func([]byte, []byte) int" : GoString) } : T__struct_26),
({ _name : ("copy" : GoString), _src : ("type T [][]int; var src, dst T; _ = copy(dst, src)" : GoString), _sig : ("func(p.T, p.T) int" : GoString) } : T__struct_26),
({ _name : ("copy" : GoString), _src : ("var src string; var dst []byte; copy(dst, src)" : GoString), _sig : ("func([]byte, string) int" : GoString) } : T__struct_26),
({ _name : ("copy" : GoString), _src : ("type T string; type U []byte; var src T; var dst U; copy(dst, src)" : GoString), _sig : ("func(p.U, p.T) int" : GoString) } : T__struct_26),
({ _name : ("copy" : GoString), _src : ("var dst []byte; copy(dst, \"hello\")" : GoString), _sig : ("func([]byte, string) int" : GoString) } : T__struct_26),
({ _name : ("delete" : GoString), _src : ("var m map[string]bool; delete(m, \"foo\")" : GoString), _sig : ("func(map[string]bool, string)" : GoString) } : T__struct_26),
({ _name : ("delete" : GoString), _src : ("type (K string; V int); var m map[K]V; delete(m, \"foo\")" : GoString), _sig : ("func(map[p.K]p.V, p.K)" : GoString) } : T__struct_26),
({ _name : ("imag" : GoString), _src : ("_ = imag(1i)" : GoString), _sig : ("invalid type" : GoString) } : T__struct_26),
({ _name : ("imag" : GoString), _src : ("var c complex64; _ = imag(c)" : GoString), _sig : ("func(complex64) float32" : GoString) } : T__struct_26),
({ _name : ("imag" : GoString), _src : ("var c complex128; _ = imag(c)" : GoString), _sig : ("func(complex128) float64" : GoString) } : T__struct_26),
({ _name : ("imag" : GoString), _src : ("type C64 complex64; var c C64; _ = imag(c)" : GoString), _sig : ("func(p.C64) float32" : GoString) } : T__struct_26),
({ _name : ("imag" : GoString), _src : ("type C128 complex128; var c C128; _ = imag(c)" : GoString), _sig : ("func(p.C128) float64" : GoString) } : T__struct_26),
({ _name : ("real" : GoString), _src : ("_ = real(1i)" : GoString), _sig : ("invalid type" : GoString) } : T__struct_26),
({ _name : ("real" : GoString), _src : ("var c complex64; _ = real(c)" : GoString), _sig : ("func(complex64) float32" : GoString) } : T__struct_26),
({ _name : ("real" : GoString), _src : ("var c complex128; _ = real(c)" : GoString), _sig : ("func(complex128) float64" : GoString) } : T__struct_26),
({ _name : ("real" : GoString), _src : ("type C64 complex64; var c C64; _ = real(c)" : GoString), _sig : ("func(p.C64) float32" : GoString) } : T__struct_26),
({ _name : ("real" : GoString), _src : ("type C128 complex128; var c C128; _ = real(c)" : GoString), _sig : ("func(p.C128) float64" : GoString) } : T__struct_26),
({ _name : ("make" : GoString), _src : ("_ = make([]int, 10)" : GoString), _sig : ("func([]int, int) []int" : GoString) } : T__struct_26),
({ _name : ("make" : GoString), _src : ("type T []byte; _ = make(T, 10, 20)" : GoString), _sig : ("func(p.T, int, int) p.T" : GoString) } : T__struct_26),
({ _name : ("make" : GoString), _src : ("              _ = make([]int, 0   )" : GoString), _sig : ("func([]int, int) []int" : GoString) } : T__struct_26),
({ _name : ("make" : GoString), _src : ("var l    int; _ = make([]int, l   )" : GoString), _sig : ("func([]int, int) []int" : GoString) } : T__struct_26),
({ _name : ("make" : GoString), _src : ("              _ = make([]int, 0, 0)" : GoString), _sig : ("func([]int, int, int) []int" : GoString) } : T__struct_26),
({ _name : ("make" : GoString), _src : ("var l    int; _ = make([]int, l, 0)" : GoString), _sig : ("func([]int, int, int) []int" : GoString) } : T__struct_26),
({ _name : ("make" : GoString), _src : ("var    c int; _ = make([]int, 0, c)" : GoString), _sig : ("func([]int, int, int) []int" : GoString) } : T__struct_26),
({ _name : ("make" : GoString), _src : ("var l, c int; _ = make([]int, l, c)" : GoString), _sig : ("func([]int, int, int) []int" : GoString) } : T__struct_26),
({ _name : ("make" : GoString), _src : ("                _ = make([]int       , 0   )" : GoString), _sig : ("func([]int, int) []int" : GoString) } : T__struct_26),
({ _name : ("make" : GoString), _src : ("var l    byte ; _ = make([]int8      , l   )" : GoString), _sig : ("func([]int8, byte) []int8" : GoString) } : T__struct_26),
({ _name : ("make" : GoString), _src : ("                _ = make([]int16     , 0, 0)" : GoString), _sig : ("func([]int16, int, int) []int16" : GoString) } : T__struct_26),
({ _name : ("make" : GoString), _src : ("var l    int16; _ = make([]string    , l, 0)" : GoString), _sig : ("func([]string, int16, int) []string" : GoString) } : T__struct_26),
({ _name : ("make" : GoString), _src : ("var    c int32; _ = make([]float64   , 0, c)" : GoString), _sig : ("func([]float64, int, int32) []float64" : GoString) } : T__struct_26),
({ _name : ("make" : GoString), _src : ("var l, c uint ; _ = make([]complex128, l, c)" : GoString), _sig : ("func([]complex128, uint, uint) []complex128" : GoString) } : T__struct_26),
({ _name : ("make" : GoString), _src : ("const l uint = 1; _ = make([]int, l)" : GoString), _sig : ("func([]int, uint) []int" : GoString) } : T__struct_26),
({ _name : ("new" : GoString), _src : ("_ = new(int)" : GoString), _sig : ("func(int) *int" : GoString) } : T__struct_26),
({ _name : ("new" : GoString), _src : ("type T struct{}; _ = new(T)" : GoString), _sig : ("func(p.T) *p.T" : GoString) } : T__struct_26),
({ _name : ("panic" : GoString), _src : ("panic(0)" : GoString), _sig : ("func(interface{})" : GoString) } : T__struct_26),
({ _name : ("panic" : GoString), _src : ("panic(\"foo\")" : GoString), _sig : ("func(interface{})" : GoString) } : T__struct_26),
({ _name : ("print" : GoString), _src : ("print()" : GoString), _sig : ("func()" : GoString) } : T__struct_26),
({ _name : ("print" : GoString), _src : ("print(0)" : GoString), _sig : ("func(int)" : GoString) } : T__struct_26),
({ _name : ("print" : GoString), _src : ("print(1, 2.0, \"foo\", true)" : GoString), _sig : ("func(int, float64, string, bool)" : GoString) } : T__struct_26),
({ _name : ("println" : GoString), _src : ("println()" : GoString), _sig : ("func()" : GoString) } : T__struct_26),
({ _name : ("println" : GoString), _src : ("println(0)" : GoString), _sig : ("func(int)" : GoString) } : T__struct_26),
({ _name : ("println" : GoString), _src : ("println(1, 2.0, \"foo\", true)" : GoString), _sig : ("func(int, float64, string, bool)" : GoString) } : T__struct_26),
({ _name : ("recover" : GoString), _src : ("recover()" : GoString), _sig : ("func() interface{}" : GoString) } : T__struct_26),
({ _name : ("recover" : GoString), _src : ("_ = recover()" : GoString), _sig : ("func() interface{}" : GoString) } : T__struct_26),
({ _name : ("Add" : GoString), _src : ("var p unsafe.Pointer; _ = unsafe.Add(p, -1.0)" : GoString), _sig : ("func(unsafe.Pointer, int) unsafe.Pointer" : GoString) } : T__struct_26),
({ _name : ("Add" : GoString), _src : ("var p unsafe.Pointer; var n uintptr; _ = unsafe.Add(p, n)" : GoString), _sig : ("func(unsafe.Pointer, uintptr) unsafe.Pointer" : GoString) } : T__struct_26),
({ _name : ("Add" : GoString), _src : ("_ = unsafe.Add(nil, 0)" : GoString), _sig : ("func(unsafe.Pointer, int) unsafe.Pointer" : GoString) } : T__struct_26),
({ _name : ("Alignof" : GoString), _src : ("_ = unsafe.Alignof(0)" : GoString), _sig : ("invalid type" : GoString) } : T__struct_26),
({ _name : ("Alignof" : GoString), _src : ("var x struct{}; _ = unsafe.Alignof(x)" : GoString), _sig : ("invalid type" : GoString) } : T__struct_26),
({ _name : ("Alignof" : GoString), _src : ("var x P; _ = unsafe.Alignof(x)" : GoString), _sig : ("func(P) uintptr" : GoString) } : T__struct_26),
({ _name : ("Offsetof" : GoString), _src : ("var x struct{f bool}; _ = unsafe.Offsetof(x.f)" : GoString), _sig : ("invalid type" : GoString) } : T__struct_26),
({ _name : ("Offsetof" : GoString), _src : ("var x struct{_ int; f bool}; _ = unsafe.Offsetof((&x).f)" : GoString), _sig : ("invalid type" : GoString) } : T__struct_26),
({ _name : ("Offsetof" : GoString), _src : ("var x struct{_ int; f P}; _ = unsafe.Offsetof((&x).f)" : GoString), _sig : ("func(P) uintptr" : GoString) } : T__struct_26),
({ _name : ("Sizeof" : GoString), _src : ("_ = unsafe.Sizeof(0)" : GoString), _sig : ("invalid type" : GoString) } : T__struct_26),
({ _name : ("Sizeof" : GoString), _src : ("var x struct{}; _ = unsafe.Sizeof(x)" : GoString), _sig : ("invalid type" : GoString) } : T__struct_26),
({ _name : ("Sizeof" : GoString), _src : ("var x P; _ = unsafe.Sizeof(x)" : GoString), _sig : ("func(P) uintptr" : GoString) } : T__struct_26),
({ _name : ("Slice" : GoString), _src : ("var p *int; _ = unsafe.Slice(p, 1)" : GoString), _sig : ("func(*int, int) []int" : GoString) } : T__struct_26),
({ _name : ("Slice" : GoString), _src : ("var p *byte; var n uintptr; _ = unsafe.Slice(p, n)" : GoString), _sig : ("func(*byte, uintptr) []byte" : GoString) } : T__struct_26),
({ _name : ("Slice" : GoString), _src : ("type B *byte; var b B; _ = unsafe.Slice(b, 0)" : GoString), _sig : ("func(*byte, int) []byte" : GoString) } : T__struct_26),
({ _name : ("SliceData" : GoString), _src : ("var s []int; _ = unsafe.SliceData(s)" : GoString), _sig : ("func([]int) *int" : GoString) } : T__struct_26),
({ _name : ("SliceData" : GoString), _src : ("type S []int; var s S; _ = unsafe.SliceData(s)" : GoString), _sig : ("func([]int) *int" : GoString) } : T__struct_26),
({ _name : ("String" : GoString), _src : ("var p *byte; _ = unsafe.String(p, 1)" : GoString), _sig : ("func(*byte, int) string" : GoString) } : T__struct_26),
({ _name : ("String" : GoString), _src : ("type B *byte; var b B; _ = unsafe.String(b, 0)" : GoString), _sig : ("func(*byte, int) string" : GoString) } : T__struct_26),
({ _name : ("StringData" : GoString), _src : ("var s string; _ = unsafe.StringData(s)" : GoString), _sig : ("func(string) *byte" : GoString) } : T__struct_26),
({ _name : ("StringData" : GoString), _src : ("_ = unsafe.StringData(\"foo\")" : GoString), _sig : ("func(string) *byte" : GoString) } : T__struct_26),
({ _name : ("assert" : GoString), _src : ("assert(true)" : GoString), _sig : ("invalid type" : GoString) } : T__struct_26),
({ _name : ("assert" : GoString), _src : ("type B bool; const pred B = 1 < 2; assert(pred)" : GoString), _sig : ("invalid type" : GoString) } : T__struct_26)) : Slice<T__struct_26>);
/**
    
    
    
**/
private var _haltOnError = stdgo.flag.Flag.bool_(("halt" : GoString), false, ("halt on error" : GoString));
/**
    
    
    
**/
private var _verifyErrors = stdgo.flag.Flag.bool_(("verify" : GoString), false, ("verify errors (rather than list them) in TestManual" : GoString));
/**
    
    
    
**/
private var _fset = stdgo.go.token.Token.newFileSet();
/**
    // Positioned errors are of the form filename:line:column: message .
    
    
**/
private var _posMsgRx = stdgo.regexp.Regexp.mustCompile(("^(.*:\\d+:\\d+): *(?s)(.*)" : GoString));
/**
    // ERROR comments must start with text `ERROR "rx"` or `ERROR rx` where
    // rx is a regular expression that matches the expected error message.
    // Space around "rx" or rx is ignored.
    
    
**/
private var _errRx = stdgo.regexp.Regexp.mustCompile(("^ *ERROR *\"?([^\"]*)\"?" : GoString));
/**
    
    
    
**/
private var _testExprs = (new Slice<stdgo.go.types_test.Types_test.T_testEntry>(
70,
70,
_dup(("x" : GoString))?.__copy__(),
_dup(("true" : GoString))?.__copy__(),
_dup(("42" : GoString))?.__copy__(),
_dup(("3.1415" : GoString))?.__copy__(),
_dup(("2.71828i" : GoString))?.__copy__(),
_dup(("\'a\'" : GoString))?.__copy__(),
_dup(("\"foo\"" : GoString))?.__copy__(),
_dup(("`bar`" : GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("func(){}" : GoString), ("(func() literal)" : GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
(new stdgo.go.types_test.Types_test.T_testEntry(("func(x int) complex128 {}" : GoString), ("(func(x int) complex128 literal)" : GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
(new stdgo.go.types_test.Types_test.T_testEntry(("[]int{1, 2, 3}" : GoString), ("[]int{…}" : GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("[1 << 10]byte" : GoString))?.__copy__(),
_dup(("[]int" : GoString))?.__copy__(),
_dup(("*int" : GoString))?.__copy__(),
_dup(("struct{x int}" : GoString))?.__copy__(),
_dup(("func()" : GoString))?.__copy__(),
_dup(("func(int, float32) string" : GoString))?.__copy__(),
_dup(("interface{m()}" : GoString))?.__copy__(),
_dup(("interface{m() string; n(x int)}" : GoString))?.__copy__(),
_dup(("interface{~int}" : GoString))?.__copy__(),
_dup(("map[string]int" : GoString))?.__copy__(),
_dup(("chan E" : GoString))?.__copy__(),
_dup(("<-chan E" : GoString))?.__copy__(),
_dup(("chan<- E" : GoString))?.__copy__(),
_dup(("interface{int}" : GoString))?.__copy__(),
_dup(("interface{~int}" : GoString))?.__copy__(),
_dup(("interface{~int}" : GoString))?.__copy__(),
_dup(("interface{int | string}" : GoString))?.__copy__(),
_dup(("interface{~int | ~string; float64; m()}" : GoString))?.__copy__(),
_dup(("interface{~T[int, string] | string}" : GoString))?.__copy__(),
_dup(("(x)" : GoString))?.__copy__(),
_dup(("x.f" : GoString))?.__copy__(),
_dup(("a[i]" : GoString))?.__copy__(),
_dup(("s[:]" : GoString))?.__copy__(),
_dup(("s[i:]" : GoString))?.__copy__(),
_dup(("s[:j]" : GoString))?.__copy__(),
_dup(("s[i:j]" : GoString))?.__copy__(),
_dup(("s[:j:k]" : GoString))?.__copy__(),
_dup(("s[i:j:k]" : GoString))?.__copy__(),
_dup(("x.(T)" : GoString))?.__copy__(),
_dup(("x.([10]int)" : GoString))?.__copy__(),
_dup(("x.([...]int)" : GoString))?.__copy__(),
_dup(("x.(struct{})" : GoString))?.__copy__(),
_dup(("x.(struct{x int; y, z float32; E})" : GoString))?.__copy__(),
_dup(("x.(func())" : GoString))?.__copy__(),
_dup(("x.(func(x int))" : GoString))?.__copy__(),
_dup(("x.(func() int)" : GoString))?.__copy__(),
_dup(("x.(func(x, y int, z float32) (r int))" : GoString))?.__copy__(),
_dup(("x.(func(a, b, c int))" : GoString))?.__copy__(),
_dup(("x.(func(x ...T))" : GoString))?.__copy__(),
_dup(("x.(interface{})" : GoString))?.__copy__(),
_dup(("x.(interface{m(); n(x int); E})" : GoString))?.__copy__(),
_dup(("x.(interface{m(); n(x int) T; E; F})" : GoString))?.__copy__(),
_dup(("x.(map[K]V)" : GoString))?.__copy__(),
_dup(("x.(chan E)" : GoString))?.__copy__(),
_dup(("x.(<-chan E)" : GoString))?.__copy__(),
_dup(("x.(chan<- chan int)" : GoString))?.__copy__(),
_dup(("x.(chan<- <-chan int)" : GoString))?.__copy__(),
_dup(("x.(<-chan chan int)" : GoString))?.__copy__(),
_dup(("x.(chan (<-chan int))" : GoString))?.__copy__(),
_dup(("f()" : GoString))?.__copy__(),
_dup(("f(x)" : GoString))?.__copy__(),
_dup(("int(x)" : GoString))?.__copy__(),
_dup(("f(x, x + y)" : GoString))?.__copy__(),
_dup(("f(s...)" : GoString))?.__copy__(),
_dup(("f(a, s...)" : GoString))?.__copy__(),
_dup(("*x" : GoString))?.__copy__(),
_dup(("&x" : GoString))?.__copy__(),
_dup(("x + y" : GoString))?.__copy__(),
_dup(("x + y << (2 * s)" : GoString))?.__copy__()) : Slice<stdgo.go.types_test.Types_test.T_testEntry>);
/**
    
    
    
**/
var h = stdgo.flag.Flag.int_(("H" : GoString), (5 : GoInt), ("Hilbert matrix size" : GoString));
/**
    
    
    
**/
private var _out = stdgo.flag.Flag.string(("out" : GoString), Go.str(), ("write generated program to out" : GoString));
/**
    
    
    
**/
private var _goods = (new Slice<GoString>(7, 7, ("func F[T any](x T) { F(x) }" : GoString), ("func F[T, U, V any]() { F[U, V, T](); F[V, T, U]() }" : GoString), ("type Ring[A, B, C any] struct { L *Ring[B, C, A]; R *Ring[C, A, B] }" : GoString), ("func F[T any]() { type U[T any] [unsafe.Sizeof(F[*T])]byte }" : GoString), ("func F[T any]() { type U[T any] [unsafe.Sizeof(F[*T])]byte; var _ U[int] }" : GoString), ("type U[T any] [unsafe.Sizeof(F[*T])]byte; func F[T any]() { var _ U[U[int]] }" : GoString), ("func F[T any]() { type A = int; F[A]() }" : GoString)) : Slice<GoString>);
/**
    
    
    
**/
private var _bads = (new Slice<GoString>(
21,
21,
("func F[T any](x T) { F(&x) }" : GoString),
("func F[T any]() { F[*T]() }" : GoString),
("func F[T any]() { F[[]T]() }" : GoString),
("func F[T any]() { F[[1]T]() }" : GoString),
("func F[T any]() { F[chan T]() }" : GoString),
("func F[T any]() { F[map[*T]int]() }" : GoString),
("func F[T any]() { F[map[error]T]() }" : GoString),
("func F[T any]() { F[func(T)]() }" : GoString),
("func F[T any]() { F[func() T]() }" : GoString),
("func F[T any]() { F[struct{ t T }]() }" : GoString),
("func F[T any]() { F[interface{ t() T }]() }" : GoString),
("type U[_ any] int; func F[T any]() { F[U[T]]() }" : GoString),
("func F[T any]() { type U int; F[U]() }" : GoString),
("func F[T any]() { type U int; F[*U]() }" : GoString),
("type U[T any] int; func (U[T]) m() { var _ U[*T] }" : GoString),
("type U[T any] int; func (*U[T]) m() { var _ U[*T] }" : GoString),
("type U[T1 any] [unsafe.Sizeof(F[*T1])]byte; func F[T2 any]() { var _ U[T2] }" : GoString),
("func F[A, B, C, D, E any]() { F[B, C, D, E, *A]() }" : GoString),
("type U[_ any] int; const X = unsafe.Sizeof(func() { type A[T any] U[A[*T]] })" : GoString),
("func F[T any]() { type A = *T; F[A]() }" : GoString),
("type A[T any] struct { _ A[*T] }" : GoString)) : Slice<GoString>);
/**
    
    
    
**/
private var _testObjects = (new Slice<T__struct_11>(
15,
15,
({ _src : ("import \"io\"; var r io.Reader" : GoString), _obj : ("r" : GoString), _want : ("var p.r io.Reader" : GoString) } : T__struct_11),
({ _src : ("const c = 1.2" : GoString), _obj : ("c" : GoString), _want : ("const p.c untyped float" : GoString) } : T__struct_11),
({ _src : ("const c float64 = 3.14" : GoString), _obj : ("c" : GoString), _want : ("const p.c float64" : GoString) } : T__struct_11),
({ _src : ("type t struct{f int}" : GoString), _obj : ("t" : GoString), _want : ("type p.t struct{f int}" : GoString) } : T__struct_11),
({ _src : ("type t func(int)" : GoString), _obj : ("t" : GoString), _want : ("type p.t func(int)" : GoString) } : T__struct_11),
({ _src : ("type t[P any] struct{f P}" : GoString), _obj : ("t" : GoString), _want : ("type p.t[P any] struct{f P}" : GoString) } : T__struct_11),
({ _src : ("type t[P any] struct{f P}" : GoString), _obj : ("t.P" : GoString), _want : ("type parameter P any" : GoString) } : T__struct_11),
({ _src : ("type C interface{m()}; type t[P C] struct{}" : GoString), _obj : ("t.P" : GoString), _want : ("type parameter P p.C" : GoString) } : T__struct_11),
({ _src : ("type t = struct{f int}" : GoString), _obj : ("t" : GoString), _want : ("type p.t = struct{f int}" : GoString) } : T__struct_11),
({ _src : ("type t = func(int)" : GoString), _obj : ("t" : GoString), _want : ("type p.t = func(int)" : GoString) } : T__struct_11),
({ _src : ("var v int" : GoString), _obj : ("v" : GoString), _want : ("var p.v int" : GoString) } : T__struct_11),
({ _src : ("func f(int) string" : GoString), _obj : ("f" : GoString), _want : ("func p.f(int) string" : GoString) } : T__struct_11),
({ _src : ("func g[P any](x P){}" : GoString), _obj : ("g" : GoString), _want : ("func p.g[P any](x P)" : GoString) } : T__struct_11),
({ _src : ("func g[P interface{~int}](x P){}" : GoString), _obj : ("g.P" : GoString), _want : ("type parameter P interface{~int}" : GoString) } : T__struct_11),
({ _src : Go.str(), _obj : ("any" : GoString), _want : ("type any = interface{}" : GoString) } : T__struct_11)) : Slice<T__struct_11>);
/**
    // The cmd/|*|/internal packages may have been deleted as part of a binary
    // release. Import from source instead.
    //
    // (See https://golang.org/issue/43232 and
    // https://github.com/golang/build/blob/df58bbac082bc87c4a3cdfe336d1ffe60bbaa916/cmd/release/release.go#L533-L545.)
    //
    // Use the same importer for all std lib tests to
    // avoid repeated importing of the same packages.
    
    
**/
private var _stdLibImporter = stdgo.go.importer.Importer.forCompiler(stdgo.go.token.Token.newFileSet(), ("source" : GoString), null);
/**
    // Package paths of excluded packages.
    
    
**/
private var _excluded = ({
        final x = new stdgo.GoMap.GoStringMap<Bool>();
        x.__defaultValue__ = () -> false;
        @:mergeBlock {
            x.set(("builtin" : GoString), true);
            x.set(("crypto/internal/edwards25519/field/_asm" : GoString), true);
            x.set(("crypto/internal/bigmod/_asm" : GoString), true);
        };
        x;
    } : GoMap<GoString, Bool>);
/**
    // types that don't depend on any other type declarations
    
    
**/
private var _independentTestTypes = (new Slice<stdgo.go.types_test.Types_test.T_testEntry>(
46,
46,
_dup(("int" : GoString))?.__copy__(),
_dup(("float32" : GoString))?.__copy__(),
_dup(("string" : GoString))?.__copy__(),
_dup(("[10]int" : GoString))?.__copy__(),
_dup(("[]int" : GoString))?.__copy__(),
_dup(("[][]int" : GoString))?.__copy__(),
_dup(("struct{}" : GoString))?.__copy__(),
_dup(("struct{x int}" : GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("struct {\n\t\tx, y int\n\t\tz float32 \"foo\"\n\t}" : GoString), ("struct{x int; y int; z float32 \"foo\"}" : GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
(new stdgo.go.types_test.Types_test.T_testEntry(("struct {\n\t\tstring\n\t\telems []complex128\n\t}" : GoString), ("struct{string; elems []complex128}" : GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("*int" : GoString))?.__copy__(),
_dup(("***struct{}" : GoString))?.__copy__(),
_dup(("*struct{a int; b float32}" : GoString))?.__copy__(),
_dup(("func()" : GoString))?.__copy__(),
_dup(("func(x int)" : GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("func(x, y int)" : GoString), ("func(x int, y int)" : GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
(new stdgo.go.types_test.Types_test.T_testEntry(("func(x, y int, z string)" : GoString), ("func(x int, y int, z string)" : GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("func(int)" : GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("func(int, string, byte)" : GoString), ("func(int, string, byte)" : GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("func() int" : GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("func() (string)" : GoString), ("func() string" : GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("func() (u int)" : GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("func() (u, v int, w string)" : GoString), ("func() (u int, v int, w string)" : GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("func(int) string" : GoString))?.__copy__(),
_dup(("func(x int) string" : GoString))?.__copy__(),
_dup(("func(x int) (u string)" : GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("func(x, y int) (u string)" : GoString), ("func(x int, y int) (u string)" : GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("func(...int) string" : GoString))?.__copy__(),
_dup(("func(x ...int) string" : GoString))?.__copy__(),
_dup(("func(x ...int) (u string)" : GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("func(x int, y ...int) (u string)" : GoString), ("func(x int, y ...int) (u string)" : GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("interface{}" : GoString))?.__copy__(),
_dup(("interface{m()}" : GoString))?.__copy__(),
_dup(("interface{String() string; m(int) float32}" : GoString))?.__copy__(),
_dup(("interface{int | float32 | complex128}" : GoString))?.__copy__(),
_dup(("interface{int | ~float32 | ~complex128}" : GoString))?.__copy__(),
_dup(("any" : GoString))?.__copy__(),
_dup(("interface{comparable}" : GoString))?.__copy__(),
_dup(("map[string]int" : GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("map[struct{x, y int}][]byte" : GoString), ("map[struct{x int; y int}][]byte" : GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("chan<- chan int" : GoString))?.__copy__(),
_dup(("chan<- <-chan int" : GoString))?.__copy__(),
_dup(("<-chan <-chan int" : GoString))?.__copy__(),
_dup(("chan (<-chan int)" : GoString))?.__copy__(),
_dup(("chan<- func()" : GoString))?.__copy__(),
_dup(("<-chan []func() int" : GoString))?.__copy__()) : Slice<stdgo.go.types_test.Types_test.T_testEntry>);
/**
    // types that depend on other type declarations (src in TestTypes)
    
    
**/
private var _dependentTestTypes = (new Slice<stdgo.go.types_test.Types_test.T_testEntry>(3, 3, _dup(("interface{io.Reader; io.Writer}" : GoString))?.__copy__(), _dup(("interface{m() int; io.Writer}" : GoString))?.__copy__(), (new stdgo.go.types_test.Types_test.T_testEntry(("interface{m() interface{T}}" : GoString), ("interface{m() interface{p.T}}" : GoString)) : stdgo.go.types_test.Types_test.T_testEntry)) : Slice<stdgo.go.types_test.Types_test.T_testEntry>);
/**
    
    
    
**/
private final _errorfMinArgCount = (4i64 : GoUInt64);
/**
    
    
    
**/
private final _filename = ("<src>" : GoString);
/**
    
    
    
**/
private typedef T__interface_0 = StructType & {
    /**
        
        
        
    **/
    public dynamic function typeParams():Ref<TypeParamList>;
};
/**
    
    
    
**/
@:structInit @:private class T_recordedInstance {
    public var ident : Ref<stdgo.go.ast.Ast.Ident> = (null : Ref<stdgo.go.ast.Ast.Ident>);
    public var inst : stdgo.go.types.Types.Instance = ({} : stdgo.go.types.Types.Instance);
    public function new(?ident:Ref<stdgo.go.ast.Ast.Ident>, ?inst:stdgo.go.types.Types.Instance) {
        if (ident != null) this.ident = ident;
        if (inst != null) this.inst = inst;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_recordedInstance(ident, inst);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.types_test.Types_test.T_gen_static_extension) class T_gen {
    @:embedded
    public var buffer : stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
    public function new(?buffer:stdgo.bytes.Bytes.Buffer) {
        if (buffer != null) this.buffer = buffer;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function bytes():Slice<GoUInt8> return buffer.bytes();
    @:embedded
    public function cap():GoInt return buffer.cap();
    @:embedded
    public function grow(_offset:GoInt) buffer.grow(_offset);
    @:embedded
    public function len():GoInt return buffer.len();
    @:embedded
    public function next(_offset:GoInt):Slice<GoUInt8> return buffer.next(_offset);
    @:embedded
    public function read(_content:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return buffer.read(_content);
    @:embedded
    public function readByte():{ var _0 : GoUInt8; var _1 : Error; } return buffer.readByte();
    @:embedded
    public function readBytes(__0:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return buffer.readBytes(__0);
    @:embedded
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } return buffer.readFrom(_r);
    @:embedded
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : Error; } return buffer.readRune();
    @:embedded
    public function readString(__0:GoUInt8):{ var _0 : GoString; var _1 : Error; } return buffer.readString(__0);
    @:embedded
    public function reset() buffer.reset();
    @:embedded
    public function string():GoString return buffer.string();
    @:embedded
    public function truncate(_offset:GoInt) buffer.truncate(_offset);
    @:embedded
    public function unreadByte():Error return buffer.unreadByte();
    @:embedded
    public function unreadRune():Error return buffer.unreadRune();
    @:embedded
    public function write(_content:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return buffer.write(_content);
    @:embedded
    public function writeByte(__0:GoUInt8):Error return buffer.writeByte(__0);
    @:embedded
    public function writeRune(_new:GoInt32):{ var _0 : GoInt; var _1 : Error; } return buffer.writeRune(_new);
    @:embedded
    public function writeString(__0:GoString):{ var _0 : GoInt; var _1 : Error; } return buffer.writeString(__0);
    @:embedded
    public function writeTo(__0:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } return buffer.writeTo(__0);
    @:embedded
    public function _empty():Bool return buffer._empty();
    @:embedded
    public function _grow(_offset:GoInt):GoInt return buffer._grow(_offset);
    @:embedded
    public function _readSlice(__0:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return buffer._readSlice(__0);
    @:embedded
    public function _tryGrowByReslice(_offset:GoInt):{ var _0 : GoInt; var _1 : Bool; } return buffer._tryGrowByReslice(_offset);
    public function __copy__() {
        return new T_gen(buffer);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.types_test.Types_test.T_importHelper_static_extension) class T_importHelper {
    public var _pkg : Ref<stdgo.go.types.Types.Package> = (null : Ref<stdgo.go.types.Types.Package>);
    public var _fallback : stdgo.go.types.Types.Importer = (null : stdgo.go.types.Types.Importer);
    public function new(?_pkg:Ref<stdgo.go.types.Types.Package>, ?_fallback:stdgo.go.types.Types.Importer) {
        if (_pkg != null) this._pkg = _pkg;
        if (_fallback != null) this._fallback = _fallback;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_importHelper(_pkg, _fallback);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.types_test.Types_test.T_resolveTestImporter_static_extension) class T_resolveTestImporter {
    public var _importer : stdgo.go.types.Types.ImporterFrom = (null : stdgo.go.types.Types.ImporterFrom);
    public var _imported : GoMap<GoString, Bool> = (null : GoMap<GoString, Bool>);
    public function new(?_importer:stdgo.go.types.Types.ImporterFrom, ?_imported:GoMap<GoString, Bool>) {
        if (_importer != null) this._importer = _importer;
        if (_imported != null) this._imported = _imported;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_resolveTestImporter(_importer, _imported);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.types_test.Types_test.T_walker_static_extension) class T_walker {
    public var _start : stdgo.time.Time.Time = ({} : stdgo.time.Time.Time);
    public var _dmax : stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration);
    public var _pkgh : (GoString, Slice<GoString>) -> Void = null;
    public var _errh : Slice<AnyInterface> -> Void = null;
    public function new(?_start:stdgo.time.Time.Time, ?_dmax:stdgo.time.Time.Duration, ?_pkgh:(GoString, Slice<GoString>) -> Void, ?_errh:Slice<AnyInterface> -> Void) {
        if (_start != null) this._start = _start;
        if (_dmax != null) this._dmax = _dmax;
        if (_pkgh != null) this._pkgh = _pkgh;
        if (_errh != null) this._errh = _errh;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_walker(_start, _dmax, _pkgh, _errh);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_testEntry {
    public var _src : GoString = "";
    public var _str : GoString = "";
    public function new(?_src:GoString, ?_str:GoString) {
        if (_src != null) this._src = _src;
        if (_str != null) this._str = _str;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_testEntry(_src, _str);
    }
}
class T__struct_8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_8>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_8_static_extension) private typedef T__struct_8 = {
    public var _src : GoString;
    public var _expr : GoString;
    public var _typ : GoString;
    public var _val : GoString;
};
class T__struct_9_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_9>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_9_static_extension) private typedef T__struct_9 = {
    public var _src : GoString;
    public var _expr : GoString;
    public var _typ : GoString;
};
class T__struct_10_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_10>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_10_static_extension) private typedef T__struct_10 = {
    public var _src : GoString;
    public var _instances : Slice<stdgo.go.types_test.Types_test.T_testInst>;
};
class T__struct_11_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_11>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_11_static_extension) private typedef T__struct_11 = {
    public var _src : GoString;
    public var _obj : GoString;
    public var _want : GoString;
};
class T__struct_12_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_12>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_12_asInterface) class T__struct_12_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_12_static_extension) private typedef T__struct_12 = {
    public var _src : GoString;
    public var _want : GoString;
};
class T__struct_13_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_13>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_13_asInterface) class T__struct_13_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_13_static_extension) private typedef T__struct_13 = {
    public var _src : GoString;
    public var _expr : GoString;
    public var _pred : GoString;
};
class T__struct_14_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_14>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_14_asInterface) class T__struct_14_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_14_static_extension) private typedef T__struct_14 = {
    public var _src : GoString;
    public var _scopes : Slice<GoString>;
};
class T__struct_15_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_15>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_15_asInterface) class T__struct_15_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_15_static_extension) private typedef T__struct_15 = {
    public var _src : GoString;
    public var _inits : Slice<GoString>;
};
class T__struct_16_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_16>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_16_asInterface) class T__struct_16_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_16_static_extension) private typedef T__struct_16 = {
    public var _files : Slice<Ref<stdgo.go.ast.Ast.File>>;
    public var _want : GoString;
};
class T__struct_17_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_17>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_17_asInterface) class T__struct_17_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_17_static_extension) private typedef T__struct_17 = {
    public var _src : GoString;
    public var _found : Bool;
    public var _index : Slice<GoInt>;
    public var _indirect : Bool;
};
class T__struct_18_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_18>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_18_asInterface) class T__struct_18_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_18_static_extension) private typedef T__struct_18 = {
    public var _v : stdgo.go.types.Types.Type;
    public var _t : stdgo.go.types.Types.Type;
    public var _want : Bool;
};
class T__struct_19_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_19>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_19_asInterface) class T__struct_19_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_19_static_extension) private typedef T__struct_19 = {
    public var _src : GoString;
    public var _want : Bool;
};
class T__struct_20_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_20>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_20_asInterface) class T__struct_20_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_20_static_extension) private typedef T__struct_20 = {
    public var _x : stdgo.go.types.Types.Type;
    public var _y : stdgo.go.types.Types.Type;
    public var _want : Bool;
};
class T__struct_21_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_21>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_21_asInterface) class T__struct_21_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_21_static_extension) private typedef T__struct_21 = {
    public var _x : GoString;
    public var _y : GoString;
    public var _want : Bool;
};
class T__struct_22_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_22>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_22_asInterface) class T__struct_22_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_22_static_extension) private typedef T__struct_22 = {
    public var _lit : GoString;
    public var _typ : GoString;
};
class T__struct_23_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_23>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_23_asInterface) class T__struct_23_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_23_static_extension) private typedef T__struct_23 = {
    public var _src : GoString;
    public var _targs : Slice<stdgo.go.types.Types.Type>;
    public var _wantAt : GoInt;
};
class T__struct_24_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_24>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_24_asInterface) class T__struct_24_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_24_static_extension) private typedef T__struct_24 = {
    public var _name : GoString;
    public var _obj : stdgo.go.types.Types.Object;
};
class T__struct_25_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_25>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_25_asInterface) class T__struct_25_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_25_static_extension) private typedef T__struct_25 = {
    public var v : stdgo.go.types.Types.Type;
    public var t : Ref<stdgo.go.types.Types.Interface>;
    public var _want : Bool;
};
class T__struct_26_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_26>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_26_asInterface) class T__struct_26_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_26_static_extension) private typedef T__struct_26 = {
    public var _name : GoString;
    public var _src : GoString;
    public var _sig : GoString;
};
class T__struct_27_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_27>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_27_asInterface) class T__struct_27_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_27_static_extension) private typedef T__struct_27 = {
    public var _src : GoString;
    public var _name1 : GoString;
    public var _targs1 : Slice<stdgo.go.types.Types.Type>;
    public var _name2 : GoString;
    public var _targs2 : Slice<stdgo.go.types.Types.Type>;
    public var _wantEqual : Bool;
};
class T__struct_28_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_28>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_28_asInterface) class T__struct_28_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_28_static_extension) private typedef T__struct_28 = {
    public var _decl : GoString;
    public var _want : GoString;
};
class T__struct_29_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_29>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_29_asInterface) class T__struct_29_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_29_static_extension) private typedef T__struct_29 = {
    public var _typ : GoString;
    public var _val : GoString;
};
class T__struct_30_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_30>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_30_asInterface) class T__struct_30_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_30_static_extension) private typedef T__struct_30 = {
    public var main : GoString;
    public var _b : GoString;
    public var _want : GoString;
};
class T__struct_31_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_31>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_31_asInterface) class T__struct_31_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_31_static_extension) private typedef T__struct_31 = {
    public var _name : GoString;
    public var _typ : stdgo.go.types.Types.Type;
};
class T__struct_32_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_32>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_32_asInterface) class T__struct_32_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_32_static_extension) private typedef T__struct_32 = {
    public var _name : Ref<stdgo.go.types.Types.TypeName>;
    public var _alias : Bool;
};
class T__struct_33_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_33>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_33_asInterface) class T__struct_33_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_33_static_extension) private typedef T__struct_33 = {
    public var _typ : stdgo.go.types.Types.Type;
    public var _this : Ref<stdgo.go.types.Types.Package>;
    public var _want : GoString;
};
@:named @:using(stdgo.go.types_test.Types_test.T_testImporter_static_extension) private typedef T_testImporter = GoMap<GoString, Ref<stdgo.go.types.Types.Package>>;
private function _parse(_fset:Ref<stdgo.go.token.Token.FileSet>, _filename:GoString, _src:GoString):{ var _0 : Ref<stdgo.go.ast.Ast.File>; var _1 : Error; } {
        return stdgo.go.parser.Parser.parseFile(_fset, _filename, Go.toInterface(_src), (0u32 : stdgo.go.parser.Parser.Mode));
    }
private function _mustParse(_fset:Ref<stdgo.go.token.Token.FileSet>, _filename:GoString, _src:GoString):Ref<stdgo.go.ast.Ast.File> {
        var __tmp__ = _parse(_fset, _filename, _src), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        return _f;
    }
private function _typecheck(_path:GoString, _src:GoString, _info:Ref<Info>):{ var _0 : Ref<Package>; var _1 : Error; } {
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = _parse(_fset, _path, _src), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_f == null || (_f : Dynamic).__nil__) {
            return { _0 : null, _1 : _err };
        };
        var _conf:stdgo.go.types.Types.Config = ({ error : function(_err:Error):Void {}, importer : stdgo.go.importer.Importer.default_() } : Config);
        return _conf.check(_f.name.name, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), _info);
    }
private function _mustTypecheck(_path:GoString, _src:GoString, _info:Ref<Info>):Ref<Package> {
        var __tmp__ = _typecheck(_path, _src, _info), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        return _pkg;
    }
function testValuesInfo(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests:Slice<T__struct_8> = (new Slice<T__struct_8>(
59,
59,
({ _src : ("package a0; const _ = false" : GoString), _expr : ("false" : GoString), _typ : ("untyped bool" : GoString), _val : ("false" : GoString) } : T__struct_8),
({ _src : ("package a1; const _ = 0" : GoString), _expr : ("0" : GoString), _typ : ("untyped int" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package a2; const _ = \'A\'" : GoString), _expr : ("\'A\'" : GoString), _typ : ("untyped rune" : GoString), _val : ("65" : GoString) } : T__struct_8),
({ _src : ("package a3; const _ = 0." : GoString), _expr : ("0." : GoString), _typ : ("untyped float" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package a4; const _ = 0i" : GoString), _expr : ("0i" : GoString), _typ : ("untyped complex" : GoString), _val : ("(0 + 0i)" : GoString) } : T__struct_8),
({ _src : ("package a5; const _ = \"foo\"" : GoString), _expr : ("\"foo\"" : GoString), _typ : ("untyped string" : GoString), _val : ("\"foo\"" : GoString) } : T__struct_8),
({ _src : ("package b0; var _ = false" : GoString), _expr : ("false" : GoString), _typ : ("bool" : GoString), _val : ("false" : GoString) } : T__struct_8),
({ _src : ("package b1; var _ = 0" : GoString), _expr : ("0" : GoString), _typ : ("int" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package b2; var _ = \'A\'" : GoString), _expr : ("\'A\'" : GoString), _typ : ("rune" : GoString), _val : ("65" : GoString) } : T__struct_8),
({ _src : ("package b3; var _ = 0." : GoString), _expr : ("0." : GoString), _typ : ("float64" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package b4; var _ = 0i" : GoString), _expr : ("0i" : GoString), _typ : ("complex128" : GoString), _val : ("(0 + 0i)" : GoString) } : T__struct_8),
({ _src : ("package b5; var _ = \"foo\"" : GoString), _expr : ("\"foo\"" : GoString), _typ : ("string" : GoString), _val : ("\"foo\"" : GoString) } : T__struct_8),
({ _src : ("package c0a; var _ = bool(false)" : GoString), _expr : ("false" : GoString), _typ : ("bool" : GoString), _val : ("false" : GoString) } : T__struct_8),
({ _src : ("package c0b; var _ = bool(false)" : GoString), _expr : ("bool(false)" : GoString), _typ : ("bool" : GoString), _val : ("false" : GoString) } : T__struct_8),
({ _src : ("package c0c; type T bool; var _ = T(false)" : GoString), _expr : ("T(false)" : GoString), _typ : ("c0c.T" : GoString), _val : ("false" : GoString) } : T__struct_8),
({ _src : ("package c1a; var _ = int(0)" : GoString), _expr : ("0" : GoString), _typ : ("int" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package c1b; var _ = int(0)" : GoString), _expr : ("int(0)" : GoString), _typ : ("int" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package c1c; type T int; var _ = T(0)" : GoString), _expr : ("T(0)" : GoString), _typ : ("c1c.T" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package c2a; var _ = rune(\'A\')" : GoString), _expr : ("\'A\'" : GoString), _typ : ("rune" : GoString), _val : ("65" : GoString) } : T__struct_8),
({ _src : ("package c2b; var _ = rune(\'A\')" : GoString), _expr : ("rune(\'A\')" : GoString), _typ : ("rune" : GoString), _val : ("65" : GoString) } : T__struct_8),
({ _src : ("package c2c; type T rune; var _ = T(\'A\')" : GoString), _expr : ("T(\'A\')" : GoString), _typ : ("c2c.T" : GoString), _val : ("65" : GoString) } : T__struct_8),
({ _src : ("package c3a; var _ = float32(0.)" : GoString), _expr : ("0." : GoString), _typ : ("float32" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package c3b; var _ = float32(0.)" : GoString), _expr : ("float32(0.)" : GoString), _typ : ("float32" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package c3c; type T float32; var _ = T(0.)" : GoString), _expr : ("T(0.)" : GoString), _typ : ("c3c.T" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package c4a; var _ = complex64(0i)" : GoString), _expr : ("0i" : GoString), _typ : ("complex64" : GoString), _val : ("(0 + 0i)" : GoString) } : T__struct_8),
({ _src : ("package c4b; var _ = complex64(0i)" : GoString), _expr : ("complex64(0i)" : GoString), _typ : ("complex64" : GoString), _val : ("(0 + 0i)" : GoString) } : T__struct_8),
({ _src : ("package c4c; type T complex64; var _ = T(0i)" : GoString), _expr : ("T(0i)" : GoString), _typ : ("c4c.T" : GoString), _val : ("(0 + 0i)" : GoString) } : T__struct_8),
({ _src : ("package c5a; var _ = string(\"foo\")" : GoString), _expr : ("\"foo\"" : GoString), _typ : ("string" : GoString), _val : ("\"foo\"" : GoString) } : T__struct_8),
({ _src : ("package c5b; var _ = string(\"foo\")" : GoString), _expr : ("string(\"foo\")" : GoString), _typ : ("string" : GoString), _val : ("\"foo\"" : GoString) } : T__struct_8),
({ _src : ("package c5c; type T string; var _ = T(\"foo\")" : GoString), _expr : ("T(\"foo\")" : GoString), _typ : ("c5c.T" : GoString), _val : ("\"foo\"" : GoString) } : T__struct_8),
({ _src : ("package c5d; var _ = string(65)" : GoString), _expr : ("65" : GoString), _typ : ("untyped int" : GoString), _val : ("65" : GoString) } : T__struct_8),
({ _src : ("package c5e; var _ = string(\'A\')" : GoString), _expr : ("\'A\'" : GoString), _typ : ("untyped rune" : GoString), _val : ("65" : GoString) } : T__struct_8),
({ _src : ("package c5f; type T string; var _ = T(\'A\')" : GoString), _expr : ("\'A\'" : GoString), _typ : ("untyped rune" : GoString), _val : ("65" : GoString) } : T__struct_8),
({ _src : ("package d0; var _ = []byte(\"foo\")" : GoString), _expr : ("\"foo\"" : GoString), _typ : ("string" : GoString), _val : ("\"foo\"" : GoString) } : T__struct_8),
({ _src : ("package d1; var _ = []byte(string(\"foo\"))" : GoString), _expr : ("\"foo\"" : GoString), _typ : ("string" : GoString), _val : ("\"foo\"" : GoString) } : T__struct_8),
({ _src : ("package d2; var _ = []byte(string(\"foo\"))" : GoString), _expr : ("string(\"foo\")" : GoString), _typ : ("string" : GoString), _val : ("\"foo\"" : GoString) } : T__struct_8),
({ _src : ("package d3; type T []byte; var _ = T(\"foo\")" : GoString), _expr : ("\"foo\"" : GoString), _typ : ("string" : GoString), _val : ("\"foo\"" : GoString) } : T__struct_8),
({ _src : ("package e0; const _ = float32( 1e-200)" : GoString), _expr : ("float32(1e-200)" : GoString), _typ : ("float32" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package e1; const _ = float32(-1e-200)" : GoString), _expr : ("float32(-1e-200)" : GoString), _typ : ("float32" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package e2; const _ = float64( 1e-2000)" : GoString), _expr : ("float64(1e-2000)" : GoString), _typ : ("float64" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package e3; const _ = float64(-1e-2000)" : GoString), _expr : ("float64(-1e-2000)" : GoString), _typ : ("float64" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package e4; const _ = complex64( 1e-200)" : GoString), _expr : ("complex64(1e-200)" : GoString), _typ : ("complex64" : GoString), _val : ("(0 + 0i)" : GoString) } : T__struct_8),
({ _src : ("package e5; const _ = complex64(-1e-200)" : GoString), _expr : ("complex64(-1e-200)" : GoString), _typ : ("complex64" : GoString), _val : ("(0 + 0i)" : GoString) } : T__struct_8),
({ _src : ("package e6; const _ = complex128( 1e-2000)" : GoString), _expr : ("complex128(1e-2000)" : GoString), _typ : ("complex128" : GoString), _val : ("(0 + 0i)" : GoString) } : T__struct_8),
({ _src : ("package e7; const _ = complex128(-1e-2000)" : GoString), _expr : ("complex128(-1e-2000)" : GoString), _typ : ("complex128" : GoString), _val : ("(0 + 0i)" : GoString) } : T__struct_8),
({ _src : ("package f0 ; var _ float32 =  1e-200" : GoString), _expr : ("1e-200" : GoString), _typ : ("float32" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package f1 ; var _ float32 = -1e-200" : GoString), _expr : ("-1e-200" : GoString), _typ : ("float32" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package f2a; var _ float64 =  1e-2000" : GoString), _expr : ("1e-2000" : GoString), _typ : ("float64" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package f3a; var _ float64 = -1e-2000" : GoString), _expr : ("-1e-2000" : GoString), _typ : ("float64" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package f2b; var _         =  1e-2000" : GoString), _expr : ("1e-2000" : GoString), _typ : ("float64" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package f3b; var _         = -1e-2000" : GoString), _expr : ("-1e-2000" : GoString), _typ : ("float64" : GoString), _val : ("0" : GoString) } : T__struct_8),
({ _src : ("package f4 ; var _ complex64  =  1e-200 " : GoString), _expr : ("1e-200" : GoString), _typ : ("complex64" : GoString), _val : ("(0 + 0i)" : GoString) } : T__struct_8),
({ _src : ("package f5 ; var _ complex64  = -1e-200 " : GoString), _expr : ("-1e-200" : GoString), _typ : ("complex64" : GoString), _val : ("(0 + 0i)" : GoString) } : T__struct_8),
({ _src : ("package f6a; var _ complex128 =  1e-2000i" : GoString), _expr : ("1e-2000i" : GoString), _typ : ("complex128" : GoString), _val : ("(0 + 0i)" : GoString) } : T__struct_8),
({ _src : ("package f7a; var _ complex128 = -1e-2000i" : GoString), _expr : ("-1e-2000i" : GoString), _typ : ("complex128" : GoString), _val : ("(0 + 0i)" : GoString) } : T__struct_8),
({ _src : ("package f6b; var _            =  1e-2000i" : GoString), _expr : ("1e-2000i" : GoString), _typ : ("complex128" : GoString), _val : ("(0 + 0i)" : GoString) } : T__struct_8),
({ _src : ("package f7b; var _            = -1e-2000i" : GoString), _expr : ("-1e-2000i" : GoString), _typ : ("complex128" : GoString), _val : ("(0 + 0i)" : GoString) } : T__struct_8),
({ _src : ("package g0; const (a = len([iota]int{}); b; c); const _ = c" : GoString), _expr : ("c" : GoString), _typ : ("int" : GoString), _val : ("2" : GoString) } : T__struct_8),
({ _src : ("package g1; var(j int32; s int; n = 1.0<<s == j)" : GoString), _expr : ("1.0" : GoString), _typ : ("int32" : GoString), _val : ("1" : GoString) } : T__struct_8)) : Slice<T__struct_8>);
        for (__0 => _test in _tests) {
            var _info:stdgo.go.types.Types.Info = ({ types : ({
                final x = new GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
                @:mergeBlock {};
                cast x;
            } : GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>) } : Info);
            var _name:GoString = _mustTypecheck(("ValuesInfo" : GoString), _test._src, (Go.setRef(_info) : Ref<stdgo.go.types.Types.Info>)).name();
            var _expr:stdgo.go.ast.Ast.Expr = (null : stdgo.go.ast.Ast.Expr);
            for (_e => _ in _info.types) {
                if (exprString(_e) == (_test._expr)) {
                    _expr = _e;
                    break;
                };
            };
            if (_expr == null) {
                _t.errorf(("package %s: no expression found for %s" : GoString), Go.toInterface(_name), Go.toInterface(_test._expr));
                continue;
            };
            var _tv:stdgo.go.types.Types.TypeAndValue = _info.types[_expr];
            {
                var _got:GoString = (_tv.type.string() : GoString);
                if (_got != (_test._typ)) {
                    _t.errorf(("package %s: got type %s; want %s" : GoString), Go.toInterface(_name), Go.toInterface(_got), Go.toInterface(_test._typ));
                    continue;
                };
            };
            if (_tv.value != null) {
                {
                    var _got:GoString = _tv.value.exactString();
                    if (_got != (_test._val)) {
                        _t.errorf(("package %s: got value %s; want %s" : GoString), Go.toInterface(_name), Go.toInterface(_got), Go.toInterface(_test._val));
                    };
                };
            } else {
                if (_test._val != (Go.str())) {
                    _t.errorf(("package %s: no constant found; want %s" : GoString), Go.toInterface(_name), Go.toInterface(_test._val));
                };
            };
        };
    }
function testTypesInfo(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _tests:Slice<T__struct_9> = (new Slice<T__struct_9>(
102,
102,
({ _src : ("package b0; var x interface{} = false" : GoString), _expr : ("false" : GoString), _typ : ("bool" : GoString) } : T__struct_9),
({ _src : ("package b1; var x interface{} = 0" : GoString), _expr : ("0" : GoString), _typ : ("int" : GoString) } : T__struct_9),
({ _src : ("package b2; var x interface{} = 0." : GoString), _expr : ("0." : GoString), _typ : ("float64" : GoString) } : T__struct_9),
({ _src : ("package b3; var x interface{} = 0i" : GoString), _expr : ("0i" : GoString), _typ : ("complex128" : GoString) } : T__struct_9),
({ _src : ("package b4; var x interface{} = \"foo\"" : GoString), _expr : ("\"foo\"" : GoString), _typ : ("string" : GoString) } : T__struct_9),
({ _src : ("package n0; var _ *int = nil" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n1; var _ func() = nil" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n2; var _ []byte = nil" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n3; var _ map[int]int = nil" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n4; var _ chan int = nil" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n5; var _ interface{} = nil" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n6; import \"unsafe\"; var _ unsafe.Pointer = nil" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n10; var (x *int; _ = x == nil)" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n11; var (x func(); _ = x == nil)" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n12; var (x []byte; _ = x == nil)" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n13; var (x map[int]int; _ = x == nil)" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n14; var (x chan int; _ = x == nil)" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n15; var (x interface{}; _ = x == nil)" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n15; import \"unsafe\"; var (x unsafe.Pointer; _ = x == nil)" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n20; var _ = (*int)(nil)" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n21; var _ = (func())(nil)" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n22; var _ = ([]byte)(nil)" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n23; var _ = (map[int]int)(nil)" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n24; var _ = (chan int)(nil)" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n25; var _ = (interface{})(nil)" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n26; import \"unsafe\"; var _ = unsafe.Pointer(nil)" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n30; func f(*int) { f(nil) }" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n31; func f(func()) { f(nil) }" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n32; func f([]byte) { f(nil) }" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n33; func f(map[int]int) { f(nil) }" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n34; func f(chan int) { f(nil) }" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n35; func f(interface{}) { f(nil) }" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package n35; import \"unsafe\"; func f(unsafe.Pointer) { f(nil) }" : GoString), _expr : ("nil" : GoString), _typ : ("untyped nil" : GoString) } : T__struct_9),
({ _src : ("package p0; var x interface{}; var _, _ = x.(int)" : GoString), _expr : ("x.(int)" : GoString), _typ : ("(int, bool)" : GoString) } : T__struct_9),
({ _src : ("package p1; var x interface{}; func _() { _, _ = x.(int) }" : GoString), _expr : ("x.(int)" : GoString), _typ : ("(int, bool)" : GoString) } : T__struct_9),
({ _src : ("package p2a; type mybool bool; var m map[string]complex128; var b mybool; func _() { _, b = m[\"foo\"] }" : GoString), _expr : ("m[\"foo\"]" : GoString), _typ : ("(complex128, p2a.mybool)" : GoString) } : T__struct_9),
({ _src : ("package p2b; var m map[string]complex128; var b bool; func _() { _, b = m[\"foo\"] }" : GoString), _expr : ("m[\"foo\"]" : GoString), _typ : ("(complex128, bool)" : GoString) } : T__struct_9),
({ _src : ("package p3; var c chan string; var _, _ = <-c" : GoString), _expr : ("<-c" : GoString), _typ : ("(string, bool)" : GoString) } : T__struct_9),
({ _src : ("package issue6796_a; var x interface{}; var _, _ = (x.(int))" : GoString), _expr : ("x.(int)" : GoString), _typ : ("(int, bool)" : GoString) } : T__struct_9),
({ _src : ("package issue6796_b; var c chan string; var _, _ = (<-c)" : GoString), _expr : ("(<-c)" : GoString), _typ : ("(string, bool)" : GoString) } : T__struct_9),
({ _src : ("package issue6796_c; var c chan string; var _, _ = (<-c)" : GoString), _expr : ("<-c" : GoString), _typ : ("(string, bool)" : GoString) } : T__struct_9),
({ _src : ("package issue6796_d; var c chan string; var _, _ = ((<-c))" : GoString), _expr : ("(<-c)" : GoString), _typ : ("(string, bool)" : GoString) } : T__struct_9),
({ _src : ("package issue6796_e; func f(c chan string) { _, _ = ((<-c)) }" : GoString), _expr : ("(<-c)" : GoString), _typ : ("(string, bool)" : GoString) } : T__struct_9),
({ _src : ("package issue7060_a; var ( m map[int]string; x, ok = m[0] )" : GoString), _expr : ("m[0]" : GoString), _typ : ("(string, bool)" : GoString) } : T__struct_9),
({ _src : ("package issue7060_b; var ( m map[int]string; x, ok interface{} = m[0] )" : GoString), _expr : ("m[0]" : GoString), _typ : ("(string, bool)" : GoString) } : T__struct_9),
({ _src : ("package issue7060_c; func f(x interface{}, ok bool, m map[int]string) { x, ok = m[0] }" : GoString), _expr : ("m[0]" : GoString), _typ : ("(string, bool)" : GoString) } : T__struct_9),
({ _src : ("package issue7060_d; var ( ch chan string; x, ok = <-ch )" : GoString), _expr : ("<-ch" : GoString), _typ : ("(string, bool)" : GoString) } : T__struct_9),
({ _src : ("package issue7060_e; var ( ch chan string; x, ok interface{} = <-ch )" : GoString), _expr : ("<-ch" : GoString), _typ : ("(string, bool)" : GoString) } : T__struct_9),
({ _src : ("package issue7060_f; func f(x interface{}, ok bool, ch chan string) { x, ok = <-ch }" : GoString), _expr : ("<-ch" : GoString), _typ : ("(string, bool)" : GoString) } : T__struct_9),
({ _src : ("package issue28277_a; func f(...int)" : GoString), _expr : ("...int" : GoString), _typ : ("[]int" : GoString) } : T__struct_9),
({ _src : ("package issue28277_b; func f(a, b int, c ...[]struct{})" : GoString), _expr : ("...[]struct{}" : GoString), _typ : ("[][]struct{}" : GoString) } : T__struct_9),
({ _src : ("package issue47243_a; var x int32; var _ = x << 3" : GoString), _expr : ("3" : GoString), _typ : ("untyped int" : GoString) } : T__struct_9),
({ _src : ("package issue47243_b; var x int32; var _ = x << 3." : GoString), _expr : ("3." : GoString), _typ : ("untyped float" : GoString) } : T__struct_9),
({ _src : ("package issue47243_c; var x int32; var _ = 1 << x" : GoString), _expr : ("1 << x" : GoString), _typ : ("int" : GoString) } : T__struct_9),
({ _src : ("package issue47243_d; var x int32; var _ = 1 << x" : GoString), _expr : ("1" : GoString), _typ : ("int" : GoString) } : T__struct_9),
({ _src : ("package issue47243_e; var x int32; var _ = 1 << 2" : GoString), _expr : ("1" : GoString), _typ : ("untyped int" : GoString) } : T__struct_9),
({ _src : ("package issue47243_f; var x int32; var _ = 1 << 2" : GoString), _expr : ("2" : GoString), _typ : ("untyped int" : GoString) } : T__struct_9),
({ _src : ("package issue47243_g; var x int32; var _ = int(1) << 2" : GoString), _expr : ("2" : GoString), _typ : ("untyped int" : GoString) } : T__struct_9),
({ _src : ("package issue47243_h; var x int32; var _ = 1 << (2 << x)" : GoString), _expr : ("1" : GoString), _typ : ("int" : GoString) } : T__struct_9),
({ _src : ("package issue47243_i; var x int32; var _ = 1 << (2 << x)" : GoString), _expr : ("(2 << x)" : GoString), _typ : ("untyped int" : GoString) } : T__struct_9),
({ _src : ("package issue47243_j; var x int32; var _ = 1 << (2 << x)" : GoString), _expr : ("2" : GoString), _typ : ("untyped int" : GoString) } : T__struct_9),
({ _src : ("package broken_x0; func _() { var x struct {f string}; x.f := 0 }" : GoString), _expr : ("x.f" : GoString), _typ : ("string" : GoString) } : T__struct_9),
({ _src : ("package broken_x1; func _() { var z string; type x struct {f string}; y := &x{q: z}}" : GoString), _expr : ("z" : GoString), _typ : ("string" : GoString) } : T__struct_9),
({ _src : ("package broken_x2; func _() { var a, b string; type x struct {f string}; z := &x{f: a; f: b;}}" : GoString), _expr : ("b" : GoString), _typ : ("string" : GoString) } : T__struct_9),
({ _src : ("package broken_x3; var x = panic(\"\");" : GoString), _expr : ("panic" : GoString), _typ : ("func(interface{})" : GoString) } : T__struct_9),
({ _src : ("package x4; func _() { panic(\"\") }" : GoString), _expr : ("panic" : GoString), _typ : ("func(interface{})" : GoString) } : T__struct_9),
({ _src : ("package broken_x5; func _() { var x map[string][...]int; x = map[string][...]int{\"\": {1,2,3}} }" : GoString), _expr : ("x" : GoString), _typ : ("map[string]invalid type" : GoString) } : T__struct_9),
({ _src : ("package p0; func f[T any](T) {}; var _ = f[int]" : GoString), _expr : ("f" : GoString), _typ : ("func[T any](T)" : GoString) } : T__struct_9),
({ _src : ("package p1; func f[T any](T) {}; var _ = f[int]" : GoString), _expr : ("f[int]" : GoString), _typ : ("func(int)" : GoString) } : T__struct_9),
({ _src : ("package p2; func f[T any](T) {}; func _() { f(42) }" : GoString), _expr : ("f" : GoString), _typ : ("func(int)" : GoString) } : T__struct_9),
({ _src : ("package p3; func f[T any](T) {}; func _() { f[int](42) }" : GoString), _expr : ("f[int]" : GoString), _typ : ("func(int)" : GoString) } : T__struct_9),
({ _src : ("package p4; func f[T any](T) {}; func _() { f[int](42) }" : GoString), _expr : ("f" : GoString), _typ : ("func[T any](T)" : GoString) } : T__struct_9),
({ _src : ("package p5; func f[T any](T) {}; func _() { f(42) }" : GoString), _expr : ("f(42)" : GoString), _typ : ("()" : GoString) } : T__struct_9),
({ _src : ("package t0; type t[] int; var _ t" : GoString), _expr : ("t" : GoString), _typ : ("t0.t" : GoString) } : T__struct_9),
({ _src : ("package t1; type t[P any] int; var _ t[int]" : GoString), _expr : ("t" : GoString), _typ : ("t1.t[P any]" : GoString) } : T__struct_9),
({ _src : ("package t2; type t[P interface{}] int; var _ t[int]" : GoString), _expr : ("t" : GoString), _typ : ("t2.t[P interface{}]" : GoString) } : T__struct_9),
({ _src : ("package t3; type t[P, Q interface{}] int; var _ t[int, int]" : GoString), _expr : ("t" : GoString), _typ : ("t3.t[P, Q interface{}]" : GoString) } : T__struct_9),
({ _src : ("package broken_t4; type t[P, Q interface{ m() }] int; var _ t[int, int]" : GoString), _expr : ("t" : GoString), _typ : ("broken_t4.t[P, Q interface{m()}]" : GoString) } : T__struct_9),
({ _src : ("package g0; type t[P any] int; var x struct{ f t[int] }; var _ = x.f" : GoString), _expr : ("x.f" : GoString), _typ : ("g0.t[int]" : GoString) } : T__struct_9),
({ _src : ("package issue45096; func _[T interface{ ~int8 | ~int16 | ~int32  }](x T) { _ = x < 0 }" : GoString), _expr : ("0" : GoString), _typ : ("T" : GoString) } : T__struct_9),
({ _src : ("package p; import \"unsafe\"; type S struct { f int }; var s S; var _ = unsafe.Offsetof(s.f)" : GoString), _expr : ("s.f" : GoString), _typ : ("int" : GoString) } : T__struct_9),
({ _src : ("package u0a; func _[_ interface{int}]() {}" : GoString), _expr : ("int" : GoString), _typ : ("int" : GoString) } : T__struct_9),
({ _src : ("package u1a; func _[_ interface{~int}]() {}" : GoString), _expr : ("~int" : GoString), _typ : ("~int" : GoString) } : T__struct_9),
({ _src : ("package u2a; func _[_ interface{int | string}]() {}" : GoString), _expr : ("int | string" : GoString), _typ : ("int | string" : GoString) } : T__struct_9),
({ _src : ("package u3a; func _[_ interface{int | string | ~bool}]() {}" : GoString), _expr : ("int | string | ~bool" : GoString), _typ : ("int | string | ~bool" : GoString) } : T__struct_9),
({ _src : ("package u3a; func _[_ interface{int | string | ~bool}]() {}" : GoString), _expr : ("int | string" : GoString), _typ : ("int | string" : GoString) } : T__struct_9),
({ _src : ("package u3a; func _[_ interface{int | string | ~bool}]() {}" : GoString), _expr : ("~bool" : GoString), _typ : ("~bool" : GoString) } : T__struct_9),
({ _src : ("package u3a; func _[_ interface{int | string | ~float64|~bool}]() {}" : GoString), _expr : ("int | string | ~float64" : GoString), _typ : ("int | string | ~float64" : GoString) } : T__struct_9),
({ _src : ("package u0b; func _[_ int]() {}" : GoString), _expr : ("int" : GoString), _typ : ("int" : GoString) } : T__struct_9),
({ _src : ("package u1b; func _[_ ~int]() {}" : GoString), _expr : ("~int" : GoString), _typ : ("~int" : GoString) } : T__struct_9),
({ _src : ("package u2b; func _[_ int | string]() {}" : GoString), _expr : ("int | string" : GoString), _typ : ("int | string" : GoString) } : T__struct_9),
({ _src : ("package u3b; func _[_ int | string | ~bool]() {}" : GoString), _expr : ("int | string | ~bool" : GoString), _typ : ("int | string | ~bool" : GoString) } : T__struct_9),
({ _src : ("package u3b; func _[_ int | string | ~bool]() {}" : GoString), _expr : ("int | string" : GoString), _typ : ("int | string" : GoString) } : T__struct_9),
({ _src : ("package u3b; func _[_ int | string | ~bool]() {}" : GoString), _expr : ("~bool" : GoString), _typ : ("~bool" : GoString) } : T__struct_9),
({ _src : ("package u3b; func _[_ int | string | ~float64|~bool]() {}" : GoString), _expr : ("int | string | ~float64" : GoString), _typ : ("int | string | ~float64" : GoString) } : T__struct_9),
({ _src : ("package u0c; type _ interface{int}" : GoString), _expr : ("int" : GoString), _typ : ("int" : GoString) } : T__struct_9),
({ _src : ("package u1c; type _ interface{~int}" : GoString), _expr : ("~int" : GoString), _typ : ("~int" : GoString) } : T__struct_9),
({ _src : ("package u2c; type _ interface{int | string}" : GoString), _expr : ("int | string" : GoString), _typ : ("int | string" : GoString) } : T__struct_9),
({ _src : ("package u3c; type _ interface{int | string | ~bool}" : GoString), _expr : ("int | string | ~bool" : GoString), _typ : ("int | string | ~bool" : GoString) } : T__struct_9),
({ _src : ("package u3c; type _ interface{int | string | ~bool}" : GoString), _expr : ("int | string" : GoString), _typ : ("int | string" : GoString) } : T__struct_9),
({ _src : ("package u3c; type _ interface{int | string | ~bool}" : GoString), _expr : ("~bool" : GoString), _typ : ("~bool" : GoString) } : T__struct_9),
({ _src : ("package u3c; type _ interface{int | string | ~float64|~bool}" : GoString), _expr : ("int | string | ~float64" : GoString), _typ : ("int | string | ~float64" : GoString) } : T__struct_9)) : Slice<T__struct_9>);
        for (__0 => _test in _tests) {
            var _info:stdgo.go.types.Types.Info = ({ types : ({
                final x = new GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
                @:mergeBlock {};
                cast x;
            } : GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>) } : Info);
            var _name:GoString = ("" : GoString);
            if (stdgo.strings.Strings.hasPrefix(_test._src, ("package broken_" : GoString))) {
                var __tmp__ = _typecheck(("TypesInfo" : GoString), _test._src, (Go.setRef(_info) : Ref<stdgo.go.types.Types.Info>)), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("package %s: expected to fail but passed" : GoString), Go.toInterface(_pkg.name()));
                    continue;
                };
                if (_pkg != null && ((_pkg : Dynamic).__nil__ == null || !(_pkg : Dynamic).__nil__)) {
                    _name = _pkg.name();
                };
            } else {
                _name = _mustTypecheck(("TypesInfo" : GoString), _test._src, (Go.setRef(_info) : Ref<stdgo.go.types.Types.Info>)).name();
            };
            var _typ:Type = (null : stdgo.go.types.Types.Type);
            for (_e => _tv in _info.types) {
                if (exprString(_e) == (_test._expr)) {
                    _typ = _tv.type;
                    break;
                };
            };
            if (_typ == null) {
                _t.errorf(("package %s: no type found for %s" : GoString), Go.toInterface(_name), Go.toInterface(_test._expr));
                continue;
            };
            {
                var _got:GoString = (_typ.string() : GoString);
                if (_got != (_test._typ)) {
                    _t.errorf(("package %s: got %s; want %s" : GoString), Go.toInterface(_name), Go.toInterface(_got), Go.toInterface(_test._typ));
                };
            };
        };
    }
/**
    
    
    
**/
@:structInit class T_testInstanceInfo_0___localname___testInst {
    public var _name : GoString = "";
    public var _targs : Slice<GoString> = (null : Slice<GoString>);
    public var _typ : GoString = "";
    public function new(?_name:GoString, ?_targs:Slice<GoString>, ?_typ:GoString) {
        if (_name != null) this._name = _name;
        if (_targs != null) this._targs = _targs;
        if (_typ != null) this._typ = _typ;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_testInstanceInfo_0___localname___testInst(_name, _targs, _typ);
    }
}
function testInstanceInfo(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        {};
        var _tests:Slice<T__struct_10> = (new Slice<T__struct_10>(
25,
25,
({ _src : ("package p0; func f[T any](T) {}; func _() { f(42) }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("f" : GoString), (new Slice<GoString>(1, 1, ("int" : GoString)) : Slice<GoString>), ("func(int)" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package p1; func f[T any](T) T { panic(0) }; func _() { f(\'@\') }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("f" : GoString), (new Slice<GoString>(1, 1, ("rune" : GoString)) : Slice<GoString>), ("func(rune) rune" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package p2; func f[T any](...T) T { panic(0) }; func _() { f(0i) }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("f" : GoString), (new Slice<GoString>(1, 1, ("complex128" : GoString)) : Slice<GoString>), ("func(...complex128) complex128" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package p3; func f[A, B, C any](A, *B, []C) {}; func _() { f(1.2, new(string), []byte{}) }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("f" : GoString), (new Slice<GoString>(3, 3, ("float64" : GoString), ("string" : GoString), ("byte" : GoString)) : Slice<GoString>), ("func(float64, *string, []byte)" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package p4; func f[A, B any](A, *B, ...[]B) {}; func _() { f(1.2, new(byte)) }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("f" : GoString), (new Slice<GoString>(2, 2, ("float64" : GoString), ("byte" : GoString)) : Slice<GoString>), ("func(float64, *byte, ...[]byte)" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package s1; func f[T any, P interface{*T}](x T) {}; func _(x string) { f(x) }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("f" : GoString), (new Slice<GoString>(2, 2, ("string" : GoString), ("*string" : GoString)) : Slice<GoString>), ("func(x string)" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package s2; func f[T any, P interface{*T}](x []T) {}; func _(x []int) { f(x) }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("f" : GoString), (new Slice<GoString>(2, 2, ("int" : GoString), ("*int" : GoString)) : Slice<GoString>), ("func(x []int)" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package s3; type C[T any] interface{chan<- T}; func f[T any, P C[T]](x []T) {}; func _(x []int) { f(x) }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(2, 2, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("C" : GoString), (new Slice<GoString>(1, 1, ("T" : GoString)) : Slice<GoString>), ("interface{chan<- T}" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("f" : GoString), (new Slice<GoString>(2, 2, ("int" : GoString), ("chan<- int" : GoString)) : Slice<GoString>), ("func(x []int)" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package s4; type C[T any] interface{chan<- T}; func f[T any, P C[T], Q C[[]*P]](x []T) {}; func _(x []int) { f(x) }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(3, 3, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("C" : GoString), (new Slice<GoString>(1, 1, ("T" : GoString)) : Slice<GoString>), ("interface{chan<- T}" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("C" : GoString), (new Slice<GoString>(1, 1, ("[]*P" : GoString)) : Slice<GoString>), ("interface{chan<- []*P}" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("f" : GoString), (new Slice<GoString>(3, 3, ("int" : GoString), ("chan<- int" : GoString), ("chan<- []*chan<- int" : GoString)) : Slice<GoString>), ("func(x []int)" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package t1; func f[T any, P interface{*T}]() T { panic(0) }; func _() { _ = f[string] }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("f" : GoString), (new Slice<GoString>(2, 2, ("string" : GoString), ("*string" : GoString)) : Slice<GoString>), ("func() string" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package t2; func f[T any, P interface{*T}]() T { panic(0) }; func _() { _ = (f[string]) }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("f" : GoString), (new Slice<GoString>(2, 2, ("string" : GoString), ("*string" : GoString)) : Slice<GoString>), ("func() string" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package t3; type C[T any] interface{chan<- T}; func f[T any, P C[T], Q C[[]*P]]() []T { return nil }; func _() { _ = f[int] }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(3, 3, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("C" : GoString), (new Slice<GoString>(1, 1, ("T" : GoString)) : Slice<GoString>), ("interface{chan<- T}" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("C" : GoString), (new Slice<GoString>(1, 1, ("[]*P" : GoString)) : Slice<GoString>), ("interface{chan<- []*P}" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("f" : GoString), (new Slice<GoString>(3, 3, ("int" : GoString), ("chan<- int" : GoString), ("chan<- []*chan<- int" : GoString)) : Slice<GoString>), ("func() []int" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package t4; type C[T any] interface{chan<- T}; func f[T any, P C[T], Q C[[]*P]]() []T { return nil }; func _() { _ = (f[int]) }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(3, 3, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("C" : GoString), (new Slice<GoString>(1, 1, ("T" : GoString)) : Slice<GoString>), ("interface{chan<- T}" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("C" : GoString), (new Slice<GoString>(1, 1, ("[]*P" : GoString)) : Slice<GoString>), ("interface{chan<- []*P}" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("f" : GoString), (new Slice<GoString>(3, 3, ("int" : GoString), ("chan<- int" : GoString), ("chan<- []*chan<- int" : GoString)) : Slice<GoString>), ("func() []int" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package i0; import \"lib\"; func _() { lib.F(42) }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("F" : GoString), (new Slice<GoString>(1, 1, ("int" : GoString)) : Slice<GoString>), ("func(int)" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package duplfunc0; func f[T any](T) {}; func _() { f(42); f(\"foo\"); f[int](3) }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(3, 3, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("f" : GoString), (new Slice<GoString>(1, 1, ("int" : GoString)) : Slice<GoString>), ("func(int)" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("f" : GoString), (new Slice<GoString>(1, 1, ("string" : GoString)) : Slice<GoString>), ("func(string)" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("f" : GoString), (new Slice<GoString>(1, 1, ("int" : GoString)) : Slice<GoString>), ("func(int)" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package duplfunc1; import \"lib\"; func _() { lib.F(42); lib.F(\"foo\"); lib.F(3) }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(3, 3, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("F" : GoString), (new Slice<GoString>(1, 1, ("int" : GoString)) : Slice<GoString>), ("func(int)" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("F" : GoString), (new Slice<GoString>(1, 1, ("string" : GoString)) : Slice<GoString>), ("func(string)" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("F" : GoString), (new Slice<GoString>(1, 1, ("int" : GoString)) : Slice<GoString>), ("func(int)" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package type0; type T[P interface{~int}] struct{ x P }; var _ T[int]" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("T" : GoString), (new Slice<GoString>(1, 1, ("int" : GoString)) : Slice<GoString>), ("struct{x int}" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package type1; type T[P interface{~int}] struct{ x P }; var _ (T[int])" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("T" : GoString), (new Slice<GoString>(1, 1, ("int" : GoString)) : Slice<GoString>), ("struct{x int}" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package type2; type T[P interface{~int}] struct{ x P }; var _ T[(int)]" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("T" : GoString), (new Slice<GoString>(1, 1, ("int" : GoString)) : Slice<GoString>), ("struct{x int}" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package type3; type T[P1 interface{~[]P2}, P2 any] struct{ x P1; y P2 }; var _ T[[]int, int]" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("T" : GoString), (new Slice<GoString>(2, 2, ("[]int" : GoString), ("int" : GoString)) : Slice<GoString>), ("struct{x []int; y int}" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package type4; import \"lib\"; var _ lib.T[int]" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("T" : GoString), (new Slice<GoString>(1, 1, ("int" : GoString)) : Slice<GoString>), ("[]int" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package dupltype0; type T[P interface{~int}] struct{ x P }; var x T[int]; var y T[int]" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(2, 2, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("T" : GoString), (new Slice<GoString>(1, 1, ("int" : GoString)) : Slice<GoString>), ("struct{x int}" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("T" : GoString), (new Slice<GoString>(1, 1, ("int" : GoString)) : Slice<GoString>), ("struct{x int}" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package dupltype1; type T[P ~int] struct{ x P }; func (r *T[Q]) add(z T[Q]) { r.x += z.x }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(2, 2, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("T" : GoString), (new Slice<GoString>(1, 1, ("Q" : GoString)) : Slice<GoString>), ("struct{x Q}" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("T" : GoString), (new Slice<GoString>(1, 1, ("Q" : GoString)) : Slice<GoString>), ("struct{x Q}" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package dupltype1; import \"lib\"; var x lib.T[int]; var y lib.T[int]; var z lib.T[string]" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(3, 3, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("T" : GoString), (new Slice<GoString>(1, 1, ("int" : GoString)) : Slice<GoString>), ("[]int" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("T" : GoString), (new Slice<GoString>(1, 1, ("int" : GoString)) : Slice<GoString>), ("[]int" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("T" : GoString), (new Slice<GoString>(1, 1, ("string" : GoString)) : Slice<GoString>), ("[]string" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10),
({ _src : ("package issue51803; func foo[T any](T) {}; func _() { foo[int]( /* leave arg away on purpose */ ) }" : GoString), _instances : (new Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst(("foo" : GoString), (new Slice<GoString>(1, 1, ("int" : GoString)) : Slice<GoString>), ("func(int)" : GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst)) : Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst>) } : T__struct_10)) : Slice<T__struct_10>);
        for (__0 => _test in _tests) {
            var _imports:stdgo.go.types_test.Types_test.T_testImporter = ({
                final x = new stdgo.GoMap.GoStringMap<Ref<stdgo.go.types.Types.Package>>();
                x.__defaultValue__ = () -> (null : Ref<stdgo.go.types.Types.Package>);
                @:mergeBlock {};
                x;
            } : GoMap<GoString, Ref<stdgo.go.types.Types.Package>>);
            var _conf:stdgo.go.types.Types.Config = ({ error : function(_0:Error):Void {}, importer : Go.asInterface(_imports) } : Config);
            var _instMap = ({
                final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Instance>();
                @:mergeBlock {};
                cast x;
            } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Instance>);
            var _useMap = ({
                final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                @:mergeBlock {};
                cast x;
            } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>);
            var _makePkg = function(_src:GoString):Ref<Package> {
                var _f = _mustParse(_fset, ("p.go" : GoString), _src);
                var __tmp__ = _conf.check(Go.str(), _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), (Go.setRef(({ instances : _instMap, uses : _useMap } : Info)) : Ref<stdgo.go.types.Types.Info>)), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, __0:Error = __tmp__._1;
                _imports[_pkg.name()] = _pkg;
                return _pkg;
            };
            _makePkg(("package lib\n\nfunc F[P any](P) {}\n\ntype T[P any] []P\n" : GoString));
            var _pkg = _makePkg(_test._src);
            _t.run(_pkg.name(), function(_t:Ref<stdgo.testing.Testing.T>):Void {
                var _instances = _sortedInstances(_instMap);
                {
                    var __0:GoInt = (_instances.length), __1:GoInt = (_test._instances.length), _want:GoInt = __1, _got:GoInt = __0;
                    if (_got != (_want)) {
                        _t.fatalf(("got %d instances, want %d" : GoString), Go.toInterface(_got), Go.toInterface(_want));
                    };
                };
                for (_ii => _inst in _instances) {
                    var _targs:Slice<Type> = (null : Slice<stdgo.go.types.Types.Type>);
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _inst.inst.typeArgs.len(), _i++, {
                            _targs = (_targs.__append__(_inst.inst.typeArgs.at(_i)));
                        });
                    };
                    var _typ:stdgo.go.types.Types.Type = _inst.inst.type;
                    var _testInst:stdgo.go.types_test.Types_test.T_testInstanceInfo_0___localname___testInst = _test._instances[(_ii : GoInt)];
                    {
                        var _got:GoString = _inst.ident.name;
                        if (_got != (_testInst._name)) {
                            _t.fatalf(("got name %s, want %s" : GoString), Go.toInterface(_got), Go.toInterface(_testInst._name));
                        };
                    };
                    if ((_targs.length) != ((_testInst._targs.length))) {
                        _t.fatalf(("got %d type arguments; want %d" : GoString), Go.toInterface((_targs.length)), Go.toInterface((_testInst._targs.length)));
                    };
                    for (_i => _targ in _targs) {
                        {
                            var _got:GoString = (_targ.string() : GoString);
                            if (_got != (_testInst._targs[(_i : GoInt)])) {
                                _t.errorf(("type argument %d: got %s; want %s" : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_testInst._targs[(_i : GoInt)]));
                            };
                        };
                    };
                    {
                        var _got:GoString = (_typ.underlying().string() : GoString);
                        if (_got != (_testInst._typ)) {
                            _t.errorf(("package %s: got %s; want %s" : GoString), Go.toInterface(_pkg.name()), Go.toInterface(_got), Go.toInterface(_testInst._typ));
                        };
                    };
                    var _ptype:stdgo.go.types.Types.Type = _useMap[_inst.ident].type();
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_ptype) : T__interface_0)) : T__interface_0), ok : true };
                    } catch(_) {
                        { value : (null : stdgo.go.types_test.Types_test.T__interface_0), ok : false };
                    }, _lister = __tmp__.value, __0 = __tmp__.ok;
                    if ((_lister == null) || (_lister.typeParams().len() == (0 : GoInt))) {
                        _t.fatalf(("info.Types[%v] = %v, want parameterized type" : GoString), Go.toInterface(Go.asInterface(_inst.ident)), Go.toInterface(_ptype));
                    };
                    var __tmp__ = instantiate(null, _ptype, _targs, true), _inst2:stdgo.go.types.Types.Type = __tmp__._0, _err:Error = __tmp__._1;
                    if (_err != null) {
                        _t.errorf(("Instantiate(%v, %v) failed: %v" : GoString), Go.toInterface(_ptype), Go.toInterface(_targs), Go.toInterface(_err));
                    };
                    if (!identical(_inst.inst.type, _inst2)) {
                        _t.errorf(("%v and %v are not identical" : GoString), Go.toInterface(_inst.inst.type), Go.toInterface(_inst2));
                    };
                };
            });
        };
    }
private function _sortedInstances(_m:GoMap<Ref<stdgo.go.ast.Ast.Ident>, Instance>):Slice<T_recordedInstance> {
        var _instances:Slice<T_recordedInstance> = (null : Slice<stdgo.go.types_test.Types_test.T_recordedInstance>);
        for (_id => _inst in _m) {
            _instances = (_instances.__append__((new T_recordedInstance(_id, _inst?.__copy__()) : T_recordedInstance)));
        };
        stdgo.sort.Sort.slice(Go.toInterface(_instances), function(_i:GoInt, _j:GoInt):Bool {
            return _instances[(_i : GoInt)].ident.pos() < _instances[(_j : GoInt)].ident.pos();
        });
        return _instances;
    }
function testDefsInfo(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests:Slice<T__struct_11> = (new Slice<T__struct_11>(
9,
9,
({ _src : ("package p0; const x = 42" : GoString), _obj : ("x" : GoString), _want : ("const p0.x untyped int" : GoString) } : T__struct_11),
({ _src : ("package p1; const x int = 42" : GoString), _obj : ("x" : GoString), _want : ("const p1.x int" : GoString) } : T__struct_11),
({ _src : ("package p2; var x int" : GoString), _obj : ("x" : GoString), _want : ("var p2.x int" : GoString) } : T__struct_11),
({ _src : ("package p3; type x int" : GoString), _obj : ("x" : GoString), _want : ("type p3.x int" : GoString) } : T__struct_11),
({ _src : ("package p4; func f()" : GoString), _obj : ("f" : GoString), _want : ("func p4.f()" : GoString) } : T__struct_11),
({ _src : ("package p5; func f() int { x, _ := 1, 2; return x }" : GoString), _obj : ("_" : GoString), _want : ("var _ int" : GoString) } : T__struct_11),
({ _src : ("package g0; type x[T any] int" : GoString), _obj : ("x" : GoString), _want : ("type g0.x[T any] int" : GoString) } : T__struct_11),
({ _src : ("package g1; func f[T any]() {}" : GoString), _obj : ("f" : GoString), _want : ("func g1.f[T any]()" : GoString) } : T__struct_11),
({ _src : ("package g2; type x[T any] int; func (*x[_]) m() {}" : GoString), _obj : ("m" : GoString), _want : ("func (*g2.x[_]).m()" : GoString) } : T__struct_11)) : Slice<T__struct_11>);
        for (__0 => _test in _tests) {
            var _info:stdgo.go.types.Types.Info = ({ defs : ({
                final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                @:mergeBlock {};
                cast x;
            } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : Info);
            var _name:GoString = _mustTypecheck(("DefsInfo" : GoString), _test._src, (Go.setRef(_info) : Ref<stdgo.go.types.Types.Info>)).name();
            var _def:Object = (null : stdgo.go.types.Types.Object);
            for (_id => _obj in _info.defs) {
                if (_id.name == (_test._obj)) {
                    _def = _obj;
                    break;
                };
            };
            if (_def == null) {
                _t.errorf(("package %s: %s not found" : GoString), Go.toInterface(_name), Go.toInterface(_test._obj));
                continue;
            };
            {
                var _got:GoString = (_def.string() : GoString);
                if (_got != (_test._want)) {
                    _t.errorf(("package %s: got %s; want %s" : GoString), Go.toInterface(_name), Go.toInterface(_got), Go.toInterface(_test._want));
                };
            };
        };
    }
function testUsesInfo(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests:Slice<T__struct_11> = (new Slice<T__struct_11>(
24,
24,
({ _src : ("package p0; func _() { _ = x }; const x = 42" : GoString), _obj : ("x" : GoString), _want : ("const p0.x untyped int" : GoString) } : T__struct_11),
({ _src : ("package p1; func _() { _ = x }; const x int = 42" : GoString), _obj : ("x" : GoString), _want : ("const p1.x int" : GoString) } : T__struct_11),
({ _src : ("package p2; func _() { _ = x }; var x int" : GoString), _obj : ("x" : GoString), _want : ("var p2.x int" : GoString) } : T__struct_11),
({ _src : ("package p3; func _() { type _ x }; type x int" : GoString), _obj : ("x" : GoString), _want : ("type p3.x int" : GoString) } : T__struct_11),
({ _src : ("package p4; func _() { _ = f }; func f()" : GoString), _obj : ("f" : GoString), _want : ("func p4.f()" : GoString) } : T__struct_11),
({ _src : ("package g0; func _[T any]() { _ = x }; const x = 42" : GoString), _obj : ("x" : GoString), _want : ("const g0.x untyped int" : GoString) } : T__struct_11),
({ _src : ("package g1; func _[T any](x T) { }" : GoString), _obj : ("T" : GoString), _want : ("type parameter T any" : GoString) } : T__struct_11),
({ _src : ("package g2; type N[A any] int; var _ N[int]" : GoString), _obj : ("N" : GoString), _want : ("type g2.N[A any] int" : GoString) } : T__struct_11),
({ _src : ("package g3; type N[A any] int; func (N[_]) m() {}" : GoString), _obj : ("N" : GoString), _want : ("type g3.N[A any] int" : GoString) } : T__struct_11),
({ _src : ("package s1; type N[A any] struct{ a A }; var f = N[int]{}.a" : GoString), _obj : ("a" : GoString), _want : ("field a int" : GoString) } : T__struct_11),
({ _src : ("package s1; type N[A any] struct{ a A }; func (r N[B]) m(b B) { r.a = b }" : GoString), _obj : ("a" : GoString), _want : ("field a B" : GoString) } : T__struct_11),
({ _src : ("package m0; type N[A any] int; func (r N[B]) m() { r.n() }; func (N[C]) n() {}" : GoString), _obj : ("n" : GoString), _want : ("func (m0.N[B]).n()" : GoString) } : T__struct_11),
({ _src : ("package m1; type N[A any] int; func (r N[B]) m() { }; var f = N[int].m" : GoString), _obj : ("m" : GoString), _want : ("func (m1.N[int]).m()" : GoString) } : T__struct_11),
({ _src : ("package m2; func _[A any](v interface{ m() A }) { v.m() }" : GoString), _obj : ("m" : GoString), _want : ("func (interface).m() A" : GoString) } : T__struct_11),
({ _src : ("package m3; func f[A any]() interface{ m() A } { return nil }; var _ = f[int]().m()" : GoString), _obj : ("m" : GoString), _want : ("func (interface).m() int" : GoString) } : T__struct_11),
({ _src : ("package m4; type T[A any] func() interface{ m() A }; var x T[int]; var y = x().m" : GoString), _obj : ("m" : GoString), _want : ("func (interface).m() int" : GoString) } : T__struct_11),
({ _src : ("package m5; type T[A any] interface{ m() A }; func _[B any](t T[B]) { t.m() }" : GoString), _obj : ("m" : GoString), _want : ("func (m5.T[B]).m() B" : GoString) } : T__struct_11),
({ _src : ("package m6; type T[A any] interface{ m() }; func _[B any](t T[B]) { t.m() }" : GoString), _obj : ("m" : GoString), _want : ("func (m6.T[B]).m()" : GoString) } : T__struct_11),
({ _src : ("package m7; type T[A any] interface{ m() A }; func _(t T[int]) { t.m() }" : GoString), _obj : ("m" : GoString), _want : ("func (m7.T[int]).m() int" : GoString) } : T__struct_11),
({ _src : ("package m8; type T[A any] interface{ m() }; func _(t T[int]) { t.m() }" : GoString), _obj : ("m" : GoString), _want : ("func (m8.T[int]).m()" : GoString) } : T__struct_11),
({ _src : ("package m9; type T[A any] interface{ m() }; func _(t T[int]) { _ = t.m }" : GoString), _obj : ("m" : GoString), _want : ("func (m9.T[int]).m()" : GoString) } : T__struct_11),
({ _src : ("package m10; type E[A any] interface{ m() }; type T[B any] interface{ E[B]; n() }; func _(t T[int]) { t.m() }" : GoString), _obj : ("m" : GoString), _want : ("func (m10.E[int]).m()" : GoString) } : T__struct_11),
({ _src : ("package m11; type T[A any] interface{ m(); n() }; func _(t1 T[int], t2 T[string]) { t1.m(); t2.n() }" : GoString), _obj : ("m" : GoString), _want : ("func (m11.T[int]).m()" : GoString) } : T__struct_11),
({ _src : ("package m12; type T[A any] interface{ m(); n() }; func _(t1 T[int], t2 T[string]) { t1.m(); t2.n() }" : GoString), _obj : ("n" : GoString), _want : ("func (m12.T[string]).n()" : GoString) } : T__struct_11)) : Slice<T__struct_11>);
        for (__0 => _test in _tests) {
            var _info:stdgo.go.types.Types.Info = ({ uses : ({
                final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                @:mergeBlock {};
                cast x;
            } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : Info);
            var _name:GoString = _mustTypecheck(("UsesInfo" : GoString), _test._src, (Go.setRef(_info) : Ref<stdgo.go.types.Types.Info>)).name();
            var _use:Object = (null : stdgo.go.types.Types.Object);
            for (_id => _obj in _info.uses) {
                if (_id.name == (_test._obj)) {
                    if (_use != null) {
                        throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("multiple uses of %q" : GoString), Go.toInterface(_id.name)));
                    };
                    _use = _obj;
                };
            };
            if (_use == null) {
                _t.errorf(("package %s: %s not found" : GoString), Go.toInterface(_name), Go.toInterface(_test._obj));
                continue;
            };
            {
                var _got:GoString = (_use.string() : GoString);
                if (_got != (_test._want)) {
                    _t.errorf(("package %s: got %s; want %s" : GoString), Go.toInterface(_name), Go.toInterface(_got), Go.toInterface(_test._want));
                };
            };
        };
    }
function testGenericMethodInfo(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _src:GoString = ("package p\n\ntype N[A any] int\n\nfunc (r N[B]) m() { r.m(); r.n() }\n\nfunc (r *N[C]) n() {  }\n" : GoString);
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("p.go" : GoString), _src);
        var _info:stdgo.go.types.Types.Info = ({ defs : ({
            final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>), uses : ({
            final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>), selections : ({
            final x = new GoRefMap<Ref<stdgo.go.ast.Ast.SelectorExpr>, Ref<stdgo.go.types.Types.Selection>>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Ref<stdgo.go.ast.Ast.SelectorExpr>, Ref<stdgo.go.types.Types.Selection>>) } : Info);
        var _conf:Config = ({} : stdgo.go.types.Types.Config);
        var __tmp__ = _conf.check(("p" : GoString), _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), (Go.setRef(_info) : Ref<stdgo.go.types.Types.Info>)), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var n = (Go.typeAssert((Go.toInterface(_pkg.scope().lookup(("N" : GoString)).type()) : Ref<Named>)) : Ref<Named>);
        var __0 = n.method((0 : GoInt)), __1 = n.method((1 : GoInt)), _gn = __1, _gm = __0;
        if (_gm.name() == (("n" : GoString))) {
            {
                final __tmp__0 = _gn;
                final __tmp__1 = _gm;
                _gm = __tmp__0;
                _gn = __tmp__1;
            };
        };
        var __0:Ref<Func> = (null : Ref<stdgo.go.types.Types.Func>), __1:Ref<Func> = (null : Ref<stdgo.go.types.Types.Func>), _dn:Ref<Func> = __1, _dm:Ref<Func> = __0;
        var __0:Ref<Func> = (null : Ref<stdgo.go.types.Types.Func>), __1:Ref<Func> = (null : Ref<stdgo.go.types.Types.Func>), _dmn:Ref<Func> = __1, _dmm:Ref<Func> = __0;
        for (__0 => _decl in _f.decls) {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_decl) : Ref<stdgo.go.ast.Ast.FuncDecl>)) : Ref<stdgo.go.ast.Ast.FuncDecl>), ok : true };
            } catch(_) {
                { value : (null : Ref<stdgo.go.ast.Ast.FuncDecl>), ok : false };
            }, _fdecl = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                continue;
            };
            var _def = (Go.typeAssert((Go.toInterface(_info.defs[_fdecl.name]) : Ref<Func>)) : Ref<Func>);
            {
                final __value__ = _fdecl.name.name;
                if (__value__ == (("m" : GoString))) {
                    _dm = _def;
                    stdgo.go.ast.Ast.inspect(Go.asInterface(_fdecl.body), function(_n:stdgo.go.ast.Ast.Node):Bool {
                        {
                            var __tmp__ = try {
                                { value : (Go.typeAssert((Go.toInterface(_n) : Ref<stdgo.go.ast.Ast.CallExpr>)) : Ref<stdgo.go.ast.Ast.CallExpr>), ok : true };
                            } catch(_) {
                                { value : (null : Ref<stdgo.go.ast.Ast.CallExpr>), ok : false };
                            }, _call = __tmp__.value, _ok = __tmp__.ok;
                            if (_ok) {
                                var _sel = (Go.typeAssert((Go.toInterface(_call.fun) : Ref<stdgo.go.ast.Ast.SelectorExpr>)) : Ref<stdgo.go.ast.Ast.SelectorExpr>);
                                var _use = (Go.typeAssert((Go.toInterface(_info.uses[_sel.sel]) : Ref<Func>)) : Ref<Func>);
                                var _selection = _info.selections[_sel];
                                if (_selection.kind() != ((1 : stdgo.go.types.Types.SelectionKind))) {
                                    _t.errorf(("Selection kind = %v, want %v" : GoString), Go.toInterface(_selection.kind()), Go.toInterface((1 : stdgo.go.types.Types.SelectionKind)));
                                };
                                if (Go.toInterface(_selection.obj()) != (Go.toInterface(Go.asInterface(_use)))) {
                                    _t.errorf(("info.Selections contains %v, want %v" : GoString), Go.toInterface(_selection.obj()), Go.toInterface(Go.asInterface(_use)));
                                };
                                {
                                    final __value__ = _sel.sel.name;
                                    if (__value__ == (("m" : GoString))) {
                                        _dmm = _use;
                                    } else if (__value__ == (("n" : GoString))) {
                                        _dmn = _use;
                                    };
                                };
                            };
                        };
                        return true;
                    });
                } else if (__value__ == (("n" : GoString))) {
                    _dn = _def;
                };
            };
        };
        if (_gm != (_dm)) {
            _t.errorf(("N.Method(...) returns %v for \"m\", but Info.Defs has %v" : GoString), Go.toInterface(Go.asInterface(_gm)), Go.toInterface(Go.asInterface(_dm)));
        };
        if (_gn != (_dn)) {
            _t.errorf(("N.Method(...) returns %v for \"m\", but Info.Defs has %v" : GoString), Go.toInterface(Go.asInterface(_gm)), Go.toInterface(Go.asInterface(_dm)));
        };
        if (_dmm != (_dm)) {
            _t.errorf(("Inside \"m\", r.m uses %v, want the defined func %v" : GoString), Go.toInterface(Go.asInterface(_dmm)), Go.toInterface(Go.asInterface(_dm)));
        };
        if (_dmn == (_dn)) {
            _t.errorf(("Inside \"m\", r.n uses %v, want a func distinct from %v" : GoString), Go.toInterface(Go.asInterface(_dmm)), Go.toInterface(Go.asInterface(_dm)));
        };
    }
function testImplicitsInfo(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        var _tests:Slice<T__struct_12> = (new Slice<T__struct_12>(
20,
20,
({ _src : ("package p2; import . \"fmt\"; var _ = Println" : GoString), _want : Go.str() } : T__struct_12),
({ _src : ("package p0; import local \"fmt\"; var _ = local.Println" : GoString), _want : Go.str() } : T__struct_12),
({ _src : ("package p1; import \"fmt\"; var _ = fmt.Println" : GoString), _want : ("importSpec: package fmt" : GoString) } : T__struct_12),
({ _src : ("package p3; func f(x interface{}) { switch x.(type) { case int: } }" : GoString), _want : Go.str() } : T__struct_12),
({ _src : ("package p4; func f(x interface{}) { switch t := x.(type) { case int: _ = t } }" : GoString), _want : ("caseClause: var t int" : GoString) } : T__struct_12),
({ _src : ("package p5; func f(x interface{}) { switch t := x.(type) { case int, uint: _ = t } }" : GoString), _want : ("caseClause: var t interface{}" : GoString) } : T__struct_12),
({ _src : ("package p6; func f(x interface{}) { switch t := x.(type) { default: _ = t } }" : GoString), _want : ("caseClause: var t interface{}" : GoString) } : T__struct_12),
({ _src : ("package p7; func f(x int) {}" : GoString), _want : Go.str() } : T__struct_12),
({ _src : ("package p8; func f(int) {}" : GoString), _want : ("field: var  int" : GoString) } : T__struct_12),
({ _src : ("package p9; func f() (complex64) { return 0 }" : GoString), _want : ("field: var  complex64" : GoString) } : T__struct_12),
({ _src : ("package p10; type T struct{}; func (*T) f() {}" : GoString), _want : ("field: var  *p10.T" : GoString) } : T__struct_12),
({ _src : ("package f0; func f[T any](x int) {}" : GoString), _want : Go.str() } : T__struct_12),
({ _src : ("package f1; func f[T any](int) {}" : GoString), _want : ("field: var  int" : GoString) } : T__struct_12),
({ _src : ("package f2; func f[T any](T) {}" : GoString), _want : ("field: var  T" : GoString) } : T__struct_12),
({ _src : ("package f3; func f[T any]() (complex64) { return 0 }" : GoString), _want : ("field: var  complex64" : GoString) } : T__struct_12),
({ _src : ("package f4; func f[T any](t T) (T) { return t }" : GoString), _want : ("field: var  T" : GoString) } : T__struct_12),
({ _src : ("package t0; type T[A any] struct{}; func (*T[_]) f() {}" : GoString), _want : ("field: var  *t0.T[_]" : GoString) } : T__struct_12),
({ _src : ("package t1; type T[A any] struct{}; func _(x interface{}) { switch t := x.(type) { case T[int]: _ = t } }" : GoString), _want : ("caseClause: var t t1.T[int]" : GoString) } : T__struct_12),
({ _src : ("package t2; type T[A any] struct{}; func _[P any](x interface{}) { switch t := x.(type) { case T[P]: _ = t } }" : GoString), _want : ("caseClause: var t t2.T[P]" : GoString) } : T__struct_12),
({ _src : ("package t3; func _[P any](x interface{}) { switch t := x.(type) { case P: _ = t } }" : GoString), _want : ("caseClause: var t P" : GoString) } : T__struct_12)) : Slice<T__struct_12>);
        for (__0 => _test in _tests) {
            var _info:stdgo.go.types.Types.Info = ({ implicits : ({
                final x = new GoObjectMap<stdgo.go.ast.Ast.Node, stdgo.go.types.Types.Object>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Node", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo.go.types.Types.Object);
                @:mergeBlock {};
                cast x;
            } : GoMap<stdgo.go.ast.Ast.Node, stdgo.go.types.Types.Object>) } : Info);
            var _name:GoString = _mustTypecheck(("ImplicitsInfo" : GoString), _test._src, (Go.setRef(_info) : Ref<stdgo.go.types.Types.Info>)).name();
            if ((_info.implicits.length) > (1 : GoInt)) {
                _t.errorf(("package %s: %d Implicits entries found" : GoString), Go.toInterface(_name), Go.toInterface((_info.implicits.length)));
                continue;
            };
            var _got:GoString = ("" : GoString);
            for (_n => _obj in _info.implicits) {
                {
                    final __type__ = _n;
                    if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ImportSpec>))) {
                        var _x:Ref<stdgo.go.ast.Ast.ImportSpec> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__.__underlying__().value;
                        _got = ("importSpec" : GoString);
                    } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.CaseClause>))) {
                        var _x:Ref<stdgo.go.ast.Ast.CaseClause> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.CaseClause>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.CaseClause>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.CaseClause>) : __type__.__underlying__().value;
                        _got = ("caseClause" : GoString);
                    } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.Field>))) {
                        var _x:Ref<stdgo.go.ast.Ast.Field> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Field>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.Field>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Field>) : __type__.__underlying__().value;
                        _got = ("field" : GoString);
                    } else {
                        var _x:stdgo.go.ast.Ast.Node = __type__ == null ? (null : stdgo.go.ast.Ast.Node) : cast __type__;
                        _t.fatalf(("package %s: unexpected %T" : GoString), Go.toInterface(_name), Go.toInterface(_x));
                    };
                };
                _got = _got + ((": " : GoString) + (_obj.string() : GoString));
            };
            if (_got != (_test._want)) {
                _t.errorf(("package %s: got %q; want %q" : GoString), Go.toInterface(_name), Go.toInterface(_got), Go.toInterface(_test._want));
            };
        };
    }
private function _predString(_tv:TypeAndValue):GoString {
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        var _pred:(Bool, GoString) -> Void = function(_b:Bool, _s:GoString):Void {
            if (_b) {
                if (_buf.len() > (0 : GoInt)) {
                    _buf.writeString((", " : GoString));
                };
                _buf.writeString(_s);
            };
        };
        _pred(_tv.isVoid(), ("void" : GoString));
        _pred(_tv.isType(), ("type" : GoString));
        _pred(_tv.isBuiltin(), ("builtin" : GoString));
        _pred(_tv.isValue() && (_tv.value != null), ("const" : GoString));
        _pred(_tv.isValue() && (_tv.value == null), ("value" : GoString));
        _pred(_tv.isNil(), ("nil" : GoString));
        _pred(_tv.addressable(), ("addressable" : GoString));
        _pred(_tv.assignable(), ("assignable" : GoString));
        _pred(_tv.hasOk(), ("hasOk" : GoString));
        if (_buf.len() == ((0 : GoInt))) {
            return ("invalid" : GoString);
        };
        return (_buf.string() : GoString);
    }
function testPredicatesInfo(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        var _tests:Slice<T__struct_13> = (new Slice<T__struct_13>(
38,
38,
({ _src : ("package n0; func f() { f() }" : GoString), _expr : ("f()" : GoString), _pred : ("void" : GoString) } : T__struct_13),
({ _src : ("package t0; type _ int" : GoString), _expr : ("int" : GoString), _pred : ("type" : GoString) } : T__struct_13),
({ _src : ("package t1; type _ []int" : GoString), _expr : ("[]int" : GoString), _pred : ("type" : GoString) } : T__struct_13),
({ _src : ("package t2; type _ func()" : GoString), _expr : ("func()" : GoString), _pred : ("type" : GoString) } : T__struct_13),
({ _src : ("package t3; type _ func(int)" : GoString), _expr : ("int" : GoString), _pred : ("type" : GoString) } : T__struct_13),
({ _src : ("package t3; type _ func(...int)" : GoString), _expr : ("...int" : GoString), _pred : ("type" : GoString) } : T__struct_13),
({ _src : ("package b0; var _ = len(\"\")" : GoString), _expr : ("len" : GoString), _pred : ("builtin" : GoString) } : T__struct_13),
({ _src : ("package b1; var _ = (len)(\"\")" : GoString), _expr : ("(len)" : GoString), _pred : ("builtin" : GoString) } : T__struct_13),
({ _src : ("package c0; var _ = 42" : GoString), _expr : ("42" : GoString), _pred : ("const" : GoString) } : T__struct_13),
({ _src : ("package c1; var _ = \"foo\" + \"bar\"" : GoString), _expr : ("\"foo\" + \"bar\"" : GoString), _pred : ("const" : GoString) } : T__struct_13),
({ _src : ("package c2; const (i = 1i; _ = i)" : GoString), _expr : ("i" : GoString), _pred : ("const" : GoString) } : T__struct_13),
({ _src : ("package v0; var (a, b int; _ = a + b)" : GoString), _expr : ("a + b" : GoString), _pred : ("value" : GoString) } : T__struct_13),
({ _src : ("package v1; var _ = &[]int{1}" : GoString), _expr : ("[]int{…}" : GoString), _pred : ("value" : GoString) } : T__struct_13),
({ _src : ("package v2; var _ = func(){}" : GoString), _expr : ("(func() literal)" : GoString), _pred : ("value" : GoString) } : T__struct_13),
({ _src : ("package v4; func f() { _ = f }" : GoString), _expr : ("f" : GoString), _pred : ("value" : GoString) } : T__struct_13),
({ _src : ("package v3; var _ *int = nil" : GoString), _expr : ("nil" : GoString), _pred : ("value, nil" : GoString) } : T__struct_13),
({ _src : ("package v3; var _ *int = (nil)" : GoString), _expr : ("(nil)" : GoString), _pred : ("value, nil" : GoString) } : T__struct_13),
({ _src : ("package a0; var (x int; _ = x)" : GoString), _expr : ("x" : GoString), _pred : ("value, addressable, assignable" : GoString) } : T__struct_13),
({ _src : ("package a1; var (p *int; _ = *p)" : GoString), _expr : ("*p" : GoString), _pred : ("value, addressable, assignable" : GoString) } : T__struct_13),
({ _src : ("package a2; var (s []int; _ = s[0])" : GoString), _expr : ("s[0]" : GoString), _pred : ("value, addressable, assignable" : GoString) } : T__struct_13),
({ _src : ("package a3; var (s struct{f int}; _ = s.f)" : GoString), _expr : ("s.f" : GoString), _pred : ("value, addressable, assignable" : GoString) } : T__struct_13),
({ _src : ("package a4; var (a [10]int; _ = a[0])" : GoString), _expr : ("a[0]" : GoString), _pred : ("value, addressable, assignable" : GoString) } : T__struct_13),
({ _src : ("package a5; func _(x int) { _ = x }" : GoString), _expr : ("x" : GoString), _pred : ("value, addressable, assignable" : GoString) } : T__struct_13),
({ _src : ("package a6; func _()(x int) { _ = x; return }" : GoString), _expr : ("x" : GoString), _pred : ("value, addressable, assignable" : GoString) } : T__struct_13),
({ _src : ("package a7; type T int; func (x T) _() { _ = x }" : GoString), _expr : ("x" : GoString), _pred : ("value, addressable, assignable" : GoString) } : T__struct_13),
({ _src : ("package s0; var (m map[int]int; _ = m[0])" : GoString), _expr : ("m[0]" : GoString), _pred : ("value, assignable, hasOk" : GoString) } : T__struct_13),
({ _src : ("package s1; var (m map[int]int; _, _ = m[0])" : GoString), _expr : ("m[0]" : GoString), _pred : ("value, assignable, hasOk" : GoString) } : T__struct_13),
({ _src : ("package k0; var (ch chan int; _ = <-ch)" : GoString), _expr : ("<-ch" : GoString), _pred : ("value, hasOk" : GoString) } : T__struct_13),
({ _src : ("package k1; var (ch chan int; _, _ = <-ch)" : GoString), _expr : ("<-ch" : GoString), _pred : ("value, hasOk" : GoString) } : T__struct_13),
({ _src : ("package m0; import \"os\"; func _() { _ = os.Stdout }" : GoString), _expr : ("os" : GoString), _pred : ("<missing>" : GoString) } : T__struct_13),
({ _src : ("package m1; import p \"os\"; func _() { _ = p.Stdout }" : GoString), _expr : ("p" : GoString), _pred : ("<missing>" : GoString) } : T__struct_13),
({ _src : ("package m2; const c = 0" : GoString), _expr : ("c" : GoString), _pred : ("<missing>" : GoString) } : T__struct_13),
({ _src : ("package m3; type T int" : GoString), _expr : ("T" : GoString), _pred : ("<missing>" : GoString) } : T__struct_13),
({ _src : ("package m4; var v int" : GoString), _expr : ("v" : GoString), _pred : ("<missing>" : GoString) } : T__struct_13),
({ _src : ("package m5; func f() {}" : GoString), _expr : ("f" : GoString), _pred : ("<missing>" : GoString) } : T__struct_13),
({ _src : ("package m6; func _(x int) {}" : GoString), _expr : ("x" : GoString), _pred : ("<missing>" : GoString) } : T__struct_13),
({ _src : ("package m6; func _()(x int) { return }" : GoString), _expr : ("x" : GoString), _pred : ("<missing>" : GoString) } : T__struct_13),
({ _src : ("package m6; type T int; func (x T) _() {}" : GoString), _expr : ("x" : GoString), _pred : ("<missing>" : GoString) } : T__struct_13)) : Slice<T__struct_13>);
        for (__0 => _test in _tests) {
            var _info:stdgo.go.types.Types.Info = ({ types : ({
                final x = new GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
                @:mergeBlock {};
                cast x;
            } : GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>) } : Info);
            var _name:GoString = _mustTypecheck(("PredicatesInfo" : GoString), _test._src, (Go.setRef(_info) : Ref<stdgo.go.types.Types.Info>)).name();
            var _got:GoString = ("<missing>" : GoString);
            for (_e => _tv in _info.types) {
                if (exprString(_e) == (_test._expr)) {
                    _got = _predString(_tv?.__copy__());
                    break;
                };
            };
            if (_got != (_test._pred)) {
                _t.errorf(("package %s: got %s; want %s" : GoString), Go.toInterface(_name), Go.toInterface(_got), Go.toInterface(_test._pred));
            };
        };
    }
function testScopesInfo(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        var _tests:Slice<T__struct_14> = (new Slice<T__struct_14>(
21,
21,
({ _src : ("package p0" : GoString), _scopes : (new Slice<GoString>(1, 1, ("file:" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p1; import ( \"fmt\"; m \"math\"; _ \"os\" ); var ( _ = fmt.Println; _ = m.Pi )" : GoString), _scopes : (new Slice<GoString>(1, 1, ("file:fmt m" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p2; func _() {}" : GoString), _scopes : (new Slice<GoString>(2, 2, ("file:" : GoString), ("func:" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p3; func _(x, y int) {}" : GoString), _scopes : (new Slice<GoString>(2, 2, ("file:" : GoString), ("func:x y" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p4; func _(x, y int) { x, z := 1, 2; _ = z }" : GoString), _scopes : (new Slice<GoString>(2, 2, ("file:" : GoString), ("func:x y z" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p5; func _(x, y int) (u, _ int) { return }" : GoString), _scopes : (new Slice<GoString>(2, 2, ("file:" : GoString), ("func:u x y" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p6; func _() { { var x int; _ = x } }" : GoString), _scopes : (new Slice<GoString>(3, 3, ("file:" : GoString), ("func:" : GoString), ("block:x" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p7; func _() { if true {} }" : GoString), _scopes : (new Slice<GoString>(4, 4, ("file:" : GoString), ("func:" : GoString), ("if:" : GoString), ("block:" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p8; func _() { if x := 0; x < 0 { y := x; _ = y } }" : GoString), _scopes : (new Slice<GoString>(4, 4, ("file:" : GoString), ("func:" : GoString), ("if:x" : GoString), ("block:y" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p9; func _() { switch x := 0; x {} }" : GoString), _scopes : (new Slice<GoString>(3, 3, ("file:" : GoString), ("func:" : GoString), ("switch:x" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p10; func _() { switch x := 0; x { case 1: y := x; _ = y; default: }}" : GoString), _scopes : (new Slice<GoString>(5, 5, ("file:" : GoString), ("func:" : GoString), ("switch:x" : GoString), ("case:y" : GoString), ("case:" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p11; func _(t interface{}) { switch t.(type) {} }" : GoString), _scopes : (new Slice<GoString>(3, 3, ("file:" : GoString), ("func:t" : GoString), ("type switch:" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p12; func _(t interface{}) { switch t := t; t.(type) {} }" : GoString), _scopes : (new Slice<GoString>(3, 3, ("file:" : GoString), ("func:t" : GoString), ("type switch:t" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p13; func _(t interface{}) { switch x := t.(type) { case int: _ = x } }" : GoString), _scopes : (new Slice<GoString>(4, 4, ("file:" : GoString), ("func:t" : GoString), ("type switch:" : GoString), ("case:x" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p14; func _() { select{} }" : GoString), _scopes : (new Slice<GoString>(2, 2, ("file:" : GoString), ("func:" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p15; func _(c chan int) { select{ case <-c: } }" : GoString), _scopes : (new Slice<GoString>(3, 3, ("file:" : GoString), ("func:c" : GoString), ("comm:" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p16; func _(c chan int) { select{ case i := <-c: x := i; _ = x} }" : GoString), _scopes : (new Slice<GoString>(3, 3, ("file:" : GoString), ("func:c" : GoString), ("comm:i x" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p17; func _() { for{} }" : GoString), _scopes : (new Slice<GoString>(4, 4, ("file:" : GoString), ("func:" : GoString), ("for:" : GoString), ("block:" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p18; func _(n int) { for i := 0; i < n; i++ { _ = i } }" : GoString), _scopes : (new Slice<GoString>(4, 4, ("file:" : GoString), ("func:n" : GoString), ("for:i" : GoString), ("block:" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p19; func _(a []int) { for i := range a { _ = i} }" : GoString), _scopes : (new Slice<GoString>(4, 4, ("file:" : GoString), ("func:a" : GoString), ("range:i" : GoString), ("block:" : GoString)) : Slice<GoString>) } : T__struct_14),
({ _src : ("package p20; var s int; func _(a []int) { for i, x := range a { s += x; _ = i } }" : GoString), _scopes : (new Slice<GoString>(4, 4, ("file:" : GoString), ("func:a" : GoString), ("range:i x" : GoString), ("block:" : GoString)) : Slice<GoString>) } : T__struct_14)) : Slice<T__struct_14>);
        for (__0 => _test in _tests) {
            var _info:stdgo.go.types.Types.Info = ({ scopes : ({
                final x = new GoObjectMap<stdgo.go.ast.Ast.Node, Ref<stdgo.go.types.Types.Scope>>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Node", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : Ref<stdgo.go.types.Types.Scope>);
                @:mergeBlock {};
                cast x;
            } : GoMap<stdgo.go.ast.Ast.Node, Ref<stdgo.go.types.Types.Scope>>) } : Info);
            var _name:GoString = _mustTypecheck(("ScopesInfo" : GoString), _test._src, (Go.setRef(_info) : Ref<stdgo.go.types.Types.Info>)).name();
            if ((_info.scopes.length) != ((_test._scopes.length))) {
                _t.errorf(("package %s: got %d scopes; want %d" : GoString), Go.toInterface(_name), Go.toInterface((_info.scopes.length)), Go.toInterface((_test._scopes.length)));
            };
            for (_node => _scope in _info.scopes) {
                var _kind:GoString = ("<unknown node kind>" : GoString);
                {
                    final __type__ = _node;
                    if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.File>))) {
                        _kind = ("file" : GoString);
                    } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.FuncType>))) {
                        _kind = ("func" : GoString);
                    } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.BlockStmt>))) {
                        _kind = ("block" : GoString);
                    } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.IfStmt>))) {
                        _kind = ("if" : GoString);
                    } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.SwitchStmt>))) {
                        _kind = ("switch" : GoString);
                    } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.TypeSwitchStmt>))) {
                        _kind = ("type switch" : GoString);
                    } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.CaseClause>))) {
                        _kind = ("case" : GoString);
                    } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.CommClause>))) {
                        _kind = ("comm" : GoString);
                    } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ForStmt>))) {
                        _kind = ("for" : GoString);
                    } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.RangeStmt>))) {
                        _kind = ("range" : GoString);
                    };
                };
                var _desc:GoString = (_kind + (":" : GoString)) + stdgo.strings.Strings.join(_scope.names(), (" " : GoString));
                var _found:Bool = false;
                for (__1 => _d in _test._scopes) {
                    if (_desc == (_d)) {
                        _found = true;
                        break;
                    };
                };
                if (!_found) {
                    _t.errorf(("package %s: no matching scope found for %s" : GoString), Go.toInterface(_name), Go.toInterface(_desc));
                };
            };
        };
    }
function testInitOrderInfo(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests:Slice<T__struct_15> = (new Slice<T__struct_15>(
18,
18,
({ _src : ("package p0; var (x = 1; y = x)" : GoString), _inits : (new Slice<GoString>(2, 2, ("x = 1" : GoString), ("y = x" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package p1; var (a = 1; b = 2; c = 3)" : GoString), _inits : (new Slice<GoString>(3, 3, ("a = 1" : GoString), ("b = 2" : GoString), ("c = 3" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package p2; var (a, b, c = 1, 2, 3)" : GoString), _inits : (new Slice<GoString>(3, 3, ("a = 1" : GoString), ("b = 2" : GoString), ("c = 3" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package p3; var _ = f(); func f() int { return 1 }" : GoString), _inits : (new Slice<GoString>(1, 1, ("_ = f()" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package p4; var (a = 0; x = y; y = z; z = 0)" : GoString), _inits : (new Slice<GoString>(4, 4, ("a = 0" : GoString), ("z = 0" : GoString), ("y = z" : GoString), ("x = y" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package p5; var (a, _ = m[0]; m map[int]string)" : GoString), _inits : (new Slice<GoString>(1, 1, ("a, _ = m[0]" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package p6; var a, b = f(); func f() (_, _ int) { return z, z }; var z = 0" : GoString), _inits : (new Slice<GoString>(2, 2, ("z = 0" : GoString), ("a, b = f()" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package p7; var (a = func() int { return b }(); b = 1)" : GoString), _inits : (new Slice<GoString>(2, 2, ("b = 1" : GoString), ("a = (func() int literal)()" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package p8; var (a, b = func() (_, _ int) { return c, c }(); c = 1)" : GoString), _inits : (new Slice<GoString>(2, 2, ("c = 1" : GoString), ("a, b = (func() (_, _ int) literal)()" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package p9; type T struct{}; func (T) m() int { _ = y; return 0 }; var x, y = T.m, 1" : GoString), _inits : (new Slice<GoString>(2, 2, ("y = 1" : GoString), ("x = T.m" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package p10; var (d = c + b; a = 0; b = 0; c = 0)" : GoString), _inits : (new Slice<GoString>(4, 4, ("a = 0" : GoString), ("b = 0" : GoString), ("c = 0" : GoString), ("d = c + b" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package p11; var (a = e + c; b = d + c; c = 0; d = 0; e = 0)" : GoString), _inits : (new Slice<GoString>(5, 5, ("c = 0" : GoString), ("d = 0" : GoString), ("b = d + c" : GoString), ("e = 0" : GoString), ("a = e + c" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package p12; var (a = x; b = 0; x, y = m[0]; m map[int]int)" : GoString), _inits : (new Slice<GoString>(3, 3, ("b = 0" : GoString), ("x, y = m[0]" : GoString), ("a = x" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package p12\n\n\t\tvar (\n\t\t\ta = c + b\n\t\t\tb = f()\n\t\t\tc = f()\n\t\t\td = 3\n\t\t)\n\n\t\tfunc f() int {\n\t\t\td++\n\t\t\treturn d\n\t\t}" : GoString), _inits : (new Slice<GoString>(4, 4, ("d = 3" : GoString), ("b = f()" : GoString), ("c = f()" : GoString), ("a = c + b" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package main\n\n\t\tvar counter int\n\t\tfunc next() int { counter++; return counter }\n\n\t\tvar _ = makeOrder()\n\t\tfunc makeOrder() []int { return []int{f, b, d, e, c, a} }\n\n\t\tvar a       = next()\n\t\tvar b, c    = next(), next()\n\t\tvar d, e, f = next(), next(), next()\n\t\t" : GoString), _inits : (new Slice<GoString>(7, 7, ("a = next()" : GoString), ("b = next()" : GoString), ("c = next()" : GoString), ("d = next()" : GoString), ("e = next()" : GoString), ("f = next()" : GoString), ("_ = makeOrder()" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package p13\n\n\t\tvar (\n\t\t    v = t.m()\n\t\t    t = makeT(0)\n\t\t)\n\n\t\ttype T struct{}\n\n\t\tfunc (T) m() int { return 0 }\n\n\t\tfunc makeT(n int) T {\n\t\t    if n > 0 {\n\t\t        return makeT(n-1)\n\t\t    }\n\t\t    return T{}\n\t\t}" : GoString), _inits : (new Slice<GoString>(2, 2, ("t = makeT(0)" : GoString), ("v = t.m()" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package p14\n\n\t\tvar (\n\t\t    t = makeT(0)\n\t\t    v = t.m()\n\t\t)\n\n\t\ttype T struct{}\n\n\t\tfunc (T) m() int { return 0 }\n\n\t\tfunc makeT(n int) T {\n\t\t    if n > 0 {\n\t\t        return makeT(n-1)\n\t\t    }\n\t\t    return T{}\n\t\t}" : GoString), _inits : (new Slice<GoString>(2, 2, ("t = makeT(0)" : GoString), ("v = t.m()" : GoString)) : Slice<GoString>) } : T__struct_15),
({ _src : ("package p15\n\n\t\tvar y1 = f1()\n\n\t\tfunc f1() int { return g1() }\n\t\tfunc g1() int { f1(); return x1 }\n\n\t\tvar x1 = 0\n\n\t\tvar y2 = f2()\n\n\t\tfunc f2() int { return g2() }\n\t\tfunc g2() int { return x2 }\n\n\t\tvar x2 = 0" : GoString), _inits : (new Slice<GoString>(4, 4, ("x1 = 0" : GoString), ("y1 = f1()" : GoString), ("x2 = 0" : GoString), ("y2 = f2()" : GoString)) : Slice<GoString>) } : T__struct_15)) : Slice<T__struct_15>);
        for (__0 => _test in _tests) {
            var _info:stdgo.go.types.Types.Info = (new Info() : Info);
            var _name:GoString = _mustTypecheck(("InitOrderInfo" : GoString), _test._src, (Go.setRef(_info) : Ref<stdgo.go.types.Types.Info>)).name();
            if ((_info.initOrder.length) != ((_test._inits.length))) {
                _t.errorf(("package %s: got %d initializers; want %d" : GoString), Go.toInterface(_name), Go.toInterface((_info.initOrder.length)), Go.toInterface((_test._inits.length)));
                continue;
            };
            for (_i => _want in _test._inits) {
                var _got:GoString = (_info.initOrder[(_i : GoInt)].string() : GoString);
                if (_got != (_want)) {
                    _t.errorf(("package %s, init %d: got %s; want %s" : GoString), Go.toInterface(_name), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                    continue;
                };
            };
        };
    }
function testMultiFileInitOrder(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        var _fileA = _mustParse(_fset, Go.str(), ("package main; var a = 1" : GoString));
        var _fileB = _mustParse(_fset, Go.str(), ("package main; var b = 2" : GoString));
        for (__0 => _test in (new Slice<T__struct_16>(2, 2, ({ _files : (new Slice<Ref<stdgo.go.ast.Ast.File>>(2, 2, _fileA, _fileB) : Slice<Ref<stdgo.go.ast.Ast.File>>), _want : ("[a = 1 b = 2]" : GoString) } : T__struct_16), ({ _files : (new Slice<Ref<stdgo.go.ast.Ast.File>>(2, 2, _fileB, _fileA) : Slice<Ref<stdgo.go.ast.Ast.File>>), _want : ("[b = 2 a = 1]" : GoString) } : T__struct_16)) : Slice<T__struct_16>)) {
            var _info:Info = ({} : stdgo.go.types.Types.Info);
            {
                var __tmp__ = (Go.setRef(({} : stdgo.go.types.Types.Config)) : Ref<stdgo.go.types.Types.Config>).check(("main" : GoString), _fset, _test._files, (Go.setRef(_info) : Ref<stdgo.go.types.Types.Info>)), __1:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            {
                var _got:GoString = stdgo.fmt.Fmt.sprint(Go.toInterface(_info.initOrder));
                if (_got != (_test._want)) {
                    _t.fatalf(("got %s; want %s" : GoString), Go.toInterface(_got), Go.toInterface(_test._want));
                };
            };
        };
    }
function testFiles(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _sources:Slice<GoString> = (new Slice<GoString>(4, 4, ("package p; type T struct{}; func (T) m1() {}" : GoString), ("package p; func (T) m2() {}; var x interface{ m1(); m2() } = T{}" : GoString), ("package p; func (T) m3() {}; var y interface{ m1(); m2(); m3() } = T{}" : GoString), ("package p" : GoString)) : Slice<GoString>);
        var _conf:Config = ({} : stdgo.go.types.Types.Config);
        var _fset = stdgo.go.token.Token.newFileSet();
        var _pkg = newPackage(("p" : GoString), ("p" : GoString));
        var _info:Info = ({} : stdgo.go.types.Types.Info);
        var _check = newChecker((Go.setRef(_conf) : Ref<stdgo.go.types.Types.Config>), _fset, _pkg, (Go.setRef(_info) : Ref<stdgo.go.types.Types.Info>));
        for (_i => _src in _sources) {
            var _filename:GoString = stdgo.fmt.Fmt.sprintf(("sources%d" : GoString), Go.toInterface(_i));
            var _f = _mustParse(_fset, _filename, _src);
            {
                var _err:Error = _check.files((new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>));
                if (_err != null) {
                    _t.error(Go.toInterface(_err));
                };
            };
        };
        var _vars:Slice<GoString> = (null : Slice<GoString>);
        for (__0 => _init in _info.initOrder) {
            for (__1 => _v in _init.lhs) {
                _vars = (_vars.__append__(_v.name()));
            };
        };
        {
            var __0:GoString = stdgo.fmt.Fmt.sprint(Go.toInterface(_vars)), __1:GoString = ("[x y]" : GoString), _want:GoString = __1, _got:GoString = __0;
            if (_got != (_want)) {
                _t.errorf(("InitOrder == %s, want %s" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testSelection(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _selections = ({
            final x = new GoRefMap<Ref<stdgo.go.ast.Ast.SelectorExpr>, Ref<stdgo.go.types.Types.Selection>>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Ref<stdgo.go.ast.Ast.SelectorExpr>, Ref<stdgo.go.types.Types.Selection>>);
        var _fset = stdgo.go.token.Token.newFileSet();
        var _imports:stdgo.go.types_test.Types_test.T_testImporter = ({
            final x = new stdgo.GoMap.GoStringMap<Ref<stdgo.go.types.Types.Package>>();
            x.__defaultValue__ = () -> (null : Ref<stdgo.go.types.Types.Package>);
            @:mergeBlock {};
            x;
        } : GoMap<GoString, Ref<stdgo.go.types.Types.Package>>);
        var _conf:stdgo.go.types.Types.Config = ({ importer : Go.asInterface(_imports) } : Config);
        var _makePkg:(GoString, GoString) -> Void = function(_path:GoString, _src:GoString):Void {
            var _f = _mustParse(_fset, _path + (".go" : GoString), _src);
            var __tmp__ = _conf.check(_path, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), (Go.setRef(({ selections : _selections } : Info)) : Ref<stdgo.go.types.Types.Info>)), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            _imports[_path] = _pkg;
        };
        {};
        {};
        var _wantOut = ({
            final x = new stdgo.GoMap.GoStringMap<GoArray<GoString>>();
            x.__defaultValue__ = () -> new GoArray<GoString>(...[for (i in 0 ... 2) ("" : GoString)]);
            @:mergeBlock {
                x.set(("lib.T.M" : GoString), (new GoArray<GoString>(("method expr (lib.T) M(lib.T)" : GoString), (".[0]" : GoString)) : GoArray<GoString>));
                x.set(("A{}.B" : GoString), (new GoArray<GoString>(("field (main.A) B *main.B" : GoString), (".[0]" : GoString)) : GoArray<GoString>));
                x.set(("new(A).B" : GoString), (new GoArray<GoString>(("field (*main.A) B *main.B" : GoString), ("->[0]" : GoString)) : GoArray<GoString>));
                x.set(("A{}.C" : GoString), (new GoArray<GoString>(("field (main.A) C main.C" : GoString), (".[1]" : GoString)) : GoArray<GoString>));
                x.set(("new(A).C" : GoString), (new GoArray<GoString>(("field (*main.A) C main.C" : GoString), ("->[1]" : GoString)) : GoArray<GoString>));
                x.set(("A{}.b" : GoString), (new GoArray<GoString>(("field (main.A) b int" : GoString), ("->[0 0]" : GoString)) : GoArray<GoString>));
                x.set(("new(A).b" : GoString), (new GoArray<GoString>(("field (*main.A) b int" : GoString), ("->[0 0]" : GoString)) : GoArray<GoString>));
                x.set(("A{}.c" : GoString), (new GoArray<GoString>(("field (main.A) c int" : GoString), (".[1 0]" : GoString)) : GoArray<GoString>));
                x.set(("new(A).c" : GoString), (new GoArray<GoString>(("field (*main.A) c int" : GoString), ("->[1 0]" : GoString)) : GoArray<GoString>));
                x.set(("Inst.p" : GoString), (new GoArray<GoString>(("field (main.G[int]) p int" : GoString), (".[0]" : GoString)) : GoArray<GoString>));
                x.set(("A{}.f" : GoString), (new GoArray<GoString>(("method (main.A) f(int)" : GoString), ("->[0 0]" : GoString)) : GoArray<GoString>));
                x.set(("new(A).f" : GoString), (new GoArray<GoString>(("method (*main.A) f(int)" : GoString), ("->[0 0]" : GoString)) : GoArray<GoString>));
                x.set(("A{}.g" : GoString), (new GoArray<GoString>(("method (main.A) g()" : GoString), (".[1 0]" : GoString)) : GoArray<GoString>));
                x.set(("new(A).g" : GoString), (new GoArray<GoString>(("method (*main.A) g()" : GoString), ("->[1 0]" : GoString)) : GoArray<GoString>));
                x.set(("new(A).h" : GoString), (new GoArray<GoString>(("method (*main.A) h()" : GoString), ("->[1 1]" : GoString)) : GoArray<GoString>));
                x.set(("B{}.f" : GoString), (new GoArray<GoString>(("method (main.B) f(int)" : GoString), (".[0]" : GoString)) : GoArray<GoString>));
                x.set(("new(B).f" : GoString), (new GoArray<GoString>(("method (*main.B) f(int)" : GoString), ("->[0]" : GoString)) : GoArray<GoString>));
                x.set(("C{}.g" : GoString), (new GoArray<GoString>(("method (main.C) g()" : GoString), (".[0]" : GoString)) : GoArray<GoString>));
                x.set(("new(C).g" : GoString), (new GoArray<GoString>(("method (*main.C) g()" : GoString), ("->[0]" : GoString)) : GoArray<GoString>));
                x.set(("new(C).h" : GoString), (new GoArray<GoString>(("method (*main.C) h()" : GoString), ("->[1]" : GoString)) : GoArray<GoString>));
                x.set(("Inst.m" : GoString), (new GoArray<GoString>(("method (main.G[int]) m(int)" : GoString), (".[0]" : GoString)) : GoArray<GoString>));
                x.set(("A.f" : GoString), (new GoArray<GoString>(("method expr (main.A) f(main.A, int)" : GoString), ("->[0 0]" : GoString)) : GoArray<GoString>));
                x.set(("(*A).f" : GoString), (new GoArray<GoString>(("method expr (*main.A) f(*main.A, int)" : GoString), ("->[0 0]" : GoString)) : GoArray<GoString>));
                x.set(("B.f" : GoString), (new GoArray<GoString>(("method expr (main.B) f(main.B, int)" : GoString), (".[0]" : GoString)) : GoArray<GoString>));
                x.set(("(*B).f" : GoString), (new GoArray<GoString>(("method expr (*main.B) f(*main.B, int)" : GoString), ("->[0]" : GoString)) : GoArray<GoString>));
                x.set(("G[string].m" : GoString), (new GoArray<GoString>(("method expr (main.G[string]) m(main.G[string], string)" : GoString), (".[0]" : GoString)) : GoArray<GoString>));
                x.set(("G[string]{}.p" : GoString), (new GoArray<GoString>(("field (main.G[string]) p string" : GoString), (".[0]" : GoString)) : GoArray<GoString>));
            };
            x;
        } : GoMap<GoString, GoArray<GoString>>);
        _makePkg(("lib" : GoString), ("\npackage lib\ntype T float64\nconst C T = 3\nvar V T\nfunc F() {}\nfunc (T) M() {}\n" : GoString));
        _makePkg(("main" : GoString), ("\npackage main\nimport \"lib\"\n\ntype A struct {\n\t*B\n\tC\n}\n\ntype B struct {\n\tb int\n}\n\nfunc (B) f(int)\n\ntype C struct {\n\tc int\n}\n\ntype G[P any] struct {\n\tp P\n}\n\nfunc (G[P]) m(P) {}\n\nvar Inst G[int]\n\nfunc (C) g()\nfunc (*C) h()\n\nfunc main() {\n\t// qualified identifiers\n\tvar _ lib.T\n\t_ = lib.C\n\t_ = lib.F\n\t_ = lib.V\n\t_ = lib.T.M\n\n\t// fields\n\t_ = A{}.B\n\t_ = new(A).B\n\n\t_ = A{}.C\n\t_ = new(A).C\n\n\t_ = A{}.b\n\t_ = new(A).b\n\n\t_ = A{}.c\n\t_ = new(A).c\n\n\t_ = Inst.p\n\t_ = G[string]{}.p\n\n\t// methods\n\t_ = A{}.f\n\t_ = new(A).f\n\t_ = A{}.g\n\t_ = new(A).g\n\t_ = new(A).h\n\n\t_ = B{}.f\n\t_ = new(B).f\n\n\t_ = C{}.g\n\t_ = new(C).g\n\t_ = new(C).h\n\t_ = Inst.m\n\n\t// method expressions\n\t_ = A.f\n\t_ = (*A).f\n\t_ = B.f\n\t_ = (*B).f\n\t_ = G[string].m\n}" : GoString));
        for (_e => _sel in _selections) {
            (_sel.string() : GoString);
            var _start:GoInt = _fset.position(_e.pos()).offset;
            var _end:GoInt = _fset.position(_e.end()).offset;
            var _syntax:GoString = (("\npackage main\nimport \"lib\"\n\ntype A struct {\n\t*B\n\tC\n}\n\ntype B struct {\n\tb int\n}\n\nfunc (B) f(int)\n\ntype C struct {\n\tc int\n}\n\ntype G[P any] struct {\n\tp P\n}\n\nfunc (G[P]) m(P) {}\n\nvar Inst G[int]\n\nfunc (C) g()\nfunc (*C) h()\n\nfunc main() {\n\t// qualified identifiers\n\tvar _ lib.T\n\t_ = lib.C\n\t_ = lib.F\n\t_ = lib.V\n\t_ = lib.T.M\n\n\t// fields\n\t_ = A{}.B\n\t_ = new(A).B\n\n\t_ = A{}.C\n\t_ = new(A).C\n\n\t_ = A{}.b\n\t_ = new(A).b\n\n\t_ = A{}.c\n\t_ = new(A).c\n\n\t_ = Inst.p\n\t_ = G[string]{}.p\n\n\t// methods\n\t_ = A{}.f\n\t_ = new(A).f\n\t_ = A{}.g\n\t_ = new(A).g\n\t_ = new(A).h\n\n\t_ = B{}.f\n\t_ = new(B).f\n\n\t_ = C{}.g\n\t_ = new(C).g\n\t_ = new(C).h\n\t_ = Inst.m\n\n\t// method expressions\n\t_ = A.f\n\t_ = (*A).f\n\t_ = B.f\n\t_ = (*B).f\n\t_ = G[string].m\n}" : GoString).__slice__(_start, _end) : GoString);
            var _direct:GoString = ("." : GoString);
            if (_sel.indirect()) {
                _direct = ("->" : GoString);
            };
            var _got = (new GoArray<GoString>((_sel.string() : GoString), stdgo.fmt.Fmt.sprintf(("%s%v" : GoString), Go.toInterface(_direct), Go.toInterface(_sel.index()))) : GoArray<GoString>);
            var _want = _wantOut[_syntax]?.__copy__();
            if (!(_want == _got)) {
                _t.errorf(("%s: got %q; want %q" : GoString), Go.toInterface(_syntax), Go.toInterface(_got), Go.toInterface(_want));
            };
            if (_wantOut != null) _wantOut.remove(_syntax);
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_sel.type()) : Ref<Signature>)) : Ref<Signature>), ok : true };
            } catch(_) {
                { value : (null : Ref<stdgo.go.types.Types.Signature>), ok : false };
            }, _sig = __tmp__.value, __0 = __tmp__.ok;
            if (_sel.kind() == ((1 : stdgo.go.types.Types.SelectionKind))) {
                var _got:stdgo.go.types.Types.Type = _sig.recv().type();
                var _want:stdgo.go.types.Types.Type = _sel.recv();
                if (!identical(_got, _want)) {
                    _t.errorf(("%s: Recv() = %s, want %s" : GoString), Go.toInterface(_syntax), Go.toInterface(_got), Go.toInterface(_want));
                };
            } else if (((_sig != null) && ((_sig : Dynamic).__nil__ == null || !(_sig : Dynamic).__nil__)) && ((_sig.recv() != null) && ((_sig.recv() : Dynamic).__nil__ == null || !(_sig.recv() : Dynamic).__nil__))) {
                _t.errorf(("%s: signature has receiver %s" : GoString), Go.toInterface(Go.asInterface(_sig)), Go.toInterface(_sig.recv().type()));
            };
        };
        for (_syntax => _ in _wantOut) {
            _t.errorf(("no ast.Selection found with syntax %q" : GoString), Go.toInterface(_syntax));
        };
    }
function testIssue8518(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        var _imports:stdgo.go.types_test.Types_test.T_testImporter = ({
            final x = new stdgo.GoMap.GoStringMap<Ref<stdgo.go.types.Types.Package>>();
            x.__defaultValue__ = () -> (null : Ref<stdgo.go.types.Types.Package>);
            @:mergeBlock {};
            x;
        } : GoMap<GoString, Ref<stdgo.go.types.Types.Package>>);
        var _conf:stdgo.go.types.Types.Config = ({ error : function(_err:Error):Void {
            _t.log(Go.toInterface(_err));
        }, importer : Go.asInterface(_imports) } : Config);
        var _makePkg:(GoString, GoString) -> Void = function(_path:GoString, _src:GoString):Void {
            var _f = _mustParse(_fset, _path, _src);
            var __tmp__ = _conf.check(_path, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), null), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, __0:Error = __tmp__._1;
            _imports[_path] = _pkg;
        };
        {};
        {};
        _makePkg(("a" : GoString), ("\npackage a\nimport \"missing\"\nconst C1 = foo\nconst C2 = missing.C\n" : GoString));
        _makePkg(("main" : GoString), ("\npackage main\nimport \"a\"\nvar _ = a.C1\nvar _ = a.C2\n" : GoString));
    }
function testLookupFieldOrMethodOnNil(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {};
                    var _p:AnyInterface = ({
                        final r = Go.recover_exception;
                        Go.recover_exception = null;
                        r;
                    });
                    {
                        var __tmp__ = try {
                            { value : (Go.typeAssert((_p : GoString)) : GoString), ok : true };
                        } catch(_) {
                            { value : ("" : GoString), ok : false };
                        }, _s = __tmp__.value, _ok = __tmp__.ok;
                        if (!_ok || (_s != ("LookupFieldOrMethod on nil type" : GoString))) {
                            _t.fatalf(("got %v, want %s" : GoString), _p, Go.toInterface(("LookupFieldOrMethod on nil type" : GoString)));
                        };
                    };
                };
                a();
            });
            lookupFieldOrMethod((null : stdgo.go.types.Types.Type), false, null, Go.str());
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testLookupFieldOrMethod(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests:Slice<T__struct_17> = (new Slice<T__struct_17>(
22,
22,
({ _src : ("var x T; type T struct{}" : GoString), _found : false, _index : (null : Slice<GoInt>), _indirect : false } : T__struct_17),
({ _src : ("var x T; type T struct{ f int }" : GoString), _found : true, _index : (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), _indirect : false } : T__struct_17),
({ _src : ("var x T; type T struct{ a, b, f, c int }" : GoString), _found : true, _index : (new Slice<GoInt>(1, 1, (2 : GoInt)) : Slice<GoInt>), _indirect : false } : T__struct_17),
({ _src : ("var x T[int]; type T[P any] struct{}" : GoString), _found : false, _index : (null : Slice<GoInt>), _indirect : false } : T__struct_17),
({ _src : ("var x T[int]; type T[P any] struct{ f P }" : GoString), _found : true, _index : (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), _indirect : false } : T__struct_17),
({ _src : ("var x T[int]; type T[P any] struct{ a, b, f, c P }" : GoString), _found : true, _index : (new Slice<GoInt>(1, 1, (2 : GoInt)) : Slice<GoInt>), _indirect : false } : T__struct_17),
({ _src : ("var a T; type T struct{}; func (T) f() {}" : GoString), _found : true, _index : (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), _indirect : false } : T__struct_17),
({ _src : ("var a *T; type T struct{}; func (T) f() {}" : GoString), _found : true, _index : (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), _indirect : true } : T__struct_17),
({ _src : ("var a T; type T struct{}; func (*T) f() {}" : GoString), _found : true, _index : (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), _indirect : false } : T__struct_17),
({ _src : ("var a *T; type T struct{}; func (*T) f() {}" : GoString), _found : true, _index : (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), _indirect : true } : T__struct_17),
({ _src : ("var a T[int]; type T[P any] struct{}; func (T[P]) f() {}" : GoString), _found : true, _index : (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), _indirect : false } : T__struct_17),
({ _src : ("var a *T[int]; type T[P any] struct{}; func (T[P]) f() {}" : GoString), _found : true, _index : (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), _indirect : true } : T__struct_17),
({ _src : ("var a T[int]; type T[P any] struct{}; func (*T[P]) f() {}" : GoString), _found : true, _index : (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), _indirect : false } : T__struct_17),
({ _src : ("var a *T[int]; type T[P any] struct{}; func (*T[P]) f() {}" : GoString), _found : true, _index : (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), _indirect : true } : T__struct_17),
({ _src : ("type ( E1 struct{ f int }; E2 struct{ f int }; x struct{ E1; *E2 })" : GoString), _found : false, _index : (new Slice<GoInt>(2, 2, (1 : GoInt), (0 : GoInt)) : Slice<GoInt>), _indirect : false } : T__struct_17),
({ _src : ("type ( E1 struct{ f int }; E2 struct{}; x struct{ E1; *E2 }); func (E2) f() {}" : GoString), _found : false, _index : (new Slice<GoInt>(2, 2, (1 : GoInt), (0 : GoInt)) : Slice<GoInt>), _indirect : false } : T__struct_17),
({ _src : ("type ( E1[P any] struct{ f P }; E2[P any] struct{ f P }; x struct{ E1[int]; *E2[int] })" : GoString), _found : false, _index : (new Slice<GoInt>(2, 2, (1 : GoInt), (0 : GoInt)) : Slice<GoInt>), _indirect : false } : T__struct_17),
({ _src : ("type ( E1[P any] struct{ f P }; E2[P any] struct{}; x struct{ E1[int]; *E2[int] }); func (E2[P]) f() {}" : GoString), _found : false, _index : (new Slice<GoInt>(2, 2, (1 : GoInt), (0 : GoInt)) : Slice<GoInt>), _indirect : false } : T__struct_17),
({ _src : ("var x T; type T struct{}; func (*T) f() {}" : GoString), _found : false, _index : (null : Slice<GoInt>), _indirect : true } : T__struct_17),
({ _src : ("var x T[int]; type T[P any] struct{}; func (*T[P]) f() {}" : GoString), _found : false, _index : (null : Slice<GoInt>), _indirect : true } : T__struct_17),
({ _src : ("var a T[int]; type ( T[P any] struct { *N[P] }; N[P any] struct { *T[P] } ); func (N[P]) f() {}" : GoString), _found : true, _index : (new Slice<GoInt>(2, 2, (0 : GoInt), (0 : GoInt)) : Slice<GoInt>), _indirect : true } : T__struct_17),
({ _src : ("var a T[int]; type ( T[P any] struct { *N[P] }; N[P any] struct { *T[P] } ); func (T[P]) f() {}" : GoString), _found : true, _index : (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), _indirect : false } : T__struct_17)) : Slice<T__struct_17>);
        for (__0 => _test in _tests) {
            var _pkg = _mustTypecheck(("test" : GoString), ("package p;" : GoString) + _test._src, null);
            var _obj:stdgo.go.types.Types.Object = _pkg.scope().lookup(("a" : GoString));
            if (_obj == null) {
                {
                    _obj = _pkg.scope().lookup(("x" : GoString));
                    if (_obj == null) {
                        _t.errorf(("%s: incorrect test case - no object a or x" : GoString), Go.toInterface(_test._src));
                        continue;
                    };
                };
            };
            var __tmp__ = lookupFieldOrMethod(_obj.type(), _obj.name() == (("a" : GoString)), _pkg, ("f" : GoString)), _f:stdgo.go.types.Types.Object = __tmp__._0, _index:Slice<GoInt> = __tmp__._1, _indirect:Bool = __tmp__._2;
            if ((_f != null) != (_test._found)) {
                if (_f == null) {
                    _t.errorf(("%s: got no object; want one" : GoString), Go.toInterface(_test._src));
                } else {
                    _t.errorf(("%s: got object = %v; want none" : GoString), Go.toInterface(_test._src), Go.toInterface(_f));
                };
            };
            if (!_sameSlice(_index, _test._index)) {
                _t.errorf(("%s: got index = %v; want %v" : GoString), Go.toInterface(_test._src), Go.toInterface(_index), Go.toInterface(_test._index));
            };
            if (_indirect != (_test._indirect)) {
                _t.errorf(("%s: got indirect = %v; want %v" : GoString), Go.toInterface(_test._src), Go.toInterface(_indirect), Go.toInterface(_test._indirect));
            };
        };
    }
/**
    // Test for golang/go#52715
**/
function testLookupFieldOrMethod_RecursiveGeneric(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("foo.go" : GoString), ("\npackage pkg\n\ntype Tree[T any] struct {\n\t*Node[T]\n}\n\nfunc (*Tree[R]) N(r R) R { return r }\n\ntype Node[T any] struct {\n\t*Tree[T]\n}\n\ntype Instance = *Tree[int]\n" : GoString));
        var _pkg = newPackage(("pkg" : GoString), _f.name.name);
        {
            var _err:Error = newChecker(null, _fset, _pkg, null).files((new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>));
            if (_err != null) {
                throw Go.toInterface(_err);
            };
        };
        var t:stdgo.go.types.Types.Type = _pkg.scope().lookup(("Instance" : GoString)).type();
        lookupFieldOrMethod(t, false, _pkg, ("M" : GoString));
    }
private function _sameSlice(_a:Slice<GoInt>, _b:Slice<GoInt>):Bool {
        if ((_a.length) != ((_b.length))) {
            return false;
        };
        for (_i => _x in _a) {
            if (_x != (_b[(_i : GoInt)])) {
                return false;
            };
        };
        return true;
    }
/**
    // TestScopeLookupParent ensures that (*Scope).LookupParent returns
    // the correct result at various positions with the source.
**/
function testScopeLookupParent(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        var _imports:stdgo.go.types_test.Types_test.T_testImporter = ({
            final x = new stdgo.GoMap.GoStringMap<Ref<stdgo.go.types.Types.Package>>();
            x.__defaultValue__ = () -> (null : Ref<stdgo.go.types.Types.Package>);
            @:mergeBlock {};
            x;
        } : GoMap<GoString, Ref<stdgo.go.types.Types.Package>>);
        var _conf:stdgo.go.types.Types.Config = ({ importer : Go.asInterface(_imports) } : Config);
        var _info:Info = ({} : stdgo.go.types.Types.Info);
        var _makePkg = function(_path:GoString, _files:haxe.Rest<Ref<stdgo.go.ast.Ast.File>>):Void {
            var _err:Error = (null : Error);
            {
                var __tmp__ = _conf.check(_path, _fset, _files, (Go.setRef(_info) : Ref<stdgo.go.types.Types.Info>));
                _imports[_path] = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        _makePkg(("lib" : GoString), _mustParse(_fset, Go.str(), ("package lib; var X int" : GoString)));
        var _mainSrc:GoString = ("\n/*lib=pkgname:5*/ /*X=var:1*/ /*Pi=const:8*/ /*T=typename:9*/ /*Y=var:10*/ /*F=func:12*/\npackage main\n\nimport \"lib\"\nimport . \"lib\"\n\nconst Pi = 3.1415\ntype T struct{}\nvar Y, _ = lib.X, X\n\nfunc F(){\n\tconst pi, e = 3.1415, /*pi=undef*/ 2.71828 /*pi=const:13*/ /*e=const:13*/\n\ttype /*t=undef*/ t /*t=typename:14*/ *t\n\tprint(Y) /*Y=var:10*/\n\tx, Y := Y, /*x=undef*/ /*Y=var:10*/ Pi /*x=var:16*/ /*Y=var:16*/ ; _ = x; _ = Y\n\tvar F = /*F=func:12*/ F /*F=var:17*/ ; _ = F\n\n\tvar a []int\n\tfor i, x := range a /*i=undef*/ /*x=var:16*/ { _ = i; _ = x }\n\n\tvar i interface{}\n\tswitch y := i.(type) { /*y=undef*/\n\tcase /*y=undef*/ int /*y=var:23*/ :\n\tcase float32, /*y=undef*/ float64 /*y=var:23*/ :\n\tdefault /*y=var:23*/:\n\t\tprintln(y)\n\t}\n\t/*y=undef*/\n\n        switch int := i.(type) {\n        case /*int=typename:0*/ int /*int=var:31*/ :\n        \tprintln(int)\n        default /*int=var:31*/ :\n        }\n}\n/*main=undef*/\n" : GoString);
        _info.uses = ({
            final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>);
        var _f = _mustParse(_fset, Go.str(), _mainSrc);
        _makePkg(("main" : GoString), _f);
        var _mainScope = _imports[("main" : GoString)].scope();
        var _rx = stdgo.regexp.Regexp.mustCompile(("^/\\*(\\w*)=([\\w:]*)\\*/$" : GoString));
        for (__0 => _group in _f.comments) {
            for (__1 => _comment in _group.list) {
                var _m = _rx.findStringSubmatch(_comment.text);
                if (_m == null) {
                    _t.errorf(("%s: bad comment: %s" : GoString), Go.toInterface(Go.asInterface(_fset.position(_comment.pos()))), Go.toInterface(_comment.text));
                    continue;
                };
                var __0:GoString = _m[(1 : GoInt)], __1:GoString = _m[(2 : GoInt)], _want:GoString = __1, _name:GoString = __0;
                var _inner = _mainScope.innermost(_comment.pos());
                if (_inner == null || (_inner : Dynamic).__nil__) {
                    _t.errorf(("%s: at %s: can\'t find innermost scope" : GoString), Go.toInterface(Go.asInterface(_fset.position(_comment.pos()))), Go.toInterface(_comment.text));
                    continue;
                };
                var _got:GoString = ("undef" : GoString);
                {
                    var __tmp__ = _inner.lookupParent(_name, _comment.pos()), __2:Ref<stdgo.go.types.Types.Scope> = __tmp__._0, _obj:stdgo.go.types.Types.Object = __tmp__._1;
                    if (_obj != null) {
                        var _kind:GoString = stdgo.strings.Strings.toLower(stdgo.strings.Strings.trimPrefix((stdgo.reflect.Reflect.typeOf(Go.toInterface(_obj)).string() : GoString), ("*types." : GoString)));
                        _got = stdgo.fmt.Fmt.sprintf(("%s:%d" : GoString), Go.toInterface(_kind), Go.toInterface(_fset.position(_obj.pos()).line));
                    };
                };
                if (_got != (_want)) {
                    _t.errorf(("%s: at %s: %s resolved to %s, want %s" : GoString), Go.toInterface(Go.asInterface(_fset.position(_comment.pos()))), Go.toInterface(_comment.text), Go.toInterface(_name), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
        };
        for (_id => _wantObj in _info.uses) {
            var _inner = _mainScope.innermost(_id.pos());
            if (_inner == null || (_inner : Dynamic).__nil__) {
                _t.errorf(("%s: can\'t find innermost scope enclosing %q" : GoString), Go.toInterface(Go.asInterface(_fset.position(_id.pos()))), Go.toInterface(_id.name));
                continue;
            };
            if (_id.name == (("X" : GoString))) {
                continue;
            };
            var __tmp__ = _inner.lookupParent(_id.name, _id.pos()), __3:Ref<stdgo.go.types.Types.Scope> = __tmp__._0, _gotObj:stdgo.go.types.Types.Object = __tmp__._1;
            if (Go.toInterface(_gotObj) != (Go.toInterface(_wantObj))) {
                _t.errorf(("%s: got %v, want %v" : GoString), Go.toInterface(Go.asInterface(_fset.position(_id.pos()))), Go.toInterface(_gotObj), Go.toInterface(_wantObj));
                continue;
            };
        };
    }
/**
    // newDefined creates a new defined type named T with the given underlying type.
    // Helper function for use with TestIncompleteInterfaces only.
**/
private function _newDefined(_underlying:Type):Ref<Named> {
        var _tname = newTypeName((0 : stdgo.go.token.Token.Pos), null, ("T" : GoString), (null : stdgo.go.types.Types.Type));
        return newNamed(_tname, _underlying, (null : Slice<Ref<stdgo.go.types.Types.Func>>));
    }
function testConvertibleTo(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in (new Slice<T__struct_18>(
12,
12,
({ _v : Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), _t : Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), _want : true } : T__struct_18),
({ _v : Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), _t : Go.asInterface(typ[((13 : stdgo.go.types.Types.BasicKind) : GoInt)]), _want : true } : T__struct_18),
({ _v : Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), _t : Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)]), _want : true } : T__struct_18),
({ _v : Go.asInterface(_newDefined(Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]))), _t : Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), _want : true } : T__struct_18),
({ _v : Go.asInterface(_newDefined(Go.asInterface((Go.setRef(({} : stdgo.go.types.Types.Struct)) : Ref<stdgo.go.types.Types.Struct>)))), _t : Go.asInterface((Go.setRef(({} : stdgo.go.types.Types.Struct)) : Ref<stdgo.go.types.Types.Struct>)), _want : true } : T__struct_18),
({ _v : Go.asInterface(_newDefined(Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]))), _t : Go.asInterface((Go.setRef(({} : stdgo.go.types.Types.Struct)) : Ref<stdgo.go.types.Types.Struct>)), _want : false } : T__struct_18),
({ _v : Go.asInterface(typ[((20 : stdgo.go.types.Types.BasicKind) : GoInt)]), _t : Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), _want : true } : T__struct_18),
({ _v : Go.asInterface(newSlice(Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]))), _t : Go.asInterface(newArray(Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), (10i64 : GoInt64))), _want : true } : T__struct_18),
({ _v : Go.asInterface(newSlice(Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]))), _t : Go.asInterface(newArray(Go.asInterface(typ[((7 : stdgo.go.types.Types.BasicKind) : GoInt)]), (10i64 : GoInt64))), _want : false } : T__struct_18),
({ _v : Go.asInterface(newSlice(Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]))), _t : Go.asInterface(newPointer(Go.asInterface(newArray(Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), (10i64 : GoInt64))))), _want : true } : T__struct_18),
({ _v : Go.asInterface(newSlice(Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]))), _t : Go.asInterface(newPointer(Go.asInterface(newArray(Go.asInterface(typ[((7 : stdgo.go.types.Types.BasicKind) : GoInt)]), (10i64 : GoInt64))))), _want : false } : T__struct_18),
({ _v : Go.asInterface(typ[((24 : stdgo.go.types.Types.BasicKind) : GoInt)]), _t : Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)]), _want : true } : T__struct_18)) : Slice<T__struct_18>)) {
            {
                var _got:Bool = convertibleTo(_test._v, _test._t);
                if (_got != (_test._want)) {
                    _t.errorf(("ConvertibleTo(%v, %v) = %t, want %t" : GoString), Go.toInterface(_test._v), Go.toInterface(_test._t), Go.toInterface(_got), Go.toInterface(_test._want));
                };
            };
        };
    }
function testAssignableTo(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in (new Slice<T__struct_18>(8, 8, ({ _v : Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), _t : Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), _want : true } : T__struct_18), ({ _v : Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), _t : Go.asInterface(typ[((13 : stdgo.go.types.Types.BasicKind) : GoInt)]), _want : false } : T__struct_18), ({ _v : Go.asInterface(_newDefined(Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]))), _t : Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), _want : false } : T__struct_18), ({ _v : Go.asInterface(_newDefined(Go.asInterface((Go.setRef(({} : stdgo.go.types.Types.Struct)) : Ref<stdgo.go.types.Types.Struct>)))), _t : Go.asInterface((Go.setRef(({} : stdgo.go.types.Types.Struct)) : Ref<stdgo.go.types.Types.Struct>)), _want : true } : T__struct_18), ({ _v : Go.asInterface(typ[((19 : stdgo.go.types.Types.BasicKind) : GoInt)]), _t : Go.asInterface(typ[((1 : stdgo.go.types.Types.BasicKind) : GoInt)]), _want : true } : T__struct_18), ({ _v : Go.asInterface(typ[((24 : stdgo.go.types.Types.BasicKind) : GoInt)]), _t : Go.asInterface(typ[((1 : stdgo.go.types.Types.BasicKind) : GoInt)]), _want : false } : T__struct_18), ({ _v : Go.asInterface(typ[((24 : stdgo.go.types.Types.BasicKind) : GoInt)]), _t : Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)]), _want : true } : T__struct_18), ({ _v : Go.asInterface(typ[((20 : stdgo.go.types.Types.BasicKind) : GoInt)]), _t : Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), _want : true } : T__struct_18)) : Slice<T__struct_18>)) {
            {
                var _got:Bool = assignableTo(_test._v, _test._t);
                if (_got != (_test._want)) {
                    _t.errorf(("AssignableTo(%v, %v) = %t, want %t" : GoString), Go.toInterface(_test._v), Go.toInterface(_test._t), Go.toInterface(_got), Go.toInterface(_test._want));
                };
            };
        };
    }
function testIdentical(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new Slice<T__struct_19>(
13,
13,
({ _src : ("var X int; var Y int" : GoString), _want : true } : T__struct_19),
({ _src : ("var X int; var Y string" : GoString), _want : false } : T__struct_19),
({ _src : ("type X int; type Y int" : GoString), _want : false } : T__struct_19),
({ _src : ("type X = int; type Y = int" : GoString), _want : true } : T__struct_19),
({ _src : ("func X(int) string { return \"\" }; func Y(int) string { return \"\" }" : GoString), _want : true } : T__struct_19),
({ _src : ("func X() string { return \"\" }; func Y(int) string { return \"\" }" : GoString), _want : false } : T__struct_19),
({ _src : ("func X(int) string { return \"\" }; func Y(int) {}" : GoString), _want : false } : T__struct_19),
({ _src : ("func X[P ~int](){}; func Y[Q ~int]() {}" : GoString), _want : true } : T__struct_19),
({ _src : ("func X[P1 any, P2 ~*P1](){}; func Y[Q1 any, Q2 ~*Q1]() {}" : GoString), _want : true } : T__struct_19),
({ _src : ("func X[P1 any, P2 ~[]P1](){}; func Y[Q1 any, Q2 ~*Q1]() {}" : GoString), _want : false } : T__struct_19),
({ _src : ("func X[P ~int](P){}; func Y[Q ~int](Q) {}" : GoString), _want : true } : T__struct_19),
({ _src : ("func X[P ~string](P){}; func Y[Q ~int](Q) {}" : GoString), _want : false } : T__struct_19),
({ _src : ("func X[P ~int]([]P){}; func Y[Q ~int]([]Q) {}" : GoString), _want : true } : T__struct_19)) : Slice<T__struct_19>);
        for (__0 => _test in _tests) {
            var _pkg = _mustTypecheck(("test" : GoString), ("package p;" : GoString) + _test._src, null);
            var x:stdgo.go.types.Types.Object = _pkg.scope().lookup(("X" : GoString));
            var y:stdgo.go.types.Types.Object = _pkg.scope().lookup(("Y" : GoString));
            if ((x == null) || (y == null)) {
                _t.fatal(Go.toInterface(("test must declare both X and Y" : GoString)));
            };
            {
                var _got:Bool = identical(x.type(), y.type());
                if (_got != (_test._want)) {
                    _t.errorf(("Identical(%s, %s) = %t, want %t" : GoString), Go.toInterface(x.type()), Go.toInterface(y.type()), Go.toInterface(_got), Go.toInterface(_test._want));
                };
            };
        };
    }
function testIdentical_issue15173(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in (new Slice<T__struct_20>(4, 4, ({ _x : Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), _y : Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), _want : true } : T__struct_20), ({ _x : Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), _y : (null : stdgo.go.types.Types.Type), _want : false } : T__struct_20), ({ _x : (null : stdgo.go.types.Types.Type), _y : Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), _want : false } : T__struct_20), ({ _x : (null : stdgo.go.types.Types.Type), _y : (null : stdgo.go.types.Types.Type), _want : true } : T__struct_20)) : Slice<T__struct_20>)) {
            {
                var _got:Bool = identical(_test._x, _test._y);
                if (_got != (_test._want)) {
                    _t.errorf(("Identical(%v, %v) = %t" : GoString), Go.toInterface(_test._x), Go.toInterface(_test._y), Go.toInterface(_got));
                };
            };
        };
    }
function testIdenticalUnions(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tname = newTypeName((0 : stdgo.go.token.Token.Pos), null, ("myInt" : GoString), (null : stdgo.go.types.Types.Type));
        var _myInt = newNamed(_tname, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), (null : Slice<Ref<stdgo.go.types.Types.Func>>));
        var _tmap = ({
            final x = new stdgo.GoMap.GoStringMap<Ref<stdgo.go.types.Types.Term>>();
            x.__defaultValue__ = () -> (null : Ref<stdgo.go.types.Types.Term>);
            @:mergeBlock {
                x.set(("int" : GoString), newTerm(false, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])));
                x.set(("~int" : GoString), newTerm(true, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])));
                x.set(("string" : GoString), newTerm(false, Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)])));
                x.set(("~string" : GoString), newTerm(true, Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)])));
                x.set(("myInt" : GoString), newTerm(false, Go.asInterface(_myInt)));
            };
            x;
        } : GoMap<GoString, Ref<stdgo.go.types.Types.Term>>);
        var _makeUnion = function(_s:GoString):Ref<Union> {
            var _parts = stdgo.strings.Strings.split(_s, ("|" : GoString));
            var _terms:Slice<Ref<Term>> = (null : Slice<Ref<stdgo.go.types.Types.Term>>);
            for (__0 => _p in _parts) {
                var _term = _tmap[_p];
                if (_term == null || (_term : Dynamic).__nil__) {
                    _t.fatalf(("missing term %q" : GoString), Go.toInterface(_p));
                };
                _terms = (_terms.__append__(_term));
            };
            return newUnion(_terms);
        };
        for (__0 => _test in (new Slice<T__struct_21>(5, 5, ({ _x : ("int|~int" : GoString), _y : ("~int" : GoString), _want : true } : T__struct_21), ({ _x : ("myInt|~int" : GoString), _y : ("~int" : GoString), _want : true } : T__struct_21), ({ _x : ("int|string" : GoString), _y : ("string|int" : GoString), _want : true } : T__struct_21), ({ _x : ("int|int|string" : GoString), _y : ("string|int" : GoString), _want : true } : T__struct_21), ({ _x : ("myInt|string" : GoString), _y : ("int|string" : GoString), _want : false } : T__struct_21)) : Slice<T__struct_21>)) {
            var _x = _makeUnion(_test._x);
            var _y = _makeUnion(_test._y);
            {
                var _got:Bool = identical(Go.asInterface(_x), Go.asInterface(_y));
                if (_got != (_test._want)) {
                    _t.errorf(("Identical(%v, %v) = %t" : GoString), Go.toInterface(_test._x), Go.toInterface(_test._y), Go.toInterface(_got));
                };
            };
        };
    }
function testIssue15305(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("issue15305.go" : GoString), ("package p; func f() int16; var _ = f(undef)" : GoString));
        var _conf:stdgo.go.types.Types.Config = ({ error : function(_err:Error):Void {} } : Config);
        var _info = (Go.setRef(({ types : ({
            final x = new GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
            @:mergeBlock {};
            cast x;
        } : GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>) } : Info)) : Ref<stdgo.go.types.Types.Info>);
        _conf.check(("p" : GoString), _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), _info);
        for (_e => _tv in _info.types) {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_e) : Ref<stdgo.go.ast.Ast.CallExpr>)) : Ref<stdgo.go.ast.Ast.CallExpr>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.ast.Ast.CallExpr>), ok : false };
                }, __0 = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    if (Go.toInterface(_tv.type) != (Go.toInterface(Go.asInterface(typ[((4 : stdgo.go.types.Types.BasicKind) : GoInt)])))) {
                        _t.errorf(("CallExpr has type %v, want int16" : GoString), Go.toInterface(_tv.type));
                    };
                    return;
                };
            };
        };
        _t.errorf(("CallExpr has no type" : GoString));
    }
/**
    // TestCompositeLitTypes verifies that Info.Types registers the correct
    // types for composite literal expressions and composite literal type
    // expressions.
**/
function testCompositeLitTypes(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in (new Slice<T__struct_22>(8, 8, ({ _lit : ("[16]byte{}" : GoString), _typ : ("[16]byte" : GoString) } : T__struct_22), ({ _lit : ("[...]byte{}" : GoString), _typ : ("[0]byte" : GoString) } : T__struct_22), ({ _lit : ("[...]int{1, 2, 3}" : GoString), _typ : ("[3]int" : GoString) } : T__struct_22), ({ _lit : ("[...]int{90: 0, 98: 1, 2}" : GoString), _typ : ("[100]int" : GoString) } : T__struct_22), ({ _lit : ("[]int{}" : GoString), _typ : ("[]int" : GoString) } : T__struct_22), ({ _lit : ("map[string]bool{\"foo\": true}" : GoString), _typ : ("map[string]bool" : GoString) } : T__struct_22), ({ _lit : ("struct{}{}" : GoString), _typ : ("struct{}" : GoString) } : T__struct_22), ({ _lit : ("struct{x, y int; z complex128}{}" : GoString), _typ : ("struct{x int; y int; z complex128}" : GoString) } : T__struct_22)) : Slice<T__struct_22>)) {
            var _fset = stdgo.go.token.Token.newFileSet();
            var _f = _mustParse(_fset, _test._lit, ("package p; var _ = " : GoString) + _test._lit);
            var _types = ({
                final x = new GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
                @:mergeBlock {};
                cast x;
            } : GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>);
            {
                var __tmp__ = (Go.setRef(({} : stdgo.go.types.Types.Config)) : Ref<stdgo.go.types.Types.Config>).check(("p" : GoString), _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), (Go.setRef(({ types : _types } : Info)) : Ref<stdgo.go.types.Types.Info>)), __1:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("%s: %v" : GoString), Go.toInterface(_test._lit), Go.toInterface(_err));
                };
            };
            var _cmptype:(stdgo.go.ast.Ast.Expr, GoString) -> Void = function(_x:stdgo.go.ast.Ast.Expr, _want:GoString):Void {
                var __tmp__ = (_types != null && _types.exists(_x) ? { value : _types[_x], ok : true } : { value : ({} : stdgo.go.types.Types.TypeAndValue), ok : false }), _tv:stdgo.go.types.Types.TypeAndValue = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (!_ok) {
                    _t.errorf(("%s: no Types entry found" : GoString), Go.toInterface(_test._lit));
                    return;
                };
                if (_tv.type == null) {
                    _t.errorf(("%s: type is nil" : GoString), Go.toInterface(_test._lit));
                    return;
                };
                {
                    var _got:GoString = (_tv.type.string() : GoString);
                    if (_got != (_want)) {
                        _t.errorf(("%s: got %v, want %s" : GoString), Go.toInterface(_test._lit), Go.toInterface(_got), Go.toInterface(_want));
                    };
                };
            };
            var _rhs:stdgo.go.ast.Ast.Expr = (Go.typeAssert((Go.toInterface((Go.typeAssert((Go.toInterface(_f.decls[(0 : GoInt)]) : Ref<stdgo.go.ast.Ast.GenDecl>)) : Ref<stdgo.go.ast.Ast.GenDecl>).specs[(0 : GoInt)]) : Ref<stdgo.go.ast.Ast.ValueSpec>)) : Ref<stdgo.go.ast.Ast.ValueSpec>).values[(0 : GoInt)];
            _cmptype(_rhs, _test._typ);
            _cmptype((Go.typeAssert((Go.toInterface(_rhs) : Ref<stdgo.go.ast.Ast.CompositeLit>)) : Ref<stdgo.go.ast.Ast.CompositeLit>).type, _test._typ);
        };
    }
/**
    // TestObjectParents verifies that objects have parent scopes or not
    // as specified by the Object interface.
**/
function testObjectParents(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("src" : GoString), ("\npackage p\n\nconst C = 0\n\ntype T1 struct {\n\ta, b int\n\tT2\n}\n\ntype T2 interface {\n\tim1()\n\tim2()\n}\n\nfunc (T1) m1() {}\nfunc (*T1) m2() {}\n\nfunc f(x int) { y := x; print(y) }\n" : GoString));
        var _info = (Go.setRef(({ defs : ({
            final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : Info)) : Ref<stdgo.go.types.Types.Info>);
        {
            var __tmp__ = (Go.setRef(({} : stdgo.go.types.Types.Config)) : Ref<stdgo.go.types.Types.Config>).check(("p" : GoString), _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), _info), __0:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        for (_ident => _obj in _info.defs) {
            if (_obj == null) {
                if (_ident.name != (("p" : GoString))) {
                    _t.errorf(("%v has nil object" : GoString), Go.toInterface(Go.asInterface(_ident)));
                };
                continue;
            };
            var _wantParent:Bool = true;
            {
                final __type__ = _obj;
                if (Go.typeEquals((__type__ : Ref<Var>))) {
                    var _obj:Ref<stdgo.go.types.Types.Var> = __type__ == null ? (null : Ref<stdgo.go.types.Types.Var>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.types.Types.Var>) : __type__ == null ? (null : Ref<stdgo.go.types.Types.Var>) : __type__.__underlying__().value;
                    if (_obj.isField()) {
                        _wantParent = false;
                    };
                } else if (Go.typeEquals((__type__ : Ref<Func>))) {
                    var _obj:Ref<stdgo.go.types.Types.Func> = __type__ == null ? (null : Ref<stdgo.go.types.Types.Func>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.types.Types.Func>) : __type__ == null ? (null : Ref<stdgo.go.types.Types.Func>) : __type__.__underlying__().value;
                    if ((Go.typeAssert((Go.toInterface(_obj.type()) : Ref<Signature>)) : Ref<Signature>).recv() != null && (((Go.typeAssert((Go.toInterface(_obj.type()) : Ref<Signature>)) : Ref<Signature>).recv() : Dynamic).__nil__ == null || !((Go.typeAssert((Go.toInterface(_obj.type()) : Ref<Signature>)) : Ref<Signature>).recv() : Dynamic).__nil__)) {
                        _wantParent = false;
                    };
                };
            };
            var _gotParent:Bool = _obj.parent() != null && ((_obj.parent() : Dynamic).__nil__ == null || !(_obj.parent() : Dynamic).__nil__);
            if (_gotParent && !_wantParent) {
                _t.errorf(("%v: want no parent, got %s" : GoString), Go.toInterface(Go.asInterface(_ident)), Go.toInterface(Go.asInterface(_obj.parent())));
            } else if (!_gotParent && _wantParent) {
                _t.errorf(("%v: no parent found" : GoString), Go.toInterface(Go.asInterface(_ident)));
            };
        };
    }
/**
    // TestFailedImport tests that we don't get follow-on errors
    // elsewhere in a package due to failing to import a package.
**/
function testFailedImport(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("src" : GoString), ("\npackage p\n\nimport foo \"go/types/thisdirectorymustnotexistotherwisethistestmayfail/foo\" // should only see an error here\n\nconst c = foo.C\ntype T = foo.T\nvar v T = c\nfunc f(x T) T { return foo.F(x) }\n" : GoString));
        var _files = (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>);
        for (__0 => _compiler in (new Slice<GoString>(3, 3, ("gc" : GoString), ("gccgo" : GoString), ("source" : GoString)) : Slice<GoString>)) {
            var _errcount:GoInt = (0 : GoInt);
            var _conf:stdgo.go.types.Types.Config = ({ error : function(_err:Error):Void {
                if ((_errcount > (0 : GoInt)) || !stdgo.strings.Strings.contains(_err.error(), ("could not import" : GoString))) {
                    _t.errorf(("for %s importer, got unexpected error: %v" : GoString), Go.toInterface(_compiler), Go.toInterface(_err));
                };
                _errcount++;
            }, importer : stdgo.go.importer.Importer.for_(_compiler, null) } : Config);
            var _info = (Go.setRef(({ uses : ({
                final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                @:mergeBlock {};
                cast x;
            } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : Info)) : Ref<stdgo.go.types.Types.Info>);
            var __tmp__ = _conf.check(("p" : GoString), _fset, _files, _info), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, __1:Error = __tmp__._1;
            if (_pkg == null || (_pkg : Dynamic).__nil__) {
                _t.errorf(("for %s importer, type-checking failed to return a package" : GoString), Go.toInterface(_compiler));
                continue;
            };
            var _imports = _pkg.imports();
            if ((_imports.length) != ((1 : GoInt))) {
                _t.errorf(("for %s importer, got %d imports, want 1" : GoString), Go.toInterface(_compiler), Go.toInterface((_imports.length)));
                continue;
            };
            var _imp = _imports[(0 : GoInt)];
            if (_imp.name() != (("foo" : GoString))) {
                _t.errorf(("for %s importer, got %q, want \"foo\"" : GoString), Go.toInterface(_compiler), Go.toInterface(_imp.name()));
                continue;
            };
            for (_ident => _obj in _info.uses) {
                if (_ident.name == (("foo" : GoString))) {
                    {
                        var __tmp__ = try {
                            { value : (Go.typeAssert((Go.toInterface(_obj) : Ref<PkgName>)) : Ref<PkgName>), ok : true };
                        } catch(_) {
                            { value : (null : Ref<stdgo.go.types.Types.PkgName>), ok : false };
                        }, _obj = __tmp__.value, _ok = __tmp__.ok;
                        if (_ok) {
                            if (_obj.imported() != (_imp)) {
                                _t.errorf(("%s resolved to %v; want %v" : GoString), Go.toInterface(Go.asInterface(_ident)), Go.toInterface(Go.asInterface(_obj.imported())), Go.toInterface(Go.asInterface(_imp)));
                            };
                        } else {
                            _t.errorf(("%s resolved to %v; want package name" : GoString), Go.toInterface(Go.asInterface(_ident)), Go.toInterface(Go.asInterface(_obj)));
                        };
                    };
                };
            };
        };
    }
function testInstantiate(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _pkg = _mustTypecheck(("." : GoString), ("package p; type T[P any] *T[P]" : GoString), null);
        var t = (Go.typeAssert((Go.toInterface(_pkg.scope().lookup(("T" : GoString)).type()) : Ref<Named>)) : Ref<Named>);
        {
            var _n:GoInt = t.typeParams().len();
            if (_n != ((1 : GoInt))) {
                _t.fatalf(("expected 1 type parameter; found %d" : GoString), Go.toInterface(_n));
            };
        };
        var __tmp__ = instantiate(null, Go.asInterface(t), (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), false), _res:stdgo.go.types.Types.Type = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var _p:stdgo.go.types.Types.Type = (Go.typeAssert((Go.toInterface(_res.underlying()) : Ref<Pointer_>)) : Ref<Pointer_>).elem();
            if (Go.toInterface(_p) != (Go.toInterface(_res))) {
                _t.fatalf(("unexpected result type: %s points to %s" : GoString), Go.toInterface(_res), Go.toInterface(_p));
            };
        };
    }
function testInstantiateErrors(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new Slice<T__struct_23>(4, 4, ({ _src : ("type T[P interface{~string}] int" : GoString), _targs : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _wantAt : (0 : GoInt) } : T__struct_23), ({ _src : ("type T[P1 interface{int}, P2 interface{~string}] int" : GoString), _targs : (new Slice<stdgo.go.types.Types.Type>(2, 2, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _wantAt : (1 : GoInt) } : T__struct_23), ({ _src : ("type T[P1 any, P2 interface{~[]P1}] int" : GoString), _targs : (new Slice<stdgo.go.types.Types.Type>(2, 2, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), Go.asInterface(newSlice(Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)])))) : Slice<stdgo.go.types.Types.Type>), _wantAt : (1 : GoInt) } : T__struct_23), ({ _src : ("type T[P1 interface{~[]P2}, P2 any] int" : GoString), _targs : (new Slice<stdgo.go.types.Types.Type>(2, 2, Go.asInterface(newSlice(Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)]))), Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _wantAt : (0 : GoInt) } : T__struct_23)) : Slice<T__struct_23>);
        for (__0 => _test in _tests) {
            var _src:GoString = ("package p; " : GoString) + _test._src;
            var _pkg = _mustTypecheck(("." : GoString), _src, null);
            var t = (Go.typeAssert((Go.toInterface(_pkg.scope().lookup(("T" : GoString)).type()) : Ref<Named>)) : Ref<Named>);
            var __tmp__ = instantiate(null, Go.asInterface(t), _test._targs, true), __1:stdgo.go.types.Types.Type = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                _t.fatalf(("Instantiate(%v, %v) returned nil error, want non-nil" : GoString), Go.toInterface(Go.asInterface(t)), Go.toInterface(_test._targs));
            };
            var _argErr:Ref<ArgumentError> = (null : Ref<stdgo.go.types.Types.ArgumentError>);
            if (!stdgo.errors.Errors.as(_err, Go.toInterface((Go.setRef(_argErr) : Ref<Ref<stdgo.go.types.Types.ArgumentError>>)))) {
                _t.fatalf(("Instantiate(%v, %v): error is not an *ArgumentError" : GoString), Go.toInterface(Go.asInterface(t)), Go.toInterface(_test._targs));
            };
            if (_argErr.index != (_test._wantAt)) {
                _t.errorf(("Instantiate(%v, %v): error at index %d, want index %d" : GoString), Go.toInterface(Go.asInterface(t)), Go.toInterface(_test._targs), Go.toInterface(_argErr.index), Go.toInterface(_test._wantAt));
            };
        };
    }
function testArgumentErrorUnwrapping(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _err:Error = Go.asInterface((Go.setRef(({ index : (1 : GoInt), err : Go.asInterface(({ msg : ("test" : GoString) } : T_error)) } : ArgumentError)) : Ref<stdgo.go.types.Types.ArgumentError>));
        var _e:T_error = ({} : stdgo.go.types.Types.T_error);
        if (!stdgo.errors.Errors.as(_err, Go.toInterface(Go.asInterface((Go.setRef(_e) : Ref<stdgo.go.types.Types.T_error>))))) {
            _t.fatalf(("error %v does not wrap types.Error" : GoString), Go.toInterface(_err));
        };
        if (_e.msg != (("test" : GoString))) {
            _t.errorf(("e.Msg = %q, want %q" : GoString), Go.toInterface(_e.msg), Go.toInterface(("test" : GoString)));
        };
    }
function testInstanceIdentity(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _imports:stdgo.go.types_test.Types_test.T_testImporter = ({
            final x = new stdgo.GoMap.GoStringMap<Ref<stdgo.go.types.Types.Package>>();
            x.__defaultValue__ = () -> (null : Ref<stdgo.go.types.Types.Package>);
            @:mergeBlock {};
            x;
        } : GoMap<GoString, Ref<stdgo.go.types.Types.Package>>);
        var _conf:stdgo.go.types.Types.Config = ({ importer : Go.asInterface(_imports) } : Config);
        var _makePkg:GoString -> Void = function(_src:GoString):Void {
            var _fset = stdgo.go.token.Token.newFileSet();
            var _f = _mustParse(_fset, Go.str(), _src);
            var _name:GoString = _f.name.name;
            var __tmp__ = _conf.check(_name, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), null), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            _imports[_name] = _pkg;
        };
        _makePkg(("package lib; type T[P any] struct{}" : GoString));
        _makePkg(("package a; import \"lib\"; var A lib.T[int]" : GoString));
        _makePkg(("package b; import \"lib\"; var B lib.T[int]" : GoString));
        var _a:stdgo.go.types.Types.Object = _imports[("a" : GoString)].scope().lookup(("A" : GoString));
        var _b:stdgo.go.types.Types.Object = _imports[("b" : GoString)].scope().lookup(("B" : GoString));
        if (!identical(_a.type(), _b.type())) {
            _t.errorf(("mismatching types: a.A: %s, b.B: %s" : GoString), Go.toInterface(_a.type()), Go.toInterface(_b.type()));
        };
    }
/**
    // TestInstantiatedObjects verifies properties of instantiated objects.
**/
function testInstantiatedObjects(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _info = (Go.setRef(({ defs : ({
            final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : Info)) : Ref<stdgo.go.types.Types.Info>);
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("p.go" : GoString), ("\npackage p\n\ntype T[P any] struct {\n\tfield P\n}\n\nfunc (recv *T[Q]) concreteMethod(mParam Q) (mResult Q) { return }\n\ntype FT[P any] func(ftParam P) (ftResult P)\n\nfunc F[P any](fParam P) (fResult P){ return }\n\ntype I[P any] interface {\n\tinterfaceMethod(P)\n}\n\ntype R[P any] T[P]\n\nfunc (R[P]) m() {} // having a method triggers expansion of R\n\nvar (\n\tt T[int]\n\tft FT[int]\n\tf = F[int]\n\ti I[int]\n)\n\nfunc fn() {\n\tvar r R[int]\n\t_ = r\n}\n" : GoString));
        var _conf:stdgo.go.types.Types.Config = (new Config() : Config);
        var __tmp__ = _conf.check(_f.name.name, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), _info), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _lookup:GoString -> stdgo.go.types.Types.Type = function(_name:GoString):Type {
            return _pkg.scope().lookup(_name).type();
        };
        var _fnScope = (Go.typeAssert((Go.toInterface(_pkg.scope().lookup(("fn" : GoString))) : Ref<Func>)) : Ref<Func>).scope();
        var _tests = (new Slice<T__struct_24>(
11,
11,
({ _name : ("field" : GoString), _obj : Go.asInterface((Go.typeAssert((Go.toInterface(_lookup(("t" : GoString)).underlying()) : Ref<Struct>)) : Ref<Struct>).field((0 : GoInt))) } : T__struct_24),
({ _name : ("field" : GoString), _obj : Go.asInterface((Go.typeAssert((Go.toInterface(_fnScope.lookup(("r" : GoString)).type().underlying()) : Ref<Struct>)) : Ref<Struct>).field((0 : GoInt))) } : T__struct_24),
({ _name : ("concreteMethod" : GoString), _obj : Go.asInterface((Go.typeAssert((Go.toInterface(_lookup(("t" : GoString))) : Ref<Named>)) : Ref<Named>).method((0 : GoInt))) } : T__struct_24),
({ _name : ("recv" : GoString), _obj : Go.asInterface((Go.typeAssert((Go.toInterface((Go.typeAssert((Go.toInterface(_lookup(("t" : GoString))) : Ref<Named>)) : Ref<Named>).method((0 : GoInt)).type()) : Ref<Signature>)) : Ref<Signature>).recv()) } : T__struct_24),
({ _name : ("mParam" : GoString), _obj : Go.asInterface((Go.typeAssert((Go.toInterface((Go.typeAssert((Go.toInterface(_lookup(("t" : GoString))) : Ref<Named>)) : Ref<Named>).method((0 : GoInt)).type()) : Ref<Signature>)) : Ref<Signature>).params().at((0 : GoInt))) } : T__struct_24),
({ _name : ("mResult" : GoString), _obj : Go.asInterface((Go.typeAssert((Go.toInterface((Go.typeAssert((Go.toInterface(_lookup(("t" : GoString))) : Ref<Named>)) : Ref<Named>).method((0 : GoInt)).type()) : Ref<Signature>)) : Ref<Signature>).results().at((0 : GoInt))) } : T__struct_24),
({ _name : ("interfaceMethod" : GoString), _obj : Go.asInterface((Go.typeAssert((Go.toInterface(_lookup(("i" : GoString)).underlying()) : Ref<Interface>)) : Ref<Interface>).method((0 : GoInt))) } : T__struct_24),
({ _name : ("ftParam" : GoString), _obj : Go.asInterface((Go.typeAssert((Go.toInterface(_lookup(("ft" : GoString)).underlying()) : Ref<Signature>)) : Ref<Signature>).params().at((0 : GoInt))) } : T__struct_24),
({ _name : ("ftResult" : GoString), _obj : Go.asInterface((Go.typeAssert((Go.toInterface(_lookup(("ft" : GoString)).underlying()) : Ref<Signature>)) : Ref<Signature>).results().at((0 : GoInt))) } : T__struct_24),
({ _name : ("fParam" : GoString), _obj : Go.asInterface((Go.typeAssert((Go.toInterface(_lookup(("f" : GoString))) : Ref<Signature>)) : Ref<Signature>).params().at((0 : GoInt))) } : T__struct_24),
({ _name : ("fResult" : GoString), _obj : Go.asInterface((Go.typeAssert((Go.toInterface(_lookup(("f" : GoString))) : Ref<Signature>)) : Ref<Signature>).results().at((0 : GoInt))) } : T__struct_24)) : Slice<T__struct_24>);
        var _idents = ({
            final x = new stdgo.GoMap.GoStringMap<Slice<Ref<stdgo.go.ast.Ast.Ident>>>();
            x.__defaultValue__ = () -> (null : Slice<Ref<stdgo.go.ast.Ast.Ident>>);
            @:mergeBlock {};
            x;
        } : GoMap<GoString, Slice<Ref<stdgo.go.ast.Ast.Ident>>>);
        stdgo.go.ast.Ast.inspect(Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_n) : Ref<stdgo.go.ast.Ast.Ident>)) : Ref<stdgo.go.ast.Ast.Ident>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.ast.Ast.Ident>), ok : false };
                }, _id = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _idents[_id.name] = (_idents[_id.name].__append__(_id));
                };
            };
            return true;
        });
        for (__0 => _test in _tests) {
            var _test:T__struct_24 = {
                final x = _test;
                ({ _name : x._name, _obj : x._obj } : T__struct_24);
            };
            _t.run(_test._name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
                {
                    var _got:GoInt = (_idents[_test._name].length);
                    if (_got != ((1 : GoInt))) {
                        _t.fatalf(("found %d identifiers named %s, want 1" : GoString), Go.toInterface(_got), Go.toInterface(_test._name));
                    };
                };
                var _ident = _idents[_test._name][(0 : GoInt)];
                var _def:stdgo.go.types.Types.Object = _info.defs[_ident];
                if (Go.toInterface(_def) == (Go.toInterface(_test._obj))) {
                    _t.fatalf(("info.Defs[%s] contains the test object" : GoString), Go.toInterface(_test._name));
                };
                {
                    var _orig:stdgo.go.types.Types.Object = _originObject(_test._obj);
                    if (Go.toInterface(_def) != (Go.toInterface(_orig))) {
                        _t.errorf(("info.Defs[%s] does not match obj.Origin()" : GoString), Go.toInterface(_test._name));
                    };
                };
                if (_def.pkg() != (_test._obj.pkg())) {
                    _t.errorf(("Pkg() = %v, want %v" : GoString), Go.toInterface(Go.asInterface(_def.pkg())), Go.toInterface(Go.asInterface(_test._obj.pkg())));
                };
                if (_def.name() != (_test._obj.name())) {
                    _t.errorf(("Name() = %v, want %v" : GoString), Go.toInterface(_def.name()), Go.toInterface(_test._obj.name()));
                };
                if (_def.pos() != (_test._obj.pos())) {
                    _t.errorf(("Pos() = %v, want %v" : GoString), Go.toInterface(Go.asInterface(_def.pos())), Go.toInterface(Go.asInterface(_test._obj.pos())));
                };
                if (_def.parent() != (_test._obj.parent())) {
                    _t.fatalf(("Parent() = %v, want %v" : GoString), Go.toInterface(Go.asInterface(_def.parent())), Go.toInterface(Go.asInterface(_test._obj.parent())));
                };
                if (_def.exported() != (_test._obj.exported())) {
                    _t.fatalf(("Exported() = %v, want %v" : GoString), Go.toInterface(_def.exported()), Go.toInterface(_test._obj.exported()));
                };
                if (_def.id() != (_test._obj.id())) {
                    _t.fatalf(("Id() = %v, want %v" : GoString), Go.toInterface(_def.id()), Go.toInterface(_test._obj.id()));
                };
            });
        };
    }
private function _originObject(_obj:Object):Object {
        {
            final __type__ = _obj;
            if (Go.typeEquals((__type__ : Ref<Var>))) {
                var _obj:Ref<stdgo.go.types.Types.Var> = __type__ == null ? (null : Ref<stdgo.go.types.Types.Var>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.types.Types.Var>) : __type__ == null ? (null : Ref<stdgo.go.types.Types.Var>) : __type__.__underlying__().value;
                return Go.asInterface(_obj.origin());
            } else if (Go.typeEquals((__type__ : Ref<Func>))) {
                var _obj:Ref<stdgo.go.types.Types.Func> = __type__ == null ? (null : Ref<stdgo.go.types.Types.Func>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.types.Types.Func>) : __type__ == null ? (null : Ref<stdgo.go.types.Types.Func>) : __type__.__underlying__().value;
                return Go.asInterface(_obj.origin());
            };
        };
        return _obj;
    }
function testImplements(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("p.go" : GoString), ("\npackage p\n\ntype EmptyIface interface{}\n\ntype I interface {\n\tm()\n}\n\ntype C interface {\n\tm()\n\t~int\n}\n\ntype Integer interface{\n\tint8 | int16 | int32 | int64\n}\n\ntype EmptyTypeSet interface{\n\tInteger\n\t~string\n}\n\ntype N1 int\nfunc (N1) m() {}\n\ntype N2 int\nfunc (*N2) m() {}\n\ntype N3 int\nfunc (N3) m(int) {}\n\ntype N4 string\nfunc (N4) m()\n\ntype Bad Bad // invalid type\n" : GoString));
        var _conf:stdgo.go.types.Types.Config = ({ error : function(_0:Error):Void {} } : Config);
        var __tmp__ = _conf.check(_f.name.name, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), null), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, __0:Error = __tmp__._1;
        var _lookup:GoString -> stdgo.go.types.Types.Type = function(_tname:GoString):Type {
            return _pkg.scope().lookup(_tname).type();
        };
        var __0:Ref<stdgo.go.types.Types.Interface> = (Go.typeAssert((Go.toInterface(_lookup(("EmptyIface" : GoString)).underlying()) : Ref<Interface>)) : Ref<Interface>), __1:Ref<stdgo.go.types.Types.Named> = (Go.typeAssert((Go.toInterface(_lookup(("I" : GoString))) : Ref<Named>)) : Ref<Named>), __2:Ref<stdgo.go.types.Types.Interface> = (Go.typeAssert((Go.toInterface(i.underlying()) : Ref<Interface>)) : Ref<Interface>), __3:Ref<stdgo.go.types.Types.Named> = (Go.typeAssert((Go.toInterface(_lookup(("C" : GoString))) : Ref<Named>)) : Ref<Named>), __4:Ref<stdgo.go.types.Types.Interface> = (Go.typeAssert((Go.toInterface(c.underlying()) : Ref<Interface>)) : Ref<Interface>), __5:Ref<stdgo.go.types.Types.Interface> = (Go.typeAssert((Go.toInterface(_lookup(("Integer" : GoString)).underlying()) : Ref<Interface>)) : Ref<Interface>), __6:Ref<stdgo.go.types.Types.Interface> = (Go.typeAssert((Go.toInterface(_lookup(("EmptyTypeSet" : GoString)).underlying()) : Ref<Interface>)) : Ref<Interface>), __7:stdgo.go.types.Types.Type = _lookup(("N1" : GoString)), __8:Ref<stdgo.go.types.Types.Pointer_> = newPointer(n1), __9:stdgo.go.types.Types.Type = _lookup(("N2" : GoString)), __10:Ref<stdgo.go.types.Types.Pointer_> = newPointer(n2), __11:stdgo.go.types.Types.Type = _lookup(("N3" : GoString)), __12:stdgo.go.types.Types.Type = _lookup(("N4" : GoString)), __13:stdgo.go.types.Types.Type = _lookup(("Bad" : GoString)), bad:stdgo.go.types.Types.Type = __13, n4:stdgo.go.types.Types.Type = __12, n3:stdgo.go.types.Types.Type = __11, n2p:Ref<stdgo.go.types.Types.Pointer_> = __10, n2:stdgo.go.types.Types.Type = __9, n1p:Ref<stdgo.go.types.Types.Pointer_> = __8, n1:stdgo.go.types.Types.Type = __7, emptyTypeSet:Ref<stdgo.go.types.Types.Interface> = __6, integer:Ref<stdgo.go.types.Types.Interface> = __5, ci:Ref<stdgo.go.types.Types.Interface> = __4, c:Ref<stdgo.go.types.Types.Named> = __3, ii:Ref<stdgo.go.types.Types.Interface> = __2, i:Ref<stdgo.go.types.Types.Named> = __1, emptyIface:Ref<stdgo.go.types.Types.Interface> = __0;
        var _tests = (new Slice<T__struct_25>(
25,
25,
({ v : Go.asInterface(i), t : ii, _want : true } : T__struct_25),
({ v : Go.asInterface(i), t : ci, _want : false } : T__struct_25),
({ v : Go.asInterface(c), t : ii, _want : true } : T__struct_25),
({ v : Go.asInterface(c), t : ci, _want : true } : T__struct_25),
({ v : Go.asInterface(typ[((3 : stdgo.go.types.Types.BasicKind) : GoInt)]), t : integer, _want : true } : T__struct_25),
({ v : Go.asInterface(typ[((6 : stdgo.go.types.Types.BasicKind) : GoInt)]), t : integer, _want : true } : T__struct_25),
({ v : Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)]), t : integer, _want : false } : T__struct_25),
({ v : Go.asInterface(emptyTypeSet), t : ii, _want : true } : T__struct_25),
({ v : Go.asInterface(emptyTypeSet), t : emptyTypeSet, _want : true } : T__struct_25),
({ v : Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]), t : emptyTypeSet, _want : false } : T__struct_25),
({ v : n1, t : ii, _want : true } : T__struct_25),
({ v : n1, t : ci, _want : true } : T__struct_25),
({ v : Go.asInterface(n1p), t : ii, _want : true } : T__struct_25),
({ v : Go.asInterface(n1p), t : ci, _want : false } : T__struct_25),
({ v : n2, t : ii, _want : false } : T__struct_25),
({ v : n2, t : ci, _want : false } : T__struct_25),
({ v : Go.asInterface(n2p), t : ii, _want : true } : T__struct_25),
({ v : Go.asInterface(n2p), t : ci, _want : false } : T__struct_25),
({ v : n3, t : ii, _want : false } : T__struct_25),
({ v : n3, t : ci, _want : false } : T__struct_25),
({ v : n4, t : ii, _want : true } : T__struct_25),
({ v : n4, t : ci, _want : false } : T__struct_25),
({ v : bad, t : ii, _want : false } : T__struct_25),
({ v : bad, t : ci, _want : false } : T__struct_25),
({ v : bad, t : emptyIface, _want : true } : T__struct_25)) : Slice<T__struct_25>);
        for (__1 => _test in _tests) {
            {
                var _got:Bool = implements_(_test.v, _test.t);
                if (_got != (_test._want)) {
                    _t.errorf(("Implements(%s, %s) = %t, want %t" : GoString), Go.toInterface(_test.v), Go.toInterface(Go.asInterface(_test.t)), Go.toInterface(_got), Go.toInterface(_test._want));
                };
            };
            var v = _test.t;
            var t:stdgo.go.types.Types.Type = _test.v;
            var _want:Bool = false;
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(t.underlying()) : Ref<Interface>)) : Ref<Interface>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.types.Types.Interface>), ok : false };
                }, __2 = __tmp__.value, _ok = __tmp__.ok;
                if ((_ok || implements_(t, v)) && (Go.toInterface(t) != Go.toInterface(bad))) {
                    _want = true;
                };
            };
            {
                var _got:Bool = assertableTo(v, t);
                if (_got != (_want)) {
                    _t.errorf(("AssertableTo(%s, %s) = %t, want %t" : GoString), Go.toInterface(Go.asInterface(v)), Go.toInterface(t), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
        };
    }
function testMissingMethodAlternative(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _pkg = _mustTypecheck(("p.go" : GoString), ("\npackage p\ntype T interface {\n\tm()\n}\n\ntype V0 struct{}\nfunc (V0) m() {}\n\ntype V1 struct{}\n\ntype V2 struct{}\nfunc (V2) m() int\n\ntype V3 struct{}\nfunc (*V3) m()\n\ntype V4 struct{}\nfunc (V4) M()\n" : GoString), null);
        var t = (Go.typeAssert((Go.toInterface(_pkg.scope().lookup(("T" : GoString)).type().underlying()) : Ref<Interface>)) : Ref<Interface>);
        var _lookup:GoString -> { var _0 : Ref<stdgo.go.types.Types.Func>; var _1 : Bool; } = function(_name:GoString):{ var _0 : Ref<Func>; var _1 : Bool; } {
            return missingMethod(_pkg.scope().lookup(_name).type(), t, true);
        };
        var __tmp__ = _lookup(("V0" : GoString)), _method:Ref<stdgo.go.types.Types.Func> = __tmp__._0, _wrongType:Bool = __tmp__._1;
        if (((_method != null) && ((_method : Dynamic).__nil__ == null || !(_method : Dynamic).__nil__)) || _wrongType) {
            _t.fatalf(("V0: got method = %v, wrongType = %v" : GoString), Go.toInterface(Go.asInterface(_method)), Go.toInterface(_wrongType));
        };
        var _checkMissingMethod:(GoString, Bool) -> Void = function(_tname:GoString, _reportWrongType:Bool):Void {
            var __tmp__ = _lookup(_tname), _method:Ref<stdgo.go.types.Types.Func> = __tmp__._0, _wrongType:Bool = __tmp__._1;
            if ((((_method == null) || (_method : Dynamic).__nil__) || (_method.name() != ("m" : GoString))) || (_wrongType != _reportWrongType)) {
                _t.fatalf(("%s: got method = %v, wrongType = %v" : GoString), Go.toInterface(_tname), Go.toInterface(Go.asInterface(_method)), Go.toInterface(_wrongType));
            };
        };
        _checkMissingMethod(("V1" : GoString), false);
        _checkMissingMethod(("V2" : GoString), true);
        _checkMissingMethod(("V3" : GoString), true);
        _checkMissingMethod(("V4" : GoString), false);
    }
function testBuiltinSignatures(_t:Ref<stdgo.testing.Testing.T>):Void {
        defPredeclaredTestFuncs();
        var _seen = ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            @:mergeBlock {
                x.set(("trace" : GoString), true);
            };
            x;
        } : GoMap<GoString, Bool>);
        for (__0 => _call in _builtinCalls) {
            _testBuiltinSignature(_t, _call._name, _call._src, _call._sig);
            _seen[_call._name] = true;
        };
        for (__1 => _name in universe.names()) {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(universe.lookup(_name)) : Ref<Builtin>)) : Ref<Builtin>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.types.Types.Builtin>), ok : false };
                }, __2 = __tmp__.value, _ok = __tmp__.ok;
                if (_ok && !_seen[_name]) {
                    _t.errorf(("missing test for %s" : GoString), Go.toInterface(_name));
                };
            };
        };
        for (__3 => _name in unsafe.scope().names()) {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(unsafe.scope().lookup(_name)) : Ref<Builtin>)) : Ref<Builtin>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.types.Types.Builtin>), ok : false };
                }, __4 = __tmp__.value, _ok = __tmp__.ok;
                if (_ok && !_seen[_name]) {
                    _t.errorf(("missing test for unsafe.%s" : GoString), Go.toInterface(_name));
                };
            };
        };
    }
private function _testBuiltinSignature(_t:Ref<stdgo.testing.Testing.T>, _name:GoString, _src0:GoString, _want:GoString):Void {
        var _src:GoString = stdgo.fmt.Fmt.sprintf(("package p; import \"unsafe\"; type _ unsafe.Pointer /* use unsafe */; func _[P ~[]byte]() { %s }" : GoString), Go.toInterface(_src0));
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(_src), (0u32 : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("%s: %s" : GoString), Go.toInterface(_src0), Go.toInterface(_err));
            return;
        };
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.go.importer.Importer.default_() } : Config);
        var _uses = ({
            final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>);
        var _types = ({
            final x = new GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
            @:mergeBlock {};
            cast x;
        } : GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>);
        {
            var __tmp__ = _conf.check(_f.name.name, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), (Go.setRef(({ types : _types, uses : _uses } : Info)) : Ref<stdgo.go.types.Types.Info>));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(("%s: %s" : GoString), Go.toInterface(_src0), Go.toInterface(_err));
            return;
        };
        var _n:GoInt = (0 : GoInt);
        var _fun:stdgo.go.ast.Ast.Expr = (null : stdgo.go.ast.Ast.Expr);
        for (_x => _ in _types) {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_x) : Ref<stdgo.go.ast.Ast.CallExpr>)) : Ref<stdgo.go.ast.Ast.CallExpr>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.ast.Ast.CallExpr>), ok : false };
                }, _call = __tmp__.value, __0 = __tmp__.ok;
                if (_call != null && ((_call : Dynamic).__nil__ == null || !(_call : Dynamic).__nil__)) {
                    _fun = _call.fun;
                    _n++;
                };
            };
        };
        if (_n != ((1 : GoInt))) {
            _t.errorf(("%s: got %d CallExprs; want 1" : GoString), Go.toInterface(_src0), Go.toInterface(_n));
            return;
        };
        while (true) {
            var _typ:stdgo.go.types.Types.Type = _types[_fun].type;
            if (_typ == null) {
                _t.errorf(("%s: no type recorded for %s" : GoString), Go.toInterface(_src0), Go.toInterface(exprString(_fun)));
                return;
            };
            {
                var _got:GoString = (_typ.string() : GoString);
                if (_got != (_want)) {
                    _t.errorf(("%s: got type %s; want %s" : GoString), Go.toInterface(_src0), Go.toInterface(_got), Go.toInterface(_want));
                    return;
                };
            };
            {
                final __type__ = _fun;
                if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.Ident>))) {
                    var _p:Ref<stdgo.go.ast.Ast.Ident> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                    var _obj:stdgo.go.types.Types.Object = _uses[_p];
                    if (_obj == null) {
                        _t.errorf(("%s: no object found for %s" : GoString), Go.toInterface(_src0), Go.toInterface(Go.asInterface(_p)));
                        return;
                    };
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_obj) : Ref<Builtin>)) : Ref<Builtin>), ok : true };
                    } catch(_) {
                        { value : (null : Ref<stdgo.go.types.Types.Builtin>), ok : false };
                    }, _bin = __tmp__.value, __1 = __tmp__.ok;
                    if (_bin == null || (_bin : Dynamic).__nil__) {
                        _t.errorf(("%s: %s does not denote a built-in" : GoString), Go.toInterface(_src0), Go.toInterface(Go.asInterface(_p)));
                        return;
                    };
                    if (_bin.name() != (_name)) {
                        _t.errorf(("%s: got built-in %s; want %s" : GoString), Go.toInterface(_src0), Go.toInterface(_bin.name()), Go.toInterface(_name));
                        return;
                    };
                    return;
                } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ParenExpr>))) {
                    var _p:Ref<stdgo.go.ast.Ast.ParenExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__.__underlying__().value;
                    _fun = _p.x;
                } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.SelectorExpr>))) {
                    var _p:Ref<stdgo.go.ast.Ast.SelectorExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__.__underlying__().value;
                    return;
                } else {
                    var _p:stdgo.go.ast.Ast.Expr = __type__ == null ? (null : stdgo.go.ast.Ast.Expr) : cast __type__;
                    _t.errorf(("%s: invalid function call" : GoString), Go.toInterface(_src0));
                    return;
                };
            };
        };
    }
/**
    // splitError splits an error's error message into a position string
    // and the actual error message. If there's no position information,
    // pos is the empty string, and msg is the entire error message.
**/
private function _splitError(_err:Error):{ var _0 : GoString; var _1 : GoString; } {
        var _pos:GoString = ("" : GoString), _msg:GoString = ("" : GoString);
        _msg = _err.error();
        {
            var _m = _posMsgRx.findStringSubmatch(_msg);
            if ((_m.length) == ((3 : GoInt))) {
                _pos = _m[(1 : GoInt)];
                _msg = _m[(2 : GoInt)];
            };
        };
        return { _0 : _pos, _1 : _msg };
    }
private function _parseFiles(_t:Ref<stdgo.testing.Testing.T>, _filenames:Slice<GoString>, _srcs:Slice<Slice<GoByte>>, _mode:stdgo.go.parser.Parser.Mode):{ var _0 : Slice<Ref<stdgo.go.ast.Ast.File>>; var _1 : Slice<Error>; } {
        var _files:Slice<Ref<stdgo.go.ast.Ast.File>> = (null : Slice<Ref<stdgo.go.ast.Ast.File>>);
        var _errlist:Slice<Error> = (null : Slice<Error>);
        for (_i => _filename in _filenames) {
            var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, _filename, Go.toInterface(_srcs[(_i : GoInt)]), _mode), _file:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
            if (_file == null || (_file : Dynamic).__nil__) {
                _t.fatalf(("%s: %s" : GoString), Go.toInterface(_filename), Go.toInterface(_err));
            };
            _files = (_files.__append__(_file));
            if (_err != null) {
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_err) : stdgo.go.scanner.Scanner.ErrorList)) : stdgo.go.scanner.Scanner.ErrorList), ok : true };
                    } catch(_) {
                        { value : new stdgo.go.scanner.Scanner.ErrorList(0, 0), ok : false };
                    }, _list = __tmp__.value, __0 = __tmp__.ok;
                    if ((_list.length) > (0 : GoInt)) {
                        for (__1 => _err in _list) {
                            _errlist = (_errlist.__append__(Go.asInterface(_err)));
                        };
                    } else {
                        _errlist = (_errlist.__append__(_err));
                    };
                };
            };
        };
        return { _0 : _files, _1 : _errlist };
    }
/**
    // errMap collects the regular expressions of ERROR comments found
    // in files and returns them as a map of error positions to error messages.
    //
    // srcs must be a slice of the same length as files, containing the original
    // source for the parsed AST.
**/
private function _errMap(_t:Ref<stdgo.testing.Testing.T>, _files:Slice<Ref<stdgo.go.ast.Ast.File>>, _srcs:Slice<Slice<GoByte>>):GoMap<GoString, Slice<GoString>> {
        stdgo.internal.Macro.controlFlow({
            var _errmap = ({
                final x = new stdgo.GoMap.GoStringMap<Slice<GoString>>();
                x.__defaultValue__ = () -> (null : Slice<GoString>);
                @:mergeBlock {};
                x;
            } : GoMap<GoString, Slice<GoString>>);
            for (_i => _file in _files) {
                var _tok = _fset.file(_file.package_);
                var _src = _srcs[(_i : GoInt)];
                var _s:stdgo.go.scanner.Scanner.Scanner = ({} : stdgo.go.scanner.Scanner.Scanner);
                _s.init(_tok, _src, null, (1u32 : stdgo.go.scanner.Scanner.Mode));
                var _prev:stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
                @:label("scanFile") while (true) {
                    var __tmp__ = _s.scan(), _pos:stdgo.go.token.Token.Pos = __tmp__._0, _tok:stdgo.go.token.Token.Token = __tmp__._1, _lit:GoString = __tmp__._2;
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _tok;
                                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (1 : stdgo.go.token.Token.Token)))) {
                                    @:jump("scanFile") break;
                                    break;
                                    break;
                                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.go.token.Token.Token)))) {
                                    if (_lit[(1 : GoInt)] == ((42 : GoUInt8))) {
                                        _lit = (_lit.__slice__(0, (_lit.length) - (2 : GoInt)) : GoString);
                                    };
                                    {
                                        var _s = _errRx.findStringSubmatch((_lit.__slice__((2 : GoInt)) : GoString));
                                        if ((_s.length) == ((2 : GoInt))) {
                                            var _p:GoString = (_fset.position(_prev).string() : GoString);
                                            _errmap[_p] = (_errmap[_p].__append__(stdgo.strings.Strings.trimSpace(_s[(1 : GoInt)])));
                                        };
                                    };
                                    break;
                                    break;
                                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (57 : stdgo.go.token.Token.Token)))) {
                                    if (_lit == (("\n" : GoString))) {
                                        @:jump("scanFile") continue;
                                    };
                                    @:fallthrough {
                                        __switchIndex__ = 3;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else {
                                    _prev = _pos;
                                    break;
                                };
                            };
                            break;
                        };
                    };
                };
            };
            return _errmap;
        });
        throw "controlFlow did not return";
    }
private function _eliminate(_t:Ref<stdgo.testing.Testing.T>, _errmap:GoMap<GoString, Slice<GoString>>, _errlist:Slice<Error>):Void {
        for (__0 => _err in _errlist) {
            var __tmp__ = _splitError(_err), _pos:GoString = __tmp__._0, _gotMsg:GoString = __tmp__._1;
            var _list = _errmap[_pos];
            var _index:GoInt = (-1 : GoInt);
            for (_i => _wantRx in _list) {
                var __tmp__ = stdgo.regexp.Regexp.compile(_wantRx), _rx:Ref<stdgo.regexp.Regexp.Regexp> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("%s: %v" : GoString), Go.toInterface(_pos), Go.toInterface(_err));
                    continue;
                };
                if (_rx.matchString(_gotMsg)) {
                    _index = _i;
                    break;
                };
            };
            if (_index >= (0 : GoInt)) {
                {
                    var _n:GoInt = (_list.length) - (1 : GoInt);
                    if (_n > (0 : GoInt)) {
                        _list[(_index : GoInt)] = _list[(_n : GoInt)];
                        _errmap[_pos] = (_list.__slice__(0, _n) : Slice<GoString>);
                    } else {
                        if (_errmap != null) _errmap.remove(_pos);
                    };
                };
            } else {
                _t.errorf(("%s: no error expected: %q" : GoString), Go.toInterface(_pos), Go.toInterface(_gotMsg));
            };
        };
    }
/**
    // parseFlags parses flags from the first line of the given source
    // (from src if present, or by reading from the file) if the line
    // starts with "//" (line comment) followed by "-" (possibly with
    // spaces between). Otherwise the line is ignored.
**/
private function _parseFlags(_filename:GoString, _src:Slice<GoByte>, _flags:Ref<stdgo.flag.Flag.FlagSet>):Error {
        {};
        if ((_src.length) == ((0 : GoInt))) {
            var __tmp__ = stdgo.os.Os.open(_filename), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 256) (0 : GoUInt8)]);
            var __tmp__ = _f.read((_buf.__slice__(0) : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            _src = (_buf.__slice__(0, _n) : Slice<GoUInt8>);
        };
        {};
        if (!stdgo.bytes.Bytes.hasPrefix(_src, (("//" : GoString) : Slice<GoByte>))) {
            return (null : Error);
        };
        _src = (_src.__slice__((("//" : GoString).length)) : Slice<GoUInt8>);
        {
            var _i:GoInt = stdgo.bytes.Bytes.index(_src, (("-" : GoString) : Slice<GoByte>));
            if ((_i < (0 : GoInt)) || (stdgo.bytes.Bytes.trimSpace((_src.__slice__(0, _i) : Slice<GoUInt8>)).length != (0 : GoInt))) {
                return (null : Error);
            };
        };
        var _end:GoInt = stdgo.bytes.Bytes.index(_src, (("\n" : GoString) : Slice<GoByte>));
        if ((_end < (0 : GoInt)) || (_end > (256 : GoInt))) {
            return stdgo.fmt.Fmt.errorf(("flags comment line too long" : GoString));
        };
        return _flags.parse(stdgo.strings.Strings.fields(((_src.__slice__(0, _end) : Slice<GoUInt8>) : GoString)));
    }
private function _testFiles(_t:Ref<stdgo.testing.Testing.T>, _sizes:Sizes, _filenames:Slice<GoString>, _srcs:Slice<Slice<GoByte>>, _manual:Bool, _imp:Importer):Void {
        if ((_filenames.length) == ((0 : GoInt))) {
            _t.fatal(Go.toInterface(("no source files" : GoString)));
        };
        var _conf:Config = ({} : stdgo.go.types.Types.Config);
        _conf.sizes = _sizes;
        var _flags = stdgo.flag.Flag.newFlagSet(Go.str(), (2 : stdgo.flag.Flag.ErrorHandling));
        _flags.stringVar(Go.pointer(_conf.goVersion), ("lang" : GoString), Go.str(), Go.str());
        _flags.boolVar(Go.pointer(_conf.fakeImportC), ("fakeImportC" : GoString), false, Go.str());
        _flags.boolVar(_addrOldComparableSemantics((Go.setRef(_conf) : Ref<stdgo.go.types.Types.Config>)), ("oldComparableSemantics" : GoString), false, Go.str());
        {
            var _err:Error = _parseFlags(_filenames[(0 : GoInt)], _srcs[(0 : GoInt)], _flags);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var __tmp__ = _parseFiles(_t, _filenames, _srcs, (32u32 : stdgo.go.parser.Parser.Mode)), _files:Slice<Ref<stdgo.go.ast.Ast.File>> = __tmp__._0, _errlist:Slice<Error> = __tmp__._1;
        var _pkgName:GoString = ("<no package>" : GoString);
        if ((_files.length) > (0 : GoInt)) {
            _pkgName = _files[(0 : GoInt)].name.name;
        };
        var _listErrors:Bool = _manual && !_verifyErrors.value;
        if (_listErrors && (_errlist.length > (0 : GoInt))) {
            _t.errorf(("--- %s:" : GoString), Go.toInterface(_pkgName));
            for (__0 => _err in _errlist) {
                _t.error(Go.toInterface(_err));
            };
        };
        if (_imp == null) {
            _imp = stdgo.go.importer.Importer.default_();
        };
        _conf.importer = _imp;
        _conf.error = function(_err:Error):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                if (_haltOnError.value) {
                    {
                        var _a0 = _err;
                        __deferstack__.unshift(() -> throw Go.toInterface(_a0));
                    };
                };
                if (_listErrors) {
                    _t.error(Go.toInterface(_err));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                if (!stdgo.strings.Strings.contains(_err.error(), (": \t" : GoString))) {
                    _errlist = (_errlist.__append__(_err));
                };
                for (defer in __deferstack__) {
                    defer();
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (Go.recover_exception != null) throw Go.recover_exception;
                    return;
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is AnyInterfaceData)) {
                    exe = Go.toInterface(__exception__.message);
                };
                Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        };
        _conf.check(_pkgName, _fset, _files, null);
        if (_listErrors) {
            return;
        };
        for (__1 => _err in _errlist) {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_err) : T_error)) : T_error), ok : true };
            } catch(_) {
                { value : ({} : stdgo.go.types.Types.T_error), ok : false };
            }, _err = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                continue;
            };
            var _code:GoInt = _readCode(_err?.__copy__());
            if (_code == ((0 : GoInt))) {
                _t.errorf(("missing error code: %v" : GoString), Go.toInterface(Go.asInterface(_err)));
            };
        };
        var _errmap = _errMap(_t, _files, _srcs);
        _eliminate(_t, _errmap, _errlist);
        if ((_errmap.length) > (0 : GoInt)) {
            _t.errorf(("--- %s: %d source positions with expected (but not reported) errors:" : GoString), Go.toInterface(_pkgName), Go.toInterface((_errmap.length)));
            for (_pos => _list in _errmap) {
                for (__2 => _rx in _list) {
                    _t.errorf(("%s: %q" : GoString), Go.toInterface(_pos), Go.toInterface(_rx));
                };
            };
        };
    }
private function _readCode(_err:T_error):GoInt {
        var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface(_err)))?.__copy__();
        return (_v.fieldByName(("go116code" : GoString)).int_() : GoInt);
    }
/**
    // addrOldComparableSemantics(conf) returns &conf.oldComparableSemantics (unexported field).
**/
private function _addrOldComparableSemantics(_conf:Ref<Config>):Pointer<Bool> {
        var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.indirect(stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface(_conf)))?.__copy__())?.__copy__();
        return (_v.fieldByName(("oldComparableSemantics" : GoString)).addr().unsafePointer().__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(bool_kind) })) : Pointer<Bool>);
    }
/**
    // TestManual is for manual testing of a package - either provided
    // as a list of filenames belonging to the package, or a directory
    // name containing the package files - after the test arguments
    // (and a separating "--"). For instance, to test the package made
    // of the files foo.go and bar.go, use:
    //
    //	go test -run Manual -- foo.go bar.go
    //
    // If no source arguments are provided, the file testdata/manual.go
    // is used instead.
    // Provide the -verify flag to verify errors against ERROR comments
    // in the input files rather than having a list of errors reported.
    // The accepted Go language version can be controlled with the -lang
    // flag.
**/
function testManual(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        var _filenames = stdgo.flag.Flag.args();
        if ((_filenames.length) == ((0 : GoInt))) {
            _filenames = (new Slice<GoString>(1, 1, stdgo.path.filepath.Filepath.fromSlash(("testdata/manual.go" : GoString))) : Slice<GoString>);
        };
        var __tmp__ = stdgo.os.Os.stat(_filenames[(0 : GoInt)]), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("TestManual: %v" : GoString), Go.toInterface(_err));
        };
        defPredeclaredTestFuncs();
        if (_info.isDir()) {
            if ((_filenames.length) > (1 : GoInt)) {
                _t.fatal(Go.toInterface(("TestManual: must have only one directory argument" : GoString)));
            };
            _testDir(_t, _filenames[(0 : GoInt)], true);
        } else {
            _testPkg(_t, _filenames, true);
        };
    }
function testLongConstants(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _format:GoString = ("package longconst\n\nconst _ = %s /* ERROR constant overflow */ \nconst _ = %s // ERROR excessively long constant" : GoString);
        var _src:GoString = stdgo.fmt.Fmt.sprintf(_format, Go.toInterface(stdgo.strings.Strings.repeat(("1" : GoString), (9999 : GoInt))), Go.toInterface(stdgo.strings.Strings.repeat(("1" : GoString), (10001 : GoInt))));
        _testFiles(_t, (null : stdgo.go.types.Types.Sizes), (new Slice<GoString>(1, 1, ("longconst.go" : GoString)) : Slice<GoString>), (new Slice<Slice<GoUInt8>>(1, 1, (_src : Slice<GoByte>)) : Slice<Slice<GoUInt8>>), false, (null : stdgo.go.types.Types.Importer));
    }
/**
    // TestIndexRepresentability tests that constant index operands must
    // be representable as int even if they already have a type that can
    // represent larger values.
**/
function testIndexRepresentability(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        _testFiles(_t, Go.asInterface((Go.setRef((new StdSizes((4i64 : GoInt64), (4i64 : GoInt64)) : StdSizes)) : Ref<stdgo.go.types.Types.StdSizes>)), (new Slice<GoString>(1, 1, ("index.go" : GoString)) : Slice<GoString>), (new Slice<Slice<GoUInt8>>(1, 1, (("package index\n\nvar s []byte\nvar _ = s[int64 /* ERROR \"int64\\(1\\) << 40 \\(.*\\) overflows int\" */ (1) << 40]" : GoString) : Slice<GoByte>)) : Slice<Slice<GoUInt8>>), false, (null : stdgo.go.types.Types.Importer));
    }
function testIssue47243_TypedRHS(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        _testFiles(_t, Go.asInterface((Go.setRef((new StdSizes((4i64 : GoInt64), (4i64 : GoInt64)) : StdSizes)) : Ref<stdgo.go.types.Types.StdSizes>)), (new Slice<GoString>(1, 1, ("p.go" : GoString)) : Slice<GoString>), (new Slice<Slice<GoUInt8>>(1, 1, (("package issue47243\n\nvar a uint64; var _ = a << uint64(4294967296)" : GoString) : Slice<GoByte>)) : Slice<Slice<GoUInt8>>), false, (null : stdgo.go.types.Types.Importer));
    }
function testCheck(_t:Ref<stdgo.testing.Testing.T>):Void {
        defPredeclaredTestFuncs();
        _testDirFiles(_t, ("../../internal/types/testdata/check" : GoString), false);
    }
function testSpec(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testDirFiles(_t, ("../../internal/types/testdata/spec" : GoString), false);
    }
function testExamples(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testDirFiles(_t, ("../../internal/types/testdata/examples" : GoString), false);
    }
function testFixedbugs(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testDirFiles(_t, ("../../internal/types/testdata/fixedbugs" : GoString), false);
    }
function testLocal(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testDirFiles(_t, ("testdata/local" : GoString), false);
    }
private function _testDirFiles(_t:Ref<stdgo.testing.Testing.T>, _dir:GoString, _manual:Bool):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        _dir = stdgo.path.filepath.Filepath.fromSlash(_dir);
        var __tmp__ = stdgo.os.Os.readDir(_dir), _fis:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.error(Go.toInterface(_err));
            return;
        };
        for (__0 => _fi in _fis) {
            var _path:GoString = stdgo.path.filepath.Filepath.join(_dir, _fi.name());
            if (_fi.isDir()) {
                _testDir(_t, _path, _manual);
            } else {
                _t.run(stdgo.path.filepath.Filepath.base(_path), function(_t:Ref<stdgo.testing.Testing.T>):Void {
                    _testPkg(_t, (new Slice<GoString>(1, 1, _path) : Slice<GoString>), _manual);
                });
            };
        };
    }
private function _testDir(_t:Ref<stdgo.testing.Testing.T>, _dir:GoString, _manual:Bool):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        var __tmp__ = stdgo.os.Os.readDir(_dir), _fis:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.error(Go.toInterface(_err));
            return;
        };
        var _filenames:Slice<GoString> = (null : Slice<GoString>);
        for (__0 => _fi in _fis) {
            _filenames = (_filenames.__append__(stdgo.path.filepath.Filepath.join(_dir, _fi.name())));
        };
        _t.run(stdgo.path.filepath.Filepath.base(_dir), function(_t:Ref<stdgo.testing.Testing.T>):Void {
            _testPkg(_t, _filenames, _manual);
        });
    }
/**
    // TODO(rFindley) reconcile the different test setup in go/types with types2.
**/
private function _testPkg(_t:Ref<stdgo.testing.Testing.T>, _filenames:Slice<GoString>, _manual:Bool):Void {
        var _srcs = new Slice<Slice<GoUInt8>>((_filenames.length : GoInt).toBasic(), 0);
        for (_i => _filename in _filenames) {
            var __tmp__ = stdgo.os.Os.readFile(_filename), _src:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("could not read %s: %v" : GoString), Go.toInterface(_filename), Go.toInterface(_err));
            };
            _srcs[(_i : GoInt)] = _src;
        };
        _testFiles(_t, (null : stdgo.go.types.Types.Sizes), _filenames, _srcs, _manual, (null : stdgo.go.types.Types.Importer));
    }
/**
    // TestErrorCalls makes sure that check.errorf calls have at least
    // errorfMinArgCount arguments (otherwise we should use check.error).
**/
function testErrorCalls(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = _pkgFiles(_fset, ("." : GoString)), _files:Slice<Ref<stdgo.go.ast.Ast.File>> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        for (__0 => _file in _files) {
            stdgo.go.ast.Ast.inspect(Go.asInterface(_file), function(_n:stdgo.go.ast.Ast.Node):Bool {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_n) : Ref<stdgo.go.ast.Ast.CallExpr>)) : Ref<stdgo.go.ast.Ast.CallExpr>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.ast.Ast.CallExpr>), ok : false };
                }, _call = __tmp__.value, __0 = __tmp__.ok;
                if (_call == null || (_call : Dynamic).__nil__) {
                    return true;
                };
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_call.fun) : Ref<stdgo.go.ast.Ast.SelectorExpr>)) : Ref<stdgo.go.ast.Ast.SelectorExpr>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.ast.Ast.SelectorExpr>), ok : false };
                }, _selx = __tmp__.value, __1 = __tmp__.ok;
                if (_selx == null || (_selx : Dynamic).__nil__) {
                    return true;
                };
                if (!(_isName(_selx.x, ("check" : GoString)) && _isName(Go.asInterface(_selx.sel), ("errorf" : GoString)))) {
                    return true;
                };
                {
                    var _n:GoInt = (_call.args.length);
                    if (_n < (4 : GoInt)) {
                        _t.errorf(("%s: got %d arguments, want at least %d" : GoString), Go.toInterface(Go.asInterface(_fset.position(_call.pos()))), Go.toInterface(_n), Go.toInterface((4 : GoInt)));
                        return false;
                    };
                };
                return true;
            });
        };
    }
private function _isName(_n:stdgo.go.ast.Ast.Node, _name:GoString):Bool {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_n) : Ref<stdgo.go.ast.Ast.Ident>)) : Ref<stdgo.go.ast.Ast.Ident>), ok : true };
            } catch(_) {
                { value : (null : Ref<stdgo.go.ast.Ast.Ident>), ok : false };
            }, _n = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _n.name == (_name);
            };
        };
        return false;
    }
private function _testEval(_t:Ref<stdgo.testing.Testing.T>, _fset:Ref<stdgo.go.token.Token.FileSet>, _pkg:Ref<Package>, _pos:stdgo.go.token.Token.Pos, _expr:GoString, _typ:Type, _typStr:GoString, _valStr:GoString):Void {
        var __tmp__ = eval(_fset, _pkg, _pos, _expr), _gotTv:stdgo.go.types.Types.TypeAndValue = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("Eval(%q) failed: %s" : GoString), Go.toInterface(_expr), Go.toInterface(_err));
            return;
        };
        if (_gotTv.type == null) {
            _t.errorf(("Eval(%q) got nil type but no error" : GoString), Go.toInterface(_expr));
            return;
        };
        if (_typ != null) {
            if (!identical(_gotTv.type, _typ)) {
                _t.errorf(("Eval(%q) got type %s, want %s" : GoString), Go.toInterface(_expr), Go.toInterface(_gotTv.type), Go.toInterface(_typ));
                return;
            };
        } else {
            var _gotStr:GoString = (_gotTv.type.string() : GoString);
            if (_gotStr != (_typStr)) {
                _t.errorf(("Eval(%q) got type %s, want %s" : GoString), Go.toInterface(_expr), Go.toInterface(_gotStr), Go.toInterface(_typStr));
                return;
            };
        };
        var _gotStr:GoString = Go.str();
        if (_gotTv.value != null) {
            _gotStr = _gotTv.value.exactString();
        };
        if (_gotStr != (_valStr)) {
            _t.errorf(("Eval(%q) got value %s, want %s" : GoString), Go.toInterface(_expr), Go.toInterface(_gotStr), Go.toInterface(_valStr));
        };
    }
function testEvalBasic(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        for (__0 => _typ in (typ.__slice__((1 : stdgo.go.types.Types.BasicKind), (18 : stdgo.go.types.Types.BasicKind)) : Slice<Ref<stdgo.go.types.Types.Basic>>)) {
            _testEval(_t, _fset, null, (0 : stdgo.go.token.Token.Pos), _typ.name(), Go.asInterface(_typ), Go.str(), Go.str());
        };
    }
function testEvalComposite(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        for (__0 => _test in _independentTestTypes) {
            _testEval(_t, _fset, null, (0 : stdgo.go.token.Token.Pos), _test._src, (null : stdgo.go.types.Types.Type), _test._str, Go.str());
        };
    }
function testEvalArith(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests:Slice<GoString> = (new Slice<GoString>(8, 8, ("true" : GoString), ("false == false" : GoString), ("12345678 + 87654321 == 99999999" : GoString), ("10 * 20 == 200" : GoString), ("(1<<500)*2 >> 100 == 2<<400" : GoString), ("\"foo\" + \"bar\" == \"foobar\"" : GoString), ("\"abc\" <= \"bcd\"" : GoString), ("len([10]struct{}{}) == 2*5" : GoString)) : Slice<GoString>);
        var _fset = stdgo.go.token.Token.newFileSet();
        for (__0 => _test in _tests) {
            _testEval(_t, _fset, null, (0 : stdgo.go.token.Token.Pos), _test, Go.asInterface(typ[((19 : stdgo.go.types.Types.BasicKind) : GoInt)]), Go.str(), ("true" : GoString));
        };
    }
function testEvalPos(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        var _sources:Slice<GoString> = (new Slice<GoString>(4, 4, ("\n\t\tpackage p\n\t\timport \"fmt\"\n\t\timport m \"math\"\n\t\tconst c = 3.0\n\t\ttype T []int\n\t\tfunc f(a int, s string) float64 {\n\t\t\tfmt.Println(\"calling f\")\n\t\t\t_ = m.Pi // use package math\n\t\t\tconst d int = c + 1\n\t\t\tvar x int\n\t\t\tx = a + len(s)\n\t\t\treturn float64(x)\n\t\t\t/* true => true, untyped bool */\n\t\t\t/* fmt.Println => , func(a ...any) (n int, err error) */\n\t\t\t/* c => 3, untyped float */\n\t\t\t/* T => , p.T */\n\t\t\t/* a => , int */\n\t\t\t/* s => , string */\n\t\t\t/* d => 4, int */\n\t\t\t/* x => , int */\n\t\t\t/* d/c => 1, int */\n\t\t\t/* c/2 => 3/2, untyped float */\n\t\t\t/* m.Pi < m.E => false, untyped bool */\n\t\t}\n\t\t" : GoString), ("\n\t\tpackage p\n\t\t/* c => 3, untyped float */\n\t\ttype T1 /* T1 => , p.T1 */ struct {}\n\t\tvar v1 /* v1 => , int */ = 42\n\t\tfunc /* f1 => , func(v1 float64) */ f1(v1 float64) {\n\t\t\t/* f1 => , func(v1 float64) */\n\t\t\t/* v1 => , float64 */\n\t\t\tvar c /* c => 3, untyped float */ = \"foo\" /* c => , string */\n\t\t\t{\n\t\t\t\tvar c struct {\n\t\t\t\t\tc /* c => , string */ int\n\t\t\t\t}\n\t\t\t\t/* c => , struct{c int} */\n\t\t\t\t_ = c\n\t\t\t}\n\t\t\t_ = func(a, b, c int) /* c => , string */ {\n\t\t\t\t/* c => , int */\n\t\t\t}\n\t\t\t_ = c\n\t\t\ttype FT /* FT => , p.FT */ interface{}\n\t\t}\n\t\t" : GoString), ("\n\t\tpackage p\n\t\t/* T => , p.T */\n\t\t" : GoString), ("\n\t\tpackage p\n\t\timport \"io\"\n\t\ttype R = io.Reader\n\t\tfunc _() {\n\t\t\t/* interface{R}.Read => , func(_ interface{io.Reader}, p []byte) (n int, err error) */\n\t\t\t_ = func() {\n\t\t\t\t/* interface{io.Writer}.Write => , func(_ interface{io.Writer}, p []byte) (n int, err error) */\n\t\t\t\ttype io interface {} // must not shadow io in line above\n\t\t\t}\n\t\t\ttype R interface {} // must not shadow R in first line of this function body\n\t\t}\n\t\t" : GoString)) : Slice<GoString>);
        var _fset = stdgo.go.token.Token.newFileSet();
        var _files:Slice<Ref<stdgo.go.ast.Ast.File>> = (null : Slice<Ref<stdgo.go.ast.Ast.File>>);
        for (_i => _src in _sources) {
            var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("p" : GoString), Go.toInterface(_src), (4u32 : stdgo.go.parser.Parser.Mode)), _file:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("could not parse file %d: %s" : GoString), Go.toInterface(_i), Go.toInterface(_err));
            };
            _files = (_files.__append__(_file));
        };
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.go.importer.Importer.default_() } : Config);
        var __tmp__ = _conf.check(("p" : GoString), _fset, _files, null), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        for (__0 => _file in _files) {
            for (__1 => _group in _file.comments) {
                for (__2 => _comment in _group.list) {
                    var _s:GoString = _comment.text;
                    if (((_s.length >= (4 : GoInt)) && ((_s.__slice__(0, (2 : GoInt)) : GoString) == ("/*" : GoString))) && ((_s.__slice__((_s.length) - (2 : GoInt)) : GoString) == ("*/" : GoString))) {
                        var __tmp__ = _split((_s.__slice__((2 : GoInt), (_s.length) - (2 : GoInt)) : GoString), (", " : GoString)), _str:GoString = __tmp__._0, _typ:GoString = __tmp__._1;
                        var __tmp__ = _split(_str, ("=>" : GoString)), _str:GoString = __tmp__._0, _val:GoString = __tmp__._1;
                        _testEval(_t, _fset, _pkg, _comment.pos(), _str, (null : stdgo.go.types.Types.Type), _typ, _val);
                    };
                };
            };
        };
    }
/**
    // split splits string s at the first occurrence of s, trimming spaces.
**/
private function _split(_s:GoString, _sep:GoString):{ var _0 : GoString; var _1 : GoString; } {
        var __tmp__ = stdgo.strings.Strings.cut(_s, _sep), _before:GoString = __tmp__._0, _after:GoString = __tmp__._1, __0:Bool = __tmp__._2;
        return { _0 : stdgo.strings.Strings.trimSpace(_before), _1 : stdgo.strings.Strings.trimSpace(_after) };
    }
function testCheckExpr(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("p" : GoString), Go.toInterface(("\npackage p\n\nimport \"fmt\"\n\nconst c = 3.0\ntype T []int\ntype S struct{ X int }\n\nfunc f(a int, s string) S {\n\t/* fmt.Println => func fmt.Println(a ...any) (n int, err error) */\n\t/* fmt.Stringer.String => func (fmt.Stringer).String() string */\n\tfmt.Println(\"calling f\")\n\n\tvar fmt struct{ Println int }\n\t/* fmt => var fmt struct{Println int} */\n\t/* fmt.Println => field Println int */\n\t/* f(1, \"\").X => field X int */\n\tfmt.Println = 1\n\n\t/* append => builtin append */\n\n\t/* new(S).X => field X int */\n\n\treturn S{}\n}" : GoString)), (4u32 : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.go.importer.Importer.default_() } : Config);
        var __tmp__ = _conf.check(("p" : GoString), _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), null), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _checkExpr:(stdgo.go.token.Token.Pos, GoString) -> { var _0 : stdgo.go.types.Types.Object; var _1 : Error; } = function(_pos:stdgo.go.token.Token.Pos, _str:GoString):{ var _0 : Object; var _1 : Error; } {
            var __tmp__ = stdgo.go.parser.Parser.parseExprFrom(_fset, ("eval" : GoString), Go.toInterface(_str), (0u32 : stdgo.go.parser.Parser.Mode)), _expr:stdgo.go.ast.Ast.Expr = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.go.types.Types.Object), _1 : _err };
            };
            var _info = (Go.setRef(({ uses : ({
                final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                @:mergeBlock {};
                cast x;
            } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>), selections : ({
                final x = new GoRefMap<Ref<stdgo.go.ast.Ast.SelectorExpr>, Ref<stdgo.go.types.Types.Selection>>();
                @:mergeBlock {};
                cast x;
            } : GoMap<Ref<stdgo.go.ast.Ast.SelectorExpr>, Ref<stdgo.go.types.Types.Selection>>) } : Info)) : Ref<stdgo.go.types.Types.Info>);
            {
                var _err:Error = checkExpr(_fset, _pkg, _pos, _expr, _info);
                if (_err != null) {
                    return { _0 : (null : stdgo.go.types.Types.Object), _1 : stdgo.fmt.Fmt.errorf(("CheckExpr(%q) failed: %s" : GoString), Go.toInterface(_str), Go.toInterface(_err)) };
                };
            };
            {
                final __type__ = _expr;
                if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.Ident>))) {
                    var _expr:Ref<stdgo.go.ast.Ast.Ident> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = (_info.uses != null && _info.uses.exists(_expr) ? { value : _info.uses[_expr], ok : true } : { value : (null : stdgo.go.types.Types.Object), ok : false }), _obj:stdgo.go.types.Types.Object = __tmp__.value, _ok:Bool = __tmp__.ok;
                        if (_ok) {
                            return { _0 : _obj, _1 : (null : Error) };
                        };
                    };
                } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.SelectorExpr>))) {
                    var _expr:Ref<stdgo.go.ast.Ast.SelectorExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = (_info.selections != null && _info.selections.exists(_expr) ? { value : _info.selections[_expr], ok : true } : { value : (null : Ref<stdgo.go.types.Types.Selection>), ok : false }), _sel:Ref<stdgo.go.types.Types.Selection> = __tmp__.value, _ok:Bool = __tmp__.ok;
                        if (_ok) {
                            return { _0 : _sel.obj(), _1 : (null : Error) };
                        };
                    };
                    {
                        var __tmp__ = (_info.uses != null && _info.uses.exists(_expr.sel) ? { value : _info.uses[_expr.sel], ok : true } : { value : (null : stdgo.go.types.Types.Object), ok : false }), _obj:stdgo.go.types.Types.Object = __tmp__.value, _ok:Bool = __tmp__.ok;
                        if (_ok) {
                            return { _0 : _obj, _1 : (null : Error) };
                        };
                    };
                };
            };
            return { _0 : (null : stdgo.go.types.Types.Object), _1 : stdgo.fmt.Fmt.errorf(("no object for %s" : GoString), Go.toInterface(_str)) };
        };
        for (__0 => _group in _f.comments) {
            for (__1 => _comment in _group.list) {
                var _s:GoString = _comment.text;
                if (((_s.length >= (4 : GoInt)) && stdgo.strings.Strings.hasPrefix(_s, ("/*" : GoString))) && stdgo.strings.Strings.hasSuffix(_s, ("*/" : GoString))) {
                    var _pos:stdgo.go.token.Token.Pos = _comment.pos();
                    var __tmp__ = _split((_s.__slice__((2 : GoInt), (_s.length) - (2 : GoInt)) : GoString), ("=>" : GoString)), _expr:GoString = __tmp__._0, _wantObj:GoString = __tmp__._1;
                    var __tmp__ = _checkExpr(_pos, _expr), _obj:stdgo.go.types.Types.Object = __tmp__._0, _err:Error = __tmp__._1;
                    if (_err != null) {
                        _t.errorf(("%s: %s" : GoString), Go.toInterface(Go.asInterface(_fset.position(_pos))), Go.toInterface(_err));
                        continue;
                    };
                    if ((_obj.string() : GoString) != (_wantObj)) {
                        _t.errorf(("%s: checkExpr(%s) = %s, want %v" : GoString), Go.toInterface(Go.asInterface(_fset.position(_pos))), Go.toInterface(_expr), Go.toInterface(_obj), Go.toInterface(_wantObj));
                    };
                };
            };
        };
    }
function testExprString(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _testExprs) {
            var __tmp__ = stdgo.go.parser.Parser.parseExpr(_test._src), _x:stdgo.go.ast.Ast.Expr = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("%s: %s" : GoString), Go.toInterface(_test._src), Go.toInterface(_err));
                continue;
            };
            {
                var _got:GoString = exprString(_x);
                if (_got != (_test._str)) {
                    _t.errorf(("%s: got %s, want %s" : GoString), Go.toInterface(_test._src), Go.toInterface(_got), Go.toInterface(_test._str));
                };
            };
        };
    }
function testHilbert(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _src = _program(h.value, _out.value);
        if (_out.value != (Go.str())) {
            stdgo.os.Os.writeFile(_out.value, _src, (438u32 : stdgo.io.fs.Fs.FileMode));
            return;
        };
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("hilbert.go" : GoString), Go.toInterface(_src), (0u32 : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        defPredeclaredTestFuncs();
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.go.importer.Importer.default_() } : Config);
        {
            var __tmp__ = _conf.check(_f.name.name, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), null);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
    }
private function _program(_n:GoInt, _out:GoString):Slice<GoByte> {
        var _g:T_gen = ({} : stdgo.go.types_test.Types_test.T_gen);
        _g._p(("// Code generated by: go test -run=Hilbert -H=%d -out=%q. DO NOT EDIT.\n\n// +build ignore\n\n// This program tests arbitrary precision constant arithmetic\n// by generating the constant elements of a Hilbert matrix H,\n// its inverse I, and the product P = H*I. The product should\n// be the identity matrix.\npackage main\n\nfunc main() {\n\tif !ok {\n\t\tprintProduct()\n\t\treturn\n\t}\n\tprintln(\"PASS\")\n}\n\n" : GoString), Go.toInterface(_n), Go.toInterface(_out));
        _g._hilbert(_n);
        _g._inverse(_n);
        _g._product(_n);
        _g._verify(_n);
        _g._printProduct(_n);
        _g._binomials(((2 : GoInt) * _n) - (1 : GoInt));
        _g._factorials(((2 : GoInt) * _n) - (1 : GoInt));
        return _g.bytes();
    }
function testInstantiateEquality(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _emptySignature = newSignatureType(null, (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>), (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>), null, null, false);
        var _tests = (new Slice<T__struct_27>(
11,
11,
({ _src : ("package basictype; type T[P any] int" : GoString), _name1 : ("T" : GoString), _targs1 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _name2 : ("T" : GoString), _targs2 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _wantEqual : true } : T__struct_27),
({ _src : ("package differenttypeargs; type T[P any] int" : GoString), _name1 : ("T" : GoString), _targs1 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _name2 : ("T" : GoString), _targs2 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _wantEqual : false } : T__struct_27),
({ _src : ("package typeslice; type T[P any] int" : GoString), _name1 : ("T" : GoString), _targs1 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(newSlice(Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])))) : Slice<stdgo.go.types.Types.Type>), _name2 : ("T" : GoString), _targs2 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(newSlice(Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])))) : Slice<stdgo.go.types.Types.Type>), _wantEqual : true } : T__struct_27),
({ _src : ("package equivalentinterfaces; type T[P any] int" : GoString), _name1 : ("T" : GoString), _targs1 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(newInterfaceType((new Slice<Ref<stdgo.go.types.Types.Func>>(1, 1, newFunc((0 : stdgo.go.token.Token.Pos), null, ("M" : GoString), _emptySignature)) : Slice<Ref<stdgo.go.types.Types.Func>>), (null : Slice<stdgo.go.types.Types.Type>)))) : Slice<stdgo.go.types.Types.Type>), _name2 : ("T" : GoString), _targs2 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(newInterfaceType((null : Slice<Ref<stdgo.go.types.Types.Func>>), (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(newInterfaceType((new Slice<Ref<stdgo.go.types.Types.Func>>(1, 1, newFunc((0 : stdgo.go.token.Token.Pos), null, ("M" : GoString), _emptySignature)) : Slice<Ref<stdgo.go.types.Types.Func>>), (null : Slice<stdgo.go.types.Types.Type>)))) : Slice<stdgo.go.types.Types.Type>)))) : Slice<stdgo.go.types.Types.Type>), _wantEqual : true } : T__struct_27),
({ _src : ("package equivalenttypesets; type T[P any] int" : GoString), _name1 : ("T" : GoString), _targs1 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(newInterfaceType((null : Slice<Ref<stdgo.go.types.Types.Func>>), (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(newUnion((new Slice<Ref<stdgo.go.types.Types.Term>>(2, 2, newTerm(false, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])), newTerm(false, Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)]))) : Slice<Ref<stdgo.go.types.Types.Term>>)))) : Slice<stdgo.go.types.Types.Type>)))) : Slice<stdgo.go.types.Types.Type>), _name2 : ("T" : GoString), _targs2 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(newInterfaceType((null : Slice<Ref<stdgo.go.types.Types.Func>>), (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(newUnion((new Slice<Ref<stdgo.go.types.Types.Term>>(2, 2, newTerm(false, Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)])), newTerm(false, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]))) : Slice<Ref<stdgo.go.types.Types.Term>>)))) : Slice<stdgo.go.types.Types.Type>)))) : Slice<stdgo.go.types.Types.Type>), _wantEqual : true } : T__struct_27),
({ _src : ("package basicfunc; func F[P any]() {}" : GoString), _name1 : ("F" : GoString), _targs1 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _name2 : ("F" : GoString), _targs2 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _wantEqual : true } : T__struct_27),
({ _src : ("package funcslice; func F[P any]() {}" : GoString), _name1 : ("F" : GoString), _targs1 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(newSlice(Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])))) : Slice<stdgo.go.types.Types.Type>), _name2 : ("F" : GoString), _targs2 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(newSlice(Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])))) : Slice<stdgo.go.types.Types.Type>), _wantEqual : true } : T__struct_27),
({ _src : ("package funcwithparams; func F[P any](x string) float64 { return 0 }" : GoString), _name1 : ("F" : GoString), _targs1 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _name2 : ("F" : GoString), _targs2 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _wantEqual : true } : T__struct_27),
({ _src : ("package differentfuncargs; func F[P any](x string) float64 { return 0 }" : GoString), _name1 : ("F" : GoString), _targs1 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _name2 : ("F" : GoString), _targs2 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _wantEqual : false } : T__struct_27),
({ _src : ("package funcequality; func F1[P any](x int) {}; func F2[Q any](x int) {}" : GoString), _name1 : ("F1" : GoString), _targs1 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _name2 : ("F2" : GoString), _targs2 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _wantEqual : false } : T__struct_27),
({ _src : ("package funcsymmetry; func F1[P any](x P) {}; func F2[Q any](x Q) {}" : GoString), _name1 : ("F1" : GoString), _targs1 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _name2 : ("F2" : GoString), _targs2 : (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), _wantEqual : false } : T__struct_27)) : Slice<T__struct_27>);
        for (__0 => _test in _tests) {
            var _pkg = _mustTypecheck(("." : GoString), _test._src, null);
            _t.run(_pkg.name(), function(_t:Ref<stdgo.testing.Testing.T>):Void {
                var _ctxt = newContext();
                var t1:stdgo.go.types.Types.Type = _pkg.scope().lookup(_test._name1).type();
                var __tmp__ = instantiate(_ctxt, t1, _test._targs1, false), _res1:stdgo.go.types.Types.Type = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
                var t2:stdgo.go.types.Types.Type = _pkg.scope().lookup(_test._name2).type();
                var __tmp__ = instantiate(_ctxt, t2, _test._targs2, false), _res2:stdgo.go.types.Types.Type = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
                {
                    var _gotEqual:Bool = Go.toInterface(_res1) == (Go.toInterface(_res2));
                    if (_gotEqual != (_test._wantEqual)) {
                        _t.errorf(("%s == %s: %t, want %t" : GoString), Go.toInterface(_res1), Go.toInterface(_res2), Go.toInterface(_gotEqual), Go.toInterface(_test._wantEqual));
                    };
                };
            });
        };
    }
function testInstantiateNonEquality(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _pkg1 = _mustTypecheck(("." : GoString), ("package p; type T[P any] int" : GoString), null);
        var _pkg2 = _mustTypecheck(("." : GoString), ("package p; type T[P any] int" : GoString), null);
        var t1 = (Go.typeAssert((Go.toInterface(_pkg1.scope().lookup(("T" : GoString)).type()) : Ref<Named>)) : Ref<Named>);
        var t2 = (Go.typeAssert((Go.toInterface(_pkg2.scope().lookup(("T" : GoString)).type()) : Ref<Named>)) : Ref<Named>);
        var _ctxt = newContext();
        var __tmp__ = instantiate(_ctxt, Go.asInterface(t1), (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), false), _res1:stdgo.go.types.Types.Type = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = instantiate(_ctxt, Go.asInterface(t2), (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>), false), _res2:stdgo.go.types.Types.Type = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if (Go.toInterface(_res1) == (Go.toInterface(_res2))) {
            _t.errorf(("instance from pkg1 (%s) is pointer-equivalent to instance from pkg2 (%s)" : GoString), Go.toInterface(_res1), Go.toInterface(_res2));
        };
        if (identical(_res1, _res2)) {
            _t.errorf(("instance from pkg1 (%s) is identical to instance from pkg2 (%s)" : GoString), Go.toInterface(_res1), Go.toInterface(_res2));
        };
    }
function testMethodInstantiation(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _tests = (new Slice<T__struct_28>(7, 7, ({ _decl : ("func (r T[P]) m() P" : GoString), _want : ("func (T[int]).m() int" : GoString) } : T__struct_28), ({ _decl : ("func (r T[P]) m(P)" : GoString), _want : ("func (T[int]).m(int)" : GoString) } : T__struct_28), ({ _decl : ("func (r *T[P]) m(P)" : GoString), _want : ("func (*T[int]).m(int)" : GoString) } : T__struct_28), ({ _decl : ("func (r T[P]) m() T[P]" : GoString), _want : ("func (T[int]).m() T[int]" : GoString) } : T__struct_28), ({ _decl : ("func (r T[P]) m(T[P])" : GoString), _want : ("func (T[int]).m(T[int])" : GoString) } : T__struct_28), ({ _decl : ("func (r T[P]) m(T[P], P, string)" : GoString), _want : ("func (T[int]).m(T[int], int, string)" : GoString) } : T__struct_28), ({ _decl : ("func (r T[P]) m(T[P], T[string], T[int])" : GoString), _want : ("func (T[int]).m(T[int], T[string], T[int])" : GoString) } : T__struct_28)) : Slice<T__struct_28>);
        for (__0 => _test in _tests) {
            var _src:GoString = ("package p\n\ntype T[P any] struct{}\n\nvar X T[int]\n\n" : GoString) + _test._decl;
            var _pkg = _mustTypecheck(("." : GoString), _src, null);
            var _typ = newPointer(_pkg.scope().lookup(("X" : GoString)).type());
            var __tmp__ = lookupFieldOrMethod(Go.asInterface(_typ), false, _pkg, ("m" : GoString)), _obj:stdgo.go.types.Types.Object = __tmp__._0, __1:Slice<GoInt> = __tmp__._1, __2:Bool = __tmp__._2;
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_obj) : Ref<Func>)) : Ref<Func>), ok : true };
            } catch(_) {
                { value : (null : Ref<stdgo.go.types.Types.Func>), ok : false };
            }, _m = __tmp__.value, __3 = __tmp__.ok;
            if (_m == null || (_m : Dynamic).__nil__) {
                _t.fatalf(("LookupFieldOrMethod(%s, \"m\") = %v, want func m" : GoString), Go.toInterface(Go.asInterface(_typ)), Go.toInterface(_obj));
            };
            {
                var _got:GoString = objectString(Go.asInterface(_m), relativeTo(_pkg));
                if (_got != (_test._want)) {
                    _t.errorf(("instantiated %q, want %q" : GoString), Go.toInterface(_got), Go.toInterface(_test._want));
                };
            };
        };
    }
function testImmutableSignatures(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _pkg = _mustTypecheck(("." : GoString), ("package p\n\ntype T[P any] struct{}\n\nfunc (T[P]) m() {}\n\nvar _ T[int]\n" : GoString), null);
        var _typ = (Go.typeAssert((Go.toInterface(_pkg.scope().lookup(("T" : GoString)).type()) : Ref<Named>)) : Ref<Named>);
        var __tmp__ = lookupFieldOrMethod(Go.asInterface(_typ), false, _pkg, ("m" : GoString)), _obj:stdgo.go.types.Types.Object = __tmp__._0, __0:Slice<GoInt> = __tmp__._1, __1:Bool = __tmp__._2;
        if (_obj == null) {
            _t.fatalf(("LookupFieldOrMethod(%s, \"m\") = %v, want func m" : GoString), Go.toInterface(Go.asInterface(_typ)), Go.toInterface(_obj));
        };
        var _want:GoString = ("func (T[P]).m()" : GoString);
        {
            var _got:GoString = _stripAnnotations(objectString(_obj, relativeTo(_pkg)));
            if (_got != (_want)) {
                _t.errorf(("instantiated %q, want %q" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
/**
    // Copied from errors.go.
**/
private function _stripAnnotations(_s:GoString):GoString {
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        for (__0 => _r in _s) {
            if ((_r < (8320 : GoInt32)) || ((8330 : GoInt32) <= _r)) {
                _buf.writeRune(_r);
            };
        };
        if (_buf.len() < (_s.length)) {
            return (_buf.string() : GoString);
        };
        return _s;
    }
function testIssue5770(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _f = _mustParse(_fset, Go.str(), ("package p; type S struct{T}" : GoString));
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.go.importer.Importer.default_() } : Config);
        var __tmp__ = _conf.check(_f.name.name, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), null), __0:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
        {};
        if ((_err == null) || !stdgo.strings.Strings.contains(_err.error(), ("undefined: T" : GoString))) {
            _t.errorf(("got: %v; want: %s" : GoString), Go.toInterface(_err), Go.toInterface(("undefined: T" : GoString)));
        };
    }
function testIssue5849(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _src:GoString = ("\npackage p\nvar (\n\ts uint\n\t_ = uint8(8)\n\t_ = uint16(16) << s\n\t_ = uint32(32 << s)\n\t_ = uint64(64 << s + s)\n\t_ = (interface{})(\"foo\")\n\t_ = (interface{})(nil)\n)" : GoString);
        var _types = ({
            final x = new GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
            @:mergeBlock {};
            cast x;
        } : GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>);
        _mustTypecheck(("p" : GoString), _src, (Go.setRef(({ types : _types } : Info)) : Ref<stdgo.go.types.Types.Info>));
        for (_x => _tv in _types) {
            var _want:Type = (null : stdgo.go.types.Types.Type);
            {
                final __type__ = _x;
                if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.BasicLit>))) {
                    var _x:Ref<stdgo.go.ast.Ast.BasicLit> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BasicLit>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.BasicLit>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BasicLit>) : __type__.__underlying__().value;
                    {
                        final __value__ = _x.value;
                        if (__value__ == (("8" : GoString))) {
                            _want = Go.asInterface(typ[((8 : stdgo.go.types.Types.BasicKind) : GoInt)]);
                        } else if (__value__ == (("16" : GoString))) {
                            _want = Go.asInterface(typ[((9 : stdgo.go.types.Types.BasicKind) : GoInt)]);
                        } else if (__value__ == (("32" : GoString))) {
                            _want = Go.asInterface(typ[((10 : stdgo.go.types.Types.BasicKind) : GoInt)]);
                        } else if (__value__ == (("64" : GoString))) {
                            _want = Go.asInterface(typ[((7 : stdgo.go.types.Types.BasicKind) : GoInt)]);
                        } else if (__value__ == (("\"foo\"" : GoString))) {
                            _want = Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)]);
                        };
                    };
                } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.Ident>))) {
                    var _x:Ref<stdgo.go.ast.Ast.Ident> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                    if (_x.name == (("nil" : GoString))) {
                        _want = Go.asInterface(typ[((25 : stdgo.go.types.Types.BasicKind) : GoInt)]);
                    };
                };
            };
            if ((_want != null) && !identical(_tv.type, _want)) {
                _t.errorf(("got %s; want %s" : GoString), Go.toInterface(_tv.type), Go.toInterface(_want));
            };
        };
    }
function testIssue6413(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _src:GoString = ("\npackage p\nfunc f() int {\n\tdefer f()\n\tgo f()\n\treturn 0\n}\n" : GoString);
        var _types = ({
            final x = new GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
            @:mergeBlock {};
            cast x;
        } : GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>);
        _mustTypecheck(("p" : GoString), _src, (Go.setRef(({ types : _types } : Info)) : Ref<stdgo.go.types.Types.Info>));
        var _want = typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)];
        var _n:GoInt = (0 : GoInt);
        for (_x => _tv in _types) {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_x) : Ref<stdgo.go.ast.Ast.CallExpr>)) : Ref<stdgo.go.ast.Ast.CallExpr>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.ast.Ast.CallExpr>), ok : false };
                }, __0 = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    if (Go.toInterface(_tv.type) != (Go.toInterface(Go.asInterface(_want)))) {
                        _t.errorf(("%s: got %s; want %s" : GoString), Go.toInterface(Go.asInterface(_fset.position(_x.pos()))), Go.toInterface(_tv.type), Go.toInterface(Go.asInterface(_want)));
                    };
                    _n++;
                };
            };
        };
        if (_n != ((2 : GoInt))) {
            _t.errorf(("got %d CallExprs; want 2" : GoString), Go.toInterface(_n));
        };
    }
function testIssue7245(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _src:GoString = ("\npackage p\nfunc (T) m() (res bool) { return }\ntype T struct{} // receiver type after method declaration\n" : GoString);
        var _f = _mustParse(_fset, Go.str(), _src);
        var _conf:Config = ({} : stdgo.go.types.Types.Config);
        var _defs = ({
            final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>);
        var __tmp__ = _conf.check(_f.name.name, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), (Go.setRef(({ defs : _defs } : Info)) : Ref<stdgo.go.types.Types.Info>)), __0:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _m = (Go.typeAssert((Go.toInterface(_f.decls[(0 : GoInt)]) : Ref<stdgo.go.ast.Ast.FuncDecl>)) : Ref<stdgo.go.ast.Ast.FuncDecl>);
        var _res1 = (Go.typeAssert((Go.toInterface((Go.typeAssert((Go.toInterface(_defs[_m.name]) : Ref<Func>)) : Ref<Func>).type()) : Ref<Signature>)) : Ref<Signature>).results().at((0 : GoInt));
        var _res2 = (Go.typeAssert((Go.toInterface(_defs[_m.type.results.list[(0 : GoInt)].names[(0 : GoInt)]]) : Ref<Var>)) : Ref<Var>);
        if (_res1 != (_res2)) {
            _t.errorf(("got %s (%p) != %s (%p)" : GoString), Go.toInterface(Go.asInterface(_res1)), Go.toInterface(Go.asInterface(_res2)), Go.toInterface(Go.asInterface(_res1)), Go.toInterface(Go.asInterface(_res2)));
        };
    }
/**
    // This tests that uses of existing vars on the LHS of an assignment
    // are Uses, not Defs; and also that the (illegal) use of a non-var on
    // the LHS of an assignment is a Use nonetheless.
**/
function testIssue7827(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _f = _mustParse(_fset, Go.str(), ("\npackage p\nfunc _() {\n\tconst w = 1        // defs w\n        x, y := 2, 3       // defs x, y\n        w, x, z := 4, 5, 6 // uses w, x, defs z; error: cannot assign to w\n        _, _, _ = x, y, z  // uses x, y, z\n}\n" : GoString));
        {};
        var _conf:stdgo.go.types.Types.Config = ({ error : function(_err:Error):Void {
            _t.log(Go.toInterface(_err));
        } } : Config);
        var _defs = ({
            final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>);
        var _uses = ({
            final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>);
        var __tmp__ = _conf.check(_f.name.name, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), (Go.setRef(({ defs : _defs, uses : _uses } : Info)) : Ref<stdgo.go.types.Types.Info>)), __0:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
        {
            var _s:GoString = stdgo.fmt.Fmt.sprint(Go.toInterface(_err));
            if (!stdgo.strings.Strings.hasSuffix(_s, ("cannot assign to w" : GoString))) {
                _t.errorf(("Check: unexpected error: %s" : GoString), Go.toInterface(_s));
            };
        };
        var _facts:Slice<GoString> = (null : Slice<GoString>);
        for (_id => _obj in _defs) {
            if (_obj != null) {
                var _fact:GoString = stdgo.fmt.Fmt.sprintf(("L%d defs %s" : GoString), Go.toInterface(_fset.position(_id.pos()).line), Go.toInterface(_obj));
                _facts = (_facts.__append__(_fact));
            };
        };
        for (_id => _obj in _uses) {
            var _fact:GoString = stdgo.fmt.Fmt.sprintf(("L%d uses %s" : GoString), Go.toInterface(_fset.position(_id.pos()).line), Go.toInterface(_obj));
            _facts = (_facts.__append__(_fact));
        };
        stdgo.sort.Sort.strings(_facts);
        var _got:GoString = stdgo.strings.Strings.join(_facts, ("\n" : GoString));
        if (_got != (("L3 defs func p._()\nL4 defs const w untyped int\nL5 defs var x int\nL5 defs var y int\nL6 defs var z int\nL6 uses const w untyped int\nL6 uses var x int\nL7 uses var x int\nL7 uses var y int\nL7 uses var z int" : GoString))) {
            _t.errorf(("Unexpected defs/uses\ngot:\n%s\nwant:\n%s" : GoString), Go.toInterface(_got), Go.toInterface(("L3 defs func p._()\nL4 defs const w untyped int\nL5 defs var x int\nL5 defs var y int\nL6 defs var z int\nL6 uses const w untyped int\nL6 uses var x int\nL7 uses var x int\nL7 uses var y int\nL7 uses var z int" : GoString)));
        };
    }
/**
    // This tests that the package associated with the types.Object.Pkg method
    // is the type's package independent of the order in which the imports are
    // listed in the sources src1, src2 below.
    // The actual issue is in go/internal/gcimporter which has a corresponding
    // test; we leave this test here to verify correct behavior at the go/types
    // level.
**/
function testIssue13898(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        {};
        {};
        {};
        var _f:(GoString, GoString) -> Void = function(_test:GoString, _src:GoString):Void {
            var _f = _mustParse(_fset, Go.str(), _src);
            var _cfg:stdgo.go.types.Types.Config = ({ importer : stdgo.go.importer.Importer.default_() } : Config);
            var _info:stdgo.go.types.Types.Info = ({ uses : ({
                final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                @:mergeBlock {};
                cast x;
            } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : Info);
            var __tmp__ = _cfg.check(("main" : GoString), _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), (Go.setRef(_info) : Ref<stdgo.go.types.Types.Info>)), __0:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var _pkg:Ref<Package> = (null : Ref<stdgo.go.types.Types.Package>);
            var _count:GoInt = (0 : GoInt);
            for (_id => _obj in _info.uses) {
                if (_id.name == (("Pkg" : GoString))) {
                    _pkg = _obj.pkg();
                    _count++;
                };
            };
            if (_count != ((1 : GoInt))) {
                _t.fatalf(("%s: got %d entries named Pkg; want 1" : GoString), Go.toInterface(_test), Go.toInterface(_count));
            };
            if (_pkg.name() != (("types" : GoString))) {
                _t.fatalf(("%s: got %v; want package types" : GoString), Go.toInterface(_test), Go.toInterface(Go.asInterface(_pkg)));
            };
        };
        _f(("src0" : GoString), ("\npackage main\n\nimport \"go/types\"\n\nfunc main() {\n\tvar info types.Info\n\tfor _, obj := range info.Uses {\n\t\t_ = obj.Pkg()\n\t}\n}\n" : GoString));
        _f(("src1" : GoString), ("\npackage main\n\nimport (\n\t\"go/types\"\n\t_ \"go/importer\"\n)\n\nfunc main() {\n\tvar info types.Info\n\tfor _, obj := range info.Uses {\n\t\t_ = obj.Pkg()\n\t}\n}\n" : GoString));
        _f(("src2" : GoString), ("\npackage main\n\nimport (\n\t_ \"go/importer\"\n\t\"go/types\"\n)\n\nfunc main() {\n\tvar info types.Info\n\tfor _, obj := range info.Uses {\n\t\t_ = obj.Pkg()\n\t}\n}\n" : GoString));
    }
function testIssue22525(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _f = _mustParse(_fset, Go.str(), ("package p; func f() { var a, b, c, d, e int }" : GoString));
        var _got:GoString = ("\n" : GoString);
        var _conf:stdgo.go.types.Types.Config = ({ error : function(_err:Error):Void {
            _got = _got + (_err.error() + ("\n" : GoString));
        } } : Config);
        _conf.check(_f.name.name, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), null);
        var _want:GoString = ("\n1:27: a declared and not used\n1:30: b declared and not used\n1:33: c declared and not used\n1:36: d declared and not used\n1:39: e declared and not used\n" : GoString);
        if (_got != (_want)) {
            _t.errorf(("got: %swant: %s" : GoString), Go.toInterface(_got), Go.toInterface(_want));
        };
    }
function testIssue25627(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        for (__0 => _src in (new Slice<GoString>(7, 7, ("struct { x Missing }" : GoString), ("struct { Missing }" : GoString), ("struct { *Missing }" : GoString), ("struct { unsafe.Pointer }" : GoString), ("struct { P }" : GoString), ("struct { *I }" : GoString), ("struct { a int; b Missing; *Missing }" : GoString)) : Slice<GoString>)) {
            var _f = _mustParse(_fset, Go.str(), ("package p; import \"unsafe\"; type P *struct{}; type I interface{}; type T " : GoString) + _src);
            var _cfg:stdgo.go.types.Types.Config = ({ error : function(_err:Error):Void {}, importer : stdgo.go.importer.Importer.default_() } : Config);
            var _info = (Go.setRef(({ types : ({
                final x = new GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
                @:mergeBlock {};
                cast x;
            } : GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>) } : Info)) : Ref<stdgo.go.types.Types.Info>);
            var __tmp__ = _cfg.check(_f.name.name, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), _info), __1:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_err) : T_error)) : T_error), ok : true };
                    } catch(_) {
                        { value : ({} : stdgo.go.types.Types.T_error), ok : false };
                    }, __2 = __tmp__.value, _ok = __tmp__.ok;
                    if (!_ok) {
                        _t.fatal(Go.toInterface(_err));
                    };
                };
            };
            stdgo.go.ast.Ast.inspect(Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_n) : Ref<stdgo.go.ast.Ast.TypeSpec>)) : Ref<stdgo.go.ast.Ast.TypeSpec>), ok : true };
                    } catch(_) {
                        { value : (null : Ref<stdgo.go.ast.Ast.TypeSpec>), ok : false };
                    }, _spec = __tmp__.value, __0 = __tmp__.ok;
                    if (_spec != null && ((_spec : Dynamic).__nil__ == null || !(_spec : Dynamic).__nil__)) {
                        {
                            var __tmp__ = (_info.types != null && _info.types.exists(_spec.type) ? { value : _info.types[_spec.type], ok : true } : { value : ({} : stdgo.go.types.Types.TypeAndValue), ok : false }), _tv:stdgo.go.types.Types.TypeAndValue = __tmp__.value, _ok:Bool = __tmp__.ok;
                            if (_ok && (_spec.name.name == ("T" : GoString))) {
                                var _want:GoInt = stdgo.strings.Strings.count(_src, (";" : GoString)) + (1 : GoInt);
                                {
                                    var _got:GoInt = (Go.typeAssert((Go.toInterface(_tv.type) : Ref<Struct>)) : Ref<Struct>).numFields();
                                    if (_got != (_want)) {
                                        _t.errorf(("%s: got %d fields; want %d" : GoString), Go.toInterface(_src), Go.toInterface(_got), Go.toInterface(_want));
                                    };
                                };
                            };
                        };
                    };
                };
                return true;
            });
        };
    }
function testIssue28005(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _sources = (new GoArray<GoString>(("package p; type A interface{ A() }" : GoString), ("package p; type B interface{ B() }" : GoString), ("package p; type X interface{ A; B }" : GoString)) : GoArray<GoString>);
        var _orig:GoArray<Ref<stdgo.go.ast.Ast.File>> = new GoArray<Ref<stdgo.go.ast.Ast.File>>(...[for (i in 0 ... 3) (null : Ref<stdgo.go.ast.Ast.File>)]);
        for (_i => _src in _sources) {
            _orig[(_i : GoInt)] = _mustParse(_fset, Go.str(), _src);
        };
        for (__0 => _perm in (new Slice<GoArray<GoInt>>(6, 6, (new GoArray<GoInt>((0 : GoInt), (1 : GoInt), (2 : GoInt)) : GoArray<GoInt>), (new GoArray<GoInt>((0 : GoInt), (2 : GoInt), (1 : GoInt)) : GoArray<GoInt>), (new GoArray<GoInt>((1 : GoInt), (0 : GoInt), (2 : GoInt)) : GoArray<GoInt>), (new GoArray<GoInt>((1 : GoInt), (2 : GoInt), (0 : GoInt)) : GoArray<GoInt>), (new GoArray<GoInt>((2 : GoInt), (0 : GoInt), (1 : GoInt)) : GoArray<GoInt>), (new GoArray<GoInt>((2 : GoInt), (1 : GoInt), (0 : GoInt)) : GoArray<GoInt>)) : Slice<GoArray<GoInt>>)) {
            var _files = new Slice<Ref<stdgo.go.ast.Ast.File>>((_sources.length : GoInt).toBasic(), 0);
            for (_i in 0 ... _perm.length.toBasic()) {
                _files[(_i : GoInt)] = _orig[(_perm[(_i : GoInt)] : GoInt)];
            };
            var _conf:Config = ({} : stdgo.go.types.Types.Config);
            var _info = (Go.setRef(({ defs : ({
                final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                @:mergeBlock {};
                cast x;
            } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : Info)) : Ref<stdgo.go.types.Types.Info>);
            var __tmp__ = _conf.check(Go.str(), _fset, _files, _info), __1:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var _obj:Object = (null : stdgo.go.types.Types.Object);
            for (_name => _def in _info.defs) {
                if (_name.name == (("X" : GoString))) {
                    _obj = _def;
                    break;
                };
            };
            if (_obj == null) {
                _t.fatal(Go.toInterface(("object X not found" : GoString)));
            };
            var _iface = (Go.typeAssert((Go.toInterface(_obj.type().underlying()) : Ref<Interface>)) : Ref<Interface>);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _iface.numMethods(), _i++, {
                    var _m = _iface.method(_i);
                    var _recvName:GoString = (Go.typeAssert((Go.toInterface((Go.typeAssert((Go.toInterface(_m.type()) : Ref<Signature>)) : Ref<Signature>).recv().type()) : Ref<Named>)) : Ref<Named>).obj().name();
                    if (_recvName != (_m.name())) {
                        _t.errorf(("perm %v: got recv %s; want %s" : GoString), Go.toInterface(_perm), Go.toInterface(_recvName), Go.toInterface(_m.name()));
                    };
                });
            };
        };
    }
function testIssue28282(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _et:stdgo.go.types.Types.Type = universe.lookup(("error" : GoString)).type();
        var _it = newInterfaceType((null : Slice<Ref<stdgo.go.types.Types.Func>>), (new Slice<stdgo.go.types.Types.Type>(1, 1, _et) : Slice<stdgo.go.types.Types.Type>));
        _it.complete();
        var _want = (Go.typeAssert((Go.toInterface(_et.underlying()) : Ref<Interface>)) : Ref<Interface>).method((0 : GoInt));
        var _got = _it.method((0 : GoInt));
        if (_got != (_want)) {
            _t.fatalf(("%s.Method(0): got %q (%p); want %q (%p)" : GoString), Go.toInterface(Go.asInterface(_it)), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)), Go.toInterface(Go.asInterface(_want)));
        };
        var __tmp__ = lookupFieldOrMethod(_et, false, null, ("Error" : GoString)), _obj:stdgo.go.types.Types.Object = __tmp__._0, __0:Slice<GoInt> = __tmp__._1, __1:Bool = __tmp__._2;
        if (Go.toInterface(_obj) != (Go.toInterface(Go.asInterface(_want)))) {
            _t.fatalf(("%s.Lookup: got %q (%p); want %q (%p)" : GoString), Go.toInterface(_et), Go.toInterface(_obj), Go.toInterface(_obj), Go.toInterface(Go.asInterface(_want)), Go.toInterface(Go.asInterface(_want)));
        };
        {
            var __tmp__ = lookupFieldOrMethod(Go.asInterface(_it), false, null, ("Error" : GoString));
            _obj = __tmp__._0;
        };
        if (Go.toInterface(_obj) != (Go.toInterface(Go.asInterface(_want)))) {
            _t.fatalf(("%s.Lookup: got %q (%p); want %q (%p)" : GoString), Go.toInterface(Go.asInterface(_it)), Go.toInterface(_obj), Go.toInterface(_obj), Go.toInterface(Go.asInterface(_want)), Go.toInterface(Go.asInterface(_want)));
        };
    }
function testIssue29029(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _f1 = _mustParse(_fset, Go.str(), ("package p; type A interface { M() }" : GoString));
        var _f2 = _mustParse(_fset, Go.str(), ("package p; var B interface { A }" : GoString));
        var _printInfo = function(_info:Ref<Info>):GoString {
            var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
            for (__0 => _obj in _info.defs) {
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_obj) : Ref<Func>)) : Ref<Func>), ok : true };
                    } catch(_) {
                        { value : (null : Ref<stdgo.go.types.Types.Func>), ok : false };
                    }, _fn = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        stdgo.fmt.Fmt.fprintln(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)), Go.toInterface(Go.asInterface(_fn)));
                    };
                };
            };
            return (_buf.string() : GoString);
        };
        var _conf:Config = ({} : stdgo.go.types.Types.Config);
        var _info = (Go.setRef(({ defs : ({
            final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : Info)) : Ref<stdgo.go.types.Types.Info>);
        var _check = newChecker((Go.setRef(_conf) : Ref<stdgo.go.types.Types.Config>), _fset, newPackage(Go.str(), ("p" : GoString)), _info);
        {
            var _err:Error = _check.files((new Slice<Ref<stdgo.go.ast.Ast.File>>(2, 2, _f1, _f2) : Slice<Ref<stdgo.go.ast.Ast.File>>));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var _want:GoString = _printInfo(_info);
        _info = (Go.setRef(({ defs : ({
            final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : Info)) : Ref<stdgo.go.types.Types.Info>);
        _check = newChecker((Go.setRef(_conf) : Ref<stdgo.go.types.Types.Config>), _fset, newPackage(Go.str(), ("p" : GoString)), _info);
        {
            var _err:Error = _check.files((new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f1) : Slice<Ref<stdgo.go.ast.Ast.File>>));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:Error = _check.files((new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f2) : Slice<Ref<stdgo.go.ast.Ast.File>>));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var _got:GoString = _printInfo(_info);
        if (_got != (_want)) {
            _t.errorf(("\ngot : %swant: %s" : GoString), Go.toInterface(_got), Go.toInterface(_want));
        };
    }
function testIssue34151(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        {};
        var _a = _mustTypecheck(("a" : GoString), ("package a; type I interface{ M() }; type T struct { F interface { I } }" : GoString), null);
        var _bast = _mustParse(_fset, Go.str(), ("package b; import \"a\"; type T struct { F interface { a.I } }; var _ = a.T(T{})" : GoString));
        var _conf:stdgo.go.types.Types.Config = ({ importer : Go.asInterface(({ _pkg : _a } : T_importHelper)) } : Config);
        var __tmp__ = _conf.check(_bast.name.name, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _bast) : Slice<Ref<stdgo.go.ast.Ast.File>>), null), _b:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("package %s failed to typecheck: %v" : GoString), Go.toInterface(_b.name()), Go.toInterface(_err));
        };
    }
/**
    // TestIssue34921 verifies that we don't update an imported type's underlying
    // type when resolving an underlying type. Specifically, when determining the
    // underlying type of b.T (which is the underlying type of a.T, which is int)
    // we must not set the underlying type of a.T again since that would lead to
    // a race condition if package b is imported elsewhere, in a package that is
    // concurrently type-checked.
**/
function testIssue34921(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r:AnyInterface = ({
                            final r = Go.recover_exception;
                            Go.recover_exception = null;
                            r;
                        });
                        if (_r != null) {
                            _t.error(_r);
                        };
                    };
                };
                a();
            });
            var _sources:Slice<GoString> = (new Slice<GoString>(2, 2, ("package a; type T int" : GoString), ("package b; import \"a\"; type T a.T" : GoString)) : Slice<GoString>);
            var _pkg:Ref<Package> = (null : Ref<stdgo.go.types.Types.Package>);
            for (__0 => _src in _sources) {
                var _f = _mustParse(_fset, Go.str(), _src);
                var _conf:stdgo.go.types.Types.Config = ({ importer : Go.asInterface(({ _pkg : _pkg } : T_importHelper)) } : Config);
                var __tmp__ = _conf.check(_f.name.name, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), null), _res:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("%q failed to typecheck: %v" : GoString), Go.toInterface(_src), Go.toInterface(_err));
                };
                _pkg = _res;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testIssue43088(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _n1 = newTypeName((0 : stdgo.go.token.Token.Pos), null, ("T1" : GoString), (null : stdgo.go.types.Types.Type));
        var t1 = newNamed(_n1, (null : stdgo.go.types.Types.Type), (null : Slice<Ref<stdgo.go.types.Types.Func>>));
        var _n2 = newTypeName((0 : stdgo.go.token.Token.Pos), null, ("T2" : GoString), (null : stdgo.go.types.Types.Type));
        var t2 = newNamed(_n2, (null : stdgo.go.types.Types.Type), (null : Slice<Ref<stdgo.go.types.Types.Func>>));
        var _s1 = newStruct((new Slice<Ref<stdgo.go.types.Types.Var>>(1, 1, newField((0 : stdgo.go.token.Token.Pos), null, ("_" : GoString), Go.asInterface(t2), false)) : Slice<Ref<stdgo.go.types.Types.Var>>), (null : Slice<GoString>));
        t1.setUnderlying(Go.asInterface(_s1));
        var _s2 = newStruct((new Slice<Ref<stdgo.go.types.Types.Var>>(1, 1, newField((0 : stdgo.go.token.Token.Pos), null, ("_" : GoString), Go.asInterface(t2), false)) : Slice<Ref<stdgo.go.types.Types.Var>>), (null : Slice<GoString>));
        var _s3 = newStruct((new Slice<Ref<stdgo.go.types.Types.Var>>(1, 1, newField((0 : stdgo.go.token.Token.Pos), null, ("_" : GoString), Go.asInterface(_s2), false)) : Slice<Ref<stdgo.go.types.Types.Var>>), (null : Slice<GoString>));
        t2.setUnderlying(Go.asInterface(_s3));
        comparable(Go.asInterface(t1));
        comparable(Go.asInterface(t2));
    }
function testIssue44515(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _typ:stdgo.go.types.Types.Type = unsafe.scope().lookup(("Pointer" : GoString)).type();
        var _got:GoString = typeString(_typ, null);
        var _want:GoString = ("unsafe.Pointer" : GoString);
        if (_got != (_want)) {
            _t.errorf(("got %q; want %q" : GoString), Go.toInterface(_got), Go.toInterface(_want));
        };
        var _qf = function(_pkg:Ref<Package>):GoString {
            if (_pkg == (unsafe)) {
                return ("foo" : GoString);
            };
            return Go.str();
        };
        _got = typeString(_typ, _qf);
        _want = ("foo.Pointer" : GoString);
        if (_got != (_want)) {
            _t.errorf(("got %q; want %q" : GoString), Go.toInterface(_got), Go.toInterface(_want));
        };
    }
function testIssue43124(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        {};
        var _a = _mustTypecheck(("a" : GoString), ("package a; import \"text/template\"; func F(template.Template) {}; func G(int) {}" : GoString), null);
        var _imp:stdgo.go.types_test.Types_test.T_importHelper = ({ _pkg : _a, _fallback : stdgo.go.importer.Importer.default_() } : T_importHelper);
        _testFiles(_t, (null : stdgo.go.types.Types.Sizes), (new Slice<GoString>(1, 1, ("b.go" : GoString)) : Slice<GoString>), (new Slice<Slice<GoUInt8>>(1, 1, (("\npackage b\n\nimport (\n\t\"a\"\n\t\"html/template\"\n)\n\nfunc _() {\n\t// Packages should be fully qualified when there is ambiguity within the\n\t// error string itself.\n\ta.F(template /* ERROR cannot use.*html/template.* as .*text/template */ .Template{})\n}\n" : GoString) : Slice<GoByte>)) : Slice<Slice<GoUInt8>>), false, Go.asInterface(_imp));
        _testFiles(_t, (null : stdgo.go.types.Types.Sizes), (new Slice<GoString>(1, 1, ("c.go" : GoString)) : Slice<GoString>), (new Slice<Slice<GoUInt8>>(1, 1, (("\npackage c\n\nimport (\n\t\"a\"\n\t\"fmt\"\n\t\"html/template\"\n)\n\n// Issue #46905: make sure template is not the first package qualified.\nvar _ fmt.Stringer = 1 // ERROR cannot use 1.*as fmt\\.Stringer\n\n// Packages should be fully qualified when there is ambiguity in reachable\n// packages. In this case both a (and for that matter html/template) import\n// text/template.\nfunc _() { a.G(template /* ERROR cannot use .*html/template.*Template */ .Template{}) }\n" : GoString) : Slice<GoByte>)) : Slice<Slice<GoUInt8>>), false, Go.asInterface(_imp));
        _testFiles(_t, (null : stdgo.go.types.Types.Sizes), (new Slice<GoString>(1, 1, ("t.go" : GoString)) : Slice<GoString>), (new Slice<Slice<GoUInt8>>(1, 1, (("\npackage template\n\nimport \"text/template\"\n\ntype T int\n\n// Verify that the current package name also causes disambiguation.\nvar _ T = template /* ERROR cannot use.*text/template.* as T value */.Template{}\n" : GoString) : Slice<GoByte>)) : Slice<Slice<GoUInt8>>), false, Go.asInterface(_imp));
    }
function testIssue50646(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _anyType:stdgo.go.types.Types.Type = universe.lookup(("any" : GoString)).type();
        var _comparableType:stdgo.go.types.Types.Type = universe.lookup(("comparable" : GoString)).type();
        if (!comparable(_anyType)) {
            _t.error(Go.toInterface(("any is not a comparable type" : GoString)));
        };
        if (!comparable(_comparableType)) {
            _t.error(Go.toInterface(("comparable is not a comparable type" : GoString)));
        };
        if (implements_(_anyType, (Go.typeAssert((Go.toInterface(_comparableType.underlying()) : Ref<Interface>)) : Ref<Interface>))) {
            _t.error(Go.toInterface(("any implements comparable" : GoString)));
        };
        if (!implements_(_comparableType, (Go.typeAssert((Go.toInterface(_anyType) : Ref<Interface>)) : Ref<Interface>))) {
            _t.error(Go.toInterface(("comparable does not implement any" : GoString)));
        };
        if (assignableTo(_anyType, _comparableType)) {
            _t.error(Go.toInterface(("any assignable to comparable" : GoString)));
        };
        if (!assignableTo(_comparableType, _anyType)) {
            _t.error(Go.toInterface(("comparable not assignable to any" : GoString)));
        };
    }
function testIssue55030(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _makeSig:stdgo.go.types.Types.Type -> Void = function(_typ:Type):Void {
            var _par = newVar((0 : stdgo.go.token.Token.Pos), null, Go.str(), _typ);
            var _params = newTuple(_par);
            newSignatureType(null, (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>), (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>), _params, null, true);
        };
        _makeSig(Go.asInterface(newSlice(Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]))));
        _makeSig(Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)]));
        {
            var p = newTypeName((0 : stdgo.go.token.Token.Pos), null, ("P" : GoString), (null : stdgo.go.types.Types.Type));
            _makeSig(Go.asInterface(newTypeParam(p, Go.asInterface(newInterfaceType((null : Slice<Ref<stdgo.go.types.Types.Func>>), (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)])) : Slice<stdgo.go.types.Types.Type>))))));
        };
        {
            var p = newTypeName((0 : stdgo.go.token.Token.Pos), null, ("P" : GoString), (null : stdgo.go.types.Types.Type));
            _makeSig(Go.asInterface(newTypeParam(p, Go.asInterface(newInterfaceType((null : Slice<Ref<stdgo.go.types.Types.Func>>), (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(newSlice(Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])))) : Slice<stdgo.go.types.Types.Type>))))));
        };
        {
            var _t1 = newTerm(true, Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)]));
            var _t2 = newTerm(false, Go.asInterface(newSlice(Go.asInterface(typ[((8 : stdgo.go.types.Types.BasicKind) : GoInt)]))));
            var _u = newUnion((new Slice<Ref<stdgo.go.types.Types.Term>>(2, 2, _t1, _t2) : Slice<Ref<stdgo.go.types.Types.Term>>));
            var p = newTypeName((0 : stdgo.go.token.Token.Pos), null, ("P" : GoString), (null : stdgo.go.types.Types.Type));
            _makeSig(Go.asInterface(newTypeParam(p, Go.asInterface(newInterfaceType((null : Slice<Ref<stdgo.go.types.Types.Func>>), (new Slice<stdgo.go.types.Types.Type>(1, 1, Go.asInterface(_u)) : Slice<stdgo.go.types.Types.Type>))))));
        };
    }
function testIssue51093(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests:Slice<T__struct_29> = (new Slice<T__struct_29>(
10,
10,
({ _typ : ("bool" : GoString), _val : ("false" : GoString) } : T__struct_29),
({ _typ : ("int" : GoString), _val : ("-1" : GoString) } : T__struct_29),
({ _typ : ("uint" : GoString), _val : ("1.0" : GoString) } : T__struct_29),
({ _typ : ("rune" : GoString), _val : ("\'a\'" : GoString) } : T__struct_29),
({ _typ : ("float64" : GoString), _val : ("3.5" : GoString) } : T__struct_29),
({ _typ : ("complex64" : GoString), _val : ("1.25" : GoString) } : T__struct_29),
({ _typ : ("string" : GoString), _val : ("\"foo\"" : GoString) } : T__struct_29),
({ _typ : ("~byte" : GoString), _val : ("1" : GoString) } : T__struct_29),
({ _typ : ("~int | ~float64 | complex128" : GoString), _val : ("1" : GoString) } : T__struct_29),
({ _typ : ("~uint64 | ~rune" : GoString), _val : ("\'X\'" : GoString) } : T__struct_29)) : Slice<T__struct_29>);
        for (__0 => _test in _tests) {
            var _src:GoString = stdgo.fmt.Fmt.sprintf(("package p; func _[P %s]() { _ = P(%s) }" : GoString), Go.toInterface(_test._typ), Go.toInterface(_test._val));
            var _types = ({
                final x = new GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
                @:mergeBlock {};
                cast x;
            } : GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>);
            _mustTypecheck(("p" : GoString), _src, (Go.setRef(({ types : _types } : Info)) : Ref<stdgo.go.types.Types.Info>));
            var _n:GoInt = (0 : GoInt);
            for (_x => _tv in _types) {
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_x) : Ref<stdgo.go.ast.Ast.CallExpr>)) : Ref<stdgo.go.ast.Ast.CallExpr>), ok : true };
                    } catch(_) {
                        { value : (null : Ref<stdgo.go.ast.Ast.CallExpr>), ok : false };
                    }, _x = __tmp__.value, __1 = __tmp__.ok;
                    if (_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__)) {
                        _n++;
                        var __tmp__ = try {
                            { value : (Go.typeAssert((Go.toInterface(_tv.type) : Ref<TypeParam>)) : Ref<TypeParam>), ok : true };
                        } catch(_) {
                            { value : (null : Ref<stdgo.go.types.Types.TypeParam>), ok : false };
                        }, _tpar = __tmp__.value, __2 = __tmp__.ok;
                        if (_tpar == null || (_tpar : Dynamic).__nil__) {
                            _t.fatalf(("%s: got type %s, want type parameter" : GoString), Go.toInterface(exprString(Go.asInterface(_x))), Go.toInterface(_tv.type));
                        };
                        {
                            var _name:GoString = _tpar.obj().name();
                            if (_name != (("P" : GoString))) {
                                _t.fatalf(("%s: got type parameter name %s, want P" : GoString), Go.toInterface(exprString(Go.asInterface(_x))), Go.toInterface(_name));
                            };
                        };
                        if (_tv.value != null) {
                            _t.errorf(("%s: got constant value %s (%s), want no constant" : GoString), Go.toInterface(exprString(Go.asInterface(_x))), Go.toInterface(_tv.value), Go.toInterface((_tv.value.string() : GoString)));
                        };
                    };
                };
            };
            if (_n != ((1 : GoInt))) {
                _t.fatalf(("%s: got %d CallExpr nodes; want 1" : GoString), Go.toInterface(_src), Go.toInterface((1 : GoInt)));
            };
        };
    }
function testIssue54258(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new Slice<T__struct_30>(6, 6, ({ main : ("package main\nimport \"b\"\ntype I0 interface {\n\tM0(w struct{ f string })\n}\nvar _ I0 = b.S{}\n" : GoString), _b : ("package b\ntype S struct{}\nfunc (S) M0(struct{ f string }) {}\n" : GoString), _want : ("6:12: cannot use b[.]S{} [(]value of type b[.]S[)] as I0 value in variable declaration: b[.]S does not implement I0 [(]wrong type for method M0[)]\n.*have M0[(]struct{f string /[*] package b [*]/ }[)]\n.*want M0[(]struct{f string /[*] package main [*]/ }[)]" : GoString) } : T__struct_30), ({ main : ("package main\nimport \"b\"\ntype I1 interface {\n\tM1(struct{ string })\n}\nvar _ I1 = b.S{}\n" : GoString), _b : ("package b\ntype S struct{}\nfunc (S) M1(struct{ string }) {}\n" : GoString), _want : ("6:12: cannot use b[.]S{} [(]value of type b[.]S[)] as I1 value in variable declaration: b[.]S does not implement I1 [(]wrong type for method M1[)]\n.*have M1[(]struct{string /[*] package b [*]/ }[)]\n.*want M1[(]struct{string /[*] package main [*]/ }[)]" : GoString) } : T__struct_30), ({ main : ("package main\nimport \"b\"\ntype I2 interface {\n\tM2(y struct{ f struct{ f string } })\n}\nvar _ I2 = b.S{}\n" : GoString), _b : ("package b\ntype S struct{}\nfunc (S) M2(struct{ f struct{ f string } }) {}\n" : GoString), _want : ("6:12: cannot use b[.]S{} [(]value of type b[.]S[)] as I2 value in variable declaration: b[.]S does not implement I2 [(]wrong type for method M2[)]\n.*have M2[(]struct{f struct{f string} /[*] package b [*]/ }[)]\n.*want M2[(]struct{f struct{f string} /[*] package main [*]/ }[)]" : GoString) } : T__struct_30), ({ main : ("package main\nimport \"b\"\ntype I3 interface {\n\tM3(z struct{ F struct{ f string } })\n}\nvar _ I3 = b.S{}\n" : GoString), _b : ("package b\ntype S struct{}\nfunc (S) M3(struct{ F struct{ f string } }) {}\n" : GoString), _want : ("6:12: cannot use b[.]S{} [(]value of type b[.]S[)] as I3 value in variable declaration: b[.]S does not implement I3 [(]wrong type for method M3[)]\n.*have M3[(]struct{F struct{f string /[*] package b [*]/ }}[)]\n.*want M3[(]struct{F struct{f string /[*] package main [*]/ }}[)]" : GoString) } : T__struct_30), ({ main : ("package main\nimport \"b\"\ntype I4 interface {\n\tM4(_ struct { *string })\n}\nvar _ I4 = b.S{}\n" : GoString), _b : ("package b\ntype S struct{}\nfunc (S) M4(struct { *string }) {}\n" : GoString), _want : ("6:12: cannot use b[.]S{} [(]value of type b[.]S[)] as I4 value in variable declaration: b[.]S does not implement I4 [(]wrong type for method M4[)]\n.*have M4[(]struct{[*]string /[*] package b [*]/ }[)]\n.*want M4[(]struct{[*]string /[*] package main [*]/ }[)]" : GoString) } : T__struct_30), ({ main : ("package main\nimport \"b\"\ntype t struct{ A int }\ntype I5 interface {\n\tM5(_ struct {b.S;t})\n}\nvar _ I5 = b.S{}\n" : GoString), _b : ("package b\ntype S struct{}\ntype t struct{ A int }\nfunc (S) M5(struct {S;t}) {}\n" : GoString), _want : ("7:12: cannot use b[.]S{} [(]value of type b[.]S[)] as I5 value in variable declaration: b[.]S does not implement I5 [(]wrong type for method M5[)]\n.*have M5[(]struct{b[.]S; b[.]t}[)]\n.*want M5[(]struct{b[.]S; t}[)]" : GoString) } : T__struct_30)) : Slice<T__struct_30>);
        var _fset = stdgo.go.token.Token.newFileSet();
        var _test:(GoString, GoString, GoString) -> Void = function(main:GoString, _b:GoString, _want:GoString):Void {
            var _re = stdgo.regexp.Regexp.mustCompile(_want);
            var _bpkg = _mustTypecheck(("b" : GoString), _b, null);
            var _mast = _mustParse(_fset, ("main.go" : GoString), main);
            var _conf:stdgo.go.types.Types.Config = ({ importer : Go.asInterface(({ _pkg : _bpkg } : T_importHelper)) } : Config);
            var __tmp__ = _conf.check(_mast.name.name, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _mast) : Slice<Ref<stdgo.go.ast.Ast.File>>), null), __0:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                _t.error(Go.toInterface(("Expected failure, but it did not" : GoString)));
            } else {
                var _got:GoString = _err.error();
                if (!_re.matchString(_got)) {
                    _t.errorf(("Wanted match for\n\t%s\n but got\n\t%s" : GoString), Go.toInterface(_want), Go.toInterface(_got));
                } else if (stdgo.testing.Testing.verbose()) {
                    _t.logf(("Saw expected\n\t%s" : GoString), Go.toInterface(_err.error()));
                };
            };
        };
        for (__0 => _t in _tests) {
            _test(_t.main, _t._b, _t._want);
        };
    }
/**
    // BenchmarkLookupFieldOrMethod measures types.LookupFieldOrMethod performance.
    // LookupFieldOrMethod is a performance hotspot for both type-checking and
    // external API calls.
**/
function benchmarkLookupFieldOrMethod(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _path:GoString = stdgo.path.filepath.Filepath.join(stdgo.runtime.Runtime.goroot(), ("src" : GoString), ("net" : GoString), ("http" : GoString));
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = _pkgFiles(_fset, _path), _files:Slice<Ref<stdgo.go.ast.Ast.File>> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _b.fatal(Go.toInterface(_err));
        };
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.go.importer.Importer.default_() } : Config);
        var __tmp__ = _conf.check(("http" : GoString), _fset, _files, null), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _b.fatal(Go.toInterface(_err));
        };
        var _scope = _pkg.scope();
        var _names = _scope.names();
        var _lookup:() -> Void = function():Void {
            for (__0 => _name in _names) {
                var _typ:stdgo.go.types.Types.Type = _scope.lookup(_name).type();
                lookupFieldOrMethod(_typ, true, _pkg, ("m" : GoString));
            };
        };
        _lookup();
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _lookup();
            });
        };
    }
function testMain(_m:Ref<stdgo.testing.Testing.M>):Void {
        stdgo.go.build.Build.default_.goroot = stdgo.internal.testenv.Testenv.goroot((null : stdgo.testing.Testing.TB));
        Sys.exit(_m.run());
    }
/**
    
    
    
**/
@:structInit class T_testNewMethodSet_0___localname___method {
    public var _name : GoString = "";
    public var _index : Slice<GoInt> = (null : Slice<GoInt>);
    public var _indirect : Bool = false;
    public function new(?_name:GoString, ?_index:Slice<GoInt>, ?_indirect:Bool) {
        if (_name != null) this._name = _name;
        if (_index != null) this._index = _index;
        if (_indirect != null) this._indirect = _indirect;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_testNewMethodSet_0___localname___method(_name, _index, _indirect);
    }
}
function testNewMethodSet(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _tests = ({
            final x = new stdgo.GoMap.GoStringMap<Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>>();
            x.__defaultValue__ = () -> (null : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>);
            @:mergeBlock {
                x.set(("var a T; type T struct{}; func (T) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), false) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a *T; type T struct{}; func (T) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a T; type T struct{}; func (*T) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(0, 0) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a *T; type T struct{}; func (*T) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a T[int]; type T[P any] struct{}; func (T[P]) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), false) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a *T[int]; type T[P any] struct{}; func (T[P]) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a T[int]; type T[P any] struct{}; func (*T[P]) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(0, 0) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a *T[int]; type T[P any] struct{}; func (*T[P]) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a T; type T interface{ f() }" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a T1; type ( T1 T2; T2 interface{ f() } )" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a T1; type ( T1 interface{ T2 }; T2 interface{ f() } )" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a T[int]; type T[P any] interface{ f() }" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a T1[int]; type ( T1[P any] T2[P]; T2[P any] interface{ f() } )" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a T1[int]; type ( T1[P any] interface{ T2[P] }; T2[P any] interface{ f() } )" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a struct{ E }; type E interface{ f() }" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(2, 2, (0 : GoInt), (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a *struct{ E }; type E interface{ f() }" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(2, 2, (0 : GoInt), (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a struct{ E }; type E struct{}; func (E) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(2, 2, (0 : GoInt), (0 : GoInt)) : Slice<GoInt>), false) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a struct{ *E }; type E struct{}; func (E) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(2, 2, (0 : GoInt), (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a struct{ E }; type E struct{}; func (*E) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(0, 0) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a struct{ *E }; type E struct{}; func (*E) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(2, 2, (0 : GoInt), (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a struct{ E[int] }; type E[P any] interface{ f() }" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(2, 2, (0 : GoInt), (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a *struct{ E[int] }; type E[P any] interface{ f() }" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(2, 2, (0 : GoInt), (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a struct{ E[int] }; type E[P any] struct{}; func (E[P]) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(2, 2, (0 : GoInt), (0 : GoInt)) : Slice<GoInt>), false) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a struct{ *E[int] }; type E[P any] struct{}; func (E[P]) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(2, 2, (0 : GoInt), (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a struct{ E[int] }; type E[P any] struct{}; func (*E[P]) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(0, 0) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a struct{ *E[int] }; type E[P any] struct{}; func (*E[P]) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(2, 2, (0 : GoInt), (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a struct{ E1; *E2 }; type ( E1 interface{ f() }; E2 struct{ f int })" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(0, 0) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a struct{ E1; *E2 }; type ( E1 struct{ f int }; E2 struct{} ); func (E2) f() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(0, 0) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a T[int]; type ( T[P any] struct { *N[P] }; N[P any] struct { *T[P] } ); func (N[P]) m() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("m" : GoString), (new Slice<GoInt>(2, 2, (0 : GoInt), (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("var a T[int]; type ( T[P any] struct { *N[P] }; N[P any] struct { *T[P] } ); func (T[P]) m() {}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("m" : GoString), (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), false) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
            };
            x;
        } : GoMap<GoString, Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>>);
        var _tParamTests = ({
            final x = new stdgo.GoMap.GoStringMap<Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>>();
            x.__defaultValue__ = () -> (null : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>);
            @:mergeBlock {
                x.set(("type C interface{ f() }; func g[T C](a T){}" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
                x.set(("type C interface{ f() }; func g[T C]() { var a T; _ = a }" : GoString), (new Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method(("f" : GoString), (new Slice<GoInt>(1, 1, (0 : GoInt)) : Slice<GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method)) : Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>));
            };
            x;
        } : GoMap<GoString, Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_0___localname___method>>);
        var _check = function(_src:GoString, _methods:Slice<T_testNewMethodSet_0___localname___method>, _generic:Bool):Void {
            var _pkg = _mustTypecheck(("test" : GoString), ("package p;" : GoString) + _src, null);
            var _scope = _pkg.scope();
            if (_generic) {
                var _fn = (Go.typeAssert((Go.toInterface(_pkg.scope().lookup(("g" : GoString))) : Ref<Func>)) : Ref<Func>);
                _scope = _fn.scope();
            };
            var _obj:stdgo.go.types.Types.Object = _scope.lookup(("a" : GoString));
            if (_obj == null) {
                _t.errorf(("%s: incorrect test case - no object a" : GoString), Go.toInterface(_src));
                return;
            };
            var _ms = newMethodSet(_obj.type());
            {
                var __0:GoInt = _ms.len(), __1:GoInt = (_methods.length), _want:GoInt = __1, _got:GoInt = __0;
                if (_got != (_want)) {
                    _t.errorf(("%s: got %d methods, want %d" : GoString), Go.toInterface(_src), Go.toInterface(_got), Go.toInterface(_want));
                    return;
                };
            };
            for (_i => _m in _methods) {
                var _sel = _ms.at(_i);
                {
                    var __0:GoString = _sel.obj().name(), __1:GoString = _m._name, _want:GoString = __1, _got:GoString = __0;
                    if (_got != (_want)) {
                        _t.errorf(("%s [method %d]: got name = %q at, want %q" : GoString), Go.toInterface(_src), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                    };
                };
                {
                    var __0 = _sel.index(), __1 = _m._index, _want = __1, _got = __0;
                    if (!_sameSlice(_got, _want)) {
                        _t.errorf(("%s [method %d]: got index = %v, want %v" : GoString), Go.toInterface(_src), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                    };
                };
                {
                    var __0:Bool = _sel.indirect(), __1:Bool = _m._indirect, _want:Bool = __1, _got:Bool = __0;
                    if (_got != (_want)) {
                        _t.errorf(("%s [method %d]: got indirect = %v, want %v" : GoString), Go.toInterface(_src), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                    };
                };
            };
        };
        for (_src => _methods in _tests) {
            _check(_src, _methods, false);
        };
        for (_src => _methods in _tParamTests) {
            _check(_src, _methods, true);
        };
    }
/**
    // Test for golang/go#52715
**/
function testNewMethodSet_RecursiveGeneric(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("foo.go" : GoString), Go.toInterface(("\npackage pkg\n\ntype Tree[T any] struct {\n\t*Node[T]\n}\n\ntype Node[T any] struct {\n\t*Tree[T]\n}\n\ntype Instance = *Tree[int]\n" : GoString)), (0u32 : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        var _pkg = newPackage(("pkg" : GoString), _f.name.name);
        {
            var _err:Error = newChecker(null, _fset, _pkg, null).files((new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>));
            if (_err != null) {
                throw Go.toInterface(_err);
            };
        };
        var t:stdgo.go.types.Types.Type = _pkg.scope().lookup(("Instance" : GoString)).type();
        newMethodSet(t);
    }
private function _checkMono(_t:Ref<stdgo.testing.Testing.T>, _body:GoString):Error {
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("x.go" : GoString), Go.toInterface(("package x; import `unsafe`; var _ unsafe.Pointer;\n" : GoString) + _body), (0u32 : stdgo.go.parser.Parser.Mode)), _file:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _files = (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _file) : Slice<Ref<stdgo.go.ast.Ast.File>>);
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        var _conf:stdgo.go.types.Types.Config = ({ error : function(_err:Error):Void {
            stdgo.fmt.Fmt.fprintln(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)), Go.toInterface(_err));
        }, importer : stdgo.go.importer.Importer.default_() } : stdgo.go.types.Types.Config);
        _conf.check(("x" : GoString), _fset, _files, null);
        if (_buf.len() == ((0 : GoInt))) {
            return (null : Error);
        };
        return stdgo.errors.Errors.new_(stdgo.strings.Strings.trimRight((_buf.string() : GoString), ("\n" : GoString)));
    }
function testMonoGood(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _good in _goods) {
            {
                var _err:Error = _checkMono(_t, _good);
                if (_err != null) {
                    _t.errorf(("%d: unexpected failure: %v" : GoString), Go.toInterface(_i), Go.toInterface(_err));
                };
            };
        };
    }
function testMonoBad(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _bad in _bads) {
            {
                var _err:Error = _checkMono(_t, _bad);
                if (_err == null) {
                    _t.errorf(("%d: unexpected success" : GoString), Go.toInterface(_i));
                } else {
                    _t.log(Go.toInterface(_err));
                };
            };
        };
    }
function benchmarkNamed(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        var _pkg = _mustTypecheck(("p" : GoString), ("\npackage p\n\ntype T struct {\n\tP int\n}\n\nfunc (T) M(int) {}\nfunc (T) N() (i int) { return }\n\ntype G[P any] struct {\n\tF P\n}\n\nfunc (G[P]) M(P) {}\nfunc (G[P]) N() (p P) { return }\n\ntype Inst = G[int]\n\t" : GoString), null);
        var __0:stdgo.go.types.Types.Type = _pkg.scope().lookup(("T" : GoString)).type(), __1:stdgo.go.types.Types.Type = _pkg.scope().lookup(("G" : GoString)).type(), __2:stdgo.go.types.Types.Type = _pkg.scope().lookup(("Inst" : GoString)).type(), __3:stdgo.go.types.Types.Type = _mustInstantiate(Go.asInterface(_b), g, Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)])), userInst:stdgo.go.types.Types.Type = __3, srcInst:stdgo.go.types.Types.Type = __2, g:stdgo.go.types.Types.Type = __1, t:stdgo.go.types.Types.Type = __0;
        var _tests = (new Slice<T__struct_31>(4, 4, ({ _name : ("nongeneric" : GoString), _typ : t } : T__struct_31), ({ _name : ("generic" : GoString), _typ : g } : T__struct_31), ({ _name : ("src instance" : GoString), _typ : srcInst } : T__struct_31), ({ _name : ("user instance" : GoString), _typ : userInst } : T__struct_31)) : Slice<T__struct_31>);
        _b.run(("Underlying" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            for (__0 => _test in _tests) {
                _b.run(_test._name, function(_b:Ref<stdgo.testing.Testing.B>):Void {
                    _test._typ.underlying();
                    _b.resetTimer();
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _b.n, _i++, {
                            _test._typ.underlying();
                        });
                    };
                });
            };
        });
        _b.run(("NewMethodSet" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            for (__0 => _test in _tests) {
                _b.run(_test._name, function(_b:Ref<stdgo.testing.Testing.B>):Void {
                    newMethodSet(_test._typ);
                    _b.resetTimer();
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _b.n, _i++, {
                            newMethodSet(_test._typ);
                        });
                    };
                });
            };
        });
    }
private function _mustInstantiate(_tb:stdgo.testing.Testing.TB, _orig:Type, _targs:haxe.Rest<Type>):Type {
        var _targs = new Slice<Type>(_targs.length, 0, ..._targs);
        var __tmp__ = instantiate(null, _orig, _targs, true), _inst:stdgo.go.types.Types.Type = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _tb.fatal(Go.toInterface(_err));
        };
        return _inst;
    }
/**
    // Test that types do not expand infinitely, as in golang/go#52715.
**/
function testFiniteTypeExpansion(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("foo.go" : GoString), ("\npackage p\n\ntype Tree[T any] struct {\n\t*Node[T]\n}\n\nfunc (*Tree[R]) N(r R) R { return r }\n\ntype Node[T any] struct {\n\t*Tree[T]\n}\n\nfunc (Node[Q]) M(Q) {}\n\ntype Inst = *Tree[int]\n" : GoString));
        var _pkg = newPackage(("p" : GoString), _f.name.name);
        {
            var _err:Error = newChecker(null, _fset, _pkg, null).files((new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var _firstFieldType = function(_n:Ref<Named>):Ref<Named> {
            return (Go.typeAssert((Go.toInterface((Go.typeAssert((Go.toInterface((Go.typeAssert((Go.toInterface(_n.underlying()) : Ref<Struct>)) : Ref<Struct>).field((0 : GoInt)).type()) : Ref<Pointer_>)) : Ref<Pointer_>).elem()) : Ref<Named>)) : Ref<Named>);
        };
        var inst = (Go.typeAssert((Go.toInterface((Go.typeAssert((Go.toInterface(_pkg.scope().lookup(("Inst" : GoString)).type()) : Ref<Pointer_>)) : Ref<Pointer_>).elem()) : Ref<Named>)) : Ref<Named>);
        var node = _firstFieldType(inst);
        var tree = _firstFieldType(node);
        if (!identical(Go.asInterface(inst), Go.asInterface(tree))) {
            _t.fatalf(("Not a cycle: got %v, want %v" : GoString), Go.toInterface(Go.asInterface(tree)), Go.toInterface(Go.asInterface(inst)));
        };
        if (inst != (tree)) {
            _t.errorf(("Duplicate instances in cycle: %s (%p) -> %s (%p) -> %s (%p)" : GoString), Go.toInterface(Go.asInterface(inst)), Go.toInterface(Go.asInterface(inst)), Go.toInterface(Go.asInterface(node)), Go.toInterface(Go.asInterface(node)), Go.toInterface(Go.asInterface(tree)), Go.toInterface(Go.asInterface(tree)));
        };
    }
function testIsAlias(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _check = function(_obj:Ref<TypeName>, _want:Bool):Void {
            {
                var _got:Bool = _obj.isAlias();
                if (_got != (_want)) {
                    _t.errorf(("%v: got IsAlias = %v; want %v" : GoString), Go.toInterface(Go.asInterface(_obj)), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
        };
        _check((Go.typeAssert((Go.toInterface(unsafe.scope().lookup(("Pointer" : GoString))) : Ref<TypeName>)) : Ref<TypeName>), false);
        for (__0 => _name in universe.names()) {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(universe.lookup(_name)) : Ref<TypeName>)) : Ref<TypeName>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.types.Types.TypeName>), ok : false };
                }, _obj = __tmp__.value, __1 = __tmp__.ok;
                if (_obj != null && ((_obj : Dynamic).__nil__ == null || !(_obj : Dynamic).__nil__)) {
                    _check(_obj, ((_name == ("any" : GoString)) || (_name == ("byte" : GoString))) || (_name == ("rune" : GoString)));
                };
            };
        };
        var _pkg = newPackage(("p" : GoString), ("p" : GoString));
        var _t1 = newTypeName((0 : stdgo.go.token.Token.Pos), _pkg, ("t1" : GoString), (null : stdgo.go.types.Types.Type));
        var _n1 = newNamed(_t1, Go.asInterface((Go.setRef(({} : stdgo.go.types.Types.Struct)) : Ref<stdgo.go.types.Types.Struct>)), (null : Slice<Ref<stdgo.go.types.Types.Func>>));
        var _t5 = newTypeName((0 : stdgo.go.token.Token.Pos), _pkg, ("t5" : GoString), (null : stdgo.go.types.Types.Type));
        newTypeParam(_t5, (null : stdgo.go.types.Types.Type));
        for (__2 => _test in (new Slice<T__struct_32>(
10,
10,
({ _name : newTypeName((0 : stdgo.go.token.Token.Pos), null, ("t0" : GoString), (null : stdgo.go.types.Types.Type)), _alias : false } : T__struct_32),
({ _name : newTypeName((0 : stdgo.go.token.Token.Pos), _pkg, ("t0" : GoString), (null : stdgo.go.types.Types.Type)), _alias : false } : T__struct_32),
({ _name : _t1, _alias : false } : T__struct_32),
({ _name : newTypeName((0 : stdgo.go.token.Token.Pos), null, ("t2" : GoString), Go.asInterface(newInterfaceType((null : Slice<Ref<stdgo.go.types.Types.Func>>), (null : Slice<stdgo.go.types.Types.Type>)))), _alias : true } : T__struct_32),
({ _name : newTypeName((0 : stdgo.go.token.Token.Pos), _pkg, ("t3" : GoString), Go.asInterface(_n1)), _alias : true } : T__struct_32),
({ _name : newTypeName((0 : stdgo.go.token.Token.Pos), null, ("t4" : GoString), Go.asInterface(typ[((5 : stdgo.go.types.Types.BasicKind) : GoInt)])), _alias : true } : T__struct_32),
({ _name : newTypeName((0 : stdgo.go.token.Token.Pos), null, ("int32" : GoString), Go.asInterface(typ[((5 : stdgo.go.types.Types.BasicKind) : GoInt)])), _alias : false } : T__struct_32),
({ _name : newTypeName((0 : stdgo.go.token.Token.Pos), _pkg, ("int32" : GoString), Go.asInterface(typ[((5 : stdgo.go.types.Types.BasicKind) : GoInt)])), _alias : true } : T__struct_32),
({ _name : newTypeName((0 : stdgo.go.token.Token.Pos), null, ("rune" : GoString), Go.asInterface(typ[((5 : stdgo.go.types.Types.BasicKind) : GoInt)])), _alias : true } : T__struct_32),
({ _name : _t5, _alias : false } : T__struct_32)) : Slice<T__struct_32>)) {
            _check(_test._name, _test._alias);
        };
    }
/**
    // TestEmbeddedMethod checks that an embedded method is represented by
    // the same Func Object as the original method. See also issue #34421.
**/
function testEmbeddedMethod(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, Go.str(), ("package p; type I interface { error }" : GoString));
        var _conf:Config = ({} : stdgo.go.types.Types.Config);
        var __tmp__ = _conf.check(_f.name.name, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), null), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("typecheck failed: %s" : GoString), Go.toInterface(_err));
        };
        var _eface:stdgo.go.types.Types.Object = universe.lookup(("error" : GoString));
        var __tmp__ = lookupFieldOrMethod(_eface.type(), false, null, ("Error" : GoString)), _orig:stdgo.go.types.Types.Object = __tmp__._0, __0:Slice<GoInt> = __tmp__._1, __1:Bool = __tmp__._2;
        if (_orig == null) {
            _t.fatalf(("original error.Error not found" : GoString));
        };
        var _iface:stdgo.go.types.Types.Object = _pkg.scope().lookup(("I" : GoString));
        var __tmp__ = lookupFieldOrMethod(_iface.type(), false, null, ("Error" : GoString)), _embed:stdgo.go.types.Types.Object = __tmp__._0, __2:Slice<GoInt> = __tmp__._1, __3:Bool = __tmp__._2;
        if (_embed == null) {
            _t.fatalf(("embedded error.Error not found" : GoString));
        };
        if (Go.toInterface(_orig) != (Go.toInterface(_embed))) {
            _t.fatalf(("%s (%p) != %s (%p)" : GoString), Go.toInterface(_orig), Go.toInterface(_orig), Go.toInterface(_embed), Go.toInterface(_embed));
        };
    }
function testObjectString(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        for (__0 => _test in _testObjects) {
            var _src:GoString = ("package p; " : GoString) + _test._src;
            var __tmp__ = _typecheck(("<src>" : GoString), _src, null), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("%s: %s" : GoString), Go.toInterface(_src), Go.toInterface(_err));
                continue;
            };
            var _names = stdgo.strings.Strings.split(_test._obj, ("." : GoString));
            if ((_names.length != (1 : GoInt)) && (_names.length != (2 : GoInt))) {
                _t.errorf(("%s: invalid object path %s" : GoString), Go.toInterface(_test._src), Go.toInterface(_test._obj));
                continue;
            };
            var __tmp__ = _pkg.scope().lookupParent(_names[(0 : GoInt)], (0 : stdgo.go.token.Token.Pos)), __1:Ref<stdgo.go.types.Types.Scope> = __tmp__._0, _obj:stdgo.go.types.Types.Object = __tmp__._1;
            if (_obj == null) {
                _t.errorf(("%s: %s not found" : GoString), Go.toInterface(_test._src), Go.toInterface(_names[(0 : GoInt)]));
                continue;
            };
            if ((_names.length) == ((2 : GoInt))) {
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_obj.type()) : T__interface_0)) : T__interface_0), ok : true };
                    } catch(_) {
                        { value : (null : stdgo.go.types_test.Types_test.T__interface_0), ok : false };
                    }, _typ = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        _obj = _lookupTypeParamObj(_typ.typeParams(), _names[(1 : GoInt)]);
                        if (_obj == null) {
                            _t.errorf(("%s: %s not found" : GoString), Go.toInterface(_test._src), Go.toInterface(_test._obj));
                            continue;
                        };
                    } else {
                        _t.errorf(("%s: %s has no type parameters" : GoString), Go.toInterface(_test._src), Go.toInterface(_names[(0 : GoInt)]));
                        continue;
                    };
                };
            };
            {
                var _got:GoString = (_obj.string() : GoString);
                if (_got != (_test._want)) {
                    _t.errorf(("%s: got %s, want %s" : GoString), Go.toInterface(_test._src), Go.toInterface(_got), Go.toInterface(_test._want));
                };
            };
        };
    }
private function _lookupTypeParamObj(_list:Ref<TypeParamList>, _name:GoString):Object {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _list.len(), _i++, {
                var _tpar = _list.at(_i);
                if (_tpar.obj().name() == (_name)) {
                    return Go.asInterface(_tpar.obj());
                };
            });
        };
        return (null : stdgo.go.types.Types.Object);
    }
function testResolveIdents(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        var _sources = (new Slice<GoString>(5, 5, ("\n\t\tpackage p\n\t\timport \"fmt\"\n\t\timport \"math\"\n\t\tconst pi = math.Pi\n\t\tfunc sin(x float64) float64 {\n\t\t\treturn math.Sin(x)\n\t\t}\n\t\tvar Println = fmt.Println\n\t\t" : GoString), ("\n\t\tpackage p\n\t\timport \"fmt\"\n\t\ttype errorStringer struct { fmt.Stringer; error }\n\t\tfunc f() string {\n\t\t\t_ = \"foo\"\n\t\t\treturn fmt.Sprintf(\"%d\", g())\n\t\t}\n\t\tfunc g() (x int) { return }\n\t\t" : GoString), ("\n\t\tpackage p\n\t\timport . \"go/parser\"\n\t\timport \"sync\"\n\t\tfunc h() Mode { return ImportsOnly }\n\t\tvar _, x int = 1, 2\n\t\tfunc init() {}\n\t\ttype T struct{ *sync.Mutex; a, b, c int}\n\t\ttype I interface{ m() }\n\t\tvar _ = T{a: 1, b: 2, c: 3}\n\t\tfunc (_ T) m() {}\n\t\tfunc (T) _() {}\n\t\tvar i I\n\t\tvar _ = i.m\n\t\tfunc _(s []int) { for i, x := range s { _, _ = i, x } }\n\t\tfunc _(x interface{}) {\n\t\t\tswitch x := x.(type) {\n\t\t\tcase int:\n\t\t\t\t_ = x\n\t\t\t}\n\t\t\tswitch {} // implicit \'true\' tag\n\t\t}\n\t\t" : GoString), ("\n\t\tpackage p\n\t\ttype S struct{}\n\t\tfunc (T) _() {}\n\t\tfunc (T) _() {}\n\t\t" : GoString), ("\n\t\tpackage p\n\t\tfunc _() {\n\t\tL0:\n\t\tL1:\n\t\t\tgoto L0\n\t\t\tfor {\n\t\t\t\tgoto L1\n\t\t\t}\n\t\t\tif true {\n\t\t\t\tgoto L2\n\t\t\t}\n\t\tL2:\n\t\t}\n\t\t" : GoString)) : Slice<GoString>);
        var _pkgnames = (new Slice<GoString>(2, 2, ("fmt" : GoString), ("math" : GoString)) : Slice<GoString>);
        var _fset = stdgo.go.token.Token.newFileSet();
        var _files:Slice<Ref<stdgo.go.ast.Ast.File>> = (null : Slice<Ref<stdgo.go.ast.Ast.File>>);
        for (_i => _src in _sources) {
            _files = (_files.__append__(_mustParse(_fset, stdgo.fmt.Fmt.sprintf(("sources[%d]" : GoString), Go.toInterface(_i)), _src)));
        };
        var _importer = (Go.setRef(({} : stdgo.go.types_test.Types_test.T_resolveTestImporter)) : Ref<stdgo.go.types_test.Types_test.T_resolveTestImporter>);
        var _conf:stdgo.go.types.Types.Config = ({ importer : Go.asInterface(_importer) } : Config);
        var _uses = ({
            final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>);
        var _defs = ({
            final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>);
        var __tmp__ = _conf.check(("testResolveIdents" : GoString), _fset, _files, (Go.setRef(({ defs : _defs, uses : _uses } : Info)) : Ref<stdgo.go.types.Types.Info>)), __0:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        for (__1 => _name in _pkgnames) {
            if (!_importer._imported[_name]) {
                _t.errorf(("package %s not imported" : GoString), Go.toInterface(_name));
            };
        };
        for (__2 => _f in _files) {
            stdgo.go.ast.Ast.inspect(Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_n) : Ref<stdgo.go.ast.Ast.SelectorExpr>)) : Ref<stdgo.go.ast.Ast.SelectorExpr>), ok : true };
                    } catch(_) {
                        { value : (null : Ref<stdgo.go.ast.Ast.SelectorExpr>), ok : false };
                    }, _s = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        {
                            var __tmp__ = try {
                                { value : (Go.typeAssert((Go.toInterface(_s.x) : Ref<stdgo.go.ast.Ast.Ident>)) : Ref<stdgo.go.ast.Ast.Ident>), ok : true };
                            } catch(_) {
                                { value : (null : Ref<stdgo.go.ast.Ast.Ident>), ok : false };
                            }, _x = __tmp__.value, _ok = __tmp__.ok;
                            if (_ok) {
                                var _obj:stdgo.go.types.Types.Object = _uses[_x];
                                if (_obj == null) {
                                    _t.errorf(("%s: unresolved qualified identifier %s" : GoString), Go.toInterface(Go.asInterface(_fset.position(_x.pos()))), Go.toInterface(_x.name));
                                    return false;
                                };
                                {
                                    var __tmp__ = try {
                                        { value : (Go.typeAssert((Go.toInterface(_obj) : Ref<PkgName>)) : Ref<PkgName>), ok : true };
                                    } catch(_) {
                                        { value : (null : Ref<stdgo.go.types.Types.PkgName>), ok : false };
                                    }, __0 = __tmp__.value, _ok = __tmp__.ok;
                                    if (_ok && (_uses[_s.sel] == null)) {
                                        _t.errorf(("%s: unresolved selector %s" : GoString), Go.toInterface(Go.asInterface(_fset.position(_s.sel.pos()))), Go.toInterface(_s.sel.name));
                                        return false;
                                    };
                                };
                                return false;
                            };
                        };
                        return false;
                    };
                };
                return true;
            });
        };
        for (_id => _obj in _uses) {
            if (_obj == null) {
                _t.errorf(("%s: Uses[%s] == nil" : GoString), Go.toInterface(Go.asInterface(_fset.position(_id.pos()))), Go.toInterface(_id.name));
            };
        };
        var _both:Slice<GoString> = (null : Slice<GoString>);
        for (__3 => _f in _files) {
            stdgo.go.ast.Ast.inspect(Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_n) : Ref<stdgo.go.ast.Ast.Ident>)) : Ref<stdgo.go.ast.Ast.Ident>), ok : true };
                    } catch(_) {
                        { value : (null : Ref<stdgo.go.ast.Ast.Ident>), ok : false };
                    }, _x = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        var _objects:GoInt = (0 : GoInt);
                        {
                            var __tmp__ = (_uses != null && _uses.exists(_x) ? { value : _uses[_x], ok : true } : { value : (null : stdgo.go.types.Types.Object), ok : false }), __0:stdgo.go.types.Types.Object = __tmp__.value, _found:Bool = __tmp__.ok;
                            if (_found) {
                                _objects = _objects | ((1 : GoInt));
                                if (_uses != null) _uses.remove(_x);
                            };
                        };
                        {
                            var __tmp__ = (_defs != null && _defs.exists(_x) ? { value : _defs[_x], ok : true } : { value : (null : stdgo.go.types.Types.Object), ok : false }), __1:stdgo.go.types.Types.Object = __tmp__.value, _found:Bool = __tmp__.ok;
                            if (_found) {
                                _objects = _objects | ((2 : GoInt));
                                if (_defs != null) _defs.remove(_x);
                            };
                        };
                        if (_objects == ((0 : GoInt))) {
                            _t.errorf(("%s: unresolved identifier %s" : GoString), Go.toInterface(Go.asInterface(_fset.position(_x.pos()))), Go.toInterface(_x.name));
                        } else if (_objects == ((3 : GoInt))) {
                            _both = (_both.__append__(_x.name));
                        };
                        return false;
                    };
                };
                return true;
            });
        };
        stdgo.sort.Sort.strings(_both);
        {
            var __0:GoString = stdgo.fmt.Fmt.sprint(Go.toInterface(_both)), __1:GoString = ("[Mutex Stringer error]" : GoString), _want:GoString = __1, _got:GoString = __0;
            if (_got != (_want)) {
                _t.errorf(("simultaneous uses/defs = %s, want %s" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        for (_x => _ in _uses) {
            _t.errorf(("%s: identifier %s not present in source" : GoString), Go.toInterface(Go.asInterface(_fset.position(_x.pos()))), Go.toInterface(_x.name));
        };
        for (_x => _ in _defs) {
            _t.errorf(("%s: identifier %s not present in source" : GoString), Go.toInterface(Go.asInterface(_fset.position(_x.pos()))), Go.toInterface(_x.name));
        };
    }
function testSelf(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = _pkgFiles(_fset, ("." : GoString)), _files:Slice<Ref<stdgo.go.ast.Ast.File>> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.go.importer.Importer.default_() } : Config);
        {
            var __tmp__ = _conf.check(("go/types" : GoString), _fset, _files, null);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
    }
function benchmarkCheck(_b:Ref<stdgo.testing.Testing.B>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_b));
        for (__0 => _p in (new Slice<GoString>(5, 5, ("net/http" : GoString), ("go/parser" : GoString), ("go/constant" : GoString), ("runtime" : GoString), stdgo.path.filepath.Filepath.join(("go" : GoString), ("internal" : GoString), ("gcimporter" : GoString))) : Slice<GoString>)) {
            _b.run(stdgo.path.Path.base(_p), function(_b:Ref<stdgo.testing.Testing.B>):Void {
                var _path:GoString = stdgo.path.filepath.Filepath.join((".." : GoString), (".." : GoString), _p);
                for (__0 => _ignoreFuncBodies in (new Slice<Bool>(2, 2, false, true) : Slice<Bool>)) {
                    var _name:GoString = ("funcbodies" : GoString);
                    if (_ignoreFuncBodies) {
                        _name = ("nofuncbodies" : GoString);
                    };
                    _b.run(_name, function(_b:Ref<stdgo.testing.Testing.B>):Void {
                        _b.run(("info" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
                            _runbench(_b, _path, _ignoreFuncBodies, true);
                        });
                        _b.run(("noinfo" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
                            _runbench(_b, _path, _ignoreFuncBodies, false);
                        });
                    });
                };
            });
        };
    }
private function _runbench(_b:Ref<stdgo.testing.Testing.B>, _path:GoString, _ignoreFuncBodies:Bool, _writeInfo:Bool):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = _pkgFiles(_fset, _path), _files:Slice<Ref<stdgo.go.ast.Ast.File>> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _b.fatal(Go.toInterface(_err));
        };
        var _lines:GoInt = (0 : GoInt);
        _fset.iterate(function(_f:Ref<stdgo.go.token.Token.File>):Bool {
            _lines = _lines + (_f.lineCount());
            return true;
        });
        _b.resetTimer();
        var _start:stdgo.time.Time.Time = stdgo.time.Time.now()?.__copy__();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _conf:stdgo.go.types.Types.Config = ({ ignoreFuncBodies : _ignoreFuncBodies, importer : stdgo.go.importer.Importer.default_() } : Config);
                var _info:Ref<Info> = (null : Ref<stdgo.go.types.Types.Info>);
                if (_writeInfo) {
                    _info = (Go.setRef(({ types : ({
                        final x = new GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
                        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                        x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
                        @:mergeBlock {};
                        cast x;
                    } : GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>), defs : ({
                        final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                        @:mergeBlock {};
                        cast x;
                    } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>), uses : ({
                        final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                        @:mergeBlock {};
                        cast x;
                    } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>), implicits : ({
                        final x = new GoObjectMap<stdgo.go.ast.Ast.Node, stdgo.go.types.Types.Object>();
                        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Node", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                        x.__defaultValue__ = () -> (null : stdgo.go.types.Types.Object);
                        @:mergeBlock {};
                        cast x;
                    } : GoMap<stdgo.go.ast.Ast.Node, stdgo.go.types.Types.Object>), selections : ({
                        final x = new GoRefMap<Ref<stdgo.go.ast.Ast.SelectorExpr>, Ref<stdgo.go.types.Types.Selection>>();
                        @:mergeBlock {};
                        cast x;
                    } : GoMap<Ref<stdgo.go.ast.Ast.SelectorExpr>, Ref<stdgo.go.types.Types.Selection>>), scopes : ({
                        final x = new GoObjectMap<stdgo.go.ast.Ast.Node, Ref<stdgo.go.types.Types.Scope>>();
                        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Node", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                        x.__defaultValue__ = () -> (null : Ref<stdgo.go.types.Types.Scope>);
                        @:mergeBlock {};
                        cast x;
                    } : GoMap<stdgo.go.ast.Ast.Node, Ref<stdgo.go.types.Types.Scope>>) } : Info)) : Ref<stdgo.go.types.Types.Info>);
                };
                {
                    var __tmp__ = _conf.check(_path, _fset, _files, _info), __8:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
                    if (_err != null) {
                        _b.fatal(Go.toInterface(_err));
                    };
                };
            });
        };
        _b.stopTimer();
        _b.reportMetric(((_lines : GoFloat64) * (_b.n : GoFloat64)) / stdgo.time.Time.since(_start?.__copy__()).seconds(), ("lines/s" : GoString));
    }
private function _pkgFiles(_fset:Ref<stdgo.go.token.Token.FileSet>, _path:GoString):{ var _0 : Slice<Ref<stdgo.go.ast.Ast.File>>; var _1 : Error; } {
        var __tmp__ = _pkgFilenames(_path), _filenames:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : Slice<Ref<stdgo.go.ast.Ast.File>>), _1 : _err };
        };
        var _files:Slice<Ref<stdgo.go.ast.Ast.File>> = (null : Slice<Ref<stdgo.go.ast.Ast.File>>);
        for (__0 => _filename in _filenames) {
            var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, _filename, (null : AnyInterface), (0u32 : stdgo.go.parser.Parser.Mode)), _file:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : Slice<Ref<stdgo.go.ast.Ast.File>>), _1 : _err };
            };
            _files = (_files.__append__(_file));
        };
        return { _0 : _files, _1 : (null : Error) };
    }
/**
    // findStructType typechecks src and returns the first struct type encountered.
**/
private function _findStructType(_t:Ref<stdgo.testing.Testing.T>, _src:GoString):Ref<stdgo.go.types.Types.Struct> {
        return _findStructTypeConfig(_t, _src, (Go.setRef((new stdgo.go.types.Types.Config() : stdgo.go.types.Types.Config)) : Ref<stdgo.go.types.Types.Config>));
    }
private function _findStructTypeConfig(_t:Ref<stdgo.testing.Testing.T>, _src:GoString, _conf:Ref<stdgo.go.types.Types.Config>):Ref<stdgo.go.types.Types.Struct> {
        var _types_ = ({
            final x = new GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
            @:mergeBlock {};
            cast x;
        } : GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>);
        _mustTypecheck(("x" : GoString), _src, (Go.setRef(({ types : _types_ } : stdgo.go.types.Types.Info)) : Ref<stdgo.go.types.Types.Info>));
        for (__0 => _tv in _types_) {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_tv.type) : Ref<stdgo.go.types.Types.Struct>)) : Ref<stdgo.go.types.Types.Struct>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.types.Types.Struct>), ok : false };
                }, _ts = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    return _ts;
                };
            };
        };
        _t.fatalf(("failed to find a struct type in src:\n%s\n" : GoString), Go.toInterface(_src));
        return null;
    }
/**
    // Issue 16316
**/
function testMultipleSizeUse(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _ts = _findStructType(_t, ("\npackage main\n\ntype S struct {\n    i int\n    b bool\n    s string\n    n int\n}\n" : GoString));
        var _sizes:stdgo.go.types.Types.StdSizes = ({ wordSize : (4i64 : GoInt64), maxAlign : (4i64 : GoInt64) } : stdgo.go.types.Types.StdSizes);
        {
            var _got:GoInt64 = _sizes.sizeof(Go.asInterface(_ts));
            if (_got != ((20i64 : GoInt64))) {
                _t.errorf(("Sizeof(%v) with WordSize 4 = %d want 20" : GoString), Go.toInterface(Go.asInterface(_ts)), Go.toInterface(_got));
            };
        };
        _sizes = ({ wordSize : (8i64 : GoInt64), maxAlign : (8i64 : GoInt64) } : stdgo.go.types.Types.StdSizes);
        {
            var _got:GoInt64 = _sizes.sizeof(Go.asInterface(_ts));
            if (_got != ((40i64 : GoInt64))) {
                _t.errorf(("Sizeof(%v) with WordSize 8 = %d want 40" : GoString), Go.toInterface(Go.asInterface(_ts)), Go.toInterface(_got));
            };
        };
    }
/**
    // Issue 16464
**/
function testAlignofNaclSlice(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _ts = _findStructType(_t, ("\npackage main\n\nvar s struct {\n\tx *int\n\ty []byte\n}\n" : GoString));
        var _sizes = (Go.setRef(({ wordSize : (4i64 : GoInt64), maxAlign : (8i64 : GoInt64) } : stdgo.go.types.Types.StdSizes)) : Ref<stdgo.go.types.Types.StdSizes>);
        var _fields:Slice<Ref<stdgo.go.types.Types.Var>> = (null : Slice<Ref<stdgo.go.types.Types.Var>>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _ts.numFields(), _i++, {
                _fields = (_fields.__append__(_ts.field(_i)));
            });
        };
        var _offsets = _sizes.offsetsof(_fields);
        if ((_offsets[(0 : GoInt)] != (0i64 : GoInt64)) || (_offsets[(1 : GoInt)] != (4i64 : GoInt64))) {
            _t.errorf(("OffsetsOf(%v) = %v want %v" : GoString), Go.toInterface(Go.asInterface(_ts)), Go.toInterface(_offsets), Go.toInterface((new Slice<GoInt>(2, 2, (0 : GoInt), (4 : GoInt)) : Slice<GoInt>)));
        };
    }
function testIssue16902(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("x.go" : GoString), ("\npackage a\n\nimport \"unsafe\"\n\nconst _ = unsafe.Offsetof(struct{ x int64 }{}.x)\n" : GoString));
        var _info:stdgo.go.types.Types.Info = ({ types : ({
            final x = new GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
            @:mergeBlock {};
            cast x;
        } : GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>) } : stdgo.go.types.Types.Info);
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.go.importer.Importer.default_(), sizes : Go.asInterface((Go.setRef(({ wordSize : (8i64 : GoInt64), maxAlign : (8i64 : GoInt64) } : stdgo.go.types.Types.StdSizes)) : Ref<stdgo.go.types.Types.StdSizes>)) } : stdgo.go.types.Types.Config);
        var __tmp__ = _conf.check(("x" : GoString), _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : Slice<Ref<stdgo.go.ast.Ast.File>>), (Go.setRef(_info) : Ref<stdgo.go.types.Types.Info>)), __0:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        for (__1 => _tv in _info.types) {
            _conf.sizes.sizeof(_tv.type);
            _conf.sizes.alignof_(_tv.type);
        };
    }
/**
    // Issue #53884.
**/
function testAtomicAlign(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        {};
        var _want = (new Slice<GoInt64>(3, 3, (0i64 : GoInt64), (8i64 : GoInt64), (16i64 : GoInt64)) : Slice<GoInt64>);
        for (__0 => _arch in (new Slice<GoString>(2, 2, ("386" : GoString), ("amd64" : GoString)) : Slice<GoString>)) {
            _t.run(_arch, function(_t:Ref<stdgo.testing.Testing.T>):Void {
                var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.go.importer.Importer.default_(), sizes : stdgo.go.types.Types.sizesFor(("gc" : GoString), _arch) } : stdgo.go.types.Types.Config);
                var _ts = _findStructTypeConfig(_t, ("\npackage main\n\nimport \"sync/atomic\"\n\nvar s struct {\n\tx int32\n\ty atomic.Int64\n\tz int64\n}\n" : GoString), (Go.setRef(_conf) : Ref<stdgo.go.types.Types.Config>));
                var _fields:Slice<Ref<stdgo.go.types.Types.Var>> = (null : Slice<Ref<stdgo.go.types.Types.Var>>);
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _ts.numFields(), _i++, {
                        _fields = (_fields.__append__(_ts.field(_i)));
                    });
                };
                var _offsets = _conf.sizes.offsetsof(_fields);
                if (((_offsets[(0 : GoInt)] != _want[(0 : GoInt)]) || (_offsets[(1 : GoInt)] != _want[(1 : GoInt)])) || (_offsets[(2 : GoInt)] != _want[(2 : GoInt)])) {
                    _t.errorf(("OffsetsOf(%v) = %v want %v" : GoString), Go.toInterface(Go.asInterface(_ts)), Go.toInterface(_offsets), Go.toInterface(_want));
                };
            });
        };
    }
function testStdlib(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        var _pkgCount:GoInt = (0 : GoInt);
        var _duration:stdgo.time.Time.Duration = _walkPkgDirs(stdgo.path.filepath.Filepath.join(stdgo.internal.testenv.Testenv.goroot(Go.asInterface(_t)), ("src" : GoString)), function(_dir:GoString, _filenames:Slice<GoString>):Void {
            _typecheckFiles(_t, _dir, _filenames);
            _pkgCount++;
        }, _t.error);
        if (stdgo.testing.Testing.verbose()) {
            stdgo.fmt.Fmt.println(Go.toInterface(_pkgCount), Go.toInterface(("packages typechecked in" : GoString)), Go.toInterface(Go.asInterface(_duration)));
        };
    }
/**
    // firstComment returns the contents of the first non-empty comment in
    // the given file, "skip", or the empty string. No matter the present
    // comments, if any of them contains a build tag, the result is always
    // "skip". Only comments before the "package" token and within the first
    // 4K of the file are considered.
**/
private function _firstComment(_filename:GoString):GoString {
        var __deferstack__:Array<Void -> Void> = [];
        var __tmp__ = stdgo.os.Os.open(_filename), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
        try {
            if (_err != null) {
                return Go.str();
            };
            __deferstack__.unshift(() -> _f.close());
            var _src:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4096) (0 : GoUInt8)]);
            var __tmp__ = _f.read((_src.__slice__(0) : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, __0:Error = __tmp__._1;
            var _first:GoString = ("" : GoString);
            var _s:stdgo.go.scanner.Scanner.Scanner = ({} : stdgo.go.scanner.Scanner.Scanner);
            _s.init(_fset.addFile(Go.str(), _fset.base(), _n), (_src.__slice__(0, _n) : Slice<GoUInt8>), null, (1u32 : stdgo.go.scanner.Scanner.Mode));
            while (true) {
                var __tmp__ = _s.scan(), __1:stdgo.go.token.Token.Pos = __tmp__._0, _tok:stdgo.go.token.Token.Token = __tmp__._1, _lit:GoString = __tmp__._2;
                {
                    final __value__ = _tok;
                    if (__value__ == ((2 : stdgo.go.token.Token.Token))) {
                        if (_lit[(1 : GoInt)] == ((42 : GoUInt8))) {
                            _lit = (_lit.__slice__(0, (_lit.length) - (2 : GoInt)) : GoString);
                        };
                        var _contents:GoString = stdgo.strings.Strings.trimSpace((_lit.__slice__((2 : GoInt)) : GoString));
                        if (stdgo.strings.Strings.hasPrefix(_contents, ("+build " : GoString))) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return ("skip" : GoString);
                            };
                        };
                        if (_first == (Go.str())) {
                            _first = _contents;
                        };
                    } else if (__value__ == ((78 : stdgo.go.token.Token.Token)) || __value__ == ((1 : stdgo.go.token.Token.Token))) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _first;
                        };
                    };
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return ("" : GoString);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return ("" : GoString);
        };
    }
private function _testTestDir(_t:Ref<stdgo.testing.Testing.T>, _path:GoString, _ignore:haxe.Rest<GoString>):Void {
        var _ignore = new Slice<GoString>(_ignore.length, 0, ..._ignore);
        var __tmp__ = stdgo.os.Os.readDir(_path), _files:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _excluded = ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            @:mergeBlock {};
            x;
        } : GoMap<GoString, Bool>);
        for (__0 => _filename in _ignore) {
            _excluded[_filename] = true;
        };
        var _fset = stdgo.go.token.Token.newFileSet();
        for (__1 => _f in _files) {
            if ((_f.isDir() || !stdgo.strings.Strings.hasSuffix(_f.name(), (".go" : GoString))) || _excluded[_f.name()]) {
                continue;
            };
            var _expectErrors:Bool = false;
            var _filename:GoString = stdgo.path.filepath.Filepath.join(_path, _f.name());
            var _goVersion:GoString = Go.str();
            {
                var _comment:GoString = _firstComment(_filename);
                if (_comment != (Go.str())) {
                    var _fields = stdgo.strings.Strings.fields(_comment);
                    {
                        var __continue__ = false;
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _fields[(0 : GoInt)];
                                if (__value__ == (("skip" : GoString)) || __value__ == (("compiledir" : GoString))) {
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (("errorcheck" : GoString))) {
                                    _expectErrors = true;
                                    for (__2 => _arg in (_fields.__slice__((1 : GoInt)) : Slice<GoString>)) {
                                        if (((_arg == ("-0" : GoString)) || (_arg == ("-+" : GoString))) || (_arg == ("-std" : GoString))) {
                                            _expectErrors = false;
                                            break;
                                        };
                                        {};
                                        if (stdgo.strings.Strings.hasPrefix(_arg, ("-lang=" : GoString))) {
                                            _goVersion = (_arg.__slice__((("-lang=" : GoString).length)) : GoString);
                                        };
                                    };
                                    break;
                                };
                            };
                            break;
                        };
                        if (__continue__) continue;
                    };
                };
            };
            var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, _filename, (null : AnyInterface), (0u32 : stdgo.go.parser.Parser.Mode)), _file:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                var _conf:stdgo.go.types.Types.Config = ({ goVersion : _goVersion, importer : _stdLibImporter } : Config);
                {
                    var __tmp__ = _conf.check(_filename, _fset, (new Slice<Ref<stdgo.go.ast.Ast.File>>(1, 1, _file) : Slice<Ref<stdgo.go.ast.Ast.File>>), null);
                    _err = __tmp__._1;
                };
            };
            if (_expectErrors) {
                if (_err == null) {
                    _t.errorf(("expected errors but found none in %s" : GoString), Go.toInterface(_filename));
                };
            } else {
                if (_err != null) {
                    _t.error(Go.toInterface(_err));
                };
            };
        };
    }
function testStdTest(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        if (stdgo.testing.Testing.short() && (stdgo.internal.testenv.Testenv.builder() == Go.str())) {
            _t.skip(Go.toInterface(("skipping in short mode" : GoString)));
        };
        _testTestDir(_t, stdgo.path.filepath.Filepath.join(stdgo.internal.testenv.Testenv.goroot(Go.asInterface(_t)), ("test" : GoString)), ("cmplxdivide.go" : GoString), ("directive.go" : GoString), ("directive2.go" : GoString), ("embedfunc.go" : GoString), ("embedvers.go" : GoString), ("linkname2.go" : GoString), ("linkname3.go" : GoString));
    }
function testStdFixed(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        if (stdgo.testing.Testing.short() && (stdgo.internal.testenv.Testenv.builder() == Go.str())) {
            _t.skip(Go.toInterface(("skipping in short mode" : GoString)));
        };
        _testTestDir(_t,
stdgo.path.filepath.Filepath.join(stdgo.internal.testenv.Testenv.goroot(Go.asInterface(_t)), ("test" : GoString), ("fixedbugs" : GoString)),
("bug248.go" : GoString),
("bug302.go" : GoString),
("bug369.go" : GoString),
("issue6889.go" : GoString),
("issue11362.go" : GoString),
("issue16369.go" : GoString),
("issue18459.go" : GoString),
("issue18882.go" : GoString),
("issue20529.go" : GoString),
("issue22200.go" : GoString),
("issue22200b.go" : GoString),
("issue25507.go" : GoString),
("issue20780.go" : GoString),
("bug251.go" : GoString),
("issue42058a.go" : GoString),
("issue42058b.go" : GoString),
("issue48097.go" : GoString),
("issue48230.go" : GoString),
("issue49767.go" : GoString),
("issue49814.go" : GoString),
("issue56103.go" : GoString),
("bug514.go" : GoString),
("issue40954.go" : GoString),
("issue42032.go" : GoString),
("issue42076.go" : GoString),
("issue46903.go" : GoString),
("issue51733.go" : GoString),
("notinheap2.go" : GoString),
("notinheap3.go" : GoString));
    }
function testStdKen(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        _testTestDir(_t, stdgo.path.filepath.Filepath.join(stdgo.internal.testenv.Testenv.goroot(Go.asInterface(_t)), ("test" : GoString), ("ken" : GoString)));
    }
/**
    // typecheckFiles typechecks the given package files.
**/
private function _typecheckFiles(_t:Ref<stdgo.testing.Testing.T>, _path:GoString, _filenames:Slice<GoString>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        var _files:Slice<Ref<stdgo.go.ast.Ast.File>> = (null : Slice<Ref<stdgo.go.ast.Ast.File>>);
        for (__0 => _filename in _filenames) {
            var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, _filename, (null : AnyInterface), (32u32 : stdgo.go.parser.Parser.Mode)), _file:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_err) : stdgo.go.scanner.Scanner.ErrorList)) : stdgo.go.scanner.Scanner.ErrorList), ok : true };
                    } catch(_) {
                        { value : new stdgo.go.scanner.Scanner.ErrorList(0, 0), ok : false };
                    }, _list = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        for (__1 => _err in _list) {
                            _t.error(Go.toInterface(Go.asInterface(_err)));
                        };
                        return;
                    };
                };
                _t.error(Go.toInterface(_err));
                return;
            };
            if (stdgo.testing.Testing.verbose()) {
                if ((_files.length) == ((0 : GoInt))) {
                    stdgo.fmt.Fmt.println(Go.toInterface(("package" : GoString)), Go.toInterface(_file.name.name));
                };
                stdgo.fmt.Fmt.println(Go.toInterface(("\t" : GoString)), Go.toInterface(_filename));
            };
            _files = (_files.__append__(_file));
        };
        var _conf:stdgo.go.types.Types.Config = ({ error : function(_err:Error):Void {
            _t.helper();
            _t.error(Go.toInterface(_err));
        }, importer : _stdLibImporter } : Config);
        var _info:stdgo.go.types.Types.Info = ({ uses : ({
            final x = new GoRefMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : GoMap<Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : Info);
        _conf.check(_path, _fset, _files, (Go.setRef(_info) : Ref<stdgo.go.types.Types.Info>));
        var _errorError = (Go.typeAssert((Go.toInterface(universe.lookup(("error" : GoString)).type().underlying()) : Ref<Interface>)) : Ref<Interface>).explicitMethod((0 : GoInt));
        for (_id => _obj in _info.uses) {
            var _predeclared:Bool = (Go.toInterface(_obj) == Go.toInterface(universe.lookup(_obj.name()))) || (Go.toInterface(_obj) == Go.toInterface(Go.asInterface(_errorError)));
            if (_predeclared == ((_obj.pkg() != null && ((_obj.pkg() : Dynamic).__nil__ == null || !(_obj.pkg() : Dynamic).__nil__)))) {
                var _posn:stdgo.go.token.Token.Position = _fset.position(_id.pos())?.__copy__();
                if (_predeclared) {
                    _t.errorf(("%s: predeclared object with package: %s" : GoString), Go.toInterface(Go.asInterface(_posn)), Go.toInterface(_obj));
                } else {
                    _t.errorf(("%s: user-defined object without package: %s" : GoString), Go.toInterface(Go.asInterface(_posn)), Go.toInterface(_obj));
                };
            };
        };
    }
/**
    // pkgFilenames returns the list of package filenames for the given directory.
**/
private function _pkgFilenames(_dir:GoString):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _ctxt:stdgo.go.build.Build.Context = stdgo.go.build.Build.default_?.__copy__();
        _ctxt.cgoEnabled = false;
        var __tmp__ = _ctxt.importDir(_dir, (0u32 : stdgo.go.build.Build.ImportMode)), _pkg:Ref<stdgo.go.build.Build.Package> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_err) : Ref<stdgo.go.build.Build.NoGoError>)) : Ref<stdgo.go.build.Build.NoGoError>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.build.Build.NoGoError>), ok : false };
                }, __0 = __tmp__.value, _nogo = __tmp__.ok;
                if (_nogo) {
                    return { _0 : (null : Slice<GoString>), _1 : (null : Error) };
                };
            };
            return { _0 : (null : Slice<GoString>), _1 : _err };
        };
        if (_excluded[_pkg.importPath]) {
            return { _0 : (null : Slice<GoString>), _1 : (null : Error) };
        };
        var _filenames:Slice<GoString> = (null : Slice<GoString>);
        for (__1 => _name in _pkg.goFiles) {
            _filenames = (_filenames.__append__(stdgo.path.filepath.Filepath.join(_pkg.dir, _name)));
        };
        for (__2 => _name in _pkg.testGoFiles) {
            _filenames = (_filenames.__append__(stdgo.path.filepath.Filepath.join(_pkg.dir, _name)));
        };
        return { _0 : _filenames, _1 : (null : Error) };
    }
private function _walkPkgDirs(_dir:GoString, _pkgh:(_dir:GoString, _filenames:Slice<GoString>) -> Void, _errh:(_args:haxe.Rest<AnyInterface>) -> Void):stdgo.time.Time.Duration {
        var _w:stdgo.go.types_test.Types_test.T_walker = (new T_walker(stdgo.time.Time.now()?.__copy__(), (10000000i64 : stdgo.time.Time.Duration), _pkgh, _errh) : T_walker);
        _w._walk(_dir);
        return stdgo.time.Time.since(_w._start?.__copy__());
    }
/**
    // dup returns a testEntry where both src and str are the same.
**/
private function _dup(_s:GoString):T_testEntry {
        return (new T_testEntry(_s, _s) : T_testEntry);
    }
function testTypeString(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        var _tests:Slice<T_testEntry> = (null : Slice<stdgo.go.types_test.Types_test.T_testEntry>);
        _tests = (_tests.__append__(..._independentTestTypes.__toArray__()));
        _tests = (_tests.__append__(..._dependentTestTypes.__toArray__()));
        for (__0 => _test in _tests) {
            var _src:GoString = ("package p; import \"io\"; type _ io.Writer; type T " : GoString) + _test._src;
            var __tmp__ = _typecheck(("<src>" : GoString), _src, null), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("%s: %s" : GoString), Go.toInterface(_src), Go.toInterface(_err));
                continue;
            };
            var _obj:stdgo.go.types.Types.Object = _pkg.scope().lookup(("T" : GoString));
            if (_obj == null) {
                _t.errorf(("%s: T not found" : GoString), Go.toInterface(_test._src));
                continue;
            };
            var _typ:stdgo.go.types.Types.Type = _obj.type().underlying();
            {
                var _got:GoString = (_typ.string() : GoString);
                if (_got != (_test._str)) {
                    _t.errorf(("%s: got %s, want %s" : GoString), Go.toInterface(_test._src), Go.toInterface(_got), Go.toInterface(_test._str));
                };
            };
        };
    }
function testQualifiedTypeString(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _p = _mustTypecheck(("p.go" : GoString), ("package p; type T int" : GoString), null);
        var _q = _mustTypecheck(("q.go" : GoString), ("package q" : GoString), null);
        var _pT:stdgo.go.types.Types.Type = _p.scope().lookup(("T" : GoString)).type();
        for (__0 => _test in (new Slice<T__struct_33>(6, 6, ({ _typ : (null : stdgo.go.types.Types.Type), _this : null, _want : ("<nil>" : GoString) } : T__struct_33), ({ _typ : _pT, _this : null, _want : ("p.T" : GoString) } : T__struct_33), ({ _typ : _pT, _this : _p, _want : ("T" : GoString) } : T__struct_33), ({ _typ : _pT, _this : _q, _want : ("p.T" : GoString) } : T__struct_33), ({ _typ : Go.asInterface(newPointer(_pT)), _this : _p, _want : ("*T" : GoString) } : T__struct_33), ({ _typ : Go.asInterface(newPointer(_pT)), _this : _q, _want : ("*p.T" : GoString) } : T__struct_33)) : Slice<T__struct_33>)) {
            var _qualifier = function(_pkg:Ref<Package>):GoString {
                if (_pkg != (_test._this)) {
                    return _pkg.name();
                };
                return Go.str();
            };
            {
                var _got:GoString = typeString(_test._typ, _qualifier);
                if (_got != (_test._want)) {
                    _t.errorf(("TypeString(%s, %s) = %s, want %s" : GoString), Go.toInterface(Go.asInterface(_test._this)), Go.toInterface(_test._typ), Go.toInterface(_got), Go.toInterface(_test._want));
                };
            };
        };
    }
class T_gen_asInterface {
    @:keep
    public dynamic function _factorials(_n:GoInt):Void __self__.value._factorials(_n);
    @:keep
    public dynamic function _binomials(_n:GoInt):Void __self__.value._binomials(_n);
    @:keep
    public dynamic function _printProduct(_n:GoInt):Void __self__.value._printProduct(_n);
    @:keep
    public dynamic function _verify(_n:GoInt):Void __self__.value._verify(_n);
    @:keep
    public dynamic function _product(_n:GoInt):Void __self__.value._product(_n);
    @:keep
    public dynamic function _inverse(_n:GoInt):Void __self__.value._inverse(_n);
    @:keep
    public dynamic function _hilbert(_n:GoInt):Void __self__.value._hilbert(_n);
    @:keep
    public dynamic function _p(_format:GoString, _args:haxe.Rest<AnyInterface>):Void __self__.value._p(_format, ..._args);
    @:embedded
    public dynamic function _tryGrowByReslice(_offset:GoInt):{ var _0 : GoInt; var _1 : Bool; } return __self__.value._tryGrowByReslice(_offset);
    @:embedded
    public dynamic function _readSlice(__0:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value._readSlice(__0);
    @:embedded
    public dynamic function _grow(_offset:GoInt):GoInt return __self__.value._grow(_offset);
    @:embedded
    public dynamic function _empty():Bool return __self__.value._empty();
    @:embedded
    public dynamic function writeTo(__0:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } return __self__.value.writeTo(__0);
    @:embedded
    public dynamic function writeString(__0:GoString):{ var _0 : GoInt; var _1 : Error; } return __self__.value.writeString(__0);
    @:embedded
    public dynamic function writeRune(_new:GoInt32):{ var _0 : GoInt; var _1 : Error; } return __self__.value.writeRune(_new);
    @:embedded
    public dynamic function writeByte(__0:GoUInt8):Error return __self__.value.writeByte(__0);
    @:embedded
    public dynamic function write(_content:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_content);
    @:embedded
    public dynamic function unreadRune():Error return __self__.value.unreadRune();
    @:embedded
    public dynamic function unreadByte():Error return __self__.value.unreadByte();
    @:embedded
    public dynamic function truncate(_offset:GoInt):Void __self__.value.truncate(_offset);
    @:embedded
    public dynamic function string():GoString return __self__.value.string();
    @:embedded
    public dynamic function reset():Void __self__.value.reset();
    @:embedded
    public dynamic function readString(__0:GoUInt8):{ var _0 : GoString; var _1 : Error; } return __self__.value.readString(__0);
    @:embedded
    public dynamic function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : Error; } return __self__.value.readRune();
    @:embedded
    public dynamic function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } return __self__.value.readFrom(_r);
    @:embedded
    public dynamic function readBytes(__0:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.readBytes(__0);
    @:embedded
    public dynamic function readByte():{ var _0 : GoUInt8; var _1 : Error; } return __self__.value.readByte();
    @:embedded
    public dynamic function read(_content:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_content);
    @:embedded
    public dynamic function next(_offset:GoInt):Slice<GoUInt8> return __self__.value.next(_offset);
    @:embedded
    public dynamic function len():GoInt return __self__.value.len();
    @:embedded
    public dynamic function grow(_offset:GoInt):Void __self__.value.grow(_offset);
    @:embedded
    public dynamic function cap():GoInt return __self__.value.cap();
    @:embedded
    public dynamic function bytes():Slice<GoUInt8> return __self__.value.bytes();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_gen>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T_gen_asInterface) class T_gen_static_extension {
    @:keep
    static public function _factorials( _g:Ref<T_gen>, _n:GoInt):Void {
        _g._p(("// Factorials\nconst (\n\tf0 = 1\n\tf1 = 1\n" : GoString));
        {
            var _i:GoInt = (2 : GoInt);
            Go.cfor(_i <= _n, _i++, {
                _g._p(("\tf%d = f%d * %d\n" : GoString), Go.toInterface(_i), Go.toInterface(_i - (1 : GoInt)), Go.toInterface(_i));
            });
        };
        _g._p((")\n\n" : GoString));
    }
    @:keep
    static public function _binomials( _g:Ref<T_gen>, _n:GoInt):Void {
        _g._p(("// Binomials\nconst (\n" : GoString));
        {
            var _j:GoInt = (0 : GoInt);
            Go.cfor(_j <= _n, _j++, {
                if (_j > (0 : GoInt)) {
                    _g._p(("\n" : GoString));
                };
                {
                    var _k:GoInt = (0 : GoInt);
                    Go.cfor(_k <= _j, _k++, {
                        _g._p(("\tb%d_%d = f%d / (f%d*f%d)\n" : GoString), Go.toInterface(_j), Go.toInterface(_k), Go.toInterface(_j), Go.toInterface(_k), Go.toInterface(_j - _k));
                    });
                };
            });
        };
        _g._p((")\n\n" : GoString));
    }
    @:keep
    static public function _printProduct( _g:Ref<T_gen>, _n:GoInt):Void {
        _g._p(("func printProduct() {\n" : GoString));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _n, _i++, {
                _g._p(("\tprintln(" : GoString));
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < _n, _j++, {
                        if (_j > (0 : GoInt)) {
                            _g._p((", " : GoString));
                        };
                        _g._p(("p%d_%d" : GoString), Go.toInterface(_i), Go.toInterface(_j));
                    });
                };
                _g._p((")\n" : GoString));
            });
        };
        _g._p(("}\n\n" : GoString));
    }
    @:keep
    static public function _verify( _g:Ref<T_gen>, _n:GoInt):Void {
        _g._p(("// Verify that product is the identity matrix\nconst ok =\n" : GoString));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _n, _i++, {
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < _n, _j++, {
                        if (_j == ((0 : GoInt))) {
                            _g._p(("\t" : GoString));
                        } else {
                            _g._p((" && " : GoString));
                        };
                        var _v:GoInt = (0 : GoInt);
                        if (_i == (_j)) {
                            _v = (1 : GoInt);
                        };
                        _g._p(("p%d_%d == %d" : GoString), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_v));
                    });
                };
                _g._p((" &&\n" : GoString));
            });
        };
        _g._p(("\ttrue\n\n" : GoString));
        if (_out.value == (Go.str())) {
            _g._p(("const _ = assert(ok)\n\n" : GoString));
        };
    }
    @:keep
    static public function _product( _g:Ref<T_gen>, _n:GoInt):Void {
        _g._p(("// Product matrix\nconst (\n" : GoString));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _n, _i++, {
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < _n, _j++, {
                        _g._p(("\tp%d_%d = " : GoString), Go.toInterface(_i), Go.toInterface(_j));
                        {
                            var _k:GoInt = (0 : GoInt);
                            Go.cfor(_k < _n, _k++, {
                                if (_k > (0 : GoInt)) {
                                    _g._p((" + " : GoString));
                                };
                                _g._p(("h%d_%d*i%d_%d" : GoString), Go.toInterface(_i), Go.toInterface(_k), Go.toInterface(_k), Go.toInterface(_j));
                            });
                        };
                        _g._p(("\n" : GoString));
                    });
                };
                _g._p(("\n" : GoString));
            });
        };
        _g._p((")\n\n" : GoString));
    }
    @:keep
    static public function _inverse( _g:Ref<T_gen>, _n:GoInt):Void {
        _g._p(("// Inverse Hilbert matrix\nconst (\n" : GoString));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _n, _i++, {
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < _n, _j++, {
                        var _s:GoString = ("+" : GoString);
                        if ((_i + _j) & (1 : GoInt) != ((0 : GoInt))) {
                            _s = ("-" : GoString);
                        };
                        _g._p(("\ti%d_%d = %s%d * b%d_%d * b%d_%d * b%d_%d * b%d_%d\n" : GoString),
Go.toInterface(_i),
Go.toInterface(_j),
Go.toInterface(_s),
Go.toInterface((_i + _j) + (1 : GoInt)),
Go.toInterface(_n + _i),
Go.toInterface((_n - _j) - (1 : GoInt)),
Go.toInterface(_n + _j),
Go.toInterface((_n - _i) - (1 : GoInt)),
Go.toInterface(_i + _j),
Go.toInterface(_i),
Go.toInterface(_i + _j),
Go.toInterface(_i));
                    });
                };
                _g._p(("\n" : GoString));
            });
        };
        _g._p((")\n\n" : GoString));
    }
    @:keep
    static public function _hilbert( _g:Ref<T_gen>, _n:GoInt):Void {
        _g._p(("// Hilbert matrix, n = %d\nconst (\n" : GoString), Go.toInterface(_n));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _n, _i++, {
                _g._p(("\t" : GoString));
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < _n, _j++, {
                        if (_j > (0 : GoInt)) {
                            _g._p((", " : GoString));
                        };
                        _g._p(("h%d_%d" : GoString), Go.toInterface(_i), Go.toInterface(_j));
                    });
                };
                if (_i == ((0 : GoInt))) {
                    _g._p((" = " : GoString));
                    {
                        var _j:GoInt = (0 : GoInt);
                        Go.cfor(_j < _n, _j++, {
                            if (_j > (0 : GoInt)) {
                                _g._p((", " : GoString));
                            };
                            _g._p(("1.0/(iota + %d)" : GoString), Go.toInterface(_j + (1 : GoInt)));
                        });
                    };
                };
                _g._p(("\n" : GoString));
            });
        };
        _g._p((")\n\n" : GoString));
    }
    @:keep
    static public function _p( _g:Ref<T_gen>, _format:GoString, _args:haxe.Rest<AnyInterface>):Void {
        var _args = new Slice<AnyInterface>(_args.length, 0, ..._args);
        stdgo.fmt.Fmt.fprintf(Go.asInterface((Go.setRef(_g.buffer) : Ref<stdgo.bytes.Bytes.Buffer>)), _format, ..._args.__toArray__());
    }
    @:embedded
    public static function _tryGrowByReslice( __self__:T_gen, _offset:GoInt):{ var _0 : GoInt; var _1 : Bool; } return __self__._tryGrowByReslice(_offset);
    @:embedded
    public static function _readSlice( __self__:T_gen, __0:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__._readSlice(__0);
    @:embedded
    public static function _grow( __self__:T_gen, _offset:GoInt):GoInt return __self__._grow(_offset);
    @:embedded
    public static function _empty( __self__:T_gen):Bool return __self__._empty();
    @:embedded
    public static function writeTo( __self__:T_gen, __0:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } return __self__.writeTo(__0);
    @:embedded
    public static function writeString( __self__:T_gen, __0:GoString):{ var _0 : GoInt; var _1 : Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeRune( __self__:T_gen, _new:GoInt32):{ var _0 : GoInt; var _1 : Error; } return __self__.writeRune(_new);
    @:embedded
    public static function writeByte( __self__:T_gen, __0:GoUInt8):Error return __self__.writeByte(__0);
    @:embedded
    public static function write( __self__:T_gen, _content:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.write(_content);
    @:embedded
    public static function unreadRune( __self__:T_gen):Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:T_gen):Error return __self__.unreadByte();
    @:embedded
    public static function truncate( __self__:T_gen, _offset:GoInt) __self__.truncate(_offset);
    @:embedded
    public static function string( __self__:T_gen):GoString return __self__.string();
    @:embedded
    public static function reset( __self__:T_gen) __self__.reset();
    @:embedded
    public static function readString( __self__:T_gen, __0:GoUInt8):{ var _0 : GoString; var _1 : Error; } return __self__.readString(__0);
    @:embedded
    public static function readRune( __self__:T_gen):{ var _0 : GoInt32; var _1 : GoInt; var _2 : Error; } return __self__.readRune();
    @:embedded
    public static function readFrom( __self__:T_gen, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } return __self__.readFrom(_r);
    @:embedded
    public static function readBytes( __self__:T_gen, __0:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.readBytes(__0);
    @:embedded
    public static function readByte( __self__:T_gen):{ var _0 : GoUInt8; var _1 : Error; } return __self__.readByte();
    @:embedded
    public static function read( __self__:T_gen, _content:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.read(_content);
    @:embedded
    public static function next( __self__:T_gen, _offset:GoInt):Slice<GoUInt8> return __self__.next(_offset);
    @:embedded
    public static function len( __self__:T_gen):GoInt return __self__.len();
    @:embedded
    public static function grow( __self__:T_gen, _offset:GoInt) __self__.grow(_offset);
    @:embedded
    public static function cap( __self__:T_gen):GoInt return __self__.cap();
    @:embedded
    public static function bytes( __self__:T_gen):Slice<GoUInt8> return __self__.bytes();
}
class T_importHelper_asInterface {
    @:keep
    public dynamic function import_(_path:GoString):{ var _0 : Ref<Package>; var _1 : Error; } return __self__.value.import_(_path);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_importHelper>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T_importHelper_asInterface) class T_importHelper_static_extension {
    @:keep
    static public function import_( _h:T_importHelper, _path:GoString):{ var _0 : Ref<Package>; var _1 : Error; } {
        if (_path == (_h._pkg.path())) {
            return { _0 : _h._pkg, _1 : (null : Error) };
        };
        if (_h._fallback == null) {
            return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("got package path %q; want %q" : GoString), Go.toInterface(_path), Go.toInterface(_h._pkg.path())) };
        };
        return _h._fallback.import_(_path);
    }
}
class T_resolveTestImporter_asInterface {
    @:keep
    public dynamic function importFrom(_path:GoString, _srcDir:GoString, _mode:ImportMode):{ var _0 : Ref<Package>; var _1 : Error; } return __self__.value.importFrom(_path, _srcDir, _mode);
    @:keep
    public dynamic function import_(_0:GoString):{ var _0 : Ref<Package>; var _1 : Error; } return __self__.value.import_(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_resolveTestImporter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T_resolveTestImporter_asInterface) class T_resolveTestImporter_static_extension {
    @:keep
    static public function importFrom( _imp:Ref<T_resolveTestImporter>, _path:GoString, _srcDir:GoString, _mode:ImportMode):{ var _0 : Ref<Package>; var _1 : Error; } {
        if (_mode != ((0 : stdgo.go.types.Types.ImportMode))) {
            throw Go.toInterface(("mode must be 0" : GoString));
        };
        if (_imp._importer == null) {
            _imp._importer = (Go.typeAssert((Go.toInterface(stdgo.go.importer.Importer.default_()) : ImporterFrom)) : ImporterFrom);
            _imp._imported = ({
                final x = new stdgo.GoMap.GoStringMap<Bool>();
                x.__defaultValue__ = () -> false;
                @:mergeBlock {};
                x;
            } : GoMap<GoString, Bool>);
        };
        var __tmp__ = _imp._importer.importFrom(_path, _srcDir, _mode), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        _imp._imported[_path] = true;
        return { _0 : _pkg, _1 : (null : Error) };
    }
    @:keep
    static public function import_( _imp:Ref<T_resolveTestImporter>, _0:GoString):{ var _0 : Ref<Package>; var _1 : Error; } {
        throw Go.toInterface(("should not be called" : GoString));
    }
}
class T_walker_asInterface {
    @:keep
    public dynamic function _walk(_dir:GoString):Void __self__.value._walk(_dir);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_walker>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T_walker_asInterface) class T_walker_static_extension {
    @:keep
    static public function _walk( _w:Ref<T_walker>, _dir:GoString):Void {
        if (stdgo.testing.Testing.short() && (stdgo.time.Time.since(_w._start?.__copy__()) >= _w._dmax)) {
            return;
        };
        var __tmp__ = stdgo.os.Os.readDir(_dir), _files:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _w._errh(Go.toInterface(_err));
            return;
        };
        var __tmp__ = _pkgFilenames(_dir), _pkgFiles:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _w._errh(Go.toInterface(_err));
            return;
        };
        if (_pkgFiles != null) {
            _w._pkgh(_dir, _pkgFiles);
        };
        for (__0 => _f in _files) {
            if (_f.isDir() && (_f.name() != ("testdata" : GoString))) {
                _w._walk(stdgo.path.filepath.Filepath.join(_dir, _f.name()));
            };
        };
    }
}
class T_testImporter_asInterface {
    @:keep
    public dynamic function import_(_path:GoString):{ var _0 : Ref<Package>; var _1 : Error; } return __self__.value.import_(_path);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_testImporter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T_testImporter_asInterface) class T_testImporter_static_extension {
    @:keep
    static public function import_( _m:T_testImporter, _path:GoString):{ var _0 : Ref<Package>; var _1 : Error; } {
        {
            var _pkg = _m[_path];
            if (_pkg != null && ((_pkg : Dynamic).__nil__ == null || !(_pkg : Dynamic).__nil__)) {
                return { _0 : _pkg, _1 : (null : Error) };
            };
        };
        return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("package %q not found" : GoString), Go.toInterface(_path)) };
    }
}
