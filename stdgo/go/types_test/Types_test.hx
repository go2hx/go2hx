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
import stdgo.go.types.Types;
/**
    // Copyright 2021 The Go Authors. All rights reserved.
    // Use of this source code is governed by a BSD-style
    // license that can be found in the LICENSE file.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
var _builtinCalls : stdgo.Slice<T__struct_27> = (new stdgo.Slice<T__struct_27>(
108,
108,
({ _name : ("append" : stdgo.GoString), _src : ("var s []int; _ = append(s)" : stdgo.GoString), _sig : ("func([]int, ...int) []int" : stdgo.GoString) } : T__struct_27),
({ _name : ("append" : stdgo.GoString), _src : ("var s []int; _ = append(s, 0)" : stdgo.GoString), _sig : ("func([]int, ...int) []int" : stdgo.GoString) } : T__struct_27),
({ _name : ("append" : stdgo.GoString), _src : ("var s []int; _ = (append)(s, 0)" : stdgo.GoString), _sig : ("func([]int, ...int) []int" : stdgo.GoString) } : T__struct_27),
({ _name : ("append" : stdgo.GoString), _src : ("var s []byte; _ = ((append))(s, 0)" : stdgo.GoString), _sig : ("func([]byte, ...byte) []byte" : stdgo.GoString) } : T__struct_27),
({ _name : ("append" : stdgo.GoString), _src : ("var s []byte; _ = append(s, \"foo\"...)" : stdgo.GoString), _sig : ("func([]byte, string...) []byte" : stdgo.GoString) } : T__struct_27),
({ _name : ("append" : stdgo.GoString), _src : ("type T []byte; var s T; var str string; _ = append(s, str...)" : stdgo.GoString), _sig : ("func(p.T, string...) p.T" : stdgo.GoString) } : T__struct_27),
({ _name : ("append" : stdgo.GoString), _src : ("type T []byte; type U string; var s T; var str U; _ = append(s, str...)" : stdgo.GoString), _sig : ("func(p.T, p.U...) p.T" : stdgo.GoString) } : T__struct_27),
({ _name : ("cap" : stdgo.GoString), _src : ("var s [10]int; _ = cap(s)" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("cap" : stdgo.GoString), _src : ("var s [10]int; _ = cap(&s)" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("cap" : stdgo.GoString), _src : ("var s []int64; _ = cap(s)" : stdgo.GoString), _sig : ("func([]int64) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("cap" : stdgo.GoString), _src : ("var c chan<-bool; _ = cap(c)" : stdgo.GoString), _sig : ("func(chan<- bool) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("cap" : stdgo.GoString), _src : ("type S []byte; var s S; _ = cap(s)" : stdgo.GoString), _sig : ("func(p.S) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("cap" : stdgo.GoString), _src : ("var s P; _ = cap(s)" : stdgo.GoString), _sig : ("func(P) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("len" : stdgo.GoString), _src : ("_ = len(\"foo\")" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("len" : stdgo.GoString), _src : ("var s string; _ = len(s)" : stdgo.GoString), _sig : ("func(string) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("len" : stdgo.GoString), _src : ("var s [10]int; _ = len(s)" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("len" : stdgo.GoString), _src : ("var s [10]int; _ = len(&s)" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("len" : stdgo.GoString), _src : ("var s []int64; _ = len(s)" : stdgo.GoString), _sig : ("func([]int64) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("len" : stdgo.GoString), _src : ("var c chan<-bool; _ = len(c)" : stdgo.GoString), _sig : ("func(chan<- bool) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("len" : stdgo.GoString), _src : ("var m map[string]float32; _ = len(m)" : stdgo.GoString), _sig : ("func(map[string]float32) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("len" : stdgo.GoString), _src : ("type S []byte; var s S; _ = len(s)" : stdgo.GoString), _sig : ("func(p.S) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("len" : stdgo.GoString), _src : ("var s P; _ = len(s)" : stdgo.GoString), _sig : ("func(P) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("clear" : stdgo.GoString), _src : ("var m map[float64]int; clear(m)" : stdgo.GoString), _sig : ("func(map[float64]int)" : stdgo.GoString) } : T__struct_27),
({ _name : ("clear" : stdgo.GoString), _src : ("var s []byte; clear(s)" : stdgo.GoString), _sig : ("func([]byte)" : stdgo.GoString) } : T__struct_27),
({ _name : ("close" : stdgo.GoString), _src : ("var c chan int; close(c)" : stdgo.GoString), _sig : ("func(chan int)" : stdgo.GoString) } : T__struct_27),
({ _name : ("close" : stdgo.GoString), _src : ("var c chan<- chan string; close(c)" : stdgo.GoString), _sig : ("func(chan<- chan string)" : stdgo.GoString) } : T__struct_27),
({ _name : ("complex" : stdgo.GoString), _src : ("_ = complex(1, 0)" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("complex" : stdgo.GoString), _src : ("var re float32; _ = complex(re, 1.0)" : stdgo.GoString), _sig : ("func(float32, float32) complex64" : stdgo.GoString) } : T__struct_27),
({ _name : ("complex" : stdgo.GoString), _src : ("var im float64; _ = complex(1, im)" : stdgo.GoString), _sig : ("func(float64, float64) complex128" : stdgo.GoString) } : T__struct_27),
({ _name : ("complex" : stdgo.GoString), _src : ("type F32 float32; var re, im F32; _ = complex(re, im)" : stdgo.GoString), _sig : ("func(p.F32, p.F32) complex64" : stdgo.GoString) } : T__struct_27),
({ _name : ("complex" : stdgo.GoString), _src : ("type F64 float64; var re, im F64; _ = complex(re, im)" : stdgo.GoString), _sig : ("func(p.F64, p.F64) complex128" : stdgo.GoString) } : T__struct_27),
({ _name : ("copy" : stdgo.GoString), _src : ("var src, dst []byte; copy(dst, src)" : stdgo.GoString), _sig : ("func([]byte, []byte) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("copy" : stdgo.GoString), _src : ("type T [][]int; var src, dst T; _ = copy(dst, src)" : stdgo.GoString), _sig : ("func(p.T, p.T) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("copy" : stdgo.GoString), _src : ("var src string; var dst []byte; copy(dst, src)" : stdgo.GoString), _sig : ("func([]byte, string) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("copy" : stdgo.GoString), _src : ("type T string; type U []byte; var src T; var dst U; copy(dst, src)" : stdgo.GoString), _sig : ("func(p.U, p.T) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("copy" : stdgo.GoString), _src : ("var dst []byte; copy(dst, \"hello\")" : stdgo.GoString), _sig : ("func([]byte, string) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("delete" : stdgo.GoString), _src : ("var m map[string]bool; delete(m, \"foo\")" : stdgo.GoString), _sig : ("func(map[string]bool, string)" : stdgo.GoString) } : T__struct_27),
({ _name : ("delete" : stdgo.GoString), _src : ("type (K string; V int); var m map[K]V; delete(m, \"foo\")" : stdgo.GoString), _sig : ("func(map[p.K]p.V, p.K)" : stdgo.GoString) } : T__struct_27),
({ _name : ("imag" : stdgo.GoString), _src : ("_ = imag(1i)" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("imag" : stdgo.GoString), _src : ("var c complex64; _ = imag(c)" : stdgo.GoString), _sig : ("func(complex64) float32" : stdgo.GoString) } : T__struct_27),
({ _name : ("imag" : stdgo.GoString), _src : ("var c complex128; _ = imag(c)" : stdgo.GoString), _sig : ("func(complex128) float64" : stdgo.GoString) } : T__struct_27),
({ _name : ("imag" : stdgo.GoString), _src : ("type C64 complex64; var c C64; _ = imag(c)" : stdgo.GoString), _sig : ("func(p.C64) float32" : stdgo.GoString) } : T__struct_27),
({ _name : ("imag" : stdgo.GoString), _src : ("type C128 complex128; var c C128; _ = imag(c)" : stdgo.GoString), _sig : ("func(p.C128) float64" : stdgo.GoString) } : T__struct_27),
({ _name : ("real" : stdgo.GoString), _src : ("_ = real(1i)" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("real" : stdgo.GoString), _src : ("var c complex64; _ = real(c)" : stdgo.GoString), _sig : ("func(complex64) float32" : stdgo.GoString) } : T__struct_27),
({ _name : ("real" : stdgo.GoString), _src : ("var c complex128; _ = real(c)" : stdgo.GoString), _sig : ("func(complex128) float64" : stdgo.GoString) } : T__struct_27),
({ _name : ("real" : stdgo.GoString), _src : ("type C64 complex64; var c C64; _ = real(c)" : stdgo.GoString), _sig : ("func(p.C64) float32" : stdgo.GoString) } : T__struct_27),
({ _name : ("real" : stdgo.GoString), _src : ("type C128 complex128; var c C128; _ = real(c)" : stdgo.GoString), _sig : ("func(p.C128) float64" : stdgo.GoString) } : T__struct_27),
({ _name : ("make" : stdgo.GoString), _src : ("_ = make([]int, 10)" : stdgo.GoString), _sig : ("func([]int, int) []int" : stdgo.GoString) } : T__struct_27),
({ _name : ("make" : stdgo.GoString), _src : ("type T []byte; _ = make(T, 10, 20)" : stdgo.GoString), _sig : ("func(p.T, int, int) p.T" : stdgo.GoString) } : T__struct_27),
({ _name : ("make" : stdgo.GoString), _src : ("              _ = make([]int, 0   )" : stdgo.GoString), _sig : ("func([]int, int) []int" : stdgo.GoString) } : T__struct_27),
({ _name : ("make" : stdgo.GoString), _src : ("var l    int; _ = make([]int, l   )" : stdgo.GoString), _sig : ("func([]int, int) []int" : stdgo.GoString) } : T__struct_27),
({ _name : ("make" : stdgo.GoString), _src : ("              _ = make([]int, 0, 0)" : stdgo.GoString), _sig : ("func([]int, int, int) []int" : stdgo.GoString) } : T__struct_27),
({ _name : ("make" : stdgo.GoString), _src : ("var l    int; _ = make([]int, l, 0)" : stdgo.GoString), _sig : ("func([]int, int, int) []int" : stdgo.GoString) } : T__struct_27),
({ _name : ("make" : stdgo.GoString), _src : ("var    c int; _ = make([]int, 0, c)" : stdgo.GoString), _sig : ("func([]int, int, int) []int" : stdgo.GoString) } : T__struct_27),
({ _name : ("make" : stdgo.GoString), _src : ("var l, c int; _ = make([]int, l, c)" : stdgo.GoString), _sig : ("func([]int, int, int) []int" : stdgo.GoString) } : T__struct_27),
({ _name : ("make" : stdgo.GoString), _src : ("                _ = make([]int       , 0   )" : stdgo.GoString), _sig : ("func([]int, int) []int" : stdgo.GoString) } : T__struct_27),
({ _name : ("make" : stdgo.GoString), _src : ("var l    byte ; _ = make([]int8      , l   )" : stdgo.GoString), _sig : ("func([]int8, byte) []int8" : stdgo.GoString) } : T__struct_27),
({ _name : ("make" : stdgo.GoString), _src : ("                _ = make([]int16     , 0, 0)" : stdgo.GoString), _sig : ("func([]int16, int, int) []int16" : stdgo.GoString) } : T__struct_27),
({ _name : ("make" : stdgo.GoString), _src : ("var l    int16; _ = make([]string    , l, 0)" : stdgo.GoString), _sig : ("func([]string, int16, int) []string" : stdgo.GoString) } : T__struct_27),
({ _name : ("make" : stdgo.GoString), _src : ("var    c int32; _ = make([]float64   , 0, c)" : stdgo.GoString), _sig : ("func([]float64, int, int32) []float64" : stdgo.GoString) } : T__struct_27),
({ _name : ("make" : stdgo.GoString), _src : ("var l, c uint ; _ = make([]complex128, l, c)" : stdgo.GoString), _sig : ("func([]complex128, uint, uint) []complex128" : stdgo.GoString) } : T__struct_27),
({ _name : ("make" : stdgo.GoString), _src : ("const l uint = 1; _ = make([]int, l)" : stdgo.GoString), _sig : ("func([]int, uint) []int" : stdgo.GoString) } : T__struct_27),
({ _name : ("max" : stdgo.GoString), _src : ("               _ = max(0        )" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("max" : stdgo.GoString), _src : ("var x int    ; _ = max(x        )" : stdgo.GoString), _sig : ("func(int) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("max" : stdgo.GoString), _src : ("var x int    ; _ = max(0, x     )" : stdgo.GoString), _sig : ("func(int, int) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("max" : stdgo.GoString), _src : ("var x string ; _ = max(\"a\", x   )" : stdgo.GoString), _sig : ("func(string, string) string" : stdgo.GoString) } : T__struct_27),
({ _name : ("max" : stdgo.GoString), _src : ("var x float32; _ = max(0, 1.0, x)" : stdgo.GoString), _sig : ("func(float32, float32, float32) float32" : stdgo.GoString) } : T__struct_27),
({ _name : ("min" : stdgo.GoString), _src : ("               _ = min(0        )" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("min" : stdgo.GoString), _src : ("var x int    ; _ = min(x        )" : stdgo.GoString), _sig : ("func(int) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("min" : stdgo.GoString), _src : ("var x int    ; _ = min(0, x     )" : stdgo.GoString), _sig : ("func(int, int) int" : stdgo.GoString) } : T__struct_27),
({ _name : ("min" : stdgo.GoString), _src : ("var x string ; _ = min(\"a\", x   )" : stdgo.GoString), _sig : ("func(string, string) string" : stdgo.GoString) } : T__struct_27),
({ _name : ("min" : stdgo.GoString), _src : ("var x float32; _ = min(0, 1.0, x)" : stdgo.GoString), _sig : ("func(float32, float32, float32) float32" : stdgo.GoString) } : T__struct_27),
({ _name : ("new" : stdgo.GoString), _src : ("_ = new(int)" : stdgo.GoString), _sig : ("func(int) *int" : stdgo.GoString) } : T__struct_27),
({ _name : ("new" : stdgo.GoString), _src : ("type T struct{}; _ = new(T)" : stdgo.GoString), _sig : ("func(p.T) *p.T" : stdgo.GoString) } : T__struct_27),
({ _name : ("panic" : stdgo.GoString), _src : ("panic(0)" : stdgo.GoString), _sig : ("func(interface{})" : stdgo.GoString) } : T__struct_27),
({ _name : ("panic" : stdgo.GoString), _src : ("panic(\"foo\")" : stdgo.GoString), _sig : ("func(interface{})" : stdgo.GoString) } : T__struct_27),
({ _name : ("print" : stdgo.GoString), _src : ("print()" : stdgo.GoString), _sig : ("func()" : stdgo.GoString) } : T__struct_27),
({ _name : ("print" : stdgo.GoString), _src : ("print(0)" : stdgo.GoString), _sig : ("func(int)" : stdgo.GoString) } : T__struct_27),
({ _name : ("print" : stdgo.GoString), _src : ("print(1, 2.0, \"foo\", true)" : stdgo.GoString), _sig : ("func(int, float64, string, bool)" : stdgo.GoString) } : T__struct_27),
({ _name : ("println" : stdgo.GoString), _src : ("println()" : stdgo.GoString), _sig : ("func()" : stdgo.GoString) } : T__struct_27),
({ _name : ("println" : stdgo.GoString), _src : ("println(0)" : stdgo.GoString), _sig : ("func(int)" : stdgo.GoString) } : T__struct_27),
({ _name : ("println" : stdgo.GoString), _src : ("println(1, 2.0, \"foo\", true)" : stdgo.GoString), _sig : ("func(int, float64, string, bool)" : stdgo.GoString) } : T__struct_27),
({ _name : ("recover" : stdgo.GoString), _src : ("recover()" : stdgo.GoString), _sig : ("func() interface{}" : stdgo.GoString) } : T__struct_27),
({ _name : ("recover" : stdgo.GoString), _src : ("_ = recover()" : stdgo.GoString), _sig : ("func() interface{}" : stdgo.GoString) } : T__struct_27),
({ _name : ("Add" : stdgo.GoString), _src : ("var p unsafe.Pointer; _ = unsafe.Add(p, -1.0)" : stdgo.GoString), _sig : ("func(unsafe.Pointer, int) unsafe.Pointer" : stdgo.GoString) } : T__struct_27),
({ _name : ("Add" : stdgo.GoString), _src : ("var p unsafe.Pointer; var n uintptr; _ = unsafe.Add(p, n)" : stdgo.GoString), _sig : ("func(unsafe.Pointer, uintptr) unsafe.Pointer" : stdgo.GoString) } : T__struct_27),
({ _name : ("Add" : stdgo.GoString), _src : ("_ = unsafe.Add(nil, 0)" : stdgo.GoString), _sig : ("func(unsafe.Pointer, int) unsafe.Pointer" : stdgo.GoString) } : T__struct_27),
({ _name : ("Alignof" : stdgo.GoString), _src : ("_ = unsafe.Alignof(0)" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("Alignof" : stdgo.GoString), _src : ("var x struct{}; _ = unsafe.Alignof(x)" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("Alignof" : stdgo.GoString), _src : ("var x P; _ = unsafe.Alignof(x)" : stdgo.GoString), _sig : ("func(P) uintptr" : stdgo.GoString) } : T__struct_27),
({ _name : ("Offsetof" : stdgo.GoString), _src : ("var x struct{f bool}; _ = unsafe.Offsetof(x.f)" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("Offsetof" : stdgo.GoString), _src : ("var x struct{_ int; f bool}; _ = unsafe.Offsetof((&x).f)" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("Offsetof" : stdgo.GoString), _src : ("var x struct{_ int; f P}; _ = unsafe.Offsetof((&x).f)" : stdgo.GoString), _sig : ("func(P) uintptr" : stdgo.GoString) } : T__struct_27),
({ _name : ("Sizeof" : stdgo.GoString), _src : ("_ = unsafe.Sizeof(0)" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("Sizeof" : stdgo.GoString), _src : ("var x struct{}; _ = unsafe.Sizeof(x)" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("Sizeof" : stdgo.GoString), _src : ("var x P; _ = unsafe.Sizeof(x)" : stdgo.GoString), _sig : ("func(P) uintptr" : stdgo.GoString) } : T__struct_27),
({ _name : ("Slice" : stdgo.GoString), _src : ("var p *int; _ = unsafe.Slice(p, 1)" : stdgo.GoString), _sig : ("func(*int, int) []int" : stdgo.GoString) } : T__struct_27),
({ _name : ("Slice" : stdgo.GoString), _src : ("var p *byte; var n uintptr; _ = unsafe.Slice(p, n)" : stdgo.GoString), _sig : ("func(*byte, uintptr) []byte" : stdgo.GoString) } : T__struct_27),
({ _name : ("Slice" : stdgo.GoString), _src : ("type B *byte; var b B; _ = unsafe.Slice(b, 0)" : stdgo.GoString), _sig : ("func(*byte, int) []byte" : stdgo.GoString) } : T__struct_27),
({ _name : ("SliceData" : stdgo.GoString), _src : ("var s []int; _ = unsafe.SliceData(s)" : stdgo.GoString), _sig : ("func([]int) *int" : stdgo.GoString) } : T__struct_27),
({ _name : ("SliceData" : stdgo.GoString), _src : ("type S []int; var s S; _ = unsafe.SliceData(s)" : stdgo.GoString), _sig : ("func([]int) *int" : stdgo.GoString) } : T__struct_27),
({ _name : ("String" : stdgo.GoString), _src : ("var p *byte; _ = unsafe.String(p, 1)" : stdgo.GoString), _sig : ("func(*byte, int) string" : stdgo.GoString) } : T__struct_27),
({ _name : ("String" : stdgo.GoString), _src : ("type B *byte; var b B; _ = unsafe.String(b, 0)" : stdgo.GoString), _sig : ("func(*byte, int) string" : stdgo.GoString) } : T__struct_27),
({ _name : ("StringData" : stdgo.GoString), _src : ("var s string; _ = unsafe.StringData(s)" : stdgo.GoString), _sig : ("func(string) *byte" : stdgo.GoString) } : T__struct_27),
({ _name : ("StringData" : stdgo.GoString), _src : ("_ = unsafe.StringData(\"foo\")" : stdgo.GoString), _sig : ("func(string) *byte" : stdgo.GoString) } : T__struct_27),
({ _name : ("assert" : stdgo.GoString), _src : ("assert(true)" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27),
({ _name : ("assert" : stdgo.GoString), _src : ("type B bool; const pred B = 1 < 2; assert(pred)" : stdgo.GoString), _sig : ("invalid type" : stdgo.GoString) } : T__struct_27)) : stdgo.Slice<T__struct_27>);
/**
    
    
    
**/
var _haltOnError : stdgo.Pointer<Bool> = stdgo.flag.Flag.bool_(("halt" : stdgo.GoString), false, ("halt on error" : stdgo.GoString));
/**
    
    
    
**/
var _verifyErrors : stdgo.Pointer<Bool> = stdgo.flag.Flag.bool_(("verify" : stdgo.GoString), false, ("verify errors (rather than list them) in TestManual" : stdgo.GoString));
/**
    
    
    
**/
var _fset : stdgo.Ref<stdgo.go.token.Token.FileSet> = stdgo.go.token.Token.newFileSet();
/**
    
    
    
**/
var _testExprs : stdgo.Slice<stdgo.go.types_test.Types_test.T_testEntry> = (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testEntry>(
70,
70,
_dup(("x" : stdgo.GoString))?.__copy__(),
_dup(("true" : stdgo.GoString))?.__copy__(),
_dup(("42" : stdgo.GoString))?.__copy__(),
_dup(("3.1415" : stdgo.GoString))?.__copy__(),
_dup(("2.71828i" : stdgo.GoString))?.__copy__(),
_dup(("\'a\'" : stdgo.GoString))?.__copy__(),
_dup(("\"foo\"" : stdgo.GoString))?.__copy__(),
_dup(("`bar`" : stdgo.GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("func(){}" : stdgo.GoString), ("(func() literal)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
(new stdgo.go.types_test.Types_test.T_testEntry(("func(x int) complex128 {}" : stdgo.GoString), ("(func(x int) complex128 literal)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
(new stdgo.go.types_test.Types_test.T_testEntry(("[]int{1, 2, 3}" : stdgo.GoString), ("[]int{…}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("[1 << 10]byte" : stdgo.GoString))?.__copy__(),
_dup(("[]int" : stdgo.GoString))?.__copy__(),
_dup(("*int" : stdgo.GoString))?.__copy__(),
_dup(("struct{x int}" : stdgo.GoString))?.__copy__(),
_dup(("func()" : stdgo.GoString))?.__copy__(),
_dup(("func(int, float32) string" : stdgo.GoString))?.__copy__(),
_dup(("interface{m()}" : stdgo.GoString))?.__copy__(),
_dup(("interface{m() string; n(x int)}" : stdgo.GoString))?.__copy__(),
_dup(("interface{~int}" : stdgo.GoString))?.__copy__(),
_dup(("map[string]int" : stdgo.GoString))?.__copy__(),
_dup(("chan E" : stdgo.GoString))?.__copy__(),
_dup(("<-chan E" : stdgo.GoString))?.__copy__(),
_dup(("chan<- E" : stdgo.GoString))?.__copy__(),
_dup(("interface{int}" : stdgo.GoString))?.__copy__(),
_dup(("interface{~int}" : stdgo.GoString))?.__copy__(),
_dup(("interface{~int}" : stdgo.GoString))?.__copy__(),
_dup(("interface{int | string}" : stdgo.GoString))?.__copy__(),
_dup(("interface{~int | ~string; float64; m()}" : stdgo.GoString))?.__copy__(),
_dup(("interface{~T[int, string] | string}" : stdgo.GoString))?.__copy__(),
_dup(("(x)" : stdgo.GoString))?.__copy__(),
_dup(("x.f" : stdgo.GoString))?.__copy__(),
_dup(("a[i]" : stdgo.GoString))?.__copy__(),
_dup(("s[:]" : stdgo.GoString))?.__copy__(),
_dup(("s[i:]" : stdgo.GoString))?.__copy__(),
_dup(("s[:j]" : stdgo.GoString))?.__copy__(),
_dup(("s[i:j]" : stdgo.GoString))?.__copy__(),
_dup(("s[:j:k]" : stdgo.GoString))?.__copy__(),
_dup(("s[i:j:k]" : stdgo.GoString))?.__copy__(),
_dup(("x.(T)" : stdgo.GoString))?.__copy__(),
_dup(("x.([10]int)" : stdgo.GoString))?.__copy__(),
_dup(("x.([...]int)" : stdgo.GoString))?.__copy__(),
_dup(("x.(struct{})" : stdgo.GoString))?.__copy__(),
_dup(("x.(struct{x int; y, z float32; E})" : stdgo.GoString))?.__copy__(),
_dup(("x.(func())" : stdgo.GoString))?.__copy__(),
_dup(("x.(func(x int))" : stdgo.GoString))?.__copy__(),
_dup(("x.(func() int)" : stdgo.GoString))?.__copy__(),
_dup(("x.(func(x, y int, z float32) (r int))" : stdgo.GoString))?.__copy__(),
_dup(("x.(func(a, b, c int))" : stdgo.GoString))?.__copy__(),
_dup(("x.(func(x ...T))" : stdgo.GoString))?.__copy__(),
_dup(("x.(interface{})" : stdgo.GoString))?.__copy__(),
_dup(("x.(interface{m(); n(x int); E})" : stdgo.GoString))?.__copy__(),
_dup(("x.(interface{m(); n(x int) T; E; F})" : stdgo.GoString))?.__copy__(),
_dup(("x.(map[K]V)" : stdgo.GoString))?.__copy__(),
_dup(("x.(chan E)" : stdgo.GoString))?.__copy__(),
_dup(("x.(<-chan E)" : stdgo.GoString))?.__copy__(),
_dup(("x.(chan<- chan int)" : stdgo.GoString))?.__copy__(),
_dup(("x.(chan<- <-chan int)" : stdgo.GoString))?.__copy__(),
_dup(("x.(<-chan chan int)" : stdgo.GoString))?.__copy__(),
_dup(("x.(chan (<-chan int))" : stdgo.GoString))?.__copy__(),
_dup(("f()" : stdgo.GoString))?.__copy__(),
_dup(("f(x)" : stdgo.GoString))?.__copy__(),
_dup(("int(x)" : stdgo.GoString))?.__copy__(),
_dup(("f(x, x + y)" : stdgo.GoString))?.__copy__(),
_dup(("f(s...)" : stdgo.GoString))?.__copy__(),
_dup(("f(a, s...)" : stdgo.GoString))?.__copy__(),
_dup(("*x" : stdgo.GoString))?.__copy__(),
_dup(("&x" : stdgo.GoString))?.__copy__(),
_dup(("x + y" : stdgo.GoString))?.__copy__(),
_dup(("x + y << (2 * s)" : stdgo.GoString))?.__copy__()) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testEntry>);
/**
    
    
    
**/
var _filesToWrite : stdgo.Pointer<stdgo.GoString> = stdgo.flag.Flag.string(("write" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("go/types files to generate, or \"all\" for all files" : stdgo.GoString));
/**
    
    
    
**/
var _filemap : stdgo.GoMap<stdgo.GoString, stdgo.go.types_test.Types_test.T_action> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.go.types_test.Types_test.T_action>();
        x.__defaultValue__ = () -> (null : stdgo.go.types_test.Types_test.T_action);
        @:mergeBlock {
            x.set(("array.go" : stdgo.GoString), null);
            x.set(("basic.go" : stdgo.GoString), null);
            x.set(("chan.go" : stdgo.GoString), null);
            x.set(("const.go" : stdgo.GoString), function(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
                _fixTokenPos(_f);
            });
            x.set(("context.go" : stdgo.GoString), null);
            x.set(("context_test.go" : stdgo.GoString), null);
            x.set(("gccgosizes.go" : stdgo.GoString), null);
            x.set(("hilbert_test.go" : stdgo.GoString), function(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
                _renameImportPath(_f, ("\"cmd/compile/internal/types2\"" : stdgo.GoString), ("\"go/types\"" : stdgo.GoString));
            });
            x.set(("infer.go" : stdgo.GoString), function(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
                _fixTokenPos(_f);
                _fixInferSig(_f);
            });
            x.set(("instantiate.go" : stdgo.GoString), function(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
                _fixTokenPos(_f);
                _fixCheckErrorfCall(_f);
            });
            x.set(("instantiate_test.go" : stdgo.GoString), function(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
                _renameImportPath(_f, ("\"cmd/compile/internal/types2\"" : stdgo.GoString), ("\"go/types\"" : stdgo.GoString));
            });
            x.set(("lookup.go" : stdgo.GoString), function(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
                _fixTokenPos(_f);
            });
            x.set(("main_test.go" : stdgo.GoString), null);
            x.set(("map.go" : stdgo.GoString), null);
            x.set(("named.go" : stdgo.GoString), function(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
                _fixTokenPos(_f);
                _fixTraceSel(_f);
            });
            x.set(("object.go" : stdgo.GoString), function(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
                _fixTokenPos(_f);
                _renameIdent(_f, ("NewTypeNameLazy" : stdgo.GoString), ("_NewTypeNameLazy" : stdgo.GoString));
            });
            x.set(("object_test.go" : stdgo.GoString), function(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
                _renameImportPath(_f, ("\"cmd/compile/internal/types2\"" : stdgo.GoString), ("\"go/types\"" : stdgo.GoString));
            });
            x.set(("objset.go" : stdgo.GoString), null);
            x.set(("package.go" : stdgo.GoString), null);
            x.set(("pointer.go" : stdgo.GoString), null);
            x.set(("predicates.go" : stdgo.GoString), null);
            x.set(("scope.go" : stdgo.GoString), function(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
                _fixTokenPos(_f);
                _renameIdent(_f, ("Squash" : stdgo.GoString), ("squash" : stdgo.GoString));
                _renameIdent(_f, ("InsertLazy" : stdgo.GoString), ("_InsertLazy" : stdgo.GoString));
            });
            x.set(("selection.go" : stdgo.GoString), null);
            x.set(("sizes.go" : stdgo.GoString), function(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
                _renameIdent(_f, ("IsSyncAtomicAlign64" : stdgo.GoString), ("_IsSyncAtomicAlign64" : stdgo.GoString));
            });
            x.set(("slice.go" : stdgo.GoString), null);
            x.set(("subst.go" : stdgo.GoString), function(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
                _fixTokenPos(_f);
                _fixTraceSel(_f);
            });
            x.set(("termlist.go" : stdgo.GoString), null);
            x.set(("termlist_test.go" : stdgo.GoString), null);
            x.set(("tuple.go" : stdgo.GoString), null);
            x.set(("typelists.go" : stdgo.GoString), null);
            x.set(("typeparam.go" : stdgo.GoString), null);
            x.set(("typeterm_test.go" : stdgo.GoString), null);
            x.set(("typeterm.go" : stdgo.GoString), null);
            x.set(("under.go" : stdgo.GoString), null);
            x.set(("unify.go" : stdgo.GoString), _fixSprintf);
            x.set(("universe.go" : stdgo.GoString), _fixGlobalTypVarDecl);
            x.set(("util_test.go" : stdgo.GoString), _fixTokenPos);
            x.set(("validtype.go" : stdgo.GoString), null);
            x.set(("version_test.go" : stdgo.GoString), null);
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.go.types_test.Types_test.T_action>);
/**
    
    
    
**/
var h : stdgo.Pointer<stdgo.GoInt> = stdgo.flag.Flag.int_(("H" : stdgo.GoString), (5 : stdgo.GoInt), ("Hilbert matrix size" : stdgo.GoString));
/**
    
    
    
**/
var _out : stdgo.Pointer<stdgo.GoString> = stdgo.flag.Flag.string(("out" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("write generated program to out" : stdgo.GoString));
/**
    
    
    
**/
var _goods : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(7, 7, ("func F[T any](x T) { F(x) }" : stdgo.GoString), ("func F[T, U, V any]() { F[U, V, T](); F[V, T, U]() }" : stdgo.GoString), ("type Ring[A, B, C any] struct { L *Ring[B, C, A]; R *Ring[C, A, B] }" : stdgo.GoString), ("func F[T any]() { type U[T any] [unsafe.Sizeof(F[*T])]byte }" : stdgo.GoString), ("func F[T any]() { type U[T any] [unsafe.Sizeof(F[*T])]byte; var _ U[int] }" : stdgo.GoString), ("type U[T any] [unsafe.Sizeof(F[*T])]byte; func F[T any]() { var _ U[U[int]] }" : stdgo.GoString), ("func F[T any]() { type A = int; F[A]() }" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _bads : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(
21,
21,
("func F[T any](x T) { F(&x) }" : stdgo.GoString),
("func F[T any]() { F[*T]() }" : stdgo.GoString),
("func F[T any]() { F[[]T]() }" : stdgo.GoString),
("func F[T any]() { F[[1]T]() }" : stdgo.GoString),
("func F[T any]() { F[chan T]() }" : stdgo.GoString),
("func F[T any]() { F[map[*T]int]() }" : stdgo.GoString),
("func F[T any]() { F[map[error]T]() }" : stdgo.GoString),
("func F[T any]() { F[func(T)]() }" : stdgo.GoString),
("func F[T any]() { F[func() T]() }" : stdgo.GoString),
("func F[T any]() { F[struct{ t T }]() }" : stdgo.GoString),
("func F[T any]() { F[interface{ t() T }]() }" : stdgo.GoString),
("type U[_ any] int; func F[T any]() { F[U[T]]() }" : stdgo.GoString),
("func F[T any]() { type U int; F[U]() }" : stdgo.GoString),
("func F[T any]() { type U int; F[*U]() }" : stdgo.GoString),
("type U[T any] int; func (U[T]) m() { var _ U[*T] }" : stdgo.GoString),
("type U[T any] int; func (*U[T]) m() { var _ U[*T] }" : stdgo.GoString),
("type U[T1 any] [unsafe.Sizeof(F[*T1])]byte; func F[T2 any]() { var _ U[T2] }" : stdgo.GoString),
("func F[A, B, C, D, E any]() { F[B, C, D, E, *A]() }" : stdgo.GoString),
("type U[_ any] int; const X = unsafe.Sizeof(func() { type A[T any] U[A[*T]] })" : stdgo.GoString),
("func F[T any]() { type A = *T; F[A]() }" : stdgo.GoString),
("type A[T any] struct { _ A[*T] }" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _testObjects : stdgo.Slice<T__struct_12> = (new stdgo.Slice<T__struct_12>(
15,
15,
({ _src : ("import \"io\"; var r io.Reader" : stdgo.GoString), _obj : ("r" : stdgo.GoString), _want : ("var p.r io.Reader" : stdgo.GoString) } : T__struct_12),
({ _src : ("const c = 1.2" : stdgo.GoString), _obj : ("c" : stdgo.GoString), _want : ("const p.c untyped float" : stdgo.GoString) } : T__struct_12),
({ _src : ("const c float64 = 3.14" : stdgo.GoString), _obj : ("c" : stdgo.GoString), _want : ("const p.c float64" : stdgo.GoString) } : T__struct_12),
({ _src : ("type t struct{f int}" : stdgo.GoString), _obj : ("t" : stdgo.GoString), _want : ("type p.t struct{f int}" : stdgo.GoString) } : T__struct_12),
({ _src : ("type t func(int)" : stdgo.GoString), _obj : ("t" : stdgo.GoString), _want : ("type p.t func(int)" : stdgo.GoString) } : T__struct_12),
({ _src : ("type t[P any] struct{f P}" : stdgo.GoString), _obj : ("t" : stdgo.GoString), _want : ("type p.t[P any] struct{f P}" : stdgo.GoString) } : T__struct_12),
({ _src : ("type t[P any] struct{f P}" : stdgo.GoString), _obj : ("t.P" : stdgo.GoString), _want : ("type parameter P any" : stdgo.GoString) } : T__struct_12),
({ _src : ("type C interface{m()}; type t[P C] struct{}" : stdgo.GoString), _obj : ("t.P" : stdgo.GoString), _want : ("type parameter P p.C" : stdgo.GoString) } : T__struct_12),
({ _src : ("type t = struct{f int}" : stdgo.GoString), _obj : ("t" : stdgo.GoString), _want : ("type p.t = struct{f int}" : stdgo.GoString) } : T__struct_12),
({ _src : ("type t = func(int)" : stdgo.GoString), _obj : ("t" : stdgo.GoString), _want : ("type p.t = func(int)" : stdgo.GoString) } : T__struct_12),
({ _src : ("var v int" : stdgo.GoString), _obj : ("v" : stdgo.GoString), _want : ("var p.v int" : stdgo.GoString) } : T__struct_12),
({ _src : ("func f(int) string" : stdgo.GoString), _obj : ("f" : stdgo.GoString), _want : ("func p.f(int) string" : stdgo.GoString) } : T__struct_12),
({ _src : ("func g[P any](x P){}" : stdgo.GoString), _obj : ("g" : stdgo.GoString), _want : ("func p.g[P any](x P)" : stdgo.GoString) } : T__struct_12),
({ _src : ("func g[P interface{~int}](x P){}" : stdgo.GoString), _obj : ("g.P" : stdgo.GoString), _want : ("type parameter P interface{~int}" : stdgo.GoString) } : T__struct_12),
({ _src : stdgo.Go.str()?.__copy__(), _obj : ("any" : stdgo.GoString), _want : ("type any = interface{}" : stdgo.GoString) } : T__struct_12)) : stdgo.Slice<T__struct_12>);
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
var _stdLibImporter : stdgo.go.types.Types.Importer = stdgo.go.importer.Importer.forCompiler(stdgo.go.token.Token.newFileSet(), ("source" : stdgo.GoString), null);
/**
    // Package paths of excluded packages.
    
    
**/
var _excluded : stdgo.GoMap<stdgo.GoString, Bool> = ({
        final x = new stdgo.GoMap.GoStringMap<Bool>();
        x.__defaultValue__ = () -> false;
        @:mergeBlock {
            x.set(("builtin" : stdgo.GoString), true);
            x.set(("crypto/internal/edwards25519/field/_asm" : stdgo.GoString), true);
            x.set(("crypto/internal/bigmod/_asm" : stdgo.GoString), true);
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, Bool>);
/**
    // types that don't depend on any other type declarations
    
    
**/
var _independentTestTypes : stdgo.Slice<stdgo.go.types_test.Types_test.T_testEntry> = (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testEntry>(
46,
46,
_dup(("int" : stdgo.GoString))?.__copy__(),
_dup(("float32" : stdgo.GoString))?.__copy__(),
_dup(("string" : stdgo.GoString))?.__copy__(),
_dup(("[10]int" : stdgo.GoString))?.__copy__(),
_dup(("[]int" : stdgo.GoString))?.__copy__(),
_dup(("[][]int" : stdgo.GoString))?.__copy__(),
_dup(("struct{}" : stdgo.GoString))?.__copy__(),
_dup(("struct{x int}" : stdgo.GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("struct {\n\t\tx, y int\n\t\tz float32 \"foo\"\n\t}" : stdgo.GoString), ("struct{x int; y int; z float32 \"foo\"}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
(new stdgo.go.types_test.Types_test.T_testEntry(("struct {\n\t\tstring\n\t\telems []complex128\n\t}" : stdgo.GoString), ("struct{string; elems []complex128}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("*int" : stdgo.GoString))?.__copy__(),
_dup(("***struct{}" : stdgo.GoString))?.__copy__(),
_dup(("*struct{a int; b float32}" : stdgo.GoString))?.__copy__(),
_dup(("func()" : stdgo.GoString))?.__copy__(),
_dup(("func(x int)" : stdgo.GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("func(x, y int)" : stdgo.GoString), ("func(x int, y int)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
(new stdgo.go.types_test.Types_test.T_testEntry(("func(x, y int, z string)" : stdgo.GoString), ("func(x int, y int, z string)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("func(int)" : stdgo.GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("func(int, string, byte)" : stdgo.GoString), ("func(int, string, byte)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("func() int" : stdgo.GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("func() (string)" : stdgo.GoString), ("func() string" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("func() (u int)" : stdgo.GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("func() (u, v int, w string)" : stdgo.GoString), ("func() (u int, v int, w string)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("func(int) string" : stdgo.GoString))?.__copy__(),
_dup(("func(x int) string" : stdgo.GoString))?.__copy__(),
_dup(("func(x int) (u string)" : stdgo.GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("func(x, y int) (u string)" : stdgo.GoString), ("func(x int, y int) (u string)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("func(...int) string" : stdgo.GoString))?.__copy__(),
_dup(("func(x ...int) string" : stdgo.GoString))?.__copy__(),
_dup(("func(x ...int) (u string)" : stdgo.GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("func(x int, y ...int) (u string)" : stdgo.GoString), ("func(x int, y ...int) (u string)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("interface{}" : stdgo.GoString))?.__copy__(),
_dup(("interface{m()}" : stdgo.GoString))?.__copy__(),
_dup(("interface{String() string; m(int) float32}" : stdgo.GoString))?.__copy__(),
_dup(("interface{int | float32 | complex128}" : stdgo.GoString))?.__copy__(),
_dup(("interface{int | ~float32 | ~complex128}" : stdgo.GoString))?.__copy__(),
_dup(("any" : stdgo.GoString))?.__copy__(),
_dup(("interface{comparable}" : stdgo.GoString))?.__copy__(),
_dup(("map[string]int" : stdgo.GoString))?.__copy__(),
(new stdgo.go.types_test.Types_test.T_testEntry(("map[struct{x, y int}][]byte" : stdgo.GoString), ("map[struct{x int; y int}][]byte" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testEntry),
_dup(("chan<- chan int" : stdgo.GoString))?.__copy__(),
_dup(("chan<- <-chan int" : stdgo.GoString))?.__copy__(),
_dup(("<-chan <-chan int" : stdgo.GoString))?.__copy__(),
_dup(("chan (<-chan int)" : stdgo.GoString))?.__copy__(),
_dup(("chan<- func()" : stdgo.GoString))?.__copy__(),
_dup(("<-chan []func() int" : stdgo.GoString))?.__copy__()) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testEntry>);
/**
    // types that depend on other type declarations (src in TestTypes)
    
    
**/
var _dependentTestTypes : stdgo.Slice<stdgo.go.types_test.Types_test.T_testEntry> = (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testEntry>(3, 3, _dup(("interface{io.Reader; io.Writer}" : stdgo.GoString))?.__copy__(), _dup(("interface{m() int; io.Writer}" : stdgo.GoString))?.__copy__(), (new stdgo.go.types_test.Types_test.T_testEntry(("interface{m() interface{T}}" : stdgo.GoString), ("interface{m() interface{p.T}}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testEntry)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testEntry>);
/**
    // nopos indicates an unknown position
    
    
**/
var _nopos : stdgo.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo.go.token.Token.Pos);
/**
    
    
    
**/
final _errorfMinArgCount : stdgo.GoUInt64 = (4i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _errorfFormatIndex : stdgo.GoUInt64 = (2i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _srcDir : stdgo.GoString = ("/src/cmd/compile/internal/types2/" : stdgo.GoString);
/**
    
    
    
**/
final _dstDir : stdgo.GoString = ("/src/go/types/" : stdgo.GoString);
/**
    // printPackageMu synchronizes the printing of type-checked package files in
    // the typecheckFiles function.
    //
    // Without synchronization, package files may be interleaved during concurrent
    // type-checking.
    
    
**/
var _printPackageMu : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
/**
    
    
    
**/
final _filename : stdgo.GoString = ("<src>" : stdgo.GoString);
/**
    
    
    
**/
typedef T__interface_0 = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function typeParams():stdgo.Ref<TypeParamList>;
};
/**
    
    
    
**/
@:structInit @:private class T_recordedInstance {
    public var ident : stdgo.Ref<stdgo.go.ast.Ast.Ident> = (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>);
    public var inst : stdgo.go.types.Types.Instance = ({} : stdgo.go.types.Types.Instance);
    public function new(?ident:stdgo.Ref<stdgo.go.ast.Ast.Ident>, ?inst:stdgo.go.types.Types.Instance) {
        if (ident != null) this.ident = ident;
        if (inst != null) this.inst = inst;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_recordedInstance(ident, inst);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_comment {
    public var _line : stdgo.GoInt = 0;
    public var _col : stdgo.GoInt = 0;
    public var _text : stdgo.GoString = "";
    public function new(?_line:stdgo.GoInt, ?_col:stdgo.GoInt, ?_text:stdgo.GoString) {
        if (_line != null) this._line = _line;
        if (_col != null) this._col = _col;
        if (_text != null) this._text = _text;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_comment(_line, _col, _text);
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
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function available():stdgo.GoInt return buffer.available();
    @:embedded
    public function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return buffer.availableBuffer();
    @:embedded
    public function bytes():stdgo.Slice<stdgo.GoUInt8> return buffer.bytes();
    @:embedded
    public function cap():stdgo.GoInt return buffer.cap();
    @:embedded
    public function grow(_offset:stdgo.GoInt) buffer.grow(_offset);
    @:embedded
    public function len():stdgo.GoInt return buffer.len();
    @:embedded
    public function next(_offset:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return buffer.next(_offset);
    @:embedded
    public function read(_content:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return buffer.read(_content);
    @:embedded
    public function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return buffer.readByte();
    @:embedded
    public function readBytes(__0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return buffer.readBytes(__0);
    @:embedded
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return buffer.readFrom(_r);
    @:embedded
    public function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return buffer.readRune();
    @:embedded
    public function readString(__0:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return buffer.readString(__0);
    @:embedded
    public function reset() buffer.reset();
    @:embedded
    public function string():stdgo.GoString return buffer.string();
    @:embedded
    public function truncate(_offset:stdgo.GoInt) buffer.truncate(_offset);
    @:embedded
    public function unreadByte():stdgo.Error return buffer.unreadByte();
    @:embedded
    public function unreadRune():stdgo.Error return buffer.unreadRune();
    @:embedded
    public function write(_content:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return buffer.write(_content);
    @:embedded
    public function writeByte(__0:stdgo.GoUInt8):stdgo.Error return buffer.writeByte(__0);
    @:embedded
    public function writeRune(_new:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return buffer.writeRune(_new);
    @:embedded
    public function writeString(__0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return buffer.writeString(__0);
    @:embedded
    public function writeTo(__0:stdgo.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return buffer.writeTo(__0);
    @:embedded
    public function _empty():Bool return buffer._empty();
    @:embedded
    public function _grow(_offset:stdgo.GoInt):stdgo.GoInt return buffer._grow(_offset);
    @:embedded
    public function _readSlice(__0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return buffer._readSlice(__0);
    @:embedded
    public function _tryGrowByReslice(_offset:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return buffer._tryGrowByReslice(_offset);
    public function __copy__() {
        return new T_gen(buffer);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.types_test.Types_test.T_importHelper_static_extension) class T_importHelper {
    public var _pkg : stdgo.Ref<stdgo.go.types.Types.Package> = (null : stdgo.Ref<stdgo.go.types.Types.Package>);
    public var _fallback : stdgo.go.types.Types.Importer = (null : stdgo.go.types.Types.Importer);
    public function new(?_pkg:stdgo.Ref<stdgo.go.types.Types.Package>, ?_fallback:stdgo.go.types.Types.Importer) {
        if (_pkg != null) this._pkg = _pkg;
        if (_fallback != null) this._fallback = _fallback;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_importHelper(_pkg, _fallback);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.types_test.Types_test.T_resolveTestImporter_static_extension) class T_resolveTestImporter {
    public var _importer : stdgo.go.types.Types.ImporterFrom = (null : stdgo.go.types.Types.ImporterFrom);
    public var _imported : stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
    public function new(?_importer:stdgo.go.types.Types.ImporterFrom, ?_imported:stdgo.GoMap<stdgo.GoString, Bool>) {
        if (_importer != null) this._importer = _importer;
        if (_imported != null) this._imported = _imported;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_resolveTestImporter(_importer, _imported);
    }
}
/**
    // stdlibChecker implements concurrent type-checking of the packages defined by
    // dirFiles, which must define a closed set of packages (such as GOROOT/src).
    
    
**/
@:structInit @:private @:using(stdgo.go.types_test.Types_test.T_stdlibChecker_static_extension) class T_stdlibChecker {
    public var _dirFiles : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>);
    public var _mu : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public var _pkgs : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.go.types_test.Types_test.T_futurePackage>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.go.types_test.Types_test.T_futurePackage>>);
    public function new(?_dirFiles:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>, ?_mu:stdgo.sync.Sync.Mutex, ?_pkgs:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.go.types_test.Types_test.T_futurePackage>>) {
        if (_dirFiles != null) this._dirFiles = _dirFiles;
        if (_mu != null) this._mu = _mu;
        if (_pkgs != null) this._pkgs = _pkgs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stdlibChecker(_dirFiles, _mu, _pkgs);
    }
}
/**
    // A futurePackage is a future result of type-checking.
    
    
**/
@:structInit @:private class T_futurePackage {
    public var _done : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _pkg : stdgo.Ref<stdgo.go.types.Types.Package> = (null : stdgo.Ref<stdgo.go.types.Types.Package>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_done:stdgo.Chan<{ }>, ?_pkg:stdgo.Ref<stdgo.go.types.Types.Package>, ?_err:stdgo.Error) {
        if (_done != null) this._done = _done;
        if (_pkg != null) this._pkg = _pkg;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_futurePackage(_done, _pkg, _err);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.types_test.Types_test.T_walker_static_extension) class T_walker {
    public var _pkgh : (stdgo.GoString, stdgo.Slice<stdgo.GoString>) -> Void = null;
    public var _errh : stdgo.Slice<stdgo.AnyInterface> -> Void = null;
    public function new(?_pkgh:(stdgo.GoString, stdgo.Slice<stdgo.GoString>) -> Void, ?_errh:stdgo.Slice<stdgo.AnyInterface> -> Void) {
        if (_pkgh != null) this._pkgh = _pkgh;
        if (_errh != null) this._errh = _errh;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_walker(_pkgh, _errh);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_testEntry {
    public var _src : stdgo.GoString = "";
    public var _str : stdgo.GoString = "";
    public function new(?_src:stdgo.GoString, ?_str:stdgo.GoString) {
        if (_src != null) this._src = _src;
        if (_str != null) this._str = _str;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testEntry(_src, _str);
    }
}
class T__struct_9_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_9>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_9_static_extension) typedef T__struct_9 = {
    public var _src : stdgo.GoString;
    public var _expr : stdgo.GoString;
    public var _typ : stdgo.GoString;
    public var _val : stdgo.GoString;
};
class T__struct_10_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_10>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_10_static_extension) typedef T__struct_10 = {
    public var _src : stdgo.GoString;
    public var _expr : stdgo.GoString;
    public var _typ : stdgo.GoString;
};
class T__struct_11_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_11>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_11_static_extension) typedef T__struct_11 = {
    public var _src : stdgo.GoString;
    public var _instances : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInst>;
};
class T__struct_12_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_12>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_12_asInterface) class T__struct_12_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_12_static_extension) typedef T__struct_12 = {
    public var _src : stdgo.GoString;
    public var _obj : stdgo.GoString;
    public var _want : stdgo.GoString;
};
class T__struct_13_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_13>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_13_asInterface) class T__struct_13_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_13_static_extension) typedef T__struct_13 = {
    public var _src : stdgo.GoString;
    public var _want : stdgo.GoString;
};
class T__struct_14_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_14>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_14_asInterface) class T__struct_14_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_14_static_extension) typedef T__struct_14 = {
    public var _src : stdgo.GoString;
    public var _expr : stdgo.GoString;
    public var _pred : stdgo.GoString;
};
class T__struct_15_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_15>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_15_asInterface) class T__struct_15_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_15_static_extension) typedef T__struct_15 = {
    public var _src : stdgo.GoString;
    public var _scopes : stdgo.Slice<stdgo.GoString>;
};
class T__struct_16_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_16>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_16_asInterface) class T__struct_16_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_16_static_extension) typedef T__struct_16 = {
    public var _src : stdgo.GoString;
    public var _inits : stdgo.Slice<stdgo.GoString>;
};
class T__struct_17_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_17>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_17_asInterface) class T__struct_17_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_17_static_extension) typedef T__struct_17 = {
    public var _files : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>;
    public var _want : stdgo.GoString;
};
class T__struct_18_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_18>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_18_asInterface) class T__struct_18_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_18_static_extension) typedef T__struct_18 = {
    public var _src : stdgo.GoString;
    public var _found : Bool;
    public var _index : stdgo.Slice<stdgo.GoInt>;
    public var _indirect : Bool;
};
class T__struct_19_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_19>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_19_asInterface) class T__struct_19_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_19_static_extension) typedef T__struct_19 = {
    public var _v : stdgo.go.types.Types.Type_;
    public var _t : stdgo.go.types.Types.Type_;
    public var _want : Bool;
};
class T__struct_20_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_20>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_20_asInterface) class T__struct_20_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_20_static_extension) typedef T__struct_20 = {
    public var _src : stdgo.GoString;
    public var _want : Bool;
};
class T__struct_21_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_21>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_21_asInterface) class T__struct_21_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_21_static_extension) typedef T__struct_21 = {
    public var _x : stdgo.go.types.Types.Type_;
    public var _y : stdgo.go.types.Types.Type_;
    public var _want : Bool;
};
class T__struct_22_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_22>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_22_asInterface) class T__struct_22_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_22_static_extension) typedef T__struct_22 = {
    public var _x : stdgo.GoString;
    public var _y : stdgo.GoString;
    public var _want : Bool;
};
class T__struct_23_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_23>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_23_asInterface) class T__struct_23_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_23_static_extension) typedef T__struct_23 = {
    public var _lit : stdgo.GoString;
    public var _typ : stdgo.GoString;
};
class T__struct_24_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_24>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_24_asInterface) class T__struct_24_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_24_static_extension) typedef T__struct_24 = {
    public var _src : stdgo.GoString;
    public var _targs : stdgo.Slice<stdgo.go.types.Types.Type_>;
    public var _wantAt : stdgo.GoInt;
};
class T__struct_25_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_25>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_25_asInterface) class T__struct_25_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_25_static_extension) typedef T__struct_25 = {
    public var _name : stdgo.GoString;
    public var _obj : stdgo.go.types.Types.Object;
};
class T__struct_26_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_26>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_26_asInterface) class T__struct_26_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_26_static_extension) typedef T__struct_26 = {
    public var v : stdgo.go.types.Types.Type_;
    public var t : stdgo.Ref<stdgo.go.types.Types.Interface>;
    public var _want : Bool;
};
class T__struct_27_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_27>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_27_asInterface) class T__struct_27_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_27_static_extension) typedef T__struct_27 = {
    public var _name : stdgo.GoString;
    public var _src : stdgo.GoString;
    public var _sig : stdgo.GoString;
};
class T__struct_28_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_28>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_28_asInterface) class T__struct_28_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_28_static_extension) typedef T__struct_28 = {
    public var _src : stdgo.GoString;
    public var _name1 : stdgo.GoString;
    public var _targs1 : stdgo.Slice<stdgo.go.types.Types.Type_>;
    public var _name2 : stdgo.GoString;
    public var _targs2 : stdgo.Slice<stdgo.go.types.Types.Type_>;
    public var _wantEqual : Bool;
};
class T__struct_29_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_29>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_29_asInterface) class T__struct_29_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_29_static_extension) typedef T__struct_29 = {
    public var _decl : stdgo.GoString;
    public var _want : stdgo.GoString;
};
class T__struct_30_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_30>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_30_asInterface) class T__struct_30_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_30_static_extension) typedef T__struct_30 = {
    public var _typ : stdgo.GoString;
    public var _val : stdgo.GoString;
};
class T__struct_31_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_31>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_31_asInterface) class T__struct_31_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_31_static_extension) typedef T__struct_31 = {
    public var main : stdgo.GoString;
    public var _b : stdgo.GoString;
    public var _want : stdgo.GoString;
};
class T__struct_32_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_32>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_32_asInterface) class T__struct_32_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_32_static_extension) typedef T__struct_32 = {
    public var _name : stdgo.GoString;
    public var _typ : stdgo.go.types.Types.Type_;
};
class T__struct_33_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_33>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_33_asInterface) class T__struct_33_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_33_static_extension) typedef T__struct_33 = {
    public var _name : stdgo.Ref<stdgo.go.types.Types.TypeName>;
    public var _alias : Bool;
};
class T__struct_34_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_34>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_34_asInterface) class T__struct_34_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_34_static_extension) typedef T__struct_34 = {};
class T__struct_35_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_35>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T__struct_35_asInterface) class T__struct_35_static_extension {

}
@:local @:using(stdgo.go.types_test.Types_test.T__struct_35_static_extension) typedef T__struct_35 = {
    public var _typ : stdgo.go.types.Types.Type_;
    public var _this : stdgo.Ref<stdgo.go.types.Types.Package>;
    public var _want : stdgo.GoString;
};
@:named @:using(stdgo.go.types_test.Types_test.T_testImporter_static_extension) typedef T_testImporter = stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.go.types.Types.Package>>;
@:named typedef T_action = stdgo.Ref<stdgo.go.ast.Ast.File> -> Void;
function _mustParse(_fset:stdgo.Ref<stdgo.go.token.Token.FileSet>, _src:stdgo.GoString):stdgo.Ref<stdgo.go.ast.Ast.File> {
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, _pkgName(_src?.__copy__())?.__copy__(), stdgo.Go.toInterface(_src), (0u32 : stdgo.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return _f;
    }
function _typecheck(_src:stdgo.GoString, _conf:stdgo.Ref<Config>, _info:stdgo.Ref<Info>):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } {
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, _src?.__copy__());
        if (_conf == null || (_conf : Dynamic).__nil__) {
            _conf = (stdgo.Go.setRef(({ error : function(_err:stdgo.Error):Void {}, importer : stdgo.go.importer.Importer.default_() } : stdgo.go.types.Types.Config)) : stdgo.Ref<stdgo.go.types.Types.Config>);
        };
        return _conf.check(_f.name.name?.__copy__(), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), _info);
    }
function _mustTypecheck(_src:stdgo.GoString, _conf:stdgo.Ref<Config>, _info:stdgo.Ref<Info>):stdgo.Ref<Package> {
        var __tmp__ = _typecheck(_src?.__copy__(), _conf, _info), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return _pkg;
    }
/**
    // pkgName extracts the package name from src, which must contain a package header.
**/
function _pkgName(_src:stdgo.GoString):stdgo.GoString {
        {};
        {
            var _i:stdgo.GoInt = stdgo.strings.Strings.index(_src?.__copy__(), ("package " : stdgo.GoString));
            if (_i >= (0 : stdgo.GoInt)) {
                var _after:stdgo.GoString = (_src.__slice__(_i + (("package " : stdgo.GoString).length)) : stdgo.GoString)?.__copy__();
                var _n:stdgo.GoInt = (_after.length);
                {
                    var _i:stdgo.GoInt = stdgo.strings.Strings.indexAny(_after?.__copy__(), ("\n\t ;/" : stdgo.GoString));
                    if (_i >= (0 : stdgo.GoInt)) {
                        _n = _i;
                    };
                };
                return (_after.__slice__(0, _n) : stdgo.GoString)?.__copy__();
            };
        };
        throw stdgo.Go.toInterface(("missing package header: " : stdgo.GoString) + _src?.__copy__());
    }
function testValuesInfo(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _tests:stdgo.Slice<T__struct_9> = (new stdgo.Slice<T__struct_9>(
59,
59,
({ _src : ("package a0; const _ = false" : stdgo.GoString), _expr : ("false" : stdgo.GoString), _typ : ("untyped bool" : stdgo.GoString), _val : ("false" : stdgo.GoString) } : T__struct_9),
({ _src : ("package a1; const _ = 0" : stdgo.GoString), _expr : ("0" : stdgo.GoString), _typ : ("untyped int" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package a2; const _ = \'A\'" : stdgo.GoString), _expr : ("\'A\'" : stdgo.GoString), _typ : ("untyped rune" : stdgo.GoString), _val : ("65" : stdgo.GoString) } : T__struct_9),
({ _src : ("package a3; const _ = 0." : stdgo.GoString), _expr : ("0." : stdgo.GoString), _typ : ("untyped float" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package a4; const _ = 0i" : stdgo.GoString), _expr : ("0i" : stdgo.GoString), _typ : ("untyped complex" : stdgo.GoString), _val : ("(0 + 0i)" : stdgo.GoString) } : T__struct_9),
({ _src : ("package a5; const _ = \"foo\"" : stdgo.GoString), _expr : ("\"foo\"" : stdgo.GoString), _typ : ("untyped string" : stdgo.GoString), _val : ("\"foo\"" : stdgo.GoString) } : T__struct_9),
({ _src : ("package b0; var _ = false" : stdgo.GoString), _expr : ("false" : stdgo.GoString), _typ : ("bool" : stdgo.GoString), _val : ("false" : stdgo.GoString) } : T__struct_9),
({ _src : ("package b1; var _ = 0" : stdgo.GoString), _expr : ("0" : stdgo.GoString), _typ : ("int" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package b2; var _ = \'A\'" : stdgo.GoString), _expr : ("\'A\'" : stdgo.GoString), _typ : ("rune" : stdgo.GoString), _val : ("65" : stdgo.GoString) } : T__struct_9),
({ _src : ("package b3; var _ = 0." : stdgo.GoString), _expr : ("0." : stdgo.GoString), _typ : ("float64" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package b4; var _ = 0i" : stdgo.GoString), _expr : ("0i" : stdgo.GoString), _typ : ("complex128" : stdgo.GoString), _val : ("(0 + 0i)" : stdgo.GoString) } : T__struct_9),
({ _src : ("package b5; var _ = \"foo\"" : stdgo.GoString), _expr : ("\"foo\"" : stdgo.GoString), _typ : ("string" : stdgo.GoString), _val : ("\"foo\"" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c0a; var _ = bool(false)" : stdgo.GoString), _expr : ("false" : stdgo.GoString), _typ : ("bool" : stdgo.GoString), _val : ("false" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c0b; var _ = bool(false)" : stdgo.GoString), _expr : ("bool(false)" : stdgo.GoString), _typ : ("bool" : stdgo.GoString), _val : ("false" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c0c; type T bool; var _ = T(false)" : stdgo.GoString), _expr : ("T(false)" : stdgo.GoString), _typ : ("c0c.T" : stdgo.GoString), _val : ("false" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c1a; var _ = int(0)" : stdgo.GoString), _expr : ("0" : stdgo.GoString), _typ : ("int" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c1b; var _ = int(0)" : stdgo.GoString), _expr : ("int(0)" : stdgo.GoString), _typ : ("int" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c1c; type T int; var _ = T(0)" : stdgo.GoString), _expr : ("T(0)" : stdgo.GoString), _typ : ("c1c.T" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c2a; var _ = rune(\'A\')" : stdgo.GoString), _expr : ("\'A\'" : stdgo.GoString), _typ : ("rune" : stdgo.GoString), _val : ("65" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c2b; var _ = rune(\'A\')" : stdgo.GoString), _expr : ("rune(\'A\')" : stdgo.GoString), _typ : ("rune" : stdgo.GoString), _val : ("65" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c2c; type T rune; var _ = T(\'A\')" : stdgo.GoString), _expr : ("T(\'A\')" : stdgo.GoString), _typ : ("c2c.T" : stdgo.GoString), _val : ("65" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c3a; var _ = float32(0.)" : stdgo.GoString), _expr : ("0." : stdgo.GoString), _typ : ("float32" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c3b; var _ = float32(0.)" : stdgo.GoString), _expr : ("float32(0.)" : stdgo.GoString), _typ : ("float32" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c3c; type T float32; var _ = T(0.)" : stdgo.GoString), _expr : ("T(0.)" : stdgo.GoString), _typ : ("c3c.T" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c4a; var _ = complex64(0i)" : stdgo.GoString), _expr : ("0i" : stdgo.GoString), _typ : ("complex64" : stdgo.GoString), _val : ("(0 + 0i)" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c4b; var _ = complex64(0i)" : stdgo.GoString), _expr : ("complex64(0i)" : stdgo.GoString), _typ : ("complex64" : stdgo.GoString), _val : ("(0 + 0i)" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c4c; type T complex64; var _ = T(0i)" : stdgo.GoString), _expr : ("T(0i)" : stdgo.GoString), _typ : ("c4c.T" : stdgo.GoString), _val : ("(0 + 0i)" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c5a; var _ = string(\"foo\")" : stdgo.GoString), _expr : ("\"foo\"" : stdgo.GoString), _typ : ("string" : stdgo.GoString), _val : ("\"foo\"" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c5b; var _ = string(\"foo\")" : stdgo.GoString), _expr : ("string(\"foo\")" : stdgo.GoString), _typ : ("string" : stdgo.GoString), _val : ("\"foo\"" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c5c; type T string; var _ = T(\"foo\")" : stdgo.GoString), _expr : ("T(\"foo\")" : stdgo.GoString), _typ : ("c5c.T" : stdgo.GoString), _val : ("\"foo\"" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c5d; var _ = string(65)" : stdgo.GoString), _expr : ("65" : stdgo.GoString), _typ : ("untyped int" : stdgo.GoString), _val : ("65" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c5e; var _ = string(\'A\')" : stdgo.GoString), _expr : ("\'A\'" : stdgo.GoString), _typ : ("untyped rune" : stdgo.GoString), _val : ("65" : stdgo.GoString) } : T__struct_9),
({ _src : ("package c5f; type T string; var _ = T(\'A\')" : stdgo.GoString), _expr : ("\'A\'" : stdgo.GoString), _typ : ("untyped rune" : stdgo.GoString), _val : ("65" : stdgo.GoString) } : T__struct_9),
({ _src : ("package d0; var _ = []byte(\"foo\")" : stdgo.GoString), _expr : ("\"foo\"" : stdgo.GoString), _typ : ("string" : stdgo.GoString), _val : ("\"foo\"" : stdgo.GoString) } : T__struct_9),
({ _src : ("package d1; var _ = []byte(string(\"foo\"))" : stdgo.GoString), _expr : ("\"foo\"" : stdgo.GoString), _typ : ("string" : stdgo.GoString), _val : ("\"foo\"" : stdgo.GoString) } : T__struct_9),
({ _src : ("package d2; var _ = []byte(string(\"foo\"))" : stdgo.GoString), _expr : ("string(\"foo\")" : stdgo.GoString), _typ : ("string" : stdgo.GoString), _val : ("\"foo\"" : stdgo.GoString) } : T__struct_9),
({ _src : ("package d3; type T []byte; var _ = T(\"foo\")" : stdgo.GoString), _expr : ("\"foo\"" : stdgo.GoString), _typ : ("string" : stdgo.GoString), _val : ("\"foo\"" : stdgo.GoString) } : T__struct_9),
({ _src : ("package e0; const _ = float32( 1e-200)" : stdgo.GoString), _expr : ("float32(1e-200)" : stdgo.GoString), _typ : ("float32" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package e1; const _ = float32(-1e-200)" : stdgo.GoString), _expr : ("float32(-1e-200)" : stdgo.GoString), _typ : ("float32" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package e2; const _ = float64( 1e-2000)" : stdgo.GoString), _expr : ("float64(1e-2000)" : stdgo.GoString), _typ : ("float64" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package e3; const _ = float64(-1e-2000)" : stdgo.GoString), _expr : ("float64(-1e-2000)" : stdgo.GoString), _typ : ("float64" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package e4; const _ = complex64( 1e-200)" : stdgo.GoString), _expr : ("complex64(1e-200)" : stdgo.GoString), _typ : ("complex64" : stdgo.GoString), _val : ("(0 + 0i)" : stdgo.GoString) } : T__struct_9),
({ _src : ("package e5; const _ = complex64(-1e-200)" : stdgo.GoString), _expr : ("complex64(-1e-200)" : stdgo.GoString), _typ : ("complex64" : stdgo.GoString), _val : ("(0 + 0i)" : stdgo.GoString) } : T__struct_9),
({ _src : ("package e6; const _ = complex128( 1e-2000)" : stdgo.GoString), _expr : ("complex128(1e-2000)" : stdgo.GoString), _typ : ("complex128" : stdgo.GoString), _val : ("(0 + 0i)" : stdgo.GoString) } : T__struct_9),
({ _src : ("package e7; const _ = complex128(-1e-2000)" : stdgo.GoString), _expr : ("complex128(-1e-2000)" : stdgo.GoString), _typ : ("complex128" : stdgo.GoString), _val : ("(0 + 0i)" : stdgo.GoString) } : T__struct_9),
({ _src : ("package f0 ; var _ float32 =  1e-200" : stdgo.GoString), _expr : ("1e-200" : stdgo.GoString), _typ : ("float32" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package f1 ; var _ float32 = -1e-200" : stdgo.GoString), _expr : ("-1e-200" : stdgo.GoString), _typ : ("float32" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package f2a; var _ float64 =  1e-2000" : stdgo.GoString), _expr : ("1e-2000" : stdgo.GoString), _typ : ("float64" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package f3a; var _ float64 = -1e-2000" : stdgo.GoString), _expr : ("-1e-2000" : stdgo.GoString), _typ : ("float64" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package f2b; var _         =  1e-2000" : stdgo.GoString), _expr : ("1e-2000" : stdgo.GoString), _typ : ("float64" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package f3b; var _         = -1e-2000" : stdgo.GoString), _expr : ("-1e-2000" : stdgo.GoString), _typ : ("float64" : stdgo.GoString), _val : ("0" : stdgo.GoString) } : T__struct_9),
({ _src : ("package f4 ; var _ complex64  =  1e-200 " : stdgo.GoString), _expr : ("1e-200" : stdgo.GoString), _typ : ("complex64" : stdgo.GoString), _val : ("(0 + 0i)" : stdgo.GoString) } : T__struct_9),
({ _src : ("package f5 ; var _ complex64  = -1e-200 " : stdgo.GoString), _expr : ("-1e-200" : stdgo.GoString), _typ : ("complex64" : stdgo.GoString), _val : ("(0 + 0i)" : stdgo.GoString) } : T__struct_9),
({ _src : ("package f6a; var _ complex128 =  1e-2000i" : stdgo.GoString), _expr : ("1e-2000i" : stdgo.GoString), _typ : ("complex128" : stdgo.GoString), _val : ("(0 + 0i)" : stdgo.GoString) } : T__struct_9),
({ _src : ("package f7a; var _ complex128 = -1e-2000i" : stdgo.GoString), _expr : ("-1e-2000i" : stdgo.GoString), _typ : ("complex128" : stdgo.GoString), _val : ("(0 + 0i)" : stdgo.GoString) } : T__struct_9),
({ _src : ("package f6b; var _            =  1e-2000i" : stdgo.GoString), _expr : ("1e-2000i" : stdgo.GoString), _typ : ("complex128" : stdgo.GoString), _val : ("(0 + 0i)" : stdgo.GoString) } : T__struct_9),
({ _src : ("package f7b; var _            = -1e-2000i" : stdgo.GoString), _expr : ("-1e-2000i" : stdgo.GoString), _typ : ("complex128" : stdgo.GoString), _val : ("(0 + 0i)" : stdgo.GoString) } : T__struct_9),
({ _src : ("package g0; const (a = len([iota]int{}); b; c); const _ = c" : stdgo.GoString), _expr : ("c" : stdgo.GoString), _typ : ("int" : stdgo.GoString), _val : ("2" : stdgo.GoString) } : T__struct_9),
({ _src : ("package g1; var(j int32; s int; n = 1.0<<s == j)" : stdgo.GoString), _expr : ("1.0" : stdgo.GoString), _typ : ("int32" : stdgo.GoString), _val : ("1" : stdgo.GoString) } : T__struct_9)) : stdgo.Slice<T__struct_9>);
        for (__0 => _test in _tests) {
            var _info:stdgo.go.types.Types.Info = ({ types : ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>) } : stdgo.go.types.Types.Info);
            var _name:stdgo.GoString = _mustTypecheck(_test._src?.__copy__(), null, (stdgo.Go.setRef(_info) : stdgo.Ref<stdgo.go.types.Types.Info>)).name()?.__copy__();
            var _expr:stdgo.go.ast.Ast.Expr = (null : stdgo.go.ast.Ast.Expr);
            for (_e => _ in _info.types) {
                if (exprString(_e) == (_test._expr)) {
                    _expr = _e;
                    break;
                };
            };
            if (_expr == null) {
                _t.errorf(("package %s: no expression found for %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_test._expr));
                continue;
            };
            var _tv:stdgo.go.types.Types.TypeAndValue = (_info.types[_expr] ?? ({} : stdgo.go.types.Types.TypeAndValue))?.__copy__();
            {
                var _got:stdgo.GoString = (_tv.type.string() : stdgo.GoString)?.__copy__();
                if (_got != (_test._typ)) {
                    _t.errorf(("package %s: got type %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._typ));
                    continue;
                };
            };
            if (_tv.value != null) {
                {
                    var _got:stdgo.GoString = _tv.value.exactString()?.__copy__();
                    if (_got != (_test._val)) {
                        _t.errorf(("package %s: got value %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._val));
                    };
                };
            } else {
                if (_test._val != (stdgo.Go.str())) {
                    _t.errorf(("package %s: no constant found; want %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_test._val));
                };
            };
        };
    }
function testTypesInfo(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _tests:stdgo.Slice<T__struct_10> = (new stdgo.Slice<T__struct_10>(
118,
118,
({ _src : ("package b0; var x interface{} = false" : stdgo.GoString), _expr : ("false" : stdgo.GoString), _typ : ("bool" : stdgo.GoString) } : T__struct_10),
({ _src : ("package b1; var x interface{} = 0" : stdgo.GoString), _expr : ("0" : stdgo.GoString), _typ : ("int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package b2; var x interface{} = 0." : stdgo.GoString), _expr : ("0." : stdgo.GoString), _typ : ("float64" : stdgo.GoString) } : T__struct_10),
({ _src : ("package b3; var x interface{} = 0i" : stdgo.GoString), _expr : ("0i" : stdgo.GoString), _typ : ("complex128" : stdgo.GoString) } : T__struct_10),
({ _src : ("package b4; var x interface{} = \"foo\"" : stdgo.GoString), _expr : ("\"foo\"" : stdgo.GoString), _typ : ("string" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n0; var _ *int = nil" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n1; var _ func() = nil" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n2; var _ []byte = nil" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n3; var _ map[int]int = nil" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n4; var _ chan int = nil" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n5; var _ interface{} = nil" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n6; import \"unsafe\"; var _ unsafe.Pointer = nil" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n10; var (x *int; _ = x == nil)" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n11; var (x func(); _ = x == nil)" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n12; var (x []byte; _ = x == nil)" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n13; var (x map[int]int; _ = x == nil)" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n14; var (x chan int; _ = x == nil)" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n15; var (x interface{}; _ = x == nil)" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n15; import \"unsafe\"; var (x unsafe.Pointer; _ = x == nil)" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n20; var _ = (*int)(nil)" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n21; var _ = (func())(nil)" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n22; var _ = ([]byte)(nil)" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n23; var _ = (map[int]int)(nil)" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n24; var _ = (chan int)(nil)" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n25; var _ = (interface{})(nil)" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n26; import \"unsafe\"; var _ = unsafe.Pointer(nil)" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n30; func f(*int) { f(nil) }" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n31; func f(func()) { f(nil) }" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n32; func f([]byte) { f(nil) }" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n33; func f(map[int]int) { f(nil) }" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n34; func f(chan int) { f(nil) }" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n35; func f(interface{}) { f(nil) }" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package n35; import \"unsafe\"; func f(unsafe.Pointer) { f(nil) }" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _typ : ("untyped nil" : stdgo.GoString) } : T__struct_10),
({ _src : ("package p0; var x interface{}; var _, _ = x.(int)" : stdgo.GoString), _expr : ("x.(int)" : stdgo.GoString), _typ : ("(int, bool)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package p1; var x interface{}; func _() { _, _ = x.(int) }" : stdgo.GoString), _expr : ("x.(int)" : stdgo.GoString), _typ : ("(int, bool)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package p2a; type mybool bool; var m map[string]complex128; var b mybool; func _() { _, b = m[\"foo\"] }" : stdgo.GoString), _expr : ("m[\"foo\"]" : stdgo.GoString), _typ : ("(complex128, p2a.mybool)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package p2b; var m map[string]complex128; var b bool; func _() { _, b = m[\"foo\"] }" : stdgo.GoString), _expr : ("m[\"foo\"]" : stdgo.GoString), _typ : ("(complex128, bool)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package p3; var c chan string; var _, _ = <-c" : stdgo.GoString), _expr : ("<-c" : stdgo.GoString), _typ : ("(string, bool)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue6796_a; var x interface{}; var _, _ = (x.(int))" : stdgo.GoString), _expr : ("x.(int)" : stdgo.GoString), _typ : ("(int, bool)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue6796_b; var c chan string; var _, _ = (<-c)" : stdgo.GoString), _expr : ("(<-c)" : stdgo.GoString), _typ : ("(string, bool)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue6796_c; var c chan string; var _, _ = (<-c)" : stdgo.GoString), _expr : ("<-c" : stdgo.GoString), _typ : ("(string, bool)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue6796_d; var c chan string; var _, _ = ((<-c))" : stdgo.GoString), _expr : ("(<-c)" : stdgo.GoString), _typ : ("(string, bool)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue6796_e; func f(c chan string) { _, _ = ((<-c)) }" : stdgo.GoString), _expr : ("(<-c)" : stdgo.GoString), _typ : ("(string, bool)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue7060_a; var ( m map[int]string; x, ok = m[0] )" : stdgo.GoString), _expr : ("m[0]" : stdgo.GoString), _typ : ("(string, bool)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue7060_b; var ( m map[int]string; x, ok interface{} = m[0] )" : stdgo.GoString), _expr : ("m[0]" : stdgo.GoString), _typ : ("(string, bool)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue7060_c; func f(x interface{}, ok bool, m map[int]string) { x, ok = m[0] }" : stdgo.GoString), _expr : ("m[0]" : stdgo.GoString), _typ : ("(string, bool)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue7060_d; var ( ch chan string; x, ok = <-ch )" : stdgo.GoString), _expr : ("<-ch" : stdgo.GoString), _typ : ("(string, bool)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue7060_e; var ( ch chan string; x, ok interface{} = <-ch )" : stdgo.GoString), _expr : ("<-ch" : stdgo.GoString), _typ : ("(string, bool)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue7060_f; func f(x interface{}, ok bool, ch chan string) { x, ok = <-ch }" : stdgo.GoString), _expr : ("<-ch" : stdgo.GoString), _typ : ("(string, bool)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue28277_a; func f(...int)" : stdgo.GoString), _expr : ("...int" : stdgo.GoString), _typ : ("[]int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue28277_b; func f(a, b int, c ...[]struct{})" : stdgo.GoString), _expr : ("...[]struct{}" : stdgo.GoString), _typ : ("[][]struct{}" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue47243_a; var x int32; var _ = x << 3" : stdgo.GoString), _expr : ("3" : stdgo.GoString), _typ : ("untyped int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue47243_b; var x int32; var _ = x << 3." : stdgo.GoString), _expr : ("3." : stdgo.GoString), _typ : ("untyped float" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue47243_c; var x int32; var _ = 1 << x" : stdgo.GoString), _expr : ("1 << x" : stdgo.GoString), _typ : ("int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue47243_d; var x int32; var _ = 1 << x" : stdgo.GoString), _expr : ("1" : stdgo.GoString), _typ : ("int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue47243_e; var x int32; var _ = 1 << 2" : stdgo.GoString), _expr : ("1" : stdgo.GoString), _typ : ("untyped int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue47243_f; var x int32; var _ = 1 << 2" : stdgo.GoString), _expr : ("2" : stdgo.GoString), _typ : ("untyped int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue47243_g; var x int32; var _ = int(1) << 2" : stdgo.GoString), _expr : ("2" : stdgo.GoString), _typ : ("untyped int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue47243_h; var x int32; var _ = 1 << (2 << x)" : stdgo.GoString), _expr : ("1" : stdgo.GoString), _typ : ("int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue47243_i; var x int32; var _ = 1 << (2 << x)" : stdgo.GoString), _expr : ("(2 << x)" : stdgo.GoString), _typ : ("untyped int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue47243_j; var x int32; var _ = 1 << (2 << x)" : stdgo.GoString), _expr : ("2" : stdgo.GoString), _typ : ("untyped int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package broken_x0; func _() { var x struct {f string}; x.f := 0 }" : stdgo.GoString), _expr : ("x.f" : stdgo.GoString), _typ : ("string" : stdgo.GoString) } : T__struct_10),
({ _src : ("package broken_x1; func _() { var z string; type x struct {f string}; y := &x{q: z}}" : stdgo.GoString), _expr : ("z" : stdgo.GoString), _typ : ("string" : stdgo.GoString) } : T__struct_10),
({ _src : ("package broken_x2; func _() { var a, b string; type x struct {f string}; z := &x{f: a, f: b,}}" : stdgo.GoString), _expr : ("b" : stdgo.GoString), _typ : ("string" : stdgo.GoString) } : T__struct_10),
({ _src : ("package broken_x3; var x = panic(\"\");" : stdgo.GoString), _expr : ("panic" : stdgo.GoString), _typ : ("func(interface{})" : stdgo.GoString) } : T__struct_10),
({ _src : ("package x4; func _() { panic(\"\") }" : stdgo.GoString), _expr : ("panic" : stdgo.GoString), _typ : ("func(interface{})" : stdgo.GoString) } : T__struct_10),
({ _src : ("package broken_x5; func _() { var x map[string][...]int; x = map[string][...]int{\"\": {1,2,3}} }" : stdgo.GoString), _expr : ("x" : stdgo.GoString), _typ : ("map[string]invalid type" : stdgo.GoString) } : T__struct_10),
({ _src : ("package p0; func f[T any](T) {}; var _ = f[int]" : stdgo.GoString), _expr : ("f" : stdgo.GoString), _typ : ("func[T any](T)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package p1; func f[T any](T) {}; var _ = f[int]" : stdgo.GoString), _expr : ("f[int]" : stdgo.GoString), _typ : ("func(int)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package p2; func f[T any](T) {}; func _() { f(42) }" : stdgo.GoString), _expr : ("f" : stdgo.GoString), _typ : ("func(int)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package p3; func f[T any](T) {}; func _() { f[int](42) }" : stdgo.GoString), _expr : ("f[int]" : stdgo.GoString), _typ : ("func(int)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package p4; func f[T any](T) {}; func _() { f[int](42) }" : stdgo.GoString), _expr : ("f" : stdgo.GoString), _typ : ("func[T any](T)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package p5; func f[T any](T) {}; func _() { f(42) }" : stdgo.GoString), _expr : ("f(42)" : stdgo.GoString), _typ : ("()" : stdgo.GoString) } : T__struct_10),
({ _src : ("package t0; type t[] int; var _ t" : stdgo.GoString), _expr : ("t" : stdgo.GoString), _typ : ("t0.t" : stdgo.GoString) } : T__struct_10),
({ _src : ("package t1; type t[P any] int; var _ t[int]" : stdgo.GoString), _expr : ("t" : stdgo.GoString), _typ : ("t1.t[P any]" : stdgo.GoString) } : T__struct_10),
({ _src : ("package t2; type t[P interface{}] int; var _ t[int]" : stdgo.GoString), _expr : ("t" : stdgo.GoString), _typ : ("t2.t[P interface{}]" : stdgo.GoString) } : T__struct_10),
({ _src : ("package t3; type t[P, Q interface{}] int; var _ t[int, int]" : stdgo.GoString), _expr : ("t" : stdgo.GoString), _typ : ("t3.t[P, Q interface{}]" : stdgo.GoString) } : T__struct_10),
({ _src : ("package broken_t4; type t[P, Q interface{ m() }] int; var _ t[int, int]" : stdgo.GoString), _expr : ("t" : stdgo.GoString), _typ : ("broken_t4.t[P, Q interface{m()}]" : stdgo.GoString) } : T__struct_10),
({ _src : ("package g0; type t[P any] int; var x struct{ f t[int] }; var _ = x.f" : stdgo.GoString), _expr : ("x.f" : stdgo.GoString), _typ : ("g0.t[int]" : stdgo.GoString) } : T__struct_10),
({ _src : ("package issue45096; func _[T interface{ ~int8 | ~int16 | ~int32  }](x T) { _ = x < 0 }" : stdgo.GoString), _expr : ("0" : stdgo.GoString), _typ : ("T" : stdgo.GoString) } : T__struct_10),
({ _src : ("package p; import \"unsafe\"; type S struct { f int }; var s S; var _ = unsafe.Offsetof(s.f)" : stdgo.GoString), _expr : ("s.f" : stdgo.GoString), _typ : ("int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u0a; func _[_ interface{int}]() {}" : stdgo.GoString), _expr : ("int" : stdgo.GoString), _typ : ("int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u1a; func _[_ interface{~int}]() {}" : stdgo.GoString), _expr : ("~int" : stdgo.GoString), _typ : ("~int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u2a; func _[_ interface{int | string}]() {}" : stdgo.GoString), _expr : ("int | string" : stdgo.GoString), _typ : ("int | string" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u3a; func _[_ interface{int | string | ~bool}]() {}" : stdgo.GoString), _expr : ("int | string | ~bool" : stdgo.GoString), _typ : ("int | string | ~bool" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u3a; func _[_ interface{int | string | ~bool}]() {}" : stdgo.GoString), _expr : ("int | string" : stdgo.GoString), _typ : ("int | string" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u3a; func _[_ interface{int | string | ~bool}]() {}" : stdgo.GoString), _expr : ("~bool" : stdgo.GoString), _typ : ("~bool" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u3a; func _[_ interface{int | string | ~float64|~bool}]() {}" : stdgo.GoString), _expr : ("int | string | ~float64" : stdgo.GoString), _typ : ("int | string | ~float64" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u0b; func _[_ int]() {}" : stdgo.GoString), _expr : ("int" : stdgo.GoString), _typ : ("int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u1b; func _[_ ~int]() {}" : stdgo.GoString), _expr : ("~int" : stdgo.GoString), _typ : ("~int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u2b; func _[_ int | string]() {}" : stdgo.GoString), _expr : ("int | string" : stdgo.GoString), _typ : ("int | string" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u3b; func _[_ int | string | ~bool]() {}" : stdgo.GoString), _expr : ("int | string | ~bool" : stdgo.GoString), _typ : ("int | string | ~bool" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u3b; func _[_ int | string | ~bool]() {}" : stdgo.GoString), _expr : ("int | string" : stdgo.GoString), _typ : ("int | string" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u3b; func _[_ int | string | ~bool]() {}" : stdgo.GoString), _expr : ("~bool" : stdgo.GoString), _typ : ("~bool" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u3b; func _[_ int | string | ~float64|~bool]() {}" : stdgo.GoString), _expr : ("int | string | ~float64" : stdgo.GoString), _typ : ("int | string | ~float64" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u0c; type _ interface{int}" : stdgo.GoString), _expr : ("int" : stdgo.GoString), _typ : ("int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u1c; type _ interface{~int}" : stdgo.GoString), _expr : ("~int" : stdgo.GoString), _typ : ("~int" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u2c; type _ interface{int | string}" : stdgo.GoString), _expr : ("int | string" : stdgo.GoString), _typ : ("int | string" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u3c; type _ interface{int | string | ~bool}" : stdgo.GoString), _expr : ("int | string | ~bool" : stdgo.GoString), _typ : ("int | string | ~bool" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u3c; type _ interface{int | string | ~bool}" : stdgo.GoString), _expr : ("int | string" : stdgo.GoString), _typ : ("int | string" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u3c; type _ interface{int | string | ~bool}" : stdgo.GoString), _expr : ("~bool" : stdgo.GoString), _typ : ("~bool" : stdgo.GoString) } : T__struct_10),
({ _src : ("package u3c; type _ interface{int | string | ~float64|~bool}" : stdgo.GoString), _expr : ("int | string | ~float64" : stdgo.GoString), _typ : ("int | string | ~float64" : stdgo.GoString) } : T__struct_10),
({ _src : ("package r1; var _ func(int) = g; func g[P any](P) {}" : stdgo.GoString), _expr : ("g" : stdgo.GoString), _typ : ("func(int)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package r2; var _ func(int) = g[int]; func g[P any](P) {}" : stdgo.GoString), _expr : ("g" : stdgo.GoString), _typ : ("func[P any](P)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package r3; var _ func(int) = g[int]; func g[P any](P) {}" : stdgo.GoString), _expr : ("g[int]" : stdgo.GoString), _typ : ("func(int)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package r4; var _ func(int, string) = g; func g[P, Q any](P, Q) {}" : stdgo.GoString), _expr : ("g" : stdgo.GoString), _typ : ("func(int, string)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package r5; var _ func(int, string) = g[int]; func g[P, Q any](P, Q) {}" : stdgo.GoString), _expr : ("g" : stdgo.GoString), _typ : ("func[P, Q any](P, Q)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package r6; var _ func(int, string) = g[int]; func g[P, Q any](P, Q) {}" : stdgo.GoString), _expr : ("g[int]" : stdgo.GoString), _typ : ("func(int, string)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package s1; func _() { f(g) }; func f(func(int)) {}; func g[P any](P) {}" : stdgo.GoString), _expr : ("g" : stdgo.GoString), _typ : ("func(int)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package s2; func _() { f(g[int]) }; func f(func(int)) {}; func g[P any](P) {}" : stdgo.GoString), _expr : ("g" : stdgo.GoString), _typ : ("func[P any](P)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package s3; func _() { f(g[int]) }; func f(func(int)) {}; func g[P any](P) {}" : stdgo.GoString), _expr : ("g[int]" : stdgo.GoString), _typ : ("func(int)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package s4; func _() { f(g) }; func f(func(int, string)) {}; func g[P, Q any](P, Q) {}" : stdgo.GoString), _expr : ("g" : stdgo.GoString), _typ : ("func(int, string)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package s5; func _() { f(g[int]) }; func f(func(int, string)) {}; func g[P, Q any](P, Q) {}" : stdgo.GoString), _expr : ("g" : stdgo.GoString), _typ : ("func[P, Q any](P, Q)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package s6; func _() { f(g[int]) }; func f(func(int, string)) {}; func g[P, Q any](P, Q) {}" : stdgo.GoString), _expr : ("g[int]" : stdgo.GoString), _typ : ("func(int, string)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package s7; func _() { f(g, h) }; func f[P any](func(int, P), func(P, string)) {}; func g[P any](P, P) {}; func h[P, Q any](P, Q) {}" : stdgo.GoString), _expr : ("g" : stdgo.GoString), _typ : ("func(int, int)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package s8; func _() { f(g, h) }; func f[P any](func(int, P), func(P, string)) {}; func g[P any](P, P) {}; func h[P, Q any](P, Q) {}" : stdgo.GoString), _expr : ("h" : stdgo.GoString), _typ : ("func(int, string)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package s9; func _() { f(g, h[int]) }; func f[P any](func(int, P), func(P, string)) {}; func g[P any](P, P) {}; func h[P, Q any](P, Q) {}" : stdgo.GoString), _expr : ("h" : stdgo.GoString), _typ : ("func[P, Q any](P, Q)" : stdgo.GoString) } : T__struct_10),
({ _src : ("package s10; func _() { f(g, h[int]) }; func f[P any](func(int, P), func(P, string)) {}; func g[P any](P, P) {}; func h[P, Q any](P, Q) {}" : stdgo.GoString), _expr : ("h[int]" : stdgo.GoString), _typ : ("func(int, string)" : stdgo.GoString) } : T__struct_10)) : stdgo.Slice<T__struct_10>);
        for (__0 => _test in _tests) {
            var _info:stdgo.go.types.Types.Info = ({ types : ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>) } : stdgo.go.types.Types.Info);
            var _name:stdgo.GoString = ("" : stdgo.GoString);
            if (stdgo.strings.Strings.hasPrefix(_test._src?.__copy__(), ("package broken_" : stdgo.GoString))) {
                var __tmp__ = _typecheck(_test._src?.__copy__(), null, (stdgo.Go.setRef(_info) : stdgo.Ref<stdgo.go.types.Types.Info>)), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("package %s: expected to fail but passed" : stdgo.GoString), stdgo.Go.toInterface(_pkg.name()));
                    continue;
                };
                if (_pkg != null && ((_pkg : Dynamic).__nil__ == null || !(_pkg : Dynamic).__nil__)) {
                    _name = _pkg.name()?.__copy__();
                };
            } else {
                _name = _mustTypecheck(_test._src?.__copy__(), null, (stdgo.Go.setRef(_info) : stdgo.Ref<stdgo.go.types.Types.Info>)).name()?.__copy__();
            };
            var _typ:Type_ = (null : stdgo.go.types.Types.Type_);
            for (_e => _tv in _info.types) {
                if (exprString(_e) == (_test._expr)) {
                    _typ = _tv.type;
                    break;
                };
            };
            if (_typ == null) {
                _t.errorf(("package %s: no type found for %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_test._expr));
                continue;
            };
            {
                var _got:stdgo.GoString = (_typ.string() : stdgo.GoString)?.__copy__();
                if (_got != (_test._typ)) {
                    _t.errorf(("package %s: expr = %s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_test._expr), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._typ));
                };
            };
        };
    }
/**
    
    
    
**/
@:structInit class T_testInstanceInfo_40___localname___testInst {
    public var _name : stdgo.GoString = "";
    public var _targs : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _typ : stdgo.GoString = "";
    public function new(?_name:stdgo.GoString, ?_targs:stdgo.Slice<stdgo.GoString>, ?_typ:stdgo.GoString) {
        if (_name != null) this._name = _name;
        if (_targs != null) this._targs = _targs;
        if (_typ != null) this._typ = _typ;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testInstanceInfo_40___localname___testInst(_name, _targs, _typ);
    }
}
function testInstanceInfo(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        {};
        var _tests:stdgo.Slice<T__struct_11> = (new stdgo.Slice<T__struct_11>(
34,
34,
({ _src : ("package p0; func f[T any](T) {}; func _() { f(42) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(int)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package p1; func f[T any](T) T { panic(0) }; func _() { f(\'@\') }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("rune" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(rune) rune" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package p2; func f[T any](...T) T { panic(0) }; func _() { f(0i) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("complex128" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(...complex128) complex128" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package p3; func f[A, B, C any](A, *B, []C) {}; func _() { f(1.2, new(string), []byte{}) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ("float64" : stdgo.GoString), ("string" : stdgo.GoString), ("byte" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(float64, *string, []byte)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package p4; func f[A, B any](A, *B, ...[]B) {}; func _() { f(1.2, new(byte)) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("float64" : stdgo.GoString), ("byte" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(float64, *byte, ...[]byte)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package s1; func f[T any, P interface{*T}](x T) {}; func _(x string) { f(x) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("string" : stdgo.GoString), ("*string" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(x string)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package s2; func f[T any, P interface{*T}](x []T) {}; func _(x []int) { f(x) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("int" : stdgo.GoString), ("*int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(x []int)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package s3; type C[T any] interface{chan<- T}; func f[T any, P C[T]](x []T) {}; func _(x []int) { f(x) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(2, 2, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("C" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("T" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("interface{chan<- T}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("int" : stdgo.GoString), ("chan<- int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(x []int)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package s4; type C[T any] interface{chan<- T}; func f[T any, P C[T], Q C[[]*P]](x []T) {}; func _(x []int) { f(x) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(3, 3, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("C" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("T" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("interface{chan<- T}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("C" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("[]*P" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("interface{chan<- []*P}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ("int" : stdgo.GoString), ("chan<- int" : stdgo.GoString), ("chan<- []*chan<- int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(x []int)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package t1; func f[T any, P interface{*T}]() T { panic(0) }; func _() { _ = f[string] }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("string" : stdgo.GoString), ("*string" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func() string" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package t2; func f[T any, P interface{*T}]() T { panic(0) }; func _() { _ = (f[string]) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("string" : stdgo.GoString), ("*string" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func() string" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package t3; type C[T any] interface{chan<- T}; func f[T any, P C[T], Q C[[]*P]]() []T { return nil }; func _() { _ = f[int] }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(3, 3, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("C" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("T" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("interface{chan<- T}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("C" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("[]*P" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("interface{chan<- []*P}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ("int" : stdgo.GoString), ("chan<- int" : stdgo.GoString), ("chan<- []*chan<- int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func() []int" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package t4; type C[T any] interface{chan<- T}; func f[T any, P C[T], Q C[[]*P]]() []T { return nil }; func _() { _ = (f[int]) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(3, 3, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("C" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("T" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("interface{chan<- T}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("C" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("[]*P" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("interface{chan<- []*P}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ("int" : stdgo.GoString), ("chan<- int" : stdgo.GoString), ("chan<- []*chan<- int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func() []int" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package i0; import \"lib\"; func _() { lib.F(42) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("F" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(int)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package duplfunc0; func f[T any](T) {}; func _() { f(42); f(\"foo\"); f[int](3) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(3, 3, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(int)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("string" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(string)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(int)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package duplfunc1; import \"lib\"; func _() { lib.F(42); lib.F(\"foo\"); lib.F(3) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(3, 3, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("F" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(int)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("F" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("string" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(string)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("F" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(int)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package type0; type T[P interface{~int}] struct{ x P }; var _ T[int]" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("T" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("struct{x int}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package type1; type T[P interface{~int}] struct{ x P }; var _ (T[int])" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("T" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("struct{x int}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package type2; type T[P interface{~int}] struct{ x P }; var _ T[(int)]" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("T" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("struct{x int}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package type3; type T[P1 interface{~[]P2}, P2 any] struct{ x P1; y P2 }; var _ T[[]int, int]" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("T" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("[]int" : stdgo.GoString), ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("struct{x []int; y int}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package type4; import \"lib\"; var _ lib.T[int]" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("T" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("[]int" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package dupltype0; type T[P interface{~int}] struct{ x P }; var x T[int]; var y T[int]" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(2, 2, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("T" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("struct{x int}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("T" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("struct{x int}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package dupltype1; type T[P ~int] struct{ x P }; func (r *T[Q]) add(z T[Q]) { r.x += z.x }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(2, 2, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("T" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("Q" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("struct{x Q}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("T" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("Q" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("struct{x Q}" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package dupltype1; import \"lib\"; var x lib.T[int]; var y lib.T[int]; var z lib.T[string]" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(3, 3, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("T" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("[]int" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("T" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("[]int" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("T" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("string" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("[]string" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package issue51803; func foo[T any](T) {}; func _() { foo[int]( /* leave arg away on purpose */ ) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("foo" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(int)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package reverse1a; var f func(int) = g; func g[P any](P) {}" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("g" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(int)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package reverse1b; func f(func(int)) {}; func g[P any](P) {}; func _() { f(g) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("g" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(int)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package reverse2a; var f func(int, string) = g; func g[P, Q any](P, Q) {}" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("g" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("int" : stdgo.GoString), ("string" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(int, string)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package reverse2b; func f(func(int, string)) {}; func g[P, Q any](P, Q) {}; func _() { f(g) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("g" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("int" : stdgo.GoString), ("string" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(int, string)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package reverse2c; func f(func(int, string)) {}; func g[P, Q any](P, Q) {}; func _() { f(g[int]) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(1, 1, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("g" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("int" : stdgo.GoString), ("string" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(int, string)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package reverse3b; func f[R any](func(int) R) {}; func g[P any](P) string { return \"\" }; func _() { f(g) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(2, 2, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("string" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(func(int) string)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("g" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(int) string" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package reverse4a; var _, _ func([]int, *float32) = g, h; func g[P, Q any]([]P, *Q) {}; func h[R any]([]R, *float32) {}" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(2, 2, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("g" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("int" : stdgo.GoString), ("float32" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func([]int, *float32)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("h" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func([]int, *float32)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package reverse4b; func f(_, _ func([]int, *float32)) {}; func g[P, Q any]([]P, *Q) {}; func h[R any]([]R, *float32) {}; func _() { f(g, h) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(2, 2, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("g" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("int" : stdgo.GoString), ("float32" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func([]int, *float32)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("h" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func([]int, *float32)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11),
({ _src : ("package issue59956; func f(func(int), func(string), func(bool)) {}; func g[P any](P) {}; func _() { f(g, g, g) }" : stdgo.GoString), _instances : (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>(3, 3, (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("g" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("int" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(int)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("g" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("string" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(string)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst), (new stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst(("g" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("bool" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("func(bool)" : stdgo.GoString)) : stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst>) } : T__struct_11)) : stdgo.Slice<T__struct_11>);
        for (__0 => _test in _tests) {
            var _imports:stdgo.go.types_test.Types_test.T_testImporter = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo.go.types.Types.Package>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo.go.types.Types.Package>);
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.go.types.Types.Package>>);
            var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.Go.asInterface(_imports) } : stdgo.go.types.Types.Config);
            var _instMap = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Instance>();
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Instance>);
            var _useMap = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>);
            var _makePkg = function(_src:stdgo.GoString):stdgo.Ref<Package> {
                var __tmp__ = _typecheck(_src?.__copy__(), (stdgo.Go.setRef(_conf) : stdgo.Ref<stdgo.go.types.Types.Config>), (stdgo.Go.setRef(({ instances : _instMap, uses : _useMap } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>)), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((_err != null) && (((_pkg == null) || (_pkg : Dynamic).__nil__) || (_pkg.name() != ("issue51803" : stdgo.GoString)))) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                _imports[_pkg.name()] = _pkg;
                return _pkg;
            };
            _makePkg(("package lib\n\nfunc F[P any](P) {}\n\ntype T[P any] []P\n" : stdgo.GoString));
            var _pkg = _makePkg(_test._src?.__copy__());
            _t.run(_pkg.name()?.__copy__(), function(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
                var _instances = _sortedInstances(_instMap);
                {
                    var __0:stdgo.GoInt = (_instances.length), __1:stdgo.GoInt = (_test._instances.length), _want:stdgo.GoInt = __1, _got:stdgo.GoInt = __0;
                    if (_got != (_want)) {
                        _t.fatalf(("got %d instances, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
                for (_ii => _inst in _instances) {
                    var _targs:stdgo.Slice<Type_> = (null : stdgo.Slice<stdgo.go.types.Types.Type_>);
                    {
                        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor(_i < _inst.inst.typeArgs.len(), _i++, {
                            _targs = (_targs.__append__(_inst.inst.typeArgs.at(_i)));
                        });
                    };
                    var _typ:stdgo.go.types.Types.Type_ = _inst.inst.type;
                    var _testInst:stdgo.go.types_test.Types_test.T_testInstanceInfo_40___localname___testInst = _test._instances[(_ii : stdgo.GoInt)];
                    {
                        var _got:stdgo.GoString = _inst.ident.name?.__copy__();
                        if (_got != (_testInst._name)) {
                            _t.fatalf(("got name %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_testInst._name));
                        };
                    };
                    if ((_targs.length) != ((_testInst._targs.length))) {
                        _t.fatalf(("got %d type arguments; want %d" : stdgo.GoString), stdgo.Go.toInterface((_targs.length)), stdgo.Go.toInterface((_testInst._targs.length)));
                    };
                    for (_i => _targ in _targs) {
                        {
                            var _got:stdgo.GoString = (_targ.string() : stdgo.GoString)?.__copy__();
                            if (_got != (_testInst._targs[(_i : stdgo.GoInt)])) {
                                _t.errorf(("type argument %d: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_testInst._targs[(_i : stdgo.GoInt)]));
                            };
                        };
                    };
                    {
                        var _got:stdgo.GoString = (_typ.underlying().string() : stdgo.GoString)?.__copy__();
                        if (_got != (_testInst._typ)) {
                            _t.errorf(("package %s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_pkg.name()), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_testInst._typ));
                        };
                    };
                    var _ptype:stdgo.go.types.Types.Type_ = (_useMap[_inst.ident] ?? (null : stdgo.go.types.Types.Object)).type();
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ptype) : T__interface_0)) : T__interface_0), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.go.types_test.Types_test.T__interface_0), _1 : false };
                    }, _lister = __tmp__._0, __49 = __tmp__._1;
                    if ((_lister == null) || (_lister.typeParams().len() == (0 : stdgo.GoInt))) {
                        _t.fatalf(("info.Types[%v] = %v, want parameterized type" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_inst.ident)), stdgo.Go.toInterface(_ptype));
                    };
                    var __tmp__ = instantiate(null, _ptype, _targs, true), _inst2:stdgo.go.types.Types.Type_ = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.errorf(("Instantiate(%v, %v) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_ptype), stdgo.Go.toInterface(_targs), stdgo.Go.toInterface(_err));
                    };
                    if (!identical(_inst.inst.type, _inst2)) {
                        _t.errorf(("%v and %v are not identical" : stdgo.GoString), stdgo.Go.toInterface(_inst.inst.type), stdgo.Go.toInterface(_inst2));
                    };
                };
            });
        };
    }
function _sortedInstances(_m:stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, Instance>):stdgo.Slice<T_recordedInstance> {
        var _instances:stdgo.Slice<T_recordedInstance> = (null : stdgo.Slice<stdgo.go.types_test.Types_test.T_recordedInstance>);
        for (_id => _inst in _m) {
            _instances = (_instances.__append__((new stdgo.go.types_test.Types_test.T_recordedInstance(_id, _inst?.__copy__()) : stdgo.go.types_test.Types_test.T_recordedInstance)));
        };
        stdgo.sort.Sort.slice(stdgo.Go.toInterface(_instances), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return cmpPos(_instances[(_i : stdgo.GoInt)].ident.pos(), _instances[(_j : stdgo.GoInt)].ident.pos()) < (0 : stdgo.GoInt);
        });
        return _instances;
    }
function testDefsInfo(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _tests:stdgo.Slice<T__struct_12> = (new stdgo.Slice<T__struct_12>(
9,
9,
({ _src : ("package p0; const x = 42" : stdgo.GoString), _obj : ("x" : stdgo.GoString), _want : ("const p0.x untyped int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package p1; const x int = 42" : stdgo.GoString), _obj : ("x" : stdgo.GoString), _want : ("const p1.x int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package p2; var x int" : stdgo.GoString), _obj : ("x" : stdgo.GoString), _want : ("var p2.x int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package p3; type x int" : stdgo.GoString), _obj : ("x" : stdgo.GoString), _want : ("type p3.x int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package p4; func f()" : stdgo.GoString), _obj : ("f" : stdgo.GoString), _want : ("func p4.f()" : stdgo.GoString) } : T__struct_12),
({ _src : ("package p5; func f() int { x, _ := 1, 2; return x }" : stdgo.GoString), _obj : ("_" : stdgo.GoString), _want : ("var _ int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package g0; type x[T any] int" : stdgo.GoString), _obj : ("x" : stdgo.GoString), _want : ("type g0.x[T any] int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package g1; func f[T any]() {}" : stdgo.GoString), _obj : ("f" : stdgo.GoString), _want : ("func g1.f[T any]()" : stdgo.GoString) } : T__struct_12),
({ _src : ("package g2; type x[T any] int; func (*x[_]) m() {}" : stdgo.GoString), _obj : ("m" : stdgo.GoString), _want : ("func (*g2.x[_]).m()" : stdgo.GoString) } : T__struct_12)) : stdgo.Slice<T__struct_12>);
        for (__0 => _test in _tests) {
            var _info:stdgo.go.types.Types.Info = ({ defs : ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : stdgo.go.types.Types.Info);
            var _name:stdgo.GoString = _mustTypecheck(_test._src?.__copy__(), null, (stdgo.Go.setRef(_info) : stdgo.Ref<stdgo.go.types.Types.Info>)).name()?.__copy__();
            var _def:Object = (null : stdgo.go.types.Types.Object);
            for (_id => _obj in _info.defs) {
                if (_id.name == (_test._obj)) {
                    _def = _obj;
                    break;
                };
            };
            if (_def == null) {
                _t.errorf(("package %s: %s not found" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_test._obj));
                continue;
            };
            {
                var _got:stdgo.GoString = (_def.string() : stdgo.GoString)?.__copy__();
                if (_got != (_test._want)) {
                    _t.errorf(("package %s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
function testUsesInfo(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _tests:stdgo.Slice<T__struct_12> = (new stdgo.Slice<T__struct_12>(
24,
24,
({ _src : ("package p0; func _() { _ = x }; const x = 42" : stdgo.GoString), _obj : ("x" : stdgo.GoString), _want : ("const p0.x untyped int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package p1; func _() { _ = x }; const x int = 42" : stdgo.GoString), _obj : ("x" : stdgo.GoString), _want : ("const p1.x int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package p2; func _() { _ = x }; var x int" : stdgo.GoString), _obj : ("x" : stdgo.GoString), _want : ("var p2.x int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package p3; func _() { type _ x }; type x int" : stdgo.GoString), _obj : ("x" : stdgo.GoString), _want : ("type p3.x int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package p4; func _() { _ = f }; func f()" : stdgo.GoString), _obj : ("f" : stdgo.GoString), _want : ("func p4.f()" : stdgo.GoString) } : T__struct_12),
({ _src : ("package g0; func _[T any]() { _ = x }; const x = 42" : stdgo.GoString), _obj : ("x" : stdgo.GoString), _want : ("const g0.x untyped int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package g1; func _[T any](x T) { }" : stdgo.GoString), _obj : ("T" : stdgo.GoString), _want : ("type parameter T any" : stdgo.GoString) } : T__struct_12),
({ _src : ("package g2; type N[A any] int; var _ N[int]" : stdgo.GoString), _obj : ("N" : stdgo.GoString), _want : ("type g2.N[A any] int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package g3; type N[A any] int; func (N[_]) m() {}" : stdgo.GoString), _obj : ("N" : stdgo.GoString), _want : ("type g3.N[A any] int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package s1; type N[A any] struct{ a A }; var f = N[int]{}.a" : stdgo.GoString), _obj : ("a" : stdgo.GoString), _want : ("field a int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package s1; type N[A any] struct{ a A }; func (r N[B]) m(b B) { r.a = b }" : stdgo.GoString), _obj : ("a" : stdgo.GoString), _want : ("field a B" : stdgo.GoString) } : T__struct_12),
({ _src : ("package m0; type N[A any] int; func (r N[B]) m() { r.n() }; func (N[C]) n() {}" : stdgo.GoString), _obj : ("n" : stdgo.GoString), _want : ("func (m0.N[B]).n()" : stdgo.GoString) } : T__struct_12),
({ _src : ("package m1; type N[A any] int; func (r N[B]) m() { }; var f = N[int].m" : stdgo.GoString), _obj : ("m" : stdgo.GoString), _want : ("func (m1.N[int]).m()" : stdgo.GoString) } : T__struct_12),
({ _src : ("package m2; func _[A any](v interface{ m() A }) { v.m() }" : stdgo.GoString), _obj : ("m" : stdgo.GoString), _want : ("func (interface).m() A" : stdgo.GoString) } : T__struct_12),
({ _src : ("package m3; func f[A any]() interface{ m() A } { return nil }; var _ = f[int]().m()" : stdgo.GoString), _obj : ("m" : stdgo.GoString), _want : ("func (interface).m() int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package m4; type T[A any] func() interface{ m() A }; var x T[int]; var y = x().m" : stdgo.GoString), _obj : ("m" : stdgo.GoString), _want : ("func (interface).m() int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package m5; type T[A any] interface{ m() A }; func _[B any](t T[B]) { t.m() }" : stdgo.GoString), _obj : ("m" : stdgo.GoString), _want : ("func (m5.T[B]).m() B" : stdgo.GoString) } : T__struct_12),
({ _src : ("package m6; type T[A any] interface{ m() }; func _[B any](t T[B]) { t.m() }" : stdgo.GoString), _obj : ("m" : stdgo.GoString), _want : ("func (m6.T[B]).m()" : stdgo.GoString) } : T__struct_12),
({ _src : ("package m7; type T[A any] interface{ m() A }; func _(t T[int]) { t.m() }" : stdgo.GoString), _obj : ("m" : stdgo.GoString), _want : ("func (m7.T[int]).m() int" : stdgo.GoString) } : T__struct_12),
({ _src : ("package m8; type T[A any] interface{ m() }; func _(t T[int]) { t.m() }" : stdgo.GoString), _obj : ("m" : stdgo.GoString), _want : ("func (m8.T[int]).m()" : stdgo.GoString) } : T__struct_12),
({ _src : ("package m9; type T[A any] interface{ m() }; func _(t T[int]) { _ = t.m }" : stdgo.GoString), _obj : ("m" : stdgo.GoString), _want : ("func (m9.T[int]).m()" : stdgo.GoString) } : T__struct_12),
({ _src : ("package m10; type E[A any] interface{ m() }; type T[B any] interface{ E[B]; n() }; func _(t T[int]) { t.m() }" : stdgo.GoString), _obj : ("m" : stdgo.GoString), _want : ("func (m10.E[int]).m()" : stdgo.GoString) } : T__struct_12),
({ _src : ("package m11; type T[A any] interface{ m(); n() }; func _(t1 T[int], t2 T[string]) { t1.m(); t2.n() }" : stdgo.GoString), _obj : ("m" : stdgo.GoString), _want : ("func (m11.T[int]).m()" : stdgo.GoString) } : T__struct_12),
({ _src : ("package m12; type T[A any] interface{ m(); n() }; func _(t1 T[int], t2 T[string]) { t1.m(); t2.n() }" : stdgo.GoString), _obj : ("n" : stdgo.GoString), _want : ("func (m12.T[string]).n()" : stdgo.GoString) } : T__struct_12)) : stdgo.Slice<T__struct_12>);
        for (__0 => _test in _tests) {
            var _info:stdgo.go.types.Types.Info = ({ uses : ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : stdgo.go.types.Types.Info);
            var _name:stdgo.GoString = _mustTypecheck(_test._src?.__copy__(), null, (stdgo.Go.setRef(_info) : stdgo.Ref<stdgo.go.types.Types.Info>)).name()?.__copy__();
            var _use:Object = (null : stdgo.go.types.Types.Object);
            for (_id => _obj in _info.uses) {
                if (_id.name == (_test._obj)) {
                    if (_use != null) {
                        throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("multiple uses of %q" : stdgo.GoString), stdgo.Go.toInterface(_id.name)));
                    };
                    _use = _obj;
                };
            };
            if (_use == null) {
                _t.errorf(("package %s: %s not found" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_test._obj));
                continue;
            };
            {
                var _got:stdgo.GoString = (_use.string() : stdgo.GoString)?.__copy__();
                if (_got != (_test._want)) {
                    _t.errorf(("package %s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
function testGenericMethodInfo(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _src:stdgo.GoString = ("package p\n\ntype N[A any] int\n\nfunc (r N[B]) m() { r.m(); r.n() }\n\nfunc (r *N[C]) n() {  }\n" : stdgo.GoString);
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, _src?.__copy__());
        var _info:stdgo.go.types.Types.Info = ({ defs : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>), uses : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>), selections : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>, stdgo.Ref<stdgo.go.types.Types.Selection>>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>, stdgo.Ref<stdgo.go.types.Types.Selection>>) } : stdgo.go.types.Types.Info);
        var _conf:Config = ({} : stdgo.go.types.Types.Config);
        var __tmp__ = _conf.check(("p" : stdgo.GoString), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), (stdgo.Go.setRef(_info) : stdgo.Ref<stdgo.go.types.Types.Info>)), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var n = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_pkg.scope().lookup(("N" : stdgo.GoString)).type()) : stdgo.Ref<Named>)) : stdgo.Ref<Named>);
        var __0 = n.method((0 : stdgo.GoInt)), __1 = n.method((1 : stdgo.GoInt)), _gn = __1, _gm = __0;
        if (_gm.name() == (("n" : stdgo.GoString))) {
            {
                final __tmp__0 = _gn;
                final __tmp__1 = _gm;
                _gm = __tmp__0;
                _gn = __tmp__1;
            };
        };
        var __0:stdgo.Ref<Func> = (null : stdgo.Ref<stdgo.go.types.Types.Func>), __1:stdgo.Ref<Func> = (null : stdgo.Ref<stdgo.go.types.Types.Func>), _dn:stdgo.Ref<Func> = __1, _dm:stdgo.Ref<Func> = __0;
        var __0:stdgo.Ref<Func> = (null : stdgo.Ref<stdgo.go.types.Types.Func>), __1:stdgo.Ref<Func> = (null : stdgo.Ref<stdgo.go.types.Types.Func>), _dmn:stdgo.Ref<Func> = __1, _dmm:stdgo.Ref<Func> = __0;
        for (__24 => _decl in _f.decls) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decl) : stdgo.Ref<stdgo.go.ast.Ast.FuncDecl>)) : stdgo.Ref<stdgo.go.ast.Ast.FuncDecl>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.FuncDecl>), _1 : false };
            }, _fdecl = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                continue;
            };
            var _def = (stdgo.Go.typeAssert((stdgo.Go.toInterface((_info.defs[_fdecl.name] ?? (null : stdgo.go.types.Types.Object))) : stdgo.Ref<Func>)) : stdgo.Ref<Func>);
            {
                final __value__ = _fdecl.name.name;
                if (__value__ == (("m" : stdgo.GoString))) {
                    _dm = _def;
                    stdgo.go.ast.Ast.inspect(stdgo.Go.asInterface(_fdecl.body), function(_n:stdgo.go.ast.Ast.Node):Bool {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>)) : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>), _1 : false };
                            }, _call = __tmp__._0, _ok = __tmp__._1;
                            if (_ok) {
                                var _sel = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_call.fun) : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>)) : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>);
                                var _use = (stdgo.Go.typeAssert((stdgo.Go.toInterface((_info.uses[_sel.sel] ?? (null : stdgo.go.types.Types.Object))) : stdgo.Ref<Func>)) : stdgo.Ref<Func>);
                                var _selection = (_info.selections[_sel] ?? (null : stdgo.Ref<stdgo.go.types.Types.Selection>));
                                if (_selection.kind() != ((1 : stdgo.go.types.Types.SelectionKind))) {
                                    _t.errorf(("Selection kind = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_selection.kind()), stdgo.Go.toInterface((1 : stdgo.go.types.Types.SelectionKind)));
                                };
                                if (stdgo.Go.toInterface(_selection.obj()) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_use)))) {
                                    _t.errorf(("info.Selections contains %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_selection.obj()), stdgo.Go.toInterface(stdgo.Go.asInterface(_use)));
                                };
                                {
                                    final __value__ = _sel.sel.name;
                                    if (__value__ == (("m" : stdgo.GoString))) {
                                        _dmm = _use;
                                    } else if (__value__ == (("n" : stdgo.GoString))) {
                                        _dmn = _use;
                                    };
                                };
                            };
                        };
                        return true;
                    });
                } else if (__value__ == (("n" : stdgo.GoString))) {
                    _dn = _def;
                };
            };
        };
        if (_gm != (_dm)) {
            _t.errorf(("N.Method(...) returns %v for \"m\", but Info.Defs has %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_gm)), stdgo.Go.toInterface(stdgo.Go.asInterface(_dm)));
        };
        if (_gn != (_dn)) {
            _t.errorf(("N.Method(...) returns %v for \"m\", but Info.Defs has %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_gm)), stdgo.Go.toInterface(stdgo.Go.asInterface(_dm)));
        };
        if (_dmm != (_dm)) {
            _t.errorf(("Inside \"m\", r.m uses %v, want the defined func %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_dmm)), stdgo.Go.toInterface(stdgo.Go.asInterface(_dm)));
        };
        if (_dmn == (_dn)) {
            _t.errorf(("Inside \"m\", r.n uses %v, want a func distinct from %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_dmm)), stdgo.Go.toInterface(stdgo.Go.asInterface(_dm)));
        };
    }
function testImplicitsInfo(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        var _tests:stdgo.Slice<T__struct_13> = (new stdgo.Slice<T__struct_13>(
20,
20,
({ _src : ("package p2; import . \"fmt\"; var _ = Println" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : T__struct_13),
({ _src : ("package p0; import local \"fmt\"; var _ = local.Println" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : T__struct_13),
({ _src : ("package p1; import \"fmt\"; var _ = fmt.Println" : stdgo.GoString), _want : ("importSpec: package fmt" : stdgo.GoString) } : T__struct_13),
({ _src : ("package p3; func f(x interface{}) { switch x.(type) { case int: } }" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : T__struct_13),
({ _src : ("package p4; func f(x interface{}) { switch t := x.(type) { case int: _ = t } }" : stdgo.GoString), _want : ("caseClause: var t int" : stdgo.GoString) } : T__struct_13),
({ _src : ("package p5; func f(x interface{}) { switch t := x.(type) { case int, uint: _ = t } }" : stdgo.GoString), _want : ("caseClause: var t interface{}" : stdgo.GoString) } : T__struct_13),
({ _src : ("package p6; func f(x interface{}) { switch t := x.(type) { default: _ = t } }" : stdgo.GoString), _want : ("caseClause: var t interface{}" : stdgo.GoString) } : T__struct_13),
({ _src : ("package p7; func f(x int) {}" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : T__struct_13),
({ _src : ("package p8; func f(int) {}" : stdgo.GoString), _want : ("field: var  int" : stdgo.GoString) } : T__struct_13),
({ _src : ("package p9; func f() (complex64) { return 0 }" : stdgo.GoString), _want : ("field: var  complex64" : stdgo.GoString) } : T__struct_13),
({ _src : ("package p10; type T struct{}; func (*T) f() {}" : stdgo.GoString), _want : ("field: var  *p10.T" : stdgo.GoString) } : T__struct_13),
({ _src : ("package f0; func f[T any](x int) {}" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : T__struct_13),
({ _src : ("package f1; func f[T any](int) {}" : stdgo.GoString), _want : ("field: var  int" : stdgo.GoString) } : T__struct_13),
({ _src : ("package f2; func f[T any](T) {}" : stdgo.GoString), _want : ("field: var  T" : stdgo.GoString) } : T__struct_13),
({ _src : ("package f3; func f[T any]() (complex64) { return 0 }" : stdgo.GoString), _want : ("field: var  complex64" : stdgo.GoString) } : T__struct_13),
({ _src : ("package f4; func f[T any](t T) (T) { return t }" : stdgo.GoString), _want : ("field: var  T" : stdgo.GoString) } : T__struct_13),
({ _src : ("package t0; type T[A any] struct{}; func (*T[_]) f() {}" : stdgo.GoString), _want : ("field: var  *t0.T[_]" : stdgo.GoString) } : T__struct_13),
({ _src : ("package t1; type T[A any] struct{}; func _(x interface{}) { switch t := x.(type) { case T[int]: _ = t } }" : stdgo.GoString), _want : ("caseClause: var t t1.T[int]" : stdgo.GoString) } : T__struct_13),
({ _src : ("package t2; type T[A any] struct{}; func _[P any](x interface{}) { switch t := x.(type) { case T[P]: _ = t } }" : stdgo.GoString), _want : ("caseClause: var t t2.T[P]" : stdgo.GoString) } : T__struct_13),
({ _src : ("package t3; func _[P any](x interface{}) { switch t := x.(type) { case P: _ = t } }" : stdgo.GoString), _want : ("caseClause: var t P" : stdgo.GoString) } : T__struct_13)) : stdgo.Slice<T__struct_13>);
        for (__0 => _test in _tests) {
            var _info:stdgo.go.types.Types.Info = ({ implicits : ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Node, stdgo.go.types.Types.Object>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Node", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo.go.types.Types.Object);
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.go.ast.Ast.Node, stdgo.go.types.Types.Object>) } : stdgo.go.types.Types.Info);
            var _name:stdgo.GoString = _mustTypecheck(_test._src?.__copy__(), null, (stdgo.Go.setRef(_info) : stdgo.Ref<stdgo.go.types.Types.Info>)).name()?.__copy__();
            if ((_info.implicits.length) > (1 : stdgo.GoInt)) {
                _t.errorf(("package %s: %d Implicits entries found" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface((_info.implicits.length)));
                continue;
            };
            var _got:stdgo.GoString = ("" : stdgo.GoString);
            for (_n => _obj in _info.implicits) {
                {
                    final __type__ = _n;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.ImportSpec>))) {
                        var _x:stdgo.Ref<stdgo.go.ast.Ast.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__.__underlying__().value;
                        _got = ("importSpec" : stdgo.GoString);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.CaseClause>))) {
                        var _x:stdgo.Ref<stdgo.go.ast.Ast.CaseClause> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CaseClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CaseClause>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CaseClause>) : __type__.__underlying__().value;
                        _got = ("caseClause" : stdgo.GoString);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.Field>))) {
                        var _x:stdgo.Ref<stdgo.go.ast.Ast.Field> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.Field>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.Field>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.Field>) : __type__.__underlying__().value;
                        _got = ("field" : stdgo.GoString);
                    } else {
                        var _x:stdgo.go.ast.Ast.Node = __type__ == null ? (null : stdgo.go.ast.Ast.Node) : cast __type__;
                        _t.fatalf(("package %s: unexpected %T" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_x));
                    };
                };
                _got = _got + ((": " : stdgo.GoString) + (_obj.string() : stdgo.GoString)?.__copy__())?.__copy__();
            };
            if (_got != (_test._want)) {
                _t.errorf(("package %s: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
        };
    }
function _predString(_tv:TypeAndValue):stdgo.GoString {
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        var _pred:(Bool, stdgo.GoString) -> Void = function(_b:Bool, _s:stdgo.GoString):Void {
            if (_b) {
                if (_buf.len() > (0 : stdgo.GoInt)) {
                    _buf.writeString((", " : stdgo.GoString));
                };
                _buf.writeString(_s?.__copy__());
            };
        };
        _pred(_tv.isVoid(), ("void" : stdgo.GoString));
        _pred(_tv.isType(), ("type" : stdgo.GoString));
        _pred(_tv.isBuiltin(), ("builtin" : stdgo.GoString));
        _pred(_tv.isValue() && (_tv.value != null), ("const" : stdgo.GoString));
        _pred(_tv.isValue() && (_tv.value == null), ("value" : stdgo.GoString));
        _pred(_tv.isNil(), ("nil" : stdgo.GoString));
        _pred(_tv.addressable(), ("addressable" : stdgo.GoString));
        _pred(_tv.assignable(), ("assignable" : stdgo.GoString));
        _pred(_tv.hasOk(), ("hasOk" : stdgo.GoString));
        if (_buf.len() == ((0 : stdgo.GoInt))) {
            return ("invalid" : stdgo.GoString);
        };
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
function testPredicatesInfo(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        var _tests:stdgo.Slice<T__struct_14> = (new stdgo.Slice<T__struct_14>(
38,
38,
({ _src : ("package n0; func f() { f() }" : stdgo.GoString), _expr : ("f()" : stdgo.GoString), _pred : ("void" : stdgo.GoString) } : T__struct_14),
({ _src : ("package t0; type _ int" : stdgo.GoString), _expr : ("int" : stdgo.GoString), _pred : ("type" : stdgo.GoString) } : T__struct_14),
({ _src : ("package t1; type _ []int" : stdgo.GoString), _expr : ("[]int" : stdgo.GoString), _pred : ("type" : stdgo.GoString) } : T__struct_14),
({ _src : ("package t2; type _ func()" : stdgo.GoString), _expr : ("func()" : stdgo.GoString), _pred : ("type" : stdgo.GoString) } : T__struct_14),
({ _src : ("package t3; type _ func(int)" : stdgo.GoString), _expr : ("int" : stdgo.GoString), _pred : ("type" : stdgo.GoString) } : T__struct_14),
({ _src : ("package t3; type _ func(...int)" : stdgo.GoString), _expr : ("...int" : stdgo.GoString), _pred : ("type" : stdgo.GoString) } : T__struct_14),
({ _src : ("package b0; var _ = len(\"\")" : stdgo.GoString), _expr : ("len" : stdgo.GoString), _pred : ("builtin" : stdgo.GoString) } : T__struct_14),
({ _src : ("package b1; var _ = (len)(\"\")" : stdgo.GoString), _expr : ("(len)" : stdgo.GoString), _pred : ("builtin" : stdgo.GoString) } : T__struct_14),
({ _src : ("package c0; var _ = 42" : stdgo.GoString), _expr : ("42" : stdgo.GoString), _pred : ("const" : stdgo.GoString) } : T__struct_14),
({ _src : ("package c1; var _ = \"foo\" + \"bar\"" : stdgo.GoString), _expr : ("\"foo\" + \"bar\"" : stdgo.GoString), _pred : ("const" : stdgo.GoString) } : T__struct_14),
({ _src : ("package c2; const (i = 1i; _ = i)" : stdgo.GoString), _expr : ("i" : stdgo.GoString), _pred : ("const" : stdgo.GoString) } : T__struct_14),
({ _src : ("package v0; var (a, b int; _ = a + b)" : stdgo.GoString), _expr : ("a + b" : stdgo.GoString), _pred : ("value" : stdgo.GoString) } : T__struct_14),
({ _src : ("package v1; var _ = &[]int{1}" : stdgo.GoString), _expr : ("[]int{…}" : stdgo.GoString), _pred : ("value" : stdgo.GoString) } : T__struct_14),
({ _src : ("package v2; var _ = func(){}" : stdgo.GoString), _expr : ("(func() literal)" : stdgo.GoString), _pred : ("value" : stdgo.GoString) } : T__struct_14),
({ _src : ("package v4; func f() { _ = f }" : stdgo.GoString), _expr : ("f" : stdgo.GoString), _pred : ("value" : stdgo.GoString) } : T__struct_14),
({ _src : ("package v3; var _ *int = nil" : stdgo.GoString), _expr : ("nil" : stdgo.GoString), _pred : ("value, nil" : stdgo.GoString) } : T__struct_14),
({ _src : ("package v3; var _ *int = (nil)" : stdgo.GoString), _expr : ("(nil)" : stdgo.GoString), _pred : ("value, nil" : stdgo.GoString) } : T__struct_14),
({ _src : ("package a0; var (x int; _ = x)" : stdgo.GoString), _expr : ("x" : stdgo.GoString), _pred : ("value, addressable, assignable" : stdgo.GoString) } : T__struct_14),
({ _src : ("package a1; var (p *int; _ = *p)" : stdgo.GoString), _expr : ("*p" : stdgo.GoString), _pred : ("value, addressable, assignable" : stdgo.GoString) } : T__struct_14),
({ _src : ("package a2; var (s []int; _ = s[0])" : stdgo.GoString), _expr : ("s[0]" : stdgo.GoString), _pred : ("value, addressable, assignable" : stdgo.GoString) } : T__struct_14),
({ _src : ("package a3; var (s struct{f int}; _ = s.f)" : stdgo.GoString), _expr : ("s.f" : stdgo.GoString), _pred : ("value, addressable, assignable" : stdgo.GoString) } : T__struct_14),
({ _src : ("package a4; var (a [10]int; _ = a[0])" : stdgo.GoString), _expr : ("a[0]" : stdgo.GoString), _pred : ("value, addressable, assignable" : stdgo.GoString) } : T__struct_14),
({ _src : ("package a5; func _(x int) { _ = x }" : stdgo.GoString), _expr : ("x" : stdgo.GoString), _pred : ("value, addressable, assignable" : stdgo.GoString) } : T__struct_14),
({ _src : ("package a6; func _()(x int) { _ = x; return }" : stdgo.GoString), _expr : ("x" : stdgo.GoString), _pred : ("value, addressable, assignable" : stdgo.GoString) } : T__struct_14),
({ _src : ("package a7; type T int; func (x T) _() { _ = x }" : stdgo.GoString), _expr : ("x" : stdgo.GoString), _pred : ("value, addressable, assignable" : stdgo.GoString) } : T__struct_14),
({ _src : ("package s0; var (m map[int]int; _ = m[0])" : stdgo.GoString), _expr : ("m[0]" : stdgo.GoString), _pred : ("value, assignable, hasOk" : stdgo.GoString) } : T__struct_14),
({ _src : ("package s1; var (m map[int]int; _, _ = m[0])" : stdgo.GoString), _expr : ("m[0]" : stdgo.GoString), _pred : ("value, assignable, hasOk" : stdgo.GoString) } : T__struct_14),
({ _src : ("package k0; var (ch chan int; _ = <-ch)" : stdgo.GoString), _expr : ("<-ch" : stdgo.GoString), _pred : ("value, hasOk" : stdgo.GoString) } : T__struct_14),
({ _src : ("package k1; var (ch chan int; _, _ = <-ch)" : stdgo.GoString), _expr : ("<-ch" : stdgo.GoString), _pred : ("value, hasOk" : stdgo.GoString) } : T__struct_14),
({ _src : ("package m0; import \"os\"; func _() { _ = os.Stdout }" : stdgo.GoString), _expr : ("os" : stdgo.GoString), _pred : ("<missing>" : stdgo.GoString) } : T__struct_14),
({ _src : ("package m1; import p \"os\"; func _() { _ = p.Stdout }" : stdgo.GoString), _expr : ("p" : stdgo.GoString), _pred : ("<missing>" : stdgo.GoString) } : T__struct_14),
({ _src : ("package m2; const c = 0" : stdgo.GoString), _expr : ("c" : stdgo.GoString), _pred : ("<missing>" : stdgo.GoString) } : T__struct_14),
({ _src : ("package m3; type T int" : stdgo.GoString), _expr : ("T" : stdgo.GoString), _pred : ("<missing>" : stdgo.GoString) } : T__struct_14),
({ _src : ("package m4; var v int" : stdgo.GoString), _expr : ("v" : stdgo.GoString), _pred : ("<missing>" : stdgo.GoString) } : T__struct_14),
({ _src : ("package m5; func f() {}" : stdgo.GoString), _expr : ("f" : stdgo.GoString), _pred : ("<missing>" : stdgo.GoString) } : T__struct_14),
({ _src : ("package m6; func _(x int) {}" : stdgo.GoString), _expr : ("x" : stdgo.GoString), _pred : ("<missing>" : stdgo.GoString) } : T__struct_14),
({ _src : ("package m6; func _()(x int) { return }" : stdgo.GoString), _expr : ("x" : stdgo.GoString), _pred : ("<missing>" : stdgo.GoString) } : T__struct_14),
({ _src : ("package m6; type T int; func (x T) _() {}" : stdgo.GoString), _expr : ("x" : stdgo.GoString), _pred : ("<missing>" : stdgo.GoString) } : T__struct_14)) : stdgo.Slice<T__struct_14>);
        for (__0 => _test in _tests) {
            var _info:stdgo.go.types.Types.Info = ({ types : ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>) } : stdgo.go.types.Types.Info);
            var _name:stdgo.GoString = _mustTypecheck(_test._src?.__copy__(), null, (stdgo.Go.setRef(_info) : stdgo.Ref<stdgo.go.types.Types.Info>)).name()?.__copy__();
            var _got:stdgo.GoString = ("<missing>" : stdgo.GoString);
            for (_e => _tv in _info.types) {
                if (exprString(_e) == (_test._expr)) {
                    _got = _predString(_tv?.__copy__())?.__copy__();
                    break;
                };
            };
            if (_got != (_test._pred)) {
                _t.errorf(("package %s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._pred));
            };
        };
    }
function testScopesInfo(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        var _tests:stdgo.Slice<T__struct_15> = (new stdgo.Slice<T__struct_15>(
21,
21,
({ _src : ("package p0" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(1, 1, ("file:" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p1; import ( \"fmt\"; m \"math\"; _ \"os\" ); var ( _ = fmt.Println; _ = m.Pi )" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(1, 1, ("file:fmt m" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p2; func _() {}" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(2, 2, ("file:" : stdgo.GoString), ("func:" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p3; func _(x, y int) {}" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(2, 2, ("file:" : stdgo.GoString), ("func:x y" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p4; func _(x, y int) { x, z := 1, 2; _ = z }" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(2, 2, ("file:" : stdgo.GoString), ("func:x y z" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p5; func _(x, y int) (u, _ int) { return }" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(2, 2, ("file:" : stdgo.GoString), ("func:u x y" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p6; func _() { { var x int; _ = x } }" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(3, 3, ("file:" : stdgo.GoString), ("func:" : stdgo.GoString), ("block:x" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p7; func _() { if true {} }" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(4, 4, ("file:" : stdgo.GoString), ("func:" : stdgo.GoString), ("if:" : stdgo.GoString), ("block:" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p8; func _() { if x := 0; x < 0 { y := x; _ = y } }" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(4, 4, ("file:" : stdgo.GoString), ("func:" : stdgo.GoString), ("if:x" : stdgo.GoString), ("block:y" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p9; func _() { switch x := 0; x {} }" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(3, 3, ("file:" : stdgo.GoString), ("func:" : stdgo.GoString), ("switch:x" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p10; func _() { switch x := 0; x { case 1: y := x; _ = y; default: }}" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(5, 5, ("file:" : stdgo.GoString), ("func:" : stdgo.GoString), ("switch:x" : stdgo.GoString), ("case:y" : stdgo.GoString), ("case:" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p11; func _(t interface{}) { switch t.(type) {} }" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(3, 3, ("file:" : stdgo.GoString), ("func:t" : stdgo.GoString), ("type switch:" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p12; func _(t interface{}) { switch t := t; t.(type) {} }" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(3, 3, ("file:" : stdgo.GoString), ("func:t" : stdgo.GoString), ("type switch:t" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p13; func _(t interface{}) { switch x := t.(type) { case int: _ = x } }" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(4, 4, ("file:" : stdgo.GoString), ("func:t" : stdgo.GoString), ("type switch:" : stdgo.GoString), ("case:x" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p14; func _() { select{} }" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(2, 2, ("file:" : stdgo.GoString), ("func:" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p15; func _(c chan int) { select{ case <-c: } }" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(3, 3, ("file:" : stdgo.GoString), ("func:c" : stdgo.GoString), ("comm:" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p16; func _(c chan int) { select{ case i := <-c: x := i; _ = x} }" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(3, 3, ("file:" : stdgo.GoString), ("func:c" : stdgo.GoString), ("comm:i x" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p17; func _() { for{} }" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(4, 4, ("file:" : stdgo.GoString), ("func:" : stdgo.GoString), ("for:" : stdgo.GoString), ("block:" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p18; func _(n int) { for i := 0; i < n; i++ { _ = i } }" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(4, 4, ("file:" : stdgo.GoString), ("func:n" : stdgo.GoString), ("for:i" : stdgo.GoString), ("block:" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p19; func _(a []int) { for i := range a { _ = i} }" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(4, 4, ("file:" : stdgo.GoString), ("func:a" : stdgo.GoString), ("range:i" : stdgo.GoString), ("block:" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15),
({ _src : ("package p20; var s int; func _(a []int) { for i, x := range a { s += x; _ = i } }" : stdgo.GoString), _scopes : (new stdgo.Slice<stdgo.GoString>(4, 4, ("file:" : stdgo.GoString), ("func:a" : stdgo.GoString), ("range:i x" : stdgo.GoString), ("block:" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_15)) : stdgo.Slice<T__struct_15>);
        for (__0 => _test in _tests) {
            var _info:stdgo.go.types.Types.Info = ({ scopes : ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Node, stdgo.Ref<stdgo.go.types.Types.Scope>>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Node", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo.go.types.Types.Scope>);
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.go.ast.Ast.Node, stdgo.Ref<stdgo.go.types.Types.Scope>>) } : stdgo.go.types.Types.Info);
            var _name:stdgo.GoString = _mustTypecheck(_test._src?.__copy__(), null, (stdgo.Go.setRef(_info) : stdgo.Ref<stdgo.go.types.Types.Info>)).name()?.__copy__();
            if ((_info.scopes.length) != ((_test._scopes.length))) {
                _t.errorf(("package %s: got %d scopes; want %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface((_info.scopes.length)), stdgo.Go.toInterface((_test._scopes.length)));
            };
            for (_node => _scope in _info.scopes) {
                var _kind:stdgo.GoString = ("<unknown node kind>" : stdgo.GoString);
                {
                    final __type__ = _node;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.File>))) {
                        _kind = ("file" : stdgo.GoString);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.FuncType>))) {
                        _kind = ("func" : stdgo.GoString);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.BlockStmt>))) {
                        _kind = ("block" : stdgo.GoString);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.IfStmt>))) {
                        _kind = ("if" : stdgo.GoString);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.SwitchStmt>))) {
                        _kind = ("switch" : stdgo.GoString);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.TypeSwitchStmt>))) {
                        _kind = ("type switch" : stdgo.GoString);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.CaseClause>))) {
                        _kind = ("case" : stdgo.GoString);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.CommClause>))) {
                        _kind = ("comm" : stdgo.GoString);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.ForStmt>))) {
                        _kind = ("for" : stdgo.GoString);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.RangeStmt>))) {
                        _kind = ("range" : stdgo.GoString);
                    };
                };
                var _desc:stdgo.GoString = _kind + (":" : stdgo.GoString)?.__copy__() + stdgo.strings.Strings.join(_scope.names(), (" " : stdgo.GoString))?.__copy__()?.__copy__();
                var _found:Bool = false;
                for (__9 => _d in _test._scopes) {
                    if (_desc == (_d)) {
                        _found = true;
                        break;
                    };
                };
                if (!_found) {
                    _t.errorf(("package %s: no matching scope found for %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_desc));
                };
            };
        };
    }
function testInitOrderInfo(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _tests:stdgo.Slice<T__struct_16> = (new stdgo.Slice<T__struct_16>(
18,
18,
({ _src : ("package p0; var (x = 1; y = x)" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(2, 2, ("x = 1" : stdgo.GoString), ("y = x" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package p1; var (a = 1; b = 2; c = 3)" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(3, 3, ("a = 1" : stdgo.GoString), ("b = 2" : stdgo.GoString), ("c = 3" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package p2; var (a, b, c = 1, 2, 3)" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(3, 3, ("a = 1" : stdgo.GoString), ("b = 2" : stdgo.GoString), ("c = 3" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package p3; var _ = f(); func f() int { return 1 }" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(1, 1, ("_ = f()" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package p4; var (a = 0; x = y; y = z; z = 0)" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(4, 4, ("a = 0" : stdgo.GoString), ("z = 0" : stdgo.GoString), ("y = z" : stdgo.GoString), ("x = y" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package p5; var (a, _ = m[0]; m map[int]string)" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(1, 1, ("a, _ = m[0]" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package p6; var a, b = f(); func f() (_, _ int) { return z, z }; var z = 0" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(2, 2, ("z = 0" : stdgo.GoString), ("a, b = f()" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package p7; var (a = func() int { return b }(); b = 1)" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(2, 2, ("b = 1" : stdgo.GoString), ("a = (func() int literal)()" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package p8; var (a, b = func() (_, _ int) { return c, c }(); c = 1)" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(2, 2, ("c = 1" : stdgo.GoString), ("a, b = (func() (_, _ int) literal)()" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package p9; type T struct{}; func (T) m() int { _ = y; return 0 }; var x, y = T.m, 1" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(2, 2, ("y = 1" : stdgo.GoString), ("x = T.m" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package p10; var (d = c + b; a = 0; b = 0; c = 0)" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(4, 4, ("a = 0" : stdgo.GoString), ("b = 0" : stdgo.GoString), ("c = 0" : stdgo.GoString), ("d = c + b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package p11; var (a = e + c; b = d + c; c = 0; d = 0; e = 0)" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(5, 5, ("c = 0" : stdgo.GoString), ("d = 0" : stdgo.GoString), ("b = d + c" : stdgo.GoString), ("e = 0" : stdgo.GoString), ("a = e + c" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package p12; var (a = x; b = 0; x, y = m[0]; m map[int]int)" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(3, 3, ("b = 0" : stdgo.GoString), ("x, y = m[0]" : stdgo.GoString), ("a = x" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package p12\n\n\t\tvar (\n\t\t\ta = c + b\n\t\t\tb = f()\n\t\t\tc = f()\n\t\t\td = 3\n\t\t)\n\n\t\tfunc f() int {\n\t\t\td++\n\t\t\treturn d\n\t\t}" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(4, 4, ("d = 3" : stdgo.GoString), ("b = f()" : stdgo.GoString), ("c = f()" : stdgo.GoString), ("a = c + b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package main\n\n\t\tvar counter int\n\t\tfunc next() int { counter++; return counter }\n\n\t\tvar _ = makeOrder()\n\t\tfunc makeOrder() []int { return []int{f, b, d, e, c, a} }\n\n\t\tvar a       = next()\n\t\tvar b, c    = next(), next()\n\t\tvar d, e, f = next(), next(), next()\n\t\t" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(7, 7, ("a = next()" : stdgo.GoString), ("b = next()" : stdgo.GoString), ("c = next()" : stdgo.GoString), ("d = next()" : stdgo.GoString), ("e = next()" : stdgo.GoString), ("f = next()" : stdgo.GoString), ("_ = makeOrder()" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package p13\n\n\t\tvar (\n\t\t    v = t.m()\n\t\t    t = makeT(0)\n\t\t)\n\n\t\ttype T struct{}\n\n\t\tfunc (T) m() int { return 0 }\n\n\t\tfunc makeT(n int) T {\n\t\t    if n > 0 {\n\t\t        return makeT(n-1)\n\t\t    }\n\t\t    return T{}\n\t\t}" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(2, 2, ("t = makeT(0)" : stdgo.GoString), ("v = t.m()" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package p14\n\n\t\tvar (\n\t\t    t = makeT(0)\n\t\t    v = t.m()\n\t\t)\n\n\t\ttype T struct{}\n\n\t\tfunc (T) m() int { return 0 }\n\n\t\tfunc makeT(n int) T {\n\t\t    if n > 0 {\n\t\t        return makeT(n-1)\n\t\t    }\n\t\t    return T{}\n\t\t}" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(2, 2, ("t = makeT(0)" : stdgo.GoString), ("v = t.m()" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16),
({ _src : ("package p15\n\n\t\tvar y1 = f1()\n\n\t\tfunc f1() int { return g1() }\n\t\tfunc g1() int { f1(); return x1 }\n\n\t\tvar x1 = 0\n\n\t\tvar y2 = f2()\n\n\t\tfunc f2() int { return g2() }\n\t\tfunc g2() int { return x2 }\n\n\t\tvar x2 = 0" : stdgo.GoString), _inits : (new stdgo.Slice<stdgo.GoString>(4, 4, ("x1 = 0" : stdgo.GoString), ("y1 = f1()" : stdgo.GoString), ("x2 = 0" : stdgo.GoString), ("y2 = f2()" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_16)) : stdgo.Slice<T__struct_16>);
        for (__0 => _test in _tests) {
            var _info:stdgo.go.types.Types.Info = (new stdgo.go.types.Types.Info() : stdgo.go.types.Types.Info);
            var _name:stdgo.GoString = _mustTypecheck(_test._src?.__copy__(), null, (stdgo.Go.setRef(_info) : stdgo.Ref<stdgo.go.types.Types.Info>)).name()?.__copy__();
            if ((_info.initOrder.length) != ((_test._inits.length))) {
                _t.errorf(("package %s: got %d initializers; want %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface((_info.initOrder.length)), stdgo.Go.toInterface((_test._inits.length)));
                continue;
            };
            for (_i => _want in _test._inits) {
                var _got:stdgo.GoString = (_info.initOrder[(_i : stdgo.GoInt)].string() : stdgo.GoString)?.__copy__();
                if (_got != (_want)) {
                    _t.errorf(("package %s, init %d: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    continue;
                };
            };
        };
    }
function testMultiFileInitOrder(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        var _fileA = _mustParse(_fset, ("package main; var a = 1" : stdgo.GoString));
        var _fileB = _mustParse(_fset, ("package main; var b = 2" : stdgo.GoString));
        for (__0 => _test in (new stdgo.Slice<T__struct_17>(2, 2, ({ _files : (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(2, 2, _fileA, _fileB) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), _want : ("[a = 1 b = 2]" : stdgo.GoString) } : T__struct_17), ({ _files : (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(2, 2, _fileB, _fileA) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), _want : ("[b = 2 a = 1]" : stdgo.GoString) } : T__struct_17)) : stdgo.Slice<T__struct_17>)) {
            var _info:Info = ({} : stdgo.go.types.Types.Info);
            {
                var __tmp__ = (stdgo.Go.setRef(({} : stdgo.go.types.Types.Config)) : stdgo.Ref<stdgo.go.types.Types.Config>).check(("main" : stdgo.GoString), _fset, _test._files, (stdgo.Go.setRef(_info) : stdgo.Ref<stdgo.go.types.Types.Info>)), __1:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _got:stdgo.GoString = stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(_info.initOrder))?.__copy__();
                if (_got != (_test._want)) {
                    _t.fatalf(("got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
function testFiles(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _sources:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(4, 4, ("package p; type T struct{}; func (T) m1() {}" : stdgo.GoString), ("package p; func (T) m2() {}; var x interface{ m1(); m2() } = T{}" : stdgo.GoString), ("package p; func (T) m3() {}; var y interface{ m1(); m2(); m3() } = T{}" : stdgo.GoString), ("package p" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _conf:Config = ({} : stdgo.go.types.Types.Config);
        var _fset = stdgo.go.token.Token.newFileSet();
        var _pkg = newPackage(("p" : stdgo.GoString), ("p" : stdgo.GoString));
        var _info:Info = ({} : stdgo.go.types.Types.Info);
        var _check = newChecker((stdgo.Go.setRef(_conf) : stdgo.Ref<stdgo.go.types.Types.Config>), _fset, _pkg, (stdgo.Go.setRef(_info) : stdgo.Ref<stdgo.go.types.Types.Info>));
        for (__0 => _src in _sources) {
            {
                var _err:stdgo.Error = _check.files((new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _mustParse(_fset, _src?.__copy__())) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>));
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
            };
        };
        var _vars:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__17 => _init in _info.initOrder) {
            for (__18 => _v in _init.lhs) {
                _vars = (_vars.__append__(_v.name()?.__copy__()));
            };
        };
        {
            var __0:stdgo.GoString = stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(_vars))?.__copy__(), __1:stdgo.GoString = ("[x y]" : stdgo.GoString), _want:stdgo.GoString = __1, _got:stdgo.GoString = __0;
            if (_got != (_want)) {
                _t.errorf(("InitOrder == %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testSelection(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _selections = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>, stdgo.Ref<stdgo.go.types.Types.Selection>>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>, stdgo.Ref<stdgo.go.types.Types.Selection>>);
        var _fset = stdgo.go.token.Token.newFileSet();
        var _imports:stdgo.go.types_test.Types_test.T_testImporter = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo.go.types.Types.Package>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo.go.types.Types.Package>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.go.types.Types.Package>>);
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.Go.asInterface(_imports) } : stdgo.go.types.Types.Config);
        var _makePkg:(stdgo.GoString, stdgo.GoString) -> Void = function(_path:stdgo.GoString, _src:stdgo.GoString):Void {
            var __tmp__ = _conf.check(_path?.__copy__(), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _mustParse(_fset, _src?.__copy__())) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), (stdgo.Go.setRef(({ selections : _selections } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>)), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            _imports[_path] = _pkg;
        };
        {};
        {};
        var _wantOut = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoArray<stdgo.GoString>>();
            x.__defaultValue__ = () -> new stdgo.GoArray<stdgo.GoString>(...[for (i in 0 ... 2) ("" : stdgo.GoString)]);
            @:mergeBlock {
                x.set(("lib.T.M" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method expr (lib.T) M(lib.T)" : stdgo.GoString), (".[0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("A{}.B" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("field (main.A) B *main.B" : stdgo.GoString), (".[0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("new(A).B" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("field (*main.A) B *main.B" : stdgo.GoString), ("->[0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("A{}.C" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("field (main.A) C main.C" : stdgo.GoString), (".[1]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("new(A).C" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("field (*main.A) C main.C" : stdgo.GoString), ("->[1]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("A{}.b" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("field (main.A) b int" : stdgo.GoString), ("->[0 0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("new(A).b" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("field (*main.A) b int" : stdgo.GoString), ("->[0 0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("A{}.c" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("field (main.A) c int" : stdgo.GoString), (".[1 0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("new(A).c" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("field (*main.A) c int" : stdgo.GoString), ("->[1 0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("Inst.p" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("field (main.G[int]) p int" : stdgo.GoString), (".[0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("A{}.f" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method (main.A) f(int)" : stdgo.GoString), ("->[0 0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("new(A).f" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method (*main.A) f(int)" : stdgo.GoString), ("->[0 0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("A{}.g" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method (main.A) g()" : stdgo.GoString), (".[1 0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("new(A).g" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method (*main.A) g()" : stdgo.GoString), ("->[1 0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("new(A).h" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method (*main.A) h()" : stdgo.GoString), ("->[1 1]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("B{}.f" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method (main.B) f(int)" : stdgo.GoString), (".[0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("new(B).f" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method (*main.B) f(int)" : stdgo.GoString), ("->[0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("C{}.g" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method (main.C) g()" : stdgo.GoString), (".[0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("new(C).g" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method (*main.C) g()" : stdgo.GoString), ("->[0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("new(C).h" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method (*main.C) h()" : stdgo.GoString), ("->[1]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("Inst.m" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method (main.G[int]) m(int)" : stdgo.GoString), (".[0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("A.f" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method expr (main.A) f(main.A, int)" : stdgo.GoString), ("->[0 0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("(*A).f" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method expr (*main.A) f(*main.A, int)" : stdgo.GoString), ("->[0 0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("B.f" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method expr (main.B) f(main.B, int)" : stdgo.GoString), (".[0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("(*B).f" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method expr (*main.B) f(*main.B, int)" : stdgo.GoString), ("->[0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("G[string].m" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("method expr (main.G[string]) m(main.G[string], string)" : stdgo.GoString), (".[0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
                x.set(("G[string]{}.p" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoString>(("field (main.G[string]) p string" : stdgo.GoString), (".[0]" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoArray<stdgo.GoString>>);
        _makePkg(("lib" : stdgo.GoString), ("\npackage lib\ntype T float64\nconst C T = 3\nvar V T\nfunc F() {}\nfunc (T) M() {}\n" : stdgo.GoString));
        _makePkg(("main" : stdgo.GoString), ("\npackage main\nimport \"lib\"\n\ntype A struct {\n\t*B\n\tC\n}\n\ntype B struct {\n\tb int\n}\n\nfunc (B) f(int)\n\ntype C struct {\n\tc int\n}\n\ntype G[P any] struct {\n\tp P\n}\n\nfunc (G[P]) m(P) {}\n\nvar Inst G[int]\n\nfunc (C) g()\nfunc (*C) h()\n\nfunc main() {\n\t// qualified identifiers\n\tvar _ lib.T\n\t_ = lib.C\n\t_ = lib.F\n\t_ = lib.V\n\t_ = lib.T.M\n\n\t// fields\n\t_ = A{}.B\n\t_ = new(A).B\n\n\t_ = A{}.C\n\t_ = new(A).C\n\n\t_ = A{}.b\n\t_ = new(A).b\n\n\t_ = A{}.c\n\t_ = new(A).c\n\n\t_ = Inst.p\n\t_ = G[string]{}.p\n\n\t// methods\n\t_ = A{}.f\n\t_ = new(A).f\n\t_ = A{}.g\n\t_ = new(A).g\n\t_ = new(A).h\n\n\t_ = B{}.f\n\t_ = new(B).f\n\n\t_ = C{}.g\n\t_ = new(C).g\n\t_ = new(C).h\n\t_ = Inst.m\n\n\t// method expressions\n\t_ = A.f\n\t_ = (*A).f\n\t_ = B.f\n\t_ = (*B).f\n\t_ = G[string].m\n}" : stdgo.GoString));
        for (_e => _sel in _selections) {
            (_sel.string() : stdgo.GoString);
            var _start:stdgo.GoInt = _fset.position(_e.pos()).offset;
            var _end:stdgo.GoInt = _fset.position(_e.end()).offset;
            var _syntax:stdgo.GoString = (("\npackage main\nimport \"lib\"\n\ntype A struct {\n\t*B\n\tC\n}\n\ntype B struct {\n\tb int\n}\n\nfunc (B) f(int)\n\ntype C struct {\n\tc int\n}\n\ntype G[P any] struct {\n\tp P\n}\n\nfunc (G[P]) m(P) {}\n\nvar Inst G[int]\n\nfunc (C) g()\nfunc (*C) h()\n\nfunc main() {\n\t// qualified identifiers\n\tvar _ lib.T\n\t_ = lib.C\n\t_ = lib.F\n\t_ = lib.V\n\t_ = lib.T.M\n\n\t// fields\n\t_ = A{}.B\n\t_ = new(A).B\n\n\t_ = A{}.C\n\t_ = new(A).C\n\n\t_ = A{}.b\n\t_ = new(A).b\n\n\t_ = A{}.c\n\t_ = new(A).c\n\n\t_ = Inst.p\n\t_ = G[string]{}.p\n\n\t// methods\n\t_ = A{}.f\n\t_ = new(A).f\n\t_ = A{}.g\n\t_ = new(A).g\n\t_ = new(A).h\n\n\t_ = B{}.f\n\t_ = new(B).f\n\n\t_ = C{}.g\n\t_ = new(C).g\n\t_ = new(C).h\n\t_ = Inst.m\n\n\t// method expressions\n\t_ = A.f\n\t_ = (*A).f\n\t_ = B.f\n\t_ = (*B).f\n\t_ = G[string].m\n}" : stdgo.GoString).__slice__(_start, _end) : stdgo.GoString)?.__copy__();
            var _direct:stdgo.GoString = ("." : stdgo.GoString);
            if (_sel.indirect()) {
                _direct = ("->" : stdgo.GoString);
            };
            var _got = (new stdgo.GoArray<stdgo.GoString>((_sel.string() : stdgo.GoString)?.__copy__(), stdgo.fmt.Fmt.sprintf(("%s%v" : stdgo.GoString), stdgo.Go.toInterface(_direct), stdgo.Go.toInterface(_sel.index()))?.__copy__()) : stdgo.GoArray<stdgo.GoString>);
            var _want = (_wantOut[_syntax] ?? new stdgo.GoArray<stdgo.GoString>(...[for (i in 0 ... 2) ("" : stdgo.GoString)]))?.__copy__();
            if (stdgo.Go.toInterface(_want) != stdgo.Go.toInterface(_got)) {
                _t.errorf(("%s: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_syntax), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
            if (_wantOut != null) _wantOut.remove(_syntax);
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_sel.type()) : stdgo.Ref<Signature>)) : stdgo.Ref<Signature>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo.go.types.Types.Signature>), _1 : false };
            }, _sig = __tmp__._0, __24 = __tmp__._1;
            if (_sel.kind() == ((1 : stdgo.go.types.Types.SelectionKind))) {
                var _got:stdgo.go.types.Types.Type_ = _sig.recv().type();
                var _want:stdgo.go.types.Types.Type_ = _sel.recv();
                if (!identical(_got, _want)) {
                    _t.errorf(("%s: Recv() = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_syntax), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            } else if (((_sig != null) && ((_sig : Dynamic).__nil__ == null || !(_sig : Dynamic).__nil__)) && ((_sig.recv() != null) && ((_sig.recv() : Dynamic).__nil__ == null || !(_sig.recv() : Dynamic).__nil__))) {
                _t.errorf(("%s: signature has receiver %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_sig)), stdgo.Go.toInterface(_sig.recv().type()));
            };
        };
        for (_syntax => _ in _wantOut) {
            _t.errorf(("no ast.Selection found with syntax %q" : stdgo.GoString), stdgo.Go.toInterface(_syntax));
        };
    }
function testIssue8518(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        var _imports:stdgo.go.types_test.Types_test.T_testImporter = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo.go.types.Types.Package>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo.go.types.Types.Package>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.go.types.Types.Package>>);
        var _conf:stdgo.go.types.Types.Config = ({ error : function(_err:stdgo.Error):Void {
            _t.log(stdgo.Go.toInterface(_err));
        }, importer : stdgo.Go.asInterface(_imports) } : stdgo.go.types.Types.Config);
        var _makePkg:(stdgo.GoString, stdgo.GoString) -> Void = function(_path:stdgo.GoString, _src:stdgo.GoString):Void {
            {
                var __tmp__ = _conf.check(_path?.__copy__(), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _mustParse(_fset, _src?.__copy__())) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), null);
                _imports[_path] = __tmp__._0;
            };
        };
        {};
        {};
        _makePkg(("a" : stdgo.GoString), ("\npackage a\nimport \"missing\"\nconst C1 = foo\nconst C2 = missing.C\n" : stdgo.GoString));
        _makePkg(("main" : stdgo.GoString), ("\npackage main\nimport \"a\"\nvar _ = a.C1\nvar _ = a.C2\n" : stdgo.GoString));
    }
function testIssue59603(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        var _imports:stdgo.go.types_test.Types_test.T_testImporter = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo.go.types.Types.Package>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo.go.types.Types.Package>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.go.types.Types.Package>>);
        var _conf:stdgo.go.types.Types.Config = ({ error : function(_err:stdgo.Error):Void {
            _t.log(stdgo.Go.toInterface(_err));
        }, importer : stdgo.Go.asInterface(_imports) } : stdgo.go.types.Types.Config);
        var _makePkg:(stdgo.GoString, stdgo.GoString) -> Void = function(_path:stdgo.GoString, _src:stdgo.GoString):Void {
            {
                var __tmp__ = _conf.check(_path?.__copy__(), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _mustParse(_fset, _src?.__copy__())) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), null);
                _imports[_path] = __tmp__._0;
            };
        };
        {};
        {};
        _makePkg(("a" : stdgo.GoString), ("\npackage a\nconst C = foo\n" : stdgo.GoString));
        _makePkg(("main" : stdgo.GoString), ("\npackage main\nimport \"a\"\nconst _ = a.C\n" : stdgo.GoString));
    }
function testLookupFieldOrMethodOnNil(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {};
                    var _p:stdgo.AnyInterface = ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    });
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_p : stdgo.GoString)) : stdgo.GoString), _1 : true };
                        } catch(_) {
                            { _0 : ("" : stdgo.GoString), _1 : false };
                        }, _s = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok || (_s != ("LookupFieldOrMethod on nil type" : stdgo.GoString))) {
                            _t.fatalf(("got %v, want %s" : stdgo.GoString), _p, stdgo.Go.toInterface(("LookupFieldOrMethod on nil type" : stdgo.GoString)));
                        };
                    };
                };
                a();
            });
            lookupFieldOrMethod((null : stdgo.go.types.Types.Type_), false, null, stdgo.Go.str()?.__copy__());
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testLookupFieldOrMethod(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _tests:stdgo.Slice<T__struct_18> = (new stdgo.Slice<T__struct_18>(
22,
22,
({ _src : ("var x T; type T struct{}" : stdgo.GoString), _found : false, _index : (null : stdgo.Slice<stdgo.GoInt>), _indirect : false } : T__struct_18),
({ _src : ("var x T; type T struct{ f int }" : stdgo.GoString), _found : true, _index : (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : false } : T__struct_18),
({ _src : ("var x T; type T struct{ a, b, f, c int }" : stdgo.GoString), _found : true, _index : (new stdgo.Slice<stdgo.GoInt>(1, 1, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : false } : T__struct_18),
({ _src : ("var x T[int]; type T[P any] struct{}" : stdgo.GoString), _found : false, _index : (null : stdgo.Slice<stdgo.GoInt>), _indirect : false } : T__struct_18),
({ _src : ("var x T[int]; type T[P any] struct{ f P }" : stdgo.GoString), _found : true, _index : (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : false } : T__struct_18),
({ _src : ("var x T[int]; type T[P any] struct{ a, b, f, c P }" : stdgo.GoString), _found : true, _index : (new stdgo.Slice<stdgo.GoInt>(1, 1, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : false } : T__struct_18),
({ _src : ("var a T; type T struct{}; func (T) f() {}" : stdgo.GoString), _found : true, _index : (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : false } : T__struct_18),
({ _src : ("var a *T; type T struct{}; func (T) f() {}" : stdgo.GoString), _found : true, _index : (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : true } : T__struct_18),
({ _src : ("var a T; type T struct{}; func (*T) f() {}" : stdgo.GoString), _found : true, _index : (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : false } : T__struct_18),
({ _src : ("var a *T; type T struct{}; func (*T) f() {}" : stdgo.GoString), _found : true, _index : (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : true } : T__struct_18),
({ _src : ("var a T[int]; type T[P any] struct{}; func (T[P]) f() {}" : stdgo.GoString), _found : true, _index : (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : false } : T__struct_18),
({ _src : ("var a *T[int]; type T[P any] struct{}; func (T[P]) f() {}" : stdgo.GoString), _found : true, _index : (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : true } : T__struct_18),
({ _src : ("var a T[int]; type T[P any] struct{}; func (*T[P]) f() {}" : stdgo.GoString), _found : true, _index : (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : false } : T__struct_18),
({ _src : ("var a *T[int]; type T[P any] struct{}; func (*T[P]) f() {}" : stdgo.GoString), _found : true, _index : (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : true } : T__struct_18),
({ _src : ("type ( E1 struct{ f int }; E2 struct{ f int }; x struct{ E1; *E2 })" : stdgo.GoString), _found : false, _index : (new stdgo.Slice<stdgo.GoInt>(2, 2, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : false } : T__struct_18),
({ _src : ("type ( E1 struct{ f int }; E2 struct{}; x struct{ E1; *E2 }); func (E2) f() {}" : stdgo.GoString), _found : false, _index : (new stdgo.Slice<stdgo.GoInt>(2, 2, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : false } : T__struct_18),
({ _src : ("type ( E1[P any] struct{ f P }; E2[P any] struct{ f P }; x struct{ E1[int]; *E2[int] })" : stdgo.GoString), _found : false, _index : (new stdgo.Slice<stdgo.GoInt>(2, 2, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : false } : T__struct_18),
({ _src : ("type ( E1[P any] struct{ f P }; E2[P any] struct{}; x struct{ E1[int]; *E2[int] }); func (E2[P]) f() {}" : stdgo.GoString), _found : false, _index : (new stdgo.Slice<stdgo.GoInt>(2, 2, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : false } : T__struct_18),
({ _src : ("var x T; type T struct{}; func (*T) f() {}" : stdgo.GoString), _found : false, _index : (null : stdgo.Slice<stdgo.GoInt>), _indirect : true } : T__struct_18),
({ _src : ("var x T[int]; type T[P any] struct{}; func (*T[P]) f() {}" : stdgo.GoString), _found : false, _index : (null : stdgo.Slice<stdgo.GoInt>), _indirect : true } : T__struct_18),
({ _src : ("var a T[int]; type ( T[P any] struct { *N[P] }; N[P any] struct { *T[P] } ); func (N[P]) f() {}" : stdgo.GoString), _found : true, _index : (new stdgo.Slice<stdgo.GoInt>(2, 2, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : true } : T__struct_18),
({ _src : ("var a T[int]; type ( T[P any] struct { *N[P] }; N[P any] struct { *T[P] } ); func (T[P]) f() {}" : stdgo.GoString), _found : true, _index : (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), _indirect : false } : T__struct_18)) : stdgo.Slice<T__struct_18>);
        for (__0 => _test in _tests) {
            var _pkg = _mustTypecheck(("package p;" : stdgo.GoString) + _test._src?.__copy__()?.__copy__(), null, null);
            var _obj:stdgo.go.types.Types.Object = _pkg.scope().lookup(("a" : stdgo.GoString));
            if (_obj == null) {
                {
                    _obj = _pkg.scope().lookup(("x" : stdgo.GoString));
                    if (_obj == null) {
                        _t.errorf(("%s: incorrect test case - no object a or x" : stdgo.GoString), stdgo.Go.toInterface(_test._src));
                        continue;
                    };
                };
            };
            var __tmp__ = lookupFieldOrMethod(_obj.type(), _obj.name() == (("a" : stdgo.GoString)), _pkg, ("f" : stdgo.GoString)), _f:stdgo.go.types.Types.Object = __tmp__._0, _index:stdgo.Slice<stdgo.GoInt> = __tmp__._1, _indirect:Bool = __tmp__._2;
            if ((_f != null) != (_test._found)) {
                if (_f == null) {
                    _t.errorf(("%s: got no object; want one" : stdgo.GoString), stdgo.Go.toInterface(_test._src));
                } else {
                    _t.errorf(("%s: got object = %v; want none" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(_f));
                };
            };
            if (!_sameSlice(_index, _test._index)) {
                _t.errorf(("%s: got index = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(_index), stdgo.Go.toInterface(_test._index));
            };
            if (_indirect != (_test._indirect)) {
                _t.errorf(("%s: got indirect = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(_indirect), stdgo.Go.toInterface(_test._indirect));
            };
        };
    }
/**
    // Test for go.dev/issue/52715
**/
function testLookupFieldOrMethod_RecursiveGeneric(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("\npackage pkg\n\ntype Tree[T any] struct {\n\t*Node[T]\n}\n\nfunc (*Tree[R]) N(r R) R { return r }\n\ntype Node[T any] struct {\n\t*Tree[T]\n}\n\ntype Instance = *Tree[int]\n" : stdgo.GoString));
        var _pkg = newPackage(("pkg" : stdgo.GoString), _f.name.name?.__copy__());
        {
            var _err:stdgo.Error = newChecker(null, _fset, _pkg, null).files((new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>));
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
        };
        var t:stdgo.go.types.Types.Type_ = _pkg.scope().lookup(("Instance" : stdgo.GoString)).type();
        lookupFieldOrMethod(t, false, _pkg, ("M" : stdgo.GoString));
    }
function _sameSlice(_a:stdgo.Slice<stdgo.GoInt>, _b:stdgo.Slice<stdgo.GoInt>):Bool {
        if ((_a.length) != ((_b.length))) {
            return false;
        };
        for (_i => _x in _a) {
            if (_x != (_b[(_i : stdgo.GoInt)])) {
                return false;
            };
        };
        return true;
    }
/**
    // TestScopeLookupParent ensures that (*Scope).LookupParent returns
    // the correct result at various positions with the source.
**/
function testScopeLookupParent(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        var _imports:stdgo.go.types_test.Types_test.T_testImporter = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo.go.types.Types.Package>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo.go.types.Types.Package>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.go.types.Types.Package>>);
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.Go.asInterface(_imports) } : stdgo.go.types.Types.Config);
        var _info:Info = ({} : stdgo.go.types.Types.Info);
        var _makePkg = function(_path:stdgo.GoString, _files:haxe.Rest<stdgo.Ref<stdgo.go.ast.Ast.File>>):Void {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = _conf.check(_path?.__copy__(), _fset, _files, (stdgo.Go.setRef(_info) : stdgo.Ref<stdgo.go.types.Types.Info>));
                _imports[_path] = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _makePkg(("lib" : stdgo.GoString), _mustParse(_fset, ("package lib; var X int" : stdgo.GoString)));
        var _mainSrc:stdgo.GoString = ("\n/*lib=pkgname:5*/ /*X=var:1*/ /*Pi=const:8*/ /*T=typename:9*/ /*Y=var:10*/ /*F=func:12*/\npackage main\n\nimport \"lib\"\nimport . \"lib\"\n\nconst Pi = 3.1415\ntype T struct{}\nvar Y, _ = lib.X, X\n\nfunc F(){\n\tconst pi, e = 3.1415, /*pi=undef*/ 2.71828 /*pi=const:13*/ /*e=const:13*/\n\ttype /*t=undef*/ t /*t=typename:14*/ *t\n\tprint(Y) /*Y=var:10*/\n\tx, Y := Y, /*x=undef*/ /*Y=var:10*/ Pi /*x=var:16*/ /*Y=var:16*/ ; _ = x; _ = Y\n\tvar F = /*F=func:12*/ F /*F=var:17*/ ; _ = F\n\n\tvar a []int\n\tfor i, x := range a /*i=undef*/ /*x=var:16*/ { _ = i; _ = x }\n\n\tvar i interface{}\n\tswitch y := i.(type) { /*y=undef*/\n\tcase /*y=undef*/ int /*y=var:23*/ :\n\tcase float32, /*y=undef*/ float64 /*y=var:23*/ :\n\tdefault /*y=var:23*/:\n\t\tprintln(y)\n\t}\n\t/*y=undef*/\n\n        switch int := i.(type) {\n        case /*int=typename:0*/ int /*int=var:31*/ :\n        \tprintln(int)\n        default /*int=var:31*/ :\n        }\n}\n/*main=undef*/\n" : stdgo.GoString);
        _info.uses = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>);
        var _f = _mustParse(_fset, _mainSrc?.__copy__());
        _makePkg(("main" : stdgo.GoString), _f);
        var _mainScope = (_imports[("main" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo.go.types.Types.Package>)).scope();
        var _rx = stdgo.regexp.Regexp.mustCompile(("^/\\*(\\w*)=([\\w:]*)\\*/$" : stdgo.GoString));
        for (__0 => _group in _f.comments) {
            for (__1 => T_comment_static_extension in _group.list) {
                var _m = _rx.findStringSubmatch(T_comment_static_extension.text?.__copy__());
                if (_m == null) {
                    _t.errorf(("%s: bad comment: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(T_comment_static_extension.pos()))), stdgo.Go.toInterface(T_comment_static_extension.text));
                    continue;
                };
                var __0:stdgo.GoString = _m[(1 : stdgo.GoInt)]?.__copy__(), __1:stdgo.GoString = _m[(2 : stdgo.GoInt)]?.__copy__(), _want:stdgo.GoString = __1, _name:stdgo.GoString = __0;
                var _inner = _mainScope.innermost(T_comment_static_extension.pos());
                if (_inner == null || (_inner : Dynamic).__nil__) {
                    _t.errorf(("%s: at %s: can\'t find innermost scope" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(T_comment_static_extension.pos()))), stdgo.Go.toInterface(T_comment_static_extension.text));
                    continue;
                };
                var _got:stdgo.GoString = ("undef" : stdgo.GoString);
                {
                    var __tmp__ = _inner.lookupParent(_name?.__copy__(), T_comment_static_extension.pos()), __34:stdgo.Ref<stdgo.go.types.Types.Scope> = __tmp__._0, _obj:stdgo.go.types.Types.Object = __tmp__._1;
                    if (_obj != null) {
                        var _kind:stdgo.GoString = stdgo.strings.Strings.toLower(stdgo.strings.Strings.trimPrefix((stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(_obj)).string() : stdgo.GoString)?.__copy__(), ("*types." : stdgo.GoString))?.__copy__())?.__copy__();
                        _got = stdgo.fmt.Fmt.sprintf(("%s:%d" : stdgo.GoString), stdgo.Go.toInterface(_kind), stdgo.Go.toInterface(_fset.position(_obj.pos()).line))?.__copy__();
                    };
                };
                if (_got != (_want)) {
                    _t.errorf(("%s: at %s: %s resolved to %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(T_comment_static_extension.pos()))), stdgo.Go.toInterface(T_comment_static_extension.text), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
        for (_id => _wantObj in _info.uses) {
            var _inner = _mainScope.innermost(_id.pos());
            if (_inner == null || (_inner : Dynamic).__nil__) {
                _t.errorf(("%s: can\'t find innermost scope enclosing %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(_id.pos()))), stdgo.Go.toInterface(_id.name));
                continue;
            };
            if (_id.name == (("X" : stdgo.GoString))) {
                continue;
            };
            var __tmp__ = _inner.lookupParent(_id.name?.__copy__(), _id.pos()), __75:stdgo.Ref<stdgo.go.types.Types.Scope> = __tmp__._0, _gotObj:stdgo.go.types.Types.Object = __tmp__._1;
            if (stdgo.Go.toInterface(_gotObj) != (stdgo.Go.toInterface(_wantObj))) {
                _t.errorf(("%s: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(_id.pos()))), stdgo.Go.toInterface(_gotObj), stdgo.Go.toInterface(_wantObj));
                continue;
            };
        };
    }
/**
    // newDefined creates a new defined type named T with the given underlying type.
    // Helper function for use with TestIncompleteInterfaces only.
**/
function _newDefined(_underlying:Type_):stdgo.Ref<Named> {
        var _tname = newTypeName(_nopos, null, ("T" : stdgo.GoString), (null : stdgo.go.types.Types.Type_));
        return newNamed(_tname, _underlying, (null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>));
    }
function testConvertibleTo(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<T__struct_19>(
12,
12,
({ _v : stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _t : stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _want : true } : T__struct_19),
({ _v : stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _t : stdgo.Go.asInterface(typ[((13 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _want : true } : T__struct_19),
({ _v : stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _t : stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _want : true } : T__struct_19),
({ _v : stdgo.Go.asInterface(_newDefined(stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]))), _t : stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _want : true } : T__struct_19),
({ _v : stdgo.Go.asInterface(_newDefined(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.go.types.Types.Struct)) : stdgo.Ref<stdgo.go.types.Types.Struct>)))), _t : stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.go.types.Types.Struct)) : stdgo.Ref<stdgo.go.types.Types.Struct>)), _want : true } : T__struct_19),
({ _v : stdgo.Go.asInterface(_newDefined(stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]))), _t : stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.go.types.Types.Struct)) : stdgo.Ref<stdgo.go.types.Types.Struct>)), _want : false } : T__struct_19),
({ _v : stdgo.Go.asInterface(typ[((20 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _t : stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _want : true } : T__struct_19),
({ _v : stdgo.Go.asInterface(newSlice(stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]))), _t : stdgo.Go.asInterface(newArray(stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), (10i64 : stdgo.GoInt64))), _want : true } : T__struct_19),
({ _v : stdgo.Go.asInterface(newSlice(stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]))), _t : stdgo.Go.asInterface(newArray(stdgo.Go.asInterface(typ[((7 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), (10i64 : stdgo.GoInt64))), _want : false } : T__struct_19),
({ _v : stdgo.Go.asInterface(newSlice(stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]))), _t : stdgo.Go.asInterface(newPointer(stdgo.Go.asInterface(newArray(stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), (10i64 : stdgo.GoInt64))))), _want : true } : T__struct_19),
({ _v : stdgo.Go.asInterface(newSlice(stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]))), _t : stdgo.Go.asInterface(newPointer(stdgo.Go.asInterface(newArray(stdgo.Go.asInterface(typ[((7 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), (10i64 : stdgo.GoInt64))))), _want : false } : T__struct_19),
({ _v : stdgo.Go.asInterface(typ[((24 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _t : stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _want : true } : T__struct_19)) : stdgo.Slice<T__struct_19>)) {
            {
                var _got:Bool = convertibleTo(_test._v, _test._t);
                if (_got != (_test._want)) {
                    _t.errorf(("ConvertibleTo(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_test._t), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
function testAssignableTo(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<T__struct_19>(8, 8, ({ _v : stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _t : stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _want : true } : T__struct_19), ({ _v : stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _t : stdgo.Go.asInterface(typ[((13 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _want : false } : T__struct_19), ({ _v : stdgo.Go.asInterface(_newDefined(stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]))), _t : stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _want : false } : T__struct_19), ({ _v : stdgo.Go.asInterface(_newDefined(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.go.types.Types.Struct)) : stdgo.Ref<stdgo.go.types.Types.Struct>)))), _t : stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.go.types.Types.Struct)) : stdgo.Ref<stdgo.go.types.Types.Struct>)), _want : true } : T__struct_19), ({ _v : stdgo.Go.asInterface(typ[((19 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _t : stdgo.Go.asInterface(typ[((1 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _want : true } : T__struct_19), ({ _v : stdgo.Go.asInterface(typ[((24 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _t : stdgo.Go.asInterface(typ[((1 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _want : false } : T__struct_19), ({ _v : stdgo.Go.asInterface(typ[((24 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _t : stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _want : true } : T__struct_19), ({ _v : stdgo.Go.asInterface(typ[((20 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _t : stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _want : true } : T__struct_19)) : stdgo.Slice<T__struct_19>)) {
            {
                var _got:Bool = assignableTo(_test._v, _test._t);
                if (_got != (_test._want)) {
                    _t.errorf(("AssignableTo(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_test._t), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
function testIdentical(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_20>(
13,
13,
({ _src : ("var X int; var Y int" : stdgo.GoString), _want : true } : T__struct_20),
({ _src : ("var X int; var Y string" : stdgo.GoString), _want : false } : T__struct_20),
({ _src : ("type X int; type Y int" : stdgo.GoString), _want : false } : T__struct_20),
({ _src : ("type X = int; type Y = int" : stdgo.GoString), _want : true } : T__struct_20),
({ _src : ("func X(int) string { return \"\" }; func Y(int) string { return \"\" }" : stdgo.GoString), _want : true } : T__struct_20),
({ _src : ("func X() string { return \"\" }; func Y(int) string { return \"\" }" : stdgo.GoString), _want : false } : T__struct_20),
({ _src : ("func X(int) string { return \"\" }; func Y(int) {}" : stdgo.GoString), _want : false } : T__struct_20),
({ _src : ("func X[P ~int](){}; func Y[Q ~int]() {}" : stdgo.GoString), _want : true } : T__struct_20),
({ _src : ("func X[P1 any, P2 ~*P1](){}; func Y[Q1 any, Q2 ~*Q1]() {}" : stdgo.GoString), _want : true } : T__struct_20),
({ _src : ("func X[P1 any, P2 ~[]P1](){}; func Y[Q1 any, Q2 ~*Q1]() {}" : stdgo.GoString), _want : false } : T__struct_20),
({ _src : ("func X[P ~int](P){}; func Y[Q ~int](Q) {}" : stdgo.GoString), _want : true } : T__struct_20),
({ _src : ("func X[P ~string](P){}; func Y[Q ~int](Q) {}" : stdgo.GoString), _want : false } : T__struct_20),
({ _src : ("func X[P ~int]([]P){}; func Y[Q ~int]([]Q) {}" : stdgo.GoString), _want : true } : T__struct_20)) : stdgo.Slice<T__struct_20>);
        for (__0 => _test in _tests) {
            var _pkg = _mustTypecheck(("package p;" : stdgo.GoString) + _test._src?.__copy__()?.__copy__(), null, null);
            var x:stdgo.go.types.Types.Object = _pkg.scope().lookup(("X" : stdgo.GoString));
            var y:stdgo.go.types.Types.Object = _pkg.scope().lookup(("Y" : stdgo.GoString));
            if ((x == null) || (y == null)) {
                _t.fatal(stdgo.Go.toInterface(("test must declare both X and Y" : stdgo.GoString)));
            };
            {
                var _got:Bool = identical(x.type(), y.type());
                if (_got != (_test._want)) {
                    _t.errorf(("Identical(%s, %s) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(x.type()), stdgo.Go.toInterface(y.type()), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
function testIdentical_issue15173(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<T__struct_21>(4, 4, ({ _x : stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _y : stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _want : true } : T__struct_21), ({ _x : stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _y : (null : stdgo.go.types.Types.Type_), _want : false } : T__struct_21), ({ _x : (null : stdgo.go.types.Types.Type_), _y : stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), _want : false } : T__struct_21), ({ _x : (null : stdgo.go.types.Types.Type_), _y : (null : stdgo.go.types.Types.Type_), _want : true } : T__struct_21)) : stdgo.Slice<T__struct_21>)) {
            {
                var _got:Bool = identical(_test._x, _test._y);
                if (_got != (_test._want)) {
                    _t.errorf(("Identical(%v, %v) = %t" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_test._y), stdgo.Go.toInterface(_got));
                };
            };
        };
    }
function testIdenticalUnions(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _tname = newTypeName(_nopos, null, ("myInt" : stdgo.GoString), (null : stdgo.go.types.Types.Type_));
        var _myInt = newNamed(_tname, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), (null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>));
        var _tmap = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo.go.types.Types.Term>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo.go.types.Types.Term>);
            @:mergeBlock {
                x.set(("int" : stdgo.GoString), newTerm(false, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])));
                x.set(("~int" : stdgo.GoString), newTerm(true, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])));
                x.set(("string" : stdgo.GoString), newTerm(false, stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])));
                x.set(("~string" : stdgo.GoString), newTerm(true, stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])));
                x.set(("myInt" : stdgo.GoString), newTerm(false, stdgo.Go.asInterface(_myInt)));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.go.types.Types.Term>>);
        var _makeUnion = function(_s:stdgo.GoString):stdgo.Ref<Union> {
            var _parts = stdgo.strings.Strings.split(_s?.__copy__(), ("|" : stdgo.GoString));
            var _terms:stdgo.Slice<stdgo.Ref<Term>> = (null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Term>>);
            for (__0 => _p in _parts) {
                var _term = (_tmap[_p] ?? (null : stdgo.Ref<stdgo.go.types.Types.Term>));
                if (_term == null || (_term : Dynamic).__nil__) {
                    _t.fatalf(("missing term %q" : stdgo.GoString), stdgo.Go.toInterface(_p));
                };
                _terms = (_terms.__append__(_term));
            };
            return newUnion(_terms);
        };
        for (__0 => _test in (new stdgo.Slice<T__struct_22>(5, 5, ({ _x : ("int|~int" : stdgo.GoString), _y : ("~int" : stdgo.GoString), _want : true } : T__struct_22), ({ _x : ("myInt|~int" : stdgo.GoString), _y : ("~int" : stdgo.GoString), _want : true } : T__struct_22), ({ _x : ("int|string" : stdgo.GoString), _y : ("string|int" : stdgo.GoString), _want : true } : T__struct_22), ({ _x : ("int|int|string" : stdgo.GoString), _y : ("string|int" : stdgo.GoString), _want : true } : T__struct_22), ({ _x : ("myInt|string" : stdgo.GoString), _y : ("int|string" : stdgo.GoString), _want : false } : T__struct_22)) : stdgo.Slice<T__struct_22>)) {
            var _x = _makeUnion(_test._x?.__copy__());
            var _y = _makeUnion(_test._y?.__copy__());
            {
                var _got:Bool = identical(stdgo.Go.asInterface(_x), stdgo.Go.asInterface(_y));
                if (_got != (_test._want)) {
                    _t.errorf(("Identical(%v, %v) = %t" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_test._y), stdgo.Go.toInterface(_got));
                };
            };
        };
    }
function testIssue61737(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _sig1 = newSignatureType(null, (null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.TypeParam>>), newTuple(newParam(_nopos, null, stdgo.Go.str()?.__copy__(), stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]))), null, false);
        var _sig2 = newSignatureType(null, (null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.TypeParam>>), newTuple(newParam(_nopos, null, stdgo.Go.str()?.__copy__(), stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]))), null, false);
        var _methods = (new stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>(2, 2, newFunc(_nopos, null, ("M" : stdgo.GoString), _sig1), newFunc(_nopos, null, ("M" : stdgo.GoString), _sig2)) : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>);
        var _embeddedMethods = (new stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>(1, 1, newFunc(_nopos, null, ("M" : stdgo.GoString), _sig2)) : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>);
        var _embedded = newInterfaceType(_embeddedMethods, (null : stdgo.Slice<stdgo.go.types.Types.Type_>));
        var _iface = newInterfaceType(_methods, (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(_embedded)) : stdgo.Slice<stdgo.go.types.Types.Type_>));
        _iface.complete();
    }
function testIssue15305(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("package p; func f() int16; var _ = f(undef)" : stdgo.GoString));
        var _conf:stdgo.go.types.Types.Config = ({ error : function(_err:stdgo.Error):Void {} } : stdgo.go.types.Types.Config);
        var _info = (stdgo.Go.setRef(({ types : ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>) } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>);
        _conf.check(("p" : stdgo.GoString), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), _info);
        for (_e => _tv in _info.types) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_e) : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>)) : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    if (stdgo.Go.toInterface(_tv.type) != (stdgo.Go.toInterface(stdgo.Go.asInterface(typ[((4 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])))) {
                        _t.errorf(("CallExpr has type %v, want int16" : stdgo.GoString), stdgo.Go.toInterface(_tv.type));
                    };
                    return;
                };
            };
        };
        _t.errorf(("CallExpr has no type" : stdgo.GoString));
    }
/**
    // TestCompositeLitTypes verifies that Info.Types registers the correct
    // types for composite literal expressions and composite literal type
    // expressions.
**/
function testCompositeLitTypes(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (_i => _test in (new stdgo.Slice<T__struct_23>(8, 8, ({ _lit : ("[16]byte{}" : stdgo.GoString), _typ : ("[16]byte" : stdgo.GoString) } : T__struct_23), ({ _lit : ("[...]byte{}" : stdgo.GoString), _typ : ("[0]byte" : stdgo.GoString) } : T__struct_23), ({ _lit : ("[...]int{1, 2, 3}" : stdgo.GoString), _typ : ("[3]int" : stdgo.GoString) } : T__struct_23), ({ _lit : ("[...]int{90: 0, 98: 1, 2}" : stdgo.GoString), _typ : ("[100]int" : stdgo.GoString) } : T__struct_23), ({ _lit : ("[]int{}" : stdgo.GoString), _typ : ("[]int" : stdgo.GoString) } : T__struct_23), ({ _lit : ("map[string]bool{\"foo\": true}" : stdgo.GoString), _typ : ("map[string]bool" : stdgo.GoString) } : T__struct_23), ({ _lit : ("struct{}{}" : stdgo.GoString), _typ : ("struct{}" : stdgo.GoString) } : T__struct_23), ({ _lit : ("struct{x, y int; z complex128}{}" : stdgo.GoString), _typ : ("struct{x int; y int; z complex128}" : stdgo.GoString) } : T__struct_23)) : stdgo.Slice<T__struct_23>)) {
            var _fset = stdgo.go.token.Token.newFileSet();
            var _f = _mustParse(_fset, stdgo.fmt.Fmt.sprintf(("package p%d; var _ = %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._lit))?.__copy__());
            var _types = ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>);
            {
                var __tmp__ = (stdgo.Go.setRef(({} : stdgo.go.types.Types.Config)) : stdgo.Ref<stdgo.go.types.Types.Config>).check(("p" : stdgo.GoString), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), (stdgo.Go.setRef(({ types : _types } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>)), __0:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_test._lit), stdgo.Go.toInterface(_err));
                };
            };
            var _cmptype:(stdgo.go.ast.Ast.Expr, stdgo.GoString) -> Void = function(_x:stdgo.go.ast.Ast.Expr, _want:stdgo.GoString):Void {
                var __tmp__ = (_types != null && _types.exists(_x) ? { _0 : _types[_x], _1 : true } : { _0 : ({} : stdgo.go.types.Types.TypeAndValue), _1 : false }), _tv:stdgo.go.types.Types.TypeAndValue = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("%s: no Types entry found" : stdgo.GoString), stdgo.Go.toInterface(_test._lit));
                    return;
                };
                if (_tv.type == null) {
                    _t.errorf(("%s: type is nil" : stdgo.GoString), stdgo.Go.toInterface(_test._lit));
                    return;
                };
                {
                    var _got:stdgo.GoString = (_tv.type.string() : stdgo.GoString)?.__copy__();
                    if (_got != (_want)) {
                        _t.errorf(("%s: got %v, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._lit), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            };
            var _rhs:stdgo.go.ast.Ast.Expr = (stdgo.Go.typeAssert((stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_f.decls[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo.go.ast.Ast.GenDecl>)) : stdgo.Ref<stdgo.go.ast.Ast.GenDecl>).specs[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo.go.ast.Ast.ValueSpec>)) : stdgo.Ref<stdgo.go.ast.Ast.ValueSpec>).values[(0 : stdgo.GoInt)];
            _cmptype(_rhs, _test._typ?.__copy__());
            _cmptype((stdgo.Go.typeAssert((stdgo.Go.toInterface(_rhs) : stdgo.Ref<stdgo.go.ast.Ast.CompositeLit>)) : stdgo.Ref<stdgo.go.ast.Ast.CompositeLit>).type, _test._typ?.__copy__());
        };
    }
/**
    // TestObjectParents verifies that objects have parent scopes or not
    // as specified by the Object interface.
**/
function testObjectParents(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("\npackage p\n\nconst C = 0\n\ntype T1 struct {\n\ta, b int\n\tT2\n}\n\ntype T2 interface {\n\tim1()\n\tim2()\n}\n\nfunc (T1) m1() {}\nfunc (*T1) m2() {}\n\nfunc f(x int) { y := x; print(y) }\n" : stdgo.GoString));
        var _info = (stdgo.Go.setRef(({ defs : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>);
        {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo.go.types.Types.Config)) : stdgo.Ref<stdgo.go.types.Types.Config>).check(("p" : stdgo.GoString), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), _info), __0:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        for (_ident => _obj in _info.defs) {
            if (_obj == null) {
                if (_ident.name != (("p" : stdgo.GoString))) {
                    _t.errorf(("%v has nil object" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ident)));
                };
                continue;
            };
            var _wantParent:Bool = true;
            {
                final __type__ = _obj;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<Var>))) {
                    var _obj:stdgo.Ref<stdgo.go.types.Types.Var> = __type__ == null ? (null : stdgo.Ref<stdgo.go.types.Types.Var>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.types.Types.Var>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.types.Types.Var>) : __type__.__underlying__().value;
                    if (_obj.isField()) {
                        _wantParent = false;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<Func>))) {
                    var _obj:stdgo.Ref<stdgo.go.types.Types.Func> = __type__ == null ? (null : stdgo.Ref<stdgo.go.types.Types.Func>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.types.Types.Func>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.types.Types.Func>) : __type__.__underlying__().value;
                    if ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj.type()) : stdgo.Ref<Signature>)) : stdgo.Ref<Signature>).recv() != null && (((stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj.type()) : stdgo.Ref<Signature>)) : stdgo.Ref<Signature>).recv() : Dynamic).__nil__ == null || !((stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj.type()) : stdgo.Ref<Signature>)) : stdgo.Ref<Signature>).recv() : Dynamic).__nil__)) {
                        _wantParent = false;
                    };
                };
            };
            var _gotParent:Bool = _obj.parent() != null && ((_obj.parent() : Dynamic).__nil__ == null || !(_obj.parent() : Dynamic).__nil__);
            if (_gotParent && !_wantParent) {
                _t.errorf(("%v: want no parent, got %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ident)), stdgo.Go.toInterface(stdgo.Go.asInterface(_obj.parent())));
            } else if (!_gotParent && _wantParent) {
                _t.errorf(("%v: no parent found" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ident)));
            };
        };
    }
/**
    // TestFailedImport tests that we don't get follow-on errors
    // elsewhere in a package due to failing to import a package.
**/
function testFailedImport(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("\npackage p\n\nimport foo \"go/types/thisdirectorymustnotexistotherwisethistestmayfail/foo\" // should only see an error here\n\nconst c = foo.C\ntype T = foo.T\nvar v T = c\nfunc f(x T) T { return foo.F(x) }\n" : stdgo.GoString));
        var _files = (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>);
        for (__0 => _compiler in (new stdgo.Slice<stdgo.GoString>(3, 3, ("gc" : stdgo.GoString), ("gccgo" : stdgo.GoString), ("source" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) {
            var _errcount:stdgo.GoInt = (0 : stdgo.GoInt);
            var _conf:stdgo.go.types.Types.Config = ({ error : function(_err:stdgo.Error):Void {
                if ((_errcount > (0 : stdgo.GoInt)) || !stdgo.strings.Strings.contains(_err.error()?.__copy__(), ("could not import" : stdgo.GoString))) {
                    _t.errorf(("for %s importer, got unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_compiler), stdgo.Go.toInterface(_err));
                };
                _errcount++;
            }, importer : stdgo.go.importer.Importer.for_(_compiler?.__copy__(), null) } : stdgo.go.types.Types.Config);
            var _info = (stdgo.Go.setRef(({ uses : ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>);
            var __tmp__ = _conf.check(("p" : stdgo.GoString), _fset, _files, _info), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, __1:stdgo.Error = __tmp__._1;
            if (_pkg == null || (_pkg : Dynamic).__nil__) {
                _t.errorf(("for %s importer, type-checking failed to return a package" : stdgo.GoString), stdgo.Go.toInterface(_compiler));
                continue;
            };
            var _imports = _pkg.imports();
            if ((_imports.length) != ((1 : stdgo.GoInt))) {
                _t.errorf(("for %s importer, got %d imports, want 1" : stdgo.GoString), stdgo.Go.toInterface(_compiler), stdgo.Go.toInterface((_imports.length)));
                continue;
            };
            var _imp = _imports[(0 : stdgo.GoInt)];
            if (_imp.name() != (("foo" : stdgo.GoString))) {
                _t.errorf(("for %s importer, got %q, want \"foo\"" : stdgo.GoString), stdgo.Go.toInterface(_compiler), stdgo.Go.toInterface(_imp.name()));
                continue;
            };
            for (_ident => _obj in _info.uses) {
                if (_ident.name == (("foo" : stdgo.GoString))) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<PkgName>)) : stdgo.Ref<PkgName>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo.go.types.Types.PkgName>), _1 : false };
                        }, _obj = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            if (_obj.imported() != (_imp)) {
                                _t.errorf(("%s resolved to %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ident)), stdgo.Go.toInterface(stdgo.Go.asInterface(_obj.imported())), stdgo.Go.toInterface(stdgo.Go.asInterface(_imp)));
                            };
                        } else {
                            _t.errorf(("%s resolved to %v; want package name" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ident)), stdgo.Go.toInterface(stdgo.Go.asInterface(_obj)));
                        };
                    };
                };
            };
        };
    }
function testInstantiate(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _pkg = _mustTypecheck(("package p; type T[P any] *T[P]" : stdgo.GoString), null, null);
        var t = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_pkg.scope().lookup(("T" : stdgo.GoString)).type()) : stdgo.Ref<Named>)) : stdgo.Ref<Named>);
        {
            var _n:stdgo.GoInt = t._check._environment._decl._tdecl.typeParams().len();
            if (_n != ((1 : stdgo.GoInt))) {
                _t.fatalf(("expected 1 type parameter; found %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
        var __tmp__ = instantiate(null, stdgo.Go.asInterface(t), (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), false), _res:stdgo.go.types.Types.Type_ = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _p:stdgo.go.types.Types.Type_ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_res.underlying()) : stdgo.Ref<Pointer_>)) : stdgo.Ref<Pointer_>).elem();
            if (stdgo.Go.toInterface(_p) != (stdgo.Go.toInterface(_res))) {
                _t.fatalf(("unexpected result type: %s points to %s" : stdgo.GoString), stdgo.Go.toInterface(_res), stdgo.Go.toInterface(_p));
            };
        };
    }
function testInstantiateErrors(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_24>(4, 4, ({ _src : ("type T[P interface{~string}] int" : stdgo.GoString), _targs : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _wantAt : (0 : stdgo.GoInt) } : T__struct_24), ({ _src : ("type T[P1 interface{int}, P2 interface{~string}] int" : stdgo.GoString), _targs : (new stdgo.Slice<stdgo.go.types.Types.Type_>(2, 2, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _wantAt : (1 : stdgo.GoInt) } : T__struct_24), ({ _src : ("type T[P1 any, P2 interface{~[]P1}] int" : stdgo.GoString), _targs : (new stdgo.Slice<stdgo.go.types.Types.Type_>(2, 2, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), stdgo.Go.asInterface(newSlice(stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])))) : stdgo.Slice<stdgo.go.types.Types.Type_>), _wantAt : (1 : stdgo.GoInt) } : T__struct_24), ({ _src : ("type T[P1 interface{~[]P2}, P2 any] int" : stdgo.GoString), _targs : (new stdgo.Slice<stdgo.go.types.Types.Type_>(2, 2, stdgo.Go.asInterface(newSlice(stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]))), stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _wantAt : (0 : stdgo.GoInt) } : T__struct_24)) : stdgo.Slice<T__struct_24>);
        for (__0 => _test in _tests) {
            var _src:stdgo.GoString = ("package p; " : stdgo.GoString) + _test._src?.__copy__()?.__copy__();
            var _pkg = _mustTypecheck(_src?.__copy__(), null, null);
            var t = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_pkg.scope().lookup(("T" : stdgo.GoString)).type()) : stdgo.Ref<Named>)) : stdgo.Ref<Named>);
            var __tmp__ = instantiate(null, stdgo.Go.asInterface(t), _test._targs, true), __1:stdgo.go.types.Types.Type_ = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatalf(("Instantiate(%v, %v) returned nil error, want non-nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(t)), stdgo.Go.toInterface(_test._targs));
            };
            var _argErr:stdgo.Ref<ArgumentError> = (null : stdgo.Ref<stdgo.go.types.Types.ArgumentError>);
            if (!stdgo.errors.Errors.as(_err, stdgo.Go.toInterface((stdgo.Go.setRef(_argErr) : stdgo.Ref<stdgo.Ref<stdgo.go.types.Types.ArgumentError>>)))) {
                _t.fatalf(("Instantiate(%v, %v): error is not an *ArgumentError" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(t)), stdgo.Go.toInterface(_test._targs));
            };
            if (_argErr.index != (_test._wantAt)) {
                _t.errorf(("Instantiate(%v, %v): error at index %d, want index %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(t)), stdgo.Go.toInterface(_test._targs), stdgo.Go.toInterface(_argErr.index), stdgo.Go.toInterface(_test._wantAt));
            };
        };
    }
function testArgumentErrorUnwrapping(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _err:stdgo.Error = stdgo.Go.asInterface((stdgo.Go.setRef(({ index : (1 : stdgo.GoInt), err : stdgo.Go.asInterface(({ msg : ("test" : stdgo.GoString) } : stdgo.go.types.Types.T_error)) } : stdgo.go.types.Types.ArgumentError)) : stdgo.Ref<stdgo.go.types.Types.ArgumentError>));
        var _e:T_error = ({} : stdgo.go.types.Types.T_error);
        if (!stdgo.errors.Errors.as(_err, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_e) : stdgo.Ref<stdgo.go.types.Types.T_error>))))) {
            _t.fatalf(("error %v does not wrap types.Error" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_e.msg != (("test" : stdgo.GoString))) {
            _t.errorf(("e.Msg = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_e.msg), stdgo.Go.toInterface(("test" : stdgo.GoString)));
        };
    }
function testInstanceIdentity(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _imports:stdgo.go.types_test.Types_test.T_testImporter = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo.go.types.Types.Package>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo.go.types.Types.Package>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.go.types.Types.Package>>);
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.Go.asInterface(_imports) } : stdgo.go.types.Types.Config);
        var _makePkg:stdgo.GoString -> Void = function(_src:stdgo.GoString):Void {
            var _fset = stdgo.go.token.Token.newFileSet();
            var _f = _mustParse(_fset, _src?.__copy__());
            var _name:stdgo.GoString = _f.name.name?.__copy__();
            var __tmp__ = _conf.check(_name?.__copy__(), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), null), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            _imports[_name] = _pkg;
        };
        _makePkg(("package lib; type T[P any] struct{}" : stdgo.GoString));
        _makePkg(("package a; import \"lib\"; var A lib.T[int]" : stdgo.GoString));
        _makePkg(("package b; import \"lib\"; var B lib.T[int]" : stdgo.GoString));
        var _a:stdgo.go.types.Types.Object = (_imports[("a" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo.go.types.Types.Package>)).scope().lookup(("A" : stdgo.GoString));
        var _b:stdgo.go.types.Types.Object = (_imports[("b" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo.go.types.Types.Package>)).scope().lookup(("B" : stdgo.GoString));
        if (!identical(_a.type(), _b.type())) {
            _t.errorf(("mismatching types: a.A: %s, b.B: %s" : stdgo.GoString), stdgo.Go.toInterface(_a.type()), stdgo.Go.toInterface(_b.type()));
        };
    }
/**
    // TestInstantiatedObjects verifies properties of instantiated objects.
**/
function testInstantiatedObjects(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _info = (stdgo.Go.setRef(({ defs : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>);
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("\npackage p\n\ntype T[P any] struct {\n\tfield P\n}\n\nfunc (recv *T[Q]) concreteMethod(mParam Q) (mResult Q) { return }\n\ntype FT[P any] func(ftParam P) (ftResult P)\n\nfunc F[P any](fParam P) (fResult P){ return }\n\ntype I[P any] interface {\n\tinterfaceMethod(P)\n}\n\ntype R[P any] T[P]\n\nfunc (R[P]) m() {} // having a method triggers expansion of R\n\nvar (\n\tt T[int]\n\tft FT[int]\n\tf = F[int]\n\ti I[int]\n)\n\nfunc fn() {\n\tvar r R[int]\n\t_ = r\n}\n" : stdgo.GoString));
        var _conf:stdgo.go.types.Types.Config = (new stdgo.go.types.Types.Config() : stdgo.go.types.Types.Config);
        var __tmp__ = _conf.check(_f.name.name?.__copy__(), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), _info), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _lookup:stdgo.GoString -> stdgo.go.types.Types.Type_ = function(_name:stdgo.GoString):Type_ {
            return _pkg.scope().lookup(_name?.__copy__()).type();
        };
        var _fnScope = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_pkg.scope().lookup(("fn" : stdgo.GoString))) : stdgo.Ref<Func>)) : stdgo.Ref<Func>).scope();
        var _tests = (new stdgo.Slice<T__struct_25>(
11,
11,
({ _name : ("field" : stdgo.GoString), _obj : stdgo.Go.asInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_lookup(("t" : stdgo.GoString)).underlying()) : stdgo.Ref<Struct>)) : stdgo.Ref<Struct>).field((0 : stdgo.GoInt))) } : T__struct_25),
({ _name : ("field" : stdgo.GoString), _obj : stdgo.Go.asInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_fnScope.lookup(("r" : stdgo.GoString)).type().underlying()) : stdgo.Ref<Struct>)) : stdgo.Ref<Struct>).field((0 : stdgo.GoInt))) } : T__struct_25),
({ _name : ("concreteMethod" : stdgo.GoString), _obj : stdgo.Go.asInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_lookup(("t" : stdgo.GoString))) : stdgo.Ref<Named>)) : stdgo.Ref<Named>).method((0 : stdgo.GoInt))) } : T__struct_25),
({ _name : ("recv" : stdgo.GoString), _obj : stdgo.Go.asInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_lookup(("t" : stdgo.GoString))) : stdgo.Ref<Named>)) : stdgo.Ref<Named>).method((0 : stdgo.GoInt)).type()) : stdgo.Ref<Signature>)) : stdgo.Ref<Signature>).recv()) } : T__struct_25),
({ _name : ("mParam" : stdgo.GoString), _obj : stdgo.Go.asInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_lookup(("t" : stdgo.GoString))) : stdgo.Ref<Named>)) : stdgo.Ref<Named>).method((0 : stdgo.GoInt)).type()) : stdgo.Ref<Signature>)) : stdgo.Ref<Signature>).params().at((0 : stdgo.GoInt))) } : T__struct_25),
({ _name : ("mResult" : stdgo.GoString), _obj : stdgo.Go.asInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_lookup(("t" : stdgo.GoString))) : stdgo.Ref<Named>)) : stdgo.Ref<Named>).method((0 : stdgo.GoInt)).type()) : stdgo.Ref<Signature>)) : stdgo.Ref<Signature>).results().at((0 : stdgo.GoInt))) } : T__struct_25),
({ _name : ("interfaceMethod" : stdgo.GoString), _obj : stdgo.Go.asInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_lookup(("i" : stdgo.GoString)).underlying()) : stdgo.Ref<Interface>)) : stdgo.Ref<Interface>).method((0 : stdgo.GoInt))) } : T__struct_25),
({ _name : ("ftParam" : stdgo.GoString), _obj : stdgo.Go.asInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_lookup(("ft" : stdgo.GoString)).underlying()) : stdgo.Ref<Signature>)) : stdgo.Ref<Signature>).params().at((0 : stdgo.GoInt))) } : T__struct_25),
({ _name : ("ftResult" : stdgo.GoString), _obj : stdgo.Go.asInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_lookup(("ft" : stdgo.GoString)).underlying()) : stdgo.Ref<Signature>)) : stdgo.Ref<Signature>).results().at((0 : stdgo.GoInt))) } : T__struct_25),
({ _name : ("fParam" : stdgo.GoString), _obj : stdgo.Go.asInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_lookup(("f" : stdgo.GoString))) : stdgo.Ref<Signature>)) : stdgo.Ref<Signature>).params().at((0 : stdgo.GoInt))) } : T__struct_25),
({ _name : ("fResult" : stdgo.GoString), _obj : stdgo.Go.asInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_lookup(("f" : stdgo.GoString))) : stdgo.Ref<Signature>)) : stdgo.Ref<Signature>).results().at((0 : stdgo.GoInt))) } : T__struct_25)) : stdgo.Slice<T__struct_25>);
        var _idents = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.Ident>>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.Ident>>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.Ident>>>);
        stdgo.go.ast.Ast.inspect(stdgo.Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo.go.ast.Ast.Ident>)) : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : false };
                }, _id = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _idents[_id.name] = ((_idents[_id.name] ?? (null : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.Ident>>)).__append__(_id));
                };
            };
            return true;
        });
        for (__48 => _test in _tests) {
            var _test:T__struct_25 = {
                final x = _test;
                ({ _name : x._name?.__copy__(), _obj : x._obj } : T__struct_25);
            };
            _t.run(_test._name?.__copy__(), function(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
                {
                    var _got:stdgo.GoInt = ((_idents[_test._name] ?? (null : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.Ident>>)).length);
                    if (_got != ((1 : stdgo.GoInt))) {
                        _t.fatalf(("found %d identifiers named %s, want 1" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._name));
                    };
                };
                var _ident = (_idents[_test._name] ?? (null : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.Ident>>))[(0 : stdgo.GoInt)];
                var _def:stdgo.go.types.Types.Object = (_info.defs[_ident] ?? (null : stdgo.go.types.Types.Object));
                if (stdgo.Go.toInterface(_def) == (stdgo.Go.toInterface(_test._obj))) {
                    _t.fatalf(("info.Defs[%s] contains the test object" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
                };
                {
                    var _orig:stdgo.go.types.Types.Object = _originObject(_test._obj);
                    if (stdgo.Go.toInterface(_def) != (stdgo.Go.toInterface(_orig))) {
                        _t.errorf(("info.Defs[%s] does not match obj.Origin()" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
                    };
                };
                if (_def.pkg() != (_test._obj.pkg())) {
                    _t.errorf(("Pkg() = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_def.pkg())), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._obj.pkg())));
                };
                if (_def.name() != (_test._obj.name())) {
                    _t.errorf(("Name() = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_def.name()), stdgo.Go.toInterface(_test._obj.name()));
                };
                if (_def.pos() != (_test._obj.pos())) {
                    _t.errorf(("Pos() = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_def.pos())), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._obj.pos())));
                };
                if (_def.parent() != (_test._obj.parent())) {
                    _t.fatalf(("Parent() = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_def.parent())), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._obj.parent())));
                };
                if (_def.exported() != (_test._obj.exported())) {
                    _t.fatalf(("Exported() = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_def.exported()), stdgo.Go.toInterface(_test._obj.exported()));
                };
                if (_def.id() != (_test._obj.id())) {
                    _t.fatalf(("Id() = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_def.id()), stdgo.Go.toInterface(_test._obj.id()));
                };
            });
        };
    }
function _originObject(_obj:Object):Object {
        {
            final __type__ = _obj;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<Var>))) {
                var _obj:stdgo.Ref<stdgo.go.types.Types.Var> = __type__ == null ? (null : stdgo.Ref<stdgo.go.types.Types.Var>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.types.Types.Var>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.types.Types.Var>) : __type__.__underlying__().value;
                return stdgo.Go.asInterface(_obj.origin());
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<Func>))) {
                var _obj:stdgo.Ref<stdgo.go.types.Types.Func> = __type__ == null ? (null : stdgo.Ref<stdgo.go.types.Types.Func>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.types.Types.Func>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.types.Types.Func>) : __type__.__underlying__().value;
                return stdgo.Go.asInterface(_obj.origin());
            };
        };
        return _obj;
    }
function testImplements(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("\npackage p\n\ntype EmptyIface interface{}\n\ntype I interface {\n\tm()\n}\n\ntype C interface {\n\tm()\n\t~int\n}\n\ntype Integer interface{\n\tint8 | int16 | int32 | int64\n}\n\ntype EmptyTypeSet interface{\n\tInteger\n\t~string\n}\n\ntype N1 int\nfunc (N1) m() {}\n\ntype N2 int\nfunc (*N2) m() {}\n\ntype N3 int\nfunc (N3) m(int) {}\n\ntype N4 string\nfunc (N4) m()\n\ntype Bad Bad // invalid type\n" : stdgo.GoString));
        var _conf:stdgo.go.types.Types.Config = ({ error : function(_0:stdgo.Error):Void {} } : stdgo.go.types.Types.Config);
        var __tmp__ = _conf.check(_f.name.name?.__copy__(), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), null), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        var _lookup:stdgo.GoString -> stdgo.go.types.Types.Type_ = function(_tname:stdgo.GoString):Type_ {
            return _pkg.scope().lookup(_tname?.__copy__()).type();
        };
        var __0:stdgo.Ref<stdgo.go.types.Types.Interface> = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_lookup(("EmptyIface" : stdgo.GoString)).underlying()) : stdgo.Ref<Interface>)) : stdgo.Ref<Interface>), __1:stdgo.Ref<stdgo.go.types.Types.Named> = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_lookup(("I" : stdgo.GoString))) : stdgo.Ref<Named>)) : stdgo.Ref<Named>), __2:stdgo.Ref<stdgo.go.types.Types.Interface> = (stdgo.Go.typeAssert((stdgo.Go.toInterface(i.underlying()) : stdgo.Ref<Interface>)) : stdgo.Ref<Interface>), __3:stdgo.Ref<stdgo.go.types.Types.Named> = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_lookup(("C" : stdgo.GoString))) : stdgo.Ref<Named>)) : stdgo.Ref<Named>), __4:stdgo.Ref<stdgo.go.types.Types.Interface> = (stdgo.Go.typeAssert((stdgo.Go.toInterface(c.underlying()) : stdgo.Ref<Interface>)) : stdgo.Ref<Interface>), __5:stdgo.Ref<stdgo.go.types.Types.Interface> = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_lookup(("Integer" : stdgo.GoString)).underlying()) : stdgo.Ref<Interface>)) : stdgo.Ref<Interface>), __6:stdgo.Ref<stdgo.go.types.Types.Interface> = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_lookup(("EmptyTypeSet" : stdgo.GoString)).underlying()) : stdgo.Ref<Interface>)) : stdgo.Ref<Interface>), __7:stdgo.go.types.Types.Type_ = _lookup(("N1" : stdgo.GoString)), __8:stdgo.Ref<stdgo.go.types.Types.Pointer_> = newPointer(n1), __9:stdgo.go.types.Types.Type_ = _lookup(("N2" : stdgo.GoString)), __10:stdgo.Ref<stdgo.go.types.Types.Pointer_> = newPointer(n2), __11:stdgo.go.types.Types.Type_ = _lookup(("N3" : stdgo.GoString)), __12:stdgo.go.types.Types.Type_ = _lookup(("N4" : stdgo.GoString)), __13:stdgo.go.types.Types.Type_ = _lookup(("Bad" : stdgo.GoString)), bad:stdgo.go.types.Types.Type_ = __13, n4:stdgo.go.types.Types.Type_ = __12, n3:stdgo.go.types.Types.Type_ = __11, n2p:stdgo.Ref<stdgo.go.types.Types.Pointer_> = __10, n2:stdgo.go.types.Types.Type_ = __9, n1p:stdgo.Ref<stdgo.go.types.Types.Pointer_> = __8, n1:stdgo.go.types.Types.Type_ = __7, emptyTypeSet:stdgo.Ref<stdgo.go.types.Types.Interface> = __6, integer:stdgo.Ref<stdgo.go.types.Types.Interface> = __5, ci:stdgo.Ref<stdgo.go.types.Types.Interface> = __4, c:stdgo.Ref<stdgo.go.types.Types.Named> = __3, ii:stdgo.Ref<stdgo.go.types.Types.Interface> = __2, i:stdgo.Ref<stdgo.go.types.Types.Named> = __1, emptyIface:stdgo.Ref<stdgo.go.types.Types.Interface> = __0;
        var _tests = (new stdgo.Slice<T__struct_26>(
25,
25,
({ v : stdgo.Go.asInterface(i), t : ii, _want : true } : T__struct_26),
({ v : stdgo.Go.asInterface(i), t : ci, _want : false } : T__struct_26),
({ v : stdgo.Go.asInterface(c), t : ii, _want : true } : T__struct_26),
({ v : stdgo.Go.asInterface(c), t : ci, _want : true } : T__struct_26),
({ v : stdgo.Go.asInterface(typ[((3 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), t : integer, _want : true } : T__struct_26),
({ v : stdgo.Go.asInterface(typ[((6 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), t : integer, _want : true } : T__struct_26),
({ v : stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), t : integer, _want : false } : T__struct_26),
({ v : stdgo.Go.asInterface(emptyTypeSet), t : ii, _want : true } : T__struct_26),
({ v : stdgo.Go.asInterface(emptyTypeSet), t : emptyTypeSet, _want : true } : T__struct_26),
({ v : stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), t : emptyTypeSet, _want : false } : T__struct_26),
({ v : n1, t : ii, _want : true } : T__struct_26),
({ v : n1, t : ci, _want : true } : T__struct_26),
({ v : stdgo.Go.asInterface(n1p), t : ii, _want : true } : T__struct_26),
({ v : stdgo.Go.asInterface(n1p), t : ci, _want : false } : T__struct_26),
({ v : n2, t : ii, _want : false } : T__struct_26),
({ v : n2, t : ci, _want : false } : T__struct_26),
({ v : stdgo.Go.asInterface(n2p), t : ii, _want : true } : T__struct_26),
({ v : stdgo.Go.asInterface(n2p), t : ci, _want : false } : T__struct_26),
({ v : n3, t : ii, _want : false } : T__struct_26),
({ v : n3, t : ci, _want : false } : T__struct_26),
({ v : n4, t : ii, _want : true } : T__struct_26),
({ v : n4, t : ci, _want : false } : T__struct_26),
({ v : bad, t : ii, _want : false } : T__struct_26),
({ v : bad, t : ci, _want : false } : T__struct_26),
({ v : bad, t : emptyIface, _want : true } : T__struct_26)) : stdgo.Slice<T__struct_26>);
        for (__17 => _test in _tests) {
            {
                var _got:Bool = implements_(_test.v, _test.t);
                if (_got != (_test._want)) {
                    _t.errorf(("Implements(%s, %s) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test.v), stdgo.Go.toInterface(stdgo.Go.asInterface(_test.t)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
            var v = _test.t;
            var t:stdgo.go.types.Types.Type_ = _test.v;
            var _want:Bool = false;
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(t.underlying()) : stdgo.Ref<Interface>)) : stdgo.Ref<Interface>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo.go.types.Types.Interface>), _1 : false };
                }, __26 = __tmp__._0, _ok = __tmp__._1;
                if ((_ok || implements_(t, v)) && (stdgo.Go.toInterface(t) != stdgo.Go.toInterface(bad))) {
                    _want = true;
                };
            };
            {
                var _got:Bool = assertableTo(v, t);
                if (_got != (_want)) {
                    _t.errorf(("AssertableTo(%s, %s) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(v)), stdgo.Go.toInterface(t), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
function testMissingMethodAlternative(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _pkg = _mustTypecheck(("\npackage p\ntype T interface {\n\tm()\n}\n\ntype V0 struct{}\nfunc (V0) m() {}\n\ntype V1 struct{}\n\ntype V2 struct{}\nfunc (V2) m() int\n\ntype V3 struct{}\nfunc (*V3) m()\n\ntype V4 struct{}\nfunc (V4) M()\n" : stdgo.GoString), null, null);
        var t = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_pkg.scope().lookup(("T" : stdgo.GoString)).type().underlying()) : stdgo.Ref<Interface>)) : stdgo.Ref<Interface>);
        var _lookup:stdgo.GoString -> { var _0 : stdgo.Ref<stdgo.go.types.Types.Func>; var _1 : Bool; } = function(_name:stdgo.GoString):{ var _0 : stdgo.Ref<Func>; var _1 : Bool; } {
            return missingMethod(_pkg.scope().lookup(_name?.__copy__()).type(), t, true);
        };
        var __tmp__ = _lookup(("V0" : stdgo.GoString)), _method:stdgo.Ref<stdgo.go.types.Types.Func> = __tmp__._0, _wrongType:Bool = __tmp__._1;
        if (((_method != null) && ((_method : Dynamic).__nil__ == null || !(_method : Dynamic).__nil__)) || _wrongType) {
            _t.fatalf(("V0: got method = %v, wrongType = %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_method)), stdgo.Go.toInterface(_wrongType));
        };
        var _checkMissingMethod:(stdgo.GoString, Bool) -> Void = function(_tname:stdgo.GoString, _reportWrongType:Bool):Void {
            var __tmp__ = _lookup(_tname?.__copy__()), _method:stdgo.Ref<stdgo.go.types.Types.Func> = __tmp__._0, _wrongType:Bool = __tmp__._1;
            if ((((_method == null) || (_method : Dynamic).__nil__) || (_method.name() != ("m" : stdgo.GoString))) || (_wrongType != _reportWrongType)) {
                _t.fatalf(("%s: got method = %v, wrongType = %v" : stdgo.GoString), stdgo.Go.toInterface(_tname), stdgo.Go.toInterface(stdgo.Go.asInterface(_method)), stdgo.Go.toInterface(_wrongType));
            };
        };
        _checkMissingMethod(("V1" : stdgo.GoString), false);
        _checkMissingMethod(("V2" : stdgo.GoString), true);
        _checkMissingMethod(("V3" : stdgo.GoString), true);
        _checkMissingMethod(("V4" : stdgo.GoString), false);
    }
function testErrorURL(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _conf:Config = ({} : stdgo.go.types.Types.Config);
        _stringFieldAddr((stdgo.Go.setRef(_conf) : stdgo.Ref<stdgo.go.types.Types.Config>), ("_ErrorURL" : stdgo.GoString)).value = (" [go.dev/e/%s]" : stdgo.GoString);
        {};
        var __tmp__ = _typecheck(("\npackage p\nvar _ T\n" : stdgo.GoString), (stdgo.Go.setRef(_conf) : stdgo.Ref<stdgo.go.types.Types.Config>), null), __64:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err == null) || !stdgo.strings.Strings.hasSuffix(_err.error()?.__copy__(), (" [go.dev/e/UndeclaredName]" : stdgo.GoString))) {
            _t.errorf(("src1: unexpected error: got %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {};
        {
            var __tmp__ = _typecheck(("\npackage p\nfunc f() int { return 0 }\nvar _ = f(1, 2)\n" : stdgo.GoString), (stdgo.Go.setRef(_conf) : stdgo.Ref<stdgo.go.types.Types.Config>), null);
            _err = __tmp__._1;
        };
        if ((_err == null) || !stdgo.strings.Strings.contains(_err.error()?.__copy__(), (" [go.dev/e/WrongArgCount]\n" : stdgo.GoString))) {
            _t.errorf(("src1: unexpected error: got %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function testBuiltinSignatures(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        defPredeclaredTestFuncs();
        var _seen = ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            @:mergeBlock {
                x.set(("trace" : stdgo.GoString), true);
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>);
        for (__64 => _call in _builtinCalls) {
            _testBuiltinSignature(_t, _call._name?.__copy__(), _call._src?.__copy__(), _call._sig?.__copy__());
            _seen[_call._name] = true;
        };
        for (__65 => _name in universe.names()) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(universe.lookup(_name?.__copy__())) : stdgo.Ref<Builtin>)) : stdgo.Ref<Builtin>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo.go.types.Types.Builtin>), _1 : false };
                }, __66 = __tmp__._0, _ok = __tmp__._1;
                if (_ok && !(_seen[_name] ?? false)) {
                    _t.errorf(("missing test for %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
                };
            };
        };
        for (__75 => _name in unsafe.scope().names()) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(unsafe.scope().lookup(_name?.__copy__())) : stdgo.Ref<Builtin>)) : stdgo.Ref<Builtin>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo.go.types.Types.Builtin>), _1 : false };
                }, __76 = __tmp__._0, _ok = __tmp__._1;
                if (_ok && !(_seen[_name] ?? false)) {
                    _t.errorf(("missing test for unsafe.%s" : stdgo.GoString), stdgo.Go.toInterface(_name));
                };
            };
        };
    }
function _testBuiltinSignature(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _name:stdgo.GoString, _src0:stdgo.GoString, _want:stdgo.GoString):Void {
        var _src:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("package p; import \"unsafe\"; type _ unsafe.Pointer /* use unsafe */; func _[P ~[]byte]() { %s }" : stdgo.GoString), stdgo.Go.toInterface(_src0))?.__copy__();
        var _uses = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>);
        var _types = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>);
        _mustTypecheck(_src?.__copy__(), null, (stdgo.Go.setRef(({ types : _types, uses : _uses } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>));
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fun:stdgo.go.ast.Ast.Expr = (null : stdgo.go.ast.Ast.Expr);
        for (_x => _ in _types) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>)) : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>), _1 : false };
                }, _call = __tmp__._0, __64 = __tmp__._1;
                if (_call != null && ((_call : Dynamic).__nil__ == null || !(_call : Dynamic).__nil__)) {
                    _fun = _call.fun;
                    _n++;
                };
            };
        };
        if (_n != ((1 : stdgo.GoInt))) {
            _t.errorf(("%s: got %d CallExprs; want 1" : stdgo.GoString), stdgo.Go.toInterface(_src0), stdgo.Go.toInterface(_n));
            return;
        };
        while (true) {
            var _typ:stdgo.go.types.Types.Type_ = (_types[_fun] ?? ({} : stdgo.go.types.Types.TypeAndValue)).type;
            if (_typ == null) {
                _t.errorf(("%s: no type recorded for %s" : stdgo.GoString), stdgo.Go.toInterface(_src0), stdgo.Go.toInterface(exprString(_fun)));
                return;
            };
            {
                var _got:stdgo.GoString = (_typ.string() : stdgo.GoString)?.__copy__();
                if (_got != (_want)) {
                    _t.errorf(("%s: got type %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_src0), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    return;
                };
            };
            {
                final __type__ = _fun;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.Ident>))) {
                    var _p:stdgo.Ref<stdgo.go.ast.Ast.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                    var _obj:stdgo.go.types.Types.Object = (_uses[_p] ?? (null : stdgo.go.types.Types.Object));
                    if (_obj == null) {
                        _t.errorf(("%s: no object found for %s" : stdgo.GoString), stdgo.Go.toInterface(_src0), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
                        return;
                    };
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<Builtin>)) : stdgo.Ref<Builtin>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo.go.types.Types.Builtin>), _1 : false };
                    }, _bin = __tmp__._0, __97 = __tmp__._1;
                    if (_bin == null || (_bin : Dynamic).__nil__) {
                        _t.errorf(("%s: %s does not denote a built-in" : stdgo.GoString), stdgo.Go.toInterface(_src0), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
                        return;
                    };
                    if (_bin.name() != (_name)) {
                        _t.errorf(("%s: got built-in %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_src0), stdgo.Go.toInterface(_bin.name()), stdgo.Go.toInterface(_name));
                        return;
                    };
                    return;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.ParenExpr>))) {
                    var _p:stdgo.Ref<stdgo.go.ast.Ast.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__.__underlying__().value;
                    _fun = _p.x;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>))) {
                    var _p:stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__.__underlying__().value;
                    return;
                } else {
                    var _p:stdgo.go.ast.Ast.Expr = __type__ == null ? (null : stdgo.go.ast.Ast.Expr) : cast __type__;
                    _t.errorf(("%s: invalid function call" : stdgo.GoString), stdgo.Go.toInterface(_src0));
                    return;
                };
            };
        };
    }
function _parseFiles(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _filenames:stdgo.Slice<stdgo.GoString>, _srcs:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _mode:stdgo.go.parser.Parser.Mode):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>; var _1 : stdgo.Slice<stdgo.Error>; } {
        var _files:stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>);
        var _errlist:stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
        for (_i => _filename in _filenames) {
            var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, _filename?.__copy__(), stdgo.Go.toInterface(_srcs[(_i : stdgo.GoInt)]), _mode), _file:stdgo.Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_file == null || (_file : Dynamic).__nil__) {
                _t.fatalf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_err));
            };
            _files = (_files.__append__(_file));
            if (_err != null) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.go.scanner.Scanner.ErrorList)) : stdgo.go.scanner.Scanner.ErrorList), _1 : true };
                    } catch(_) {
                        { _0 : new stdgo.go.scanner.Scanner.ErrorList(0, 0), _1 : false };
                    }, _list = __tmp__._0, __72 = __tmp__._1;
                    if ((_list.length) > (0 : stdgo.GoInt)) {
                        for (__73 => _err in _list) {
                            _errlist = (_errlist.__append__(stdgo.Go.asInterface(_err)));
                        };
                    } else {
                        _errlist = (_errlist.__append__(_err));
                    };
                };
            };
        };
        return { _0 : _files, _1 : _errlist };
    }
function _unpackError(_fset:stdgo.Ref<stdgo.go.token.Token.FileSet>, _err:stdgo.Error):{ var _0 : stdgo.go.token.Token.Position; var _1 : stdgo.GoString; } {
        {
            final __type__ = _err;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.scanner.Scanner.T_error>))) {
                var _err:stdgo.Ref<stdgo.go.scanner.Scanner.T_error> = __type__ == null ? (null : stdgo.Ref<stdgo.go.scanner.Scanner.T_error>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.scanner.Scanner.T_error>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.scanner.Scanner.T_error>) : __type__.__underlying__().value;
                return { _0 : _err.pos?.__copy__(), _1 : _err.msg?.__copy__() };
            } else if (stdgo.Go.typeEquals((__type__ : T_error))) {
                var _err:stdgo.go.types.Types.T_error = __type__ == null ? ({} : stdgo.go.types.Types.T_error) : __type__.__underlying__() == null ? ({} : stdgo.go.types.Types.T_error) : __type__ == null ? ({} : stdgo.go.types.Types.T_error) : __type__.__underlying__().value;
                return { _0 : _fset.position(_err.pos)?.__copy__(), _1 : _err.msg?.__copy__() };
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
/**
    // absDiff returns the absolute difference between x and y.
**/
function _absDiff(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        if (_x < _y) {
            return _y - _x;
        };
        return _x - _y;
    }
/**
    // parseFlags parses flags from the first line of the given source if the line
    // starts with "//" (line comment) followed by "-" (possibly with spaces
    // between). Otherwise the line is ignored.
**/
function _parseFlags(_src:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.Ref<stdgo.flag.Flag.FlagSet>):stdgo.Error {
        {};
        if (!stdgo.bytes.Bytes.hasPrefix(_src, (("//" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))) {
            return (null : stdgo.Error);
        };
        _src = (_src.__slice__((("//" : stdgo.GoString).length)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i:stdgo.GoInt = stdgo.bytes.Bytes.index(_src, (("-" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            if ((_i < (0 : stdgo.GoInt)) || (stdgo.bytes.Bytes.trimSpace((_src.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)).length != (0 : stdgo.GoInt))) {
                return (null : stdgo.Error);
            };
        };
        var _end:stdgo.GoInt = stdgo.bytes.Bytes.index(_src, (("\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        {};
        if ((_end < (0 : stdgo.GoInt)) || (_end > (256 : stdgo.GoInt))) {
            return stdgo.fmt.Fmt.errorf(("flags comment line too long" : stdgo.GoString));
        };
        return _flags.parse(stdgo.strings.Strings.fields(((_src.__slice__(0, _end) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__()));
    }
/**
    // testFiles type-checks the package consisting of the given files, and
    // compares the resulting errors with the ERROR annotations in the source.
    //
    // The srcs slice contains the file content for the files named in the
    // filenames slice. The manual parameter specifies whether this is a 'manual'
    // test.
    //
    // If provided, opts may be used to mutate the Config before type-checking.
**/
function _testFiles(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _filenames:stdgo.Slice<stdgo.GoString>, _srcs:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _manual:Bool, _opts:haxe.Rest<stdgo.Ref<Config> -> Void>):Void {
        var _opts = new stdgo.Slice<stdgo.Ref<Config> -> Void>(_opts.length, 0, ..._opts);
        if ((_filenames.length) == ((0 : stdgo.GoInt))) {
            _t.fatal(stdgo.Go.toInterface(("no source files" : stdgo.GoString)));
        };
        var _conf:Config = ({} : stdgo.go.types.Types.Config);
        var _flags = stdgo.flag.Flag.newFlagSet(stdgo.Go.str()?.__copy__(), (2 : stdgo.flag.Flag.ErrorHandling));
        _flags.stringVar(stdgo.Go.pointer(_conf.goVersion), ("lang" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
        _flags.boolVar(stdgo.Go.pointer(_conf.fakeImportC), ("fakeImportC" : stdgo.GoString), false, stdgo.Go.str()?.__copy__());
        {
            var _err:stdgo.Error = _parseFlags(_srcs[(0 : stdgo.GoInt)], _flags);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = _parseFiles(_t, _filenames, _srcs, (32u32 : stdgo.go.parser.Parser.Mode)), _files:stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>> = __tmp__._0, _errlist:stdgo.Slice<stdgo.Error> = __tmp__._1;
        var _pkgName:stdgo.GoString = ("<no package>" : stdgo.GoString);
        if ((_files.length) > (0 : stdgo.GoInt)) {
            _pkgName = _files[(0 : stdgo.GoInt)].name.name?.__copy__();
        };
        var _listErrors:Bool = _manual && !_verifyErrors.value;
        if (_listErrors && (_errlist.length > (0 : stdgo.GoInt))) {
            _t.errorf(("--- %s:" : stdgo.GoString), stdgo.Go.toInterface(_pkgName));
            for (__88 => _err in _errlist) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        _boolFieldAddr((stdgo.Go.setRef(_conf) : stdgo.Ref<stdgo.go.types.Types.Config>), ("_Trace" : stdgo.GoString)).value = _manual && stdgo.testing.Testing.verbose();
        _conf.importer = stdgo.go.importer.Importer.default_();
        _conf.error = function(_err:stdgo.Error):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                if (_haltOnError.value) {
                    {
                        var _a0 = _err;
                        __deferstack__.unshift(() -> throw stdgo.Go.toInterface(_a0));
                    };
                };
                if (_listErrors) {
                    _t.error(stdgo.Go.toInterface(_err));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                if (!stdgo.strings.Strings.contains(_err.error()?.__copy__(), (": \t" : stdgo.GoString))) {
                    _errlist = (_errlist.__append__(_err));
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        };
        for (__97 => _opt in _opts) {
            _opt((stdgo.Go.setRef(_conf) : stdgo.Ref<stdgo.go.types.Types.Config>));
        };
        _conf.check(_pkgName?.__copy__(), _fset, _files, null);
        if (_listErrors) {
            return;
        };
        var _errmap = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoMap<stdgo.GoInt, stdgo.Slice<stdgo.go.types_test.Types_test.T_comment>>>();
            x.__defaultValue__ = () -> (null : stdgo.GoMap<stdgo.GoInt, stdgo.Slice<stdgo.go.types_test.Types_test.T_comment>>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoInt, stdgo.Slice<stdgo.go.types_test.Types_test.T_comment>>>);
        for (_i => _filename in _filenames) {
            {
                var _m = _commentMap(_srcs[(_i : stdgo.GoInt)], stdgo.regexp.Regexp.mustCompile(("^ ERRORx? " : stdgo.GoString)));
                if ((_m.length) > (0 : stdgo.GoInt)) {
                    _errmap[_filename] = _m;
                };
            };
        };
        var _indices:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        for (__98 => _err in _errlist) {
            var __tmp__ = _unpackError(_fset, _err), _gotPos:stdgo.go.token.Token.Position = __tmp__._0, _gotMsg:stdgo.GoString = __tmp__._1;
            var _filename:stdgo.GoString = _gotPos.filename?.__copy__();
            var _filemap = (_errmap[_filename] ?? (null : stdgo.GoMap<stdgo.GoInt, stdgo.Slice<stdgo.go.types_test.Types_test.T_comment>>));
            var _line:stdgo.GoInt = _gotPos.line;
            var _errList:stdgo.Slice<T_comment> = (null : stdgo.Slice<stdgo.go.types_test.Types_test.T_comment>);
            if (_filemap != null) {
                _errList = (_filemap[_line] ?? (null : stdgo.Slice<stdgo.go.types_test.Types_test.T_comment>));
            };
            _indices = (_indices.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
            for (_i => _want in _errList) {
                var __tmp__ = stdgo.strings.Strings.cutPrefix(_want._text?.__copy__(), (" ERROR " : stdgo.GoString)), _pattern:stdgo.GoString = __tmp__._0, _substr:Bool = __tmp__._1;
                if (!_substr) {
                    var _found:Bool = false;
                    {
                        var __tmp__ = stdgo.strings.Strings.cutPrefix(_want._text?.__copy__(), (" ERRORx " : stdgo.GoString));
                        _pattern = __tmp__._0?.__copy__();
                        _found = __tmp__._1;
                    };
                    if (!_found) {
                        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                    };
                };
                var __tmp__ = stdgo.strconv.Strconv.unquote(stdgo.strings.Strings.trimSpace(_pattern?.__copy__())?.__copy__()), _pattern:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("%s:%d:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_want._col), stdgo.Go.toInterface(_err));
                    continue;
                };
                if (_substr) {
                    if (!stdgo.strings.Strings.contains(_gotMsg?.__copy__(), _pattern?.__copy__())) {
                        continue;
                    };
                } else {
                    var __tmp__ = stdgo.regexp.Regexp.compile(_pattern?.__copy__()), _rx:stdgo.Ref<stdgo.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.errorf(("%s:%d:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_want._col), stdgo.Go.toInterface(_err));
                        continue;
                    };
                    if (!_rx.matchString(_gotMsg?.__copy__())) {
                        continue;
                    };
                };
                _indices = (_indices.__append__(_i));
            };
            if ((_indices.length) == ((0 : stdgo.GoInt))) {
                _t.errorf(("%s: no error expected: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_gotPos)), stdgo.Go.toInterface(_gotMsg));
                continue;
            };
            var _index:stdgo.GoInt = (-1 : stdgo.GoInt);
            var _delta:stdgo.GoInt = (0 : stdgo.GoInt);
            for (__123 => _i in _indices) {
                {
                    var _d:stdgo.GoInt = _absDiff(_gotPos.column, _errList[(_i : stdgo.GoInt)]._col);
                    if ((_index < (0 : stdgo.GoInt)) || (_d < _delta)) {
                        {
                            final __tmp__0 = _i;
                            final __tmp__1 = _d;
                            _index = __tmp__0;
                            _delta = __tmp__1;
                        };
                    };
                };
            };
            {};
            if (_delta > (0 : stdgo.GoInt)) {
                _t.errorf(("%s: got col = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_gotPos)), stdgo.Go.toInterface(_gotPos.column), stdgo.Go.toInterface(_errList[(_index : stdgo.GoInt)]._col));
            };
            {
                var _n:stdgo.GoInt = (_errList.length) - (1 : stdgo.GoInt);
                if (_n > (0 : stdgo.GoInt)) {
                    stdgo.Go.copySlice((_errList.__slice__(_index) : stdgo.Slice<stdgo.go.types_test.Types_test.T_comment>), (_errList.__slice__(_index + (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_comment>));
                    _filemap[_line] = (_errList.__slice__(0, _n) : stdgo.Slice<stdgo.go.types_test.Types_test.T_comment>);
                } else {
                    if (_filemap != null) _filemap.remove(_line);
                };
            };
            if ((_filemap.length) == ((0 : stdgo.GoInt))) {
                if (_errmap != null) _errmap.remove(_filename);
            };
        };
        if ((_errmap.length) > (0 : stdgo.GoInt)) {
            _t.errorf(("--- %s: unreported errors:" : stdgo.GoString), stdgo.Go.toInterface(_pkgName));
            for (_filename => _filemap in _errmap) {
                for (_line => _errList in _filemap) {
                    for (__140 => _err in _errList) {
                        _t.errorf(("%s:%d:%d: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err._col), stdgo.Go.toInterface(_err._text));
                    };
                };
            };
        };
    }
function _readCode(_err:T_error):stdgo.internal.types.errors.Errors.Code {
        var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_err)))?.__copy__();
        return (_v.fieldByName(("go116code" : stdgo.GoString)).int_() : stdgo.internal.types.errors.Errors.Code);
    }
/**
    // boolFieldAddr(conf, name) returns the address of the boolean field conf.<name>.
    // For accessing unexported fields.
**/
function _boolFieldAddr(_conf:stdgo.Ref<Config>, _name:stdgo.GoString):stdgo.Pointer<Bool> {
        var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.indirect(stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_conf)))?.__copy__())?.__copy__();
        return (_v.fieldByName(_name?.__copy__()).addr().unsafePointer().__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(bool_kind) })) : stdgo.Pointer<Bool>);
    }
/**
    // stringFieldAddr(conf, name) returns the address of the string field conf.<name>.
    // For accessing unexported fields.
**/
function _stringFieldAddr(_conf:stdgo.Ref<Config>, _name:stdgo.GoString):stdgo.Pointer<stdgo.GoString> {
        var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.indirect(stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_conf)))?.__copy__())?.__copy__();
        return (_v.fieldByName(_name?.__copy__()).addr().unsafePointer().__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) })) : stdgo.Pointer<stdgo.GoString>);
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
function testManual(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        var _filenames = stdgo.flag.Flag.args();
        if ((_filenames.length) == ((0 : stdgo.GoInt))) {
            _filenames = (new stdgo.Slice<stdgo.GoString>(1, 1, stdgo.path.filepath.Filepath.fromSlash(("testdata/manual.go" : stdgo.GoString))?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        var __tmp__ = stdgo.os.Os.stat(_filenames[(0 : stdgo.GoInt)]?.__copy__()), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("TestManual: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        defPredeclaredTestFuncs();
        if (_info.isDir()) {
            if ((_filenames.length) > (1 : stdgo.GoInt)) {
                _t.fatal(stdgo.Go.toInterface(("TestManual: must have only one directory argument" : stdgo.GoString)));
            };
            _testDir(_t, _filenames[(0 : stdgo.GoInt)]?.__copy__(), true);
        } else {
            _testPkg(_t, _filenames, true);
        };
    }
function testLongConstants(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _format:stdgo.GoString = ("package longconst; const _ = %s /* ERROR \"constant overflow\" */; const _ = %s // ERROR \"excessively long constant\"" : stdgo.GoString);
        var _src:stdgo.GoString = stdgo.fmt.Fmt.sprintf(_format?.__copy__(), stdgo.Go.toInterface(stdgo.strings.Strings.repeat(("1" : stdgo.GoString), (9999 : stdgo.GoInt))), stdgo.Go.toInterface(stdgo.strings.Strings.repeat(("1" : stdgo.GoString), (10001 : stdgo.GoInt))))?.__copy__();
        _testFiles(_t, (new stdgo.Slice<stdgo.GoString>(1, 1, ("longconst.go" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(1, 1, (_src : stdgo.Slice<stdgo.GoByte>)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>), false);
    }
function _withSizes(_sizes:Sizes):stdgo.Ref<Config> -> Void {
        return function(_cfg:stdgo.Ref<Config>):Void {
            _cfg.sizes = _sizes;
        };
    }
/**
    // TestIndexRepresentability tests that constant index operands must
    // be representable as int even if they already have a type that can
    // represent larger values.
**/
function testIndexRepresentability(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        _testFiles(_t, (new stdgo.Slice<stdgo.GoString>(1, 1, ("index.go" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(1, 1, (("package index; var s []byte; var _ = s[int64 /* ERRORx \"int64\\\\(1\\\\) << 40 \\\\(.*\\\\) overflows int\" */ (1) << 40]" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>), false, _withSizes(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.go.types.Types.StdSizes((4i64 : stdgo.GoInt64), (4i64 : stdgo.GoInt64)) : stdgo.go.types.Types.StdSizes)) : stdgo.Ref<stdgo.go.types.Types.StdSizes>))));
    }
function testIssue47243_TypedRHS(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        _testFiles(_t, (new stdgo.Slice<stdgo.GoString>(1, 1, ("p.go" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(1, 1, (("package issue47243; var a uint64; var _ = a << uint64(4294967296)" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>), false, _withSizes(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.go.types.Types.StdSizes((4i64 : stdgo.GoInt64), (4i64 : stdgo.GoInt64)) : stdgo.go.types.Types.StdSizes)) : stdgo.Ref<stdgo.go.types.Types.StdSizes>))));
    }
function testCheck(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        defPredeclaredTestFuncs();
        _testDirFiles(_t, ("../../internal/types/testdata/check" : stdgo.GoString), false);
    }
function testSpec(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        _testDirFiles(_t, ("../../internal/types/testdata/spec" : stdgo.GoString), false);
    }
function testExamples(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        _testDirFiles(_t, ("../../internal/types/testdata/examples" : stdgo.GoString), false);
    }
function testFixedbugs(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        _testDirFiles(_t, ("../../internal/types/testdata/fixedbugs" : stdgo.GoString), false);
    }
function testLocal(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        _testDirFiles(_t, ("testdata/local" : stdgo.GoString), false);
    }
function _testDirFiles(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _dir:stdgo.GoString, _manual:Bool):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        _dir = stdgo.path.filepath.Filepath.fromSlash(_dir?.__copy__())?.__copy__();
        var __tmp__ = stdgo.os.Os.readDir(_dir?.__copy__()), _fis:stdgo.Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        for (__72 => _fi in _fis) {
            var _path:stdgo.GoString = stdgo.path.filepath.Filepath.join(_dir?.__copy__(), _fi.name()?.__copy__())?.__copy__();
            if (_fi.isDir()) {
                _testDir(_t, _path?.__copy__(), _manual);
            } else {
                _t.run(stdgo.path.filepath.Filepath.base(_path?.__copy__())?.__copy__(), function(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
                    _testPkg(_t, (new stdgo.Slice<stdgo.GoString>(1, 1, _path?.__copy__()) : stdgo.Slice<stdgo.GoString>), _manual);
                });
            };
        };
    }
function _testDir(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _dir:stdgo.GoString, _manual:Bool):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        var __tmp__ = stdgo.os.Os.readDir(_dir?.__copy__()), _fis:stdgo.Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        var _filenames:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__72 => _fi in _fis) {
            _filenames = (_filenames.__append__(stdgo.path.filepath.Filepath.join(_dir?.__copy__(), _fi.name()?.__copy__())?.__copy__()));
        };
        _t.run(stdgo.path.filepath.Filepath.base(_dir?.__copy__())?.__copy__(), function(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
            _testPkg(_t, _filenames, _manual);
        });
    }
function _testPkg(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _filenames:stdgo.Slice<stdgo.GoString>, _manual:Bool):Void {
        var _srcs = new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((_filenames.length : stdgo.GoInt).toBasic(), 0);
        for (_i => _filename in _filenames) {
            var __tmp__ = stdgo.os.Os.readFile(_filename?.__copy__()), _src:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("could not read %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_err));
            };
            _srcs[(_i : stdgo.GoInt)] = _src;
        };
        _testFiles(_t, _filenames, _srcs, _manual);
    }
/**
    // commentMap collects all comments in the given src with comment text
    // that matches the supplied regular expression rx and returns them as
    // []comment lists in a map indexed by line number. The comment text is
    // the comment with any comment markers ("//", "/|*", or "*|/") stripped.
    // The position for each comment is the position of the token immediately
    // preceding the comment, with all comments that are on the same line
    // collected in a slice, in source order. If there is no preceding token
    // (the matching comment appears at the beginning of the file), then the
    // recorded position is unknown (line, col = 0, 0).
    // If there are no matching comments, the result is nil.
**/
function _commentMap(_src:stdgo.Slice<stdgo.GoByte>, _rx:stdgo.Ref<stdgo.regexp.Regexp.Regexp>):stdgo.GoMap<stdgo.GoInt, stdgo.Slice<T_comment>> {
        var _res:stdgo.GoMap<stdgo.GoInt, stdgo.Slice<T_comment>> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.Slice<stdgo.go.types_test.Types_test.T_comment>>);
        var _fset = stdgo.go.token.Token.newFileSet();
        var _file = _fset.addFile(stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt), (_src.length));
        var _s:stdgo.go.scanner.Scanner.Scanner = ({} : stdgo.go.scanner.Scanner.Scanner);
        _s.init(_file, _src, null, (1u32 : stdgo.go.scanner.Scanner.Mode));
        var _prev:stdgo.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo.go.token.Token.Pos);
        while (true) {
            var __tmp__ = _s.scan(), _pos:stdgo.go.token.Token.Pos = __tmp__._0, _tok:stdgo.go.token.Token.Token = __tmp__._1, _lit:stdgo.GoString = __tmp__._2;
            {
                var __continue__ = false;
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _tok;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (1 : stdgo.go.token.Token.Token)))) {
                            return _res;
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.go.token.Token.Token)))) {
                            if (_lit[(1 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8))) {
                                _lit = (_lit.__slice__(0, (_lit.length) - (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            _lit = (_lit.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            if (_rx.matchString(_lit?.__copy__())) {
                                var _p:stdgo.go.token.Token.Position = _fset.position(_prev)?.__copy__();
                                var _err:stdgo.go.types_test.Types_test.T_comment = (new stdgo.go.types_test.Types_test.T_comment(_p.line, _p.column, _lit?.__copy__()) : stdgo.go.types_test.Types_test.T_comment);
                                if (_res == null) {
                                    _res = ({
                                        final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo.go.types_test.Types_test.T_comment>>();
                                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.go.types_test.Types_test.T_comment>);
                                        @:mergeBlock {};
                                        x;
                                    } : stdgo.GoMap<stdgo.GoInt, stdgo.Slice<stdgo.go.types_test.Types_test.T_comment>>);
                                };
                                _res[_p.line] = ((_res[_p.line] ?? (null : stdgo.Slice<stdgo.go.types_test.Types_test.T_comment>)).__append__(_err?.__copy__()));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (57 : stdgo.go.token.Token.Token)))) {
                            if (_lit == (("\n" : stdgo.GoString))) {
                                {
                                    __continue__ = true;
                                    break;
                                };
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
                if (__continue__) continue;
            };
        };
    }
function testCommentMap(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _m = _commentMap((("/* ERROR \"0:0\" */ /* ERROR \"0:0\" */ // ERROR \"0:0\"\n// ERROR \"0:0\"\nx /* ERROR \"3:1\" */                // ignore automatically inserted semicolon here\n/* ERROR \"3:1\" */                  // position of x on previous line\n   x /* ERROR \"5:4\" */ ;           // do not ignore this semicolon\n/* ERROR \"5:24\" */                 // position of ; on previous line\n\tpackage /* ERROR \"7:2\" */  // indented with tab\n        import  /* ERROR \"8:9\" */  // indented with blanks\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.regexp.Regexp.mustCompile(("^ ERROR " : stdgo.GoString)));
        var _found:stdgo.GoInt = (0 : stdgo.GoInt);
        for (_line => _errlist in _m) {
            for (__64 => _err in _errlist) {
                if (_err._line != (_line)) {
                    _t.errorf(("%v: got map line %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err._line), stdgo.Go.toInterface(_line));
                    continue;
                };
                var _got:stdgo.GoString = stdgo.strings.Strings.trimSpace((_err._text.__slice__(((" ERROR " : stdgo.GoString).length)) : stdgo.GoString)?.__copy__())?.__copy__();
                var _want:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("\"%d:%d\"" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err._col))?.__copy__();
                if (_got != (_want)) {
                    _t.errorf(("%v: got msg %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    continue;
                };
                _found++;
            };
        };
        var _want:stdgo.GoInt = stdgo.strings.Strings.count(("/* ERROR \"0:0\" */ /* ERROR \"0:0\" */ // ERROR \"0:0\"\n// ERROR \"0:0\"\nx /* ERROR \"3:1\" */                // ignore automatically inserted semicolon here\n/* ERROR \"3:1\" */                  // position of x on previous line\n   x /* ERROR \"5:4\" */ ;           // do not ignore this semicolon\n/* ERROR \"5:24\" */                 // position of ; on previous line\n\tpackage /* ERROR \"7:2\" */  // indented with tab\n        import  /* ERROR \"8:9\" */  // indented with blanks\n" : stdgo.GoString), (" ERROR " : stdgo.GoString));
        if (_found != (_want)) {
            _t.errorf(("commentMap got %d errors; want %d" : stdgo.GoString), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_want));
        };
    }
/**
    // TestErrorCalls makes sure that check.errorf calls have at least
    // errorfMinArgCount arguments (otherwise we should use check.error)
    // and use balanced parentheses/brackets.
**/
function testErrorCalls(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = _pkgFiles(_fset, ("." : stdgo.GoString)), _files:stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        for (__72 => _file in _files) {
            stdgo.go.ast.Ast.inspect(stdgo.Go.asInterface(_file), function(_n:stdgo.go.ast.Ast.Node):Bool {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>)) : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>), _1 : false };
                }, _call = __tmp__._0, __73 = __tmp__._1;
                if (_call == null || (_call : Dynamic).__nil__) {
                    return true;
                };
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_call.fun) : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>)) : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>), _1 : false };
                }, _selx = __tmp__._0, __74 = __tmp__._1;
                if (_selx == null || (_selx : Dynamic).__nil__) {
                    return true;
                };
                if (!(_isName(_selx.x, ("check" : stdgo.GoString)) && _isName(stdgo.Go.asInterface(_selx.sel), ("errorf" : stdgo.GoString)))) {
                    return true;
                };
                {
                    var _n:stdgo.GoInt = (_call.args.length);
                    if (_n < (4 : stdgo.GoInt)) {
                        _t.errorf(("%s: got %d arguments, want at least %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(_call.pos()))), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((4 : stdgo.GoInt)));
                        return false;
                    };
                };
                var _format:stdgo.go.ast.Ast.Expr = _call.args[(2 : stdgo.GoInt)];
                stdgo.go.ast.Ast.inspect(_format, function(_n:stdgo.go.ast.Ast.Node):Bool {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo.go.ast.Ast.BasicLit>)) : stdgo.Ref<stdgo.go.ast.Ast.BasicLit>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.BasicLit>), _1 : false };
                        }, _lit = __tmp__._0, __91 = __tmp__._1;
                        if (((_lit != null) && ((_lit : Dynamic).__nil__ == null || !(_lit : Dynamic).__nil__)) && (_lit.kind == (9 : stdgo.go.token.Token.Token))) {
                            {
                                var __tmp__ = stdgo.strconv.Strconv.unquote(_lit.value?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err == null) {
                                    if (!_balancedParentheses(_s?.__copy__())) {
                                        _t.errorf(("%s: unbalanced parentheses/brackets" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(_lit.valuePos))));
                                    };
                                };
                            };
                            return false;
                        };
                    };
                    return true;
                });
                return false;
            });
        };
    }
function _isName(_n:stdgo.go.ast.Ast.Node, _name:stdgo.GoString):Bool {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo.go.ast.Ast.Ident>)) : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : false };
            }, _n = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _n.name == (_name);
            };
        };
        return false;
    }
function _balancedParentheses(_s:stdgo.GoString):Bool {
        var _stack:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        for (__64 => _ch in _s) {
            var _open:stdgo.GoByte = (0 : stdgo.GoUInt8);
            {
                final __value__ = _ch;
                if (__value__ == ((40 : stdgo.GoInt32)) || __value__ == ((91 : stdgo.GoInt32)) || __value__ == ((123 : stdgo.GoInt32))) {
                    _stack = (_stack.__append__((_ch : stdgo.GoByte)));
                    continue;
                } else if (__value__ == ((41 : stdgo.GoInt32))) {
                    _open = (40 : stdgo.GoUInt8);
                } else if (__value__ == ((93 : stdgo.GoInt32))) {
                    _open = (91 : stdgo.GoUInt8);
                } else if (__value__ == ((125 : stdgo.GoInt32))) {
                    _open = (123 : stdgo.GoUInt8);
                } else {
                    continue;
                };
            };
            var _top:stdgo.GoInt = (_stack.length) - (1 : stdgo.GoInt);
            if ((_top < (0 : stdgo.GoInt)) || (_stack[(_top : stdgo.GoInt)] != _open)) {
                return false;
            };
            _stack = (_stack.__slice__(0, _top) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_stack.length) == ((0 : stdgo.GoInt));
    }
function _testEval(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _fset:stdgo.Ref<stdgo.go.token.Token.FileSet>, _pkg:stdgo.Ref<Package>, _pos:stdgo.go.token.Token.Pos, _expr:stdgo.GoString, _typ:Type_, _typStr:stdgo.GoString, _valStr:stdgo.GoString):Void {
        var __tmp__ = eval(_fset, _pkg, _pos, _expr?.__copy__()), _gotTv:stdgo.go.types.Types.TypeAndValue = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("Eval(%q) failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_expr), stdgo.Go.toInterface(_err));
            return;
        };
        if (_gotTv.type == null) {
            _t.errorf(("Eval(%q) got nil type but no error" : stdgo.GoString), stdgo.Go.toInterface(_expr));
            return;
        };
        if (_typ != null) {
            if (!identical(_gotTv.type, _typ)) {
                _t.errorf(("Eval(%q) got type %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_expr), stdgo.Go.toInterface(_gotTv.type), stdgo.Go.toInterface(_typ));
                return;
            };
        } else {
            var _gotStr:stdgo.GoString = (_gotTv.type.string() : stdgo.GoString)?.__copy__();
            if (_gotStr != (_typStr)) {
                _t.errorf(("Eval(%q) got type %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_expr), stdgo.Go.toInterface(_gotStr), stdgo.Go.toInterface(_typStr));
                return;
            };
        };
        var _gotStr:stdgo.GoString = stdgo.Go.str()?.__copy__();
        if (_gotTv.value != null) {
            _gotStr = _gotTv.value.exactString()?.__copy__();
        };
        if (_gotStr != (_valStr)) {
            _t.errorf(("Eval(%q) got value %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_expr), stdgo.Go.toInterface(_gotStr), stdgo.Go.toInterface(_valStr));
        };
    }
function testEvalBasic(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        for (__64 => _typ in (typ.__slice__((1 : stdgo.go.types.Types.BasicKind), (18 : stdgo.go.types.Types.BasicKind)) : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Basic>>)) {
            _testEval(_t, _fset, null, _nopos, _typ.name()?.__copy__(), stdgo.Go.asInterface(_typ), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
        };
    }
function testEvalComposite(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        for (__64 => _test in _independentTestTypes) {
            _testEval(_t, _fset, null, _nopos, _test._src?.__copy__(), (null : stdgo.go.types.Types.Type_), _test._str?.__copy__(), stdgo.Go.str()?.__copy__());
        };
    }
function testEvalArith(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _tests:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(8, 8, ("true" : stdgo.GoString), ("false == false" : stdgo.GoString), ("12345678 + 87654321 == 99999999" : stdgo.GoString), ("10 * 20 == 200" : stdgo.GoString), ("(1<<500)*2 >> 100 == 2<<400" : stdgo.GoString), ("\"foo\" + \"bar\" == \"foobar\"" : stdgo.GoString), ("\"abc\" <= \"bcd\"" : stdgo.GoString), ("len([10]struct{}{}) == 2*5" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _fset = stdgo.go.token.Token.newFileSet();
        for (__64 => _test in _tests) {
            _testEval(_t, _fset, null, _nopos, _test?.__copy__(), stdgo.Go.asInterface(typ[((19 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]), stdgo.Go.str()?.__copy__(), ("true" : stdgo.GoString));
        };
    }
function testEvalPos(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        var _sources:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(4, 4, ("\n\t\tpackage p\n\t\timport \"fmt\"\n\t\timport m \"math\"\n\t\tconst c = 3.0\n\t\ttype T []int\n\t\tfunc f(a int, s string) float64 {\n\t\t\tfmt.Println(\"calling f\")\n\t\t\t_ = m.Pi // use package math\n\t\t\tconst d int = c + 1\n\t\t\tvar x int\n\t\t\tx = a + len(s)\n\t\t\treturn float64(x)\n\t\t\t/* true => true, untyped bool */\n\t\t\t/* fmt.Println => , func(a ...any) (n int, err error) */\n\t\t\t/* c => 3, untyped float */\n\t\t\t/* T => , p.T */\n\t\t\t/* a => , int */\n\t\t\t/* s => , string */\n\t\t\t/* d => 4, int */\n\t\t\t/* x => , int */\n\t\t\t/* d/c => 1, int */\n\t\t\t/* c/2 => 3/2, untyped float */\n\t\t\t/* m.Pi < m.E => false, untyped bool */\n\t\t}\n\t\t" : stdgo.GoString), ("\n\t\tpackage p\n\t\t/* c => 3, untyped float */\n\t\ttype T1 /* T1 => , p.T1 */ struct {}\n\t\tvar v1 /* v1 => , int */ = 42\n\t\tfunc /* f1 => , func(v1 float64) */ f1(v1 float64) {\n\t\t\t/* f1 => , func(v1 float64) */\n\t\t\t/* v1 => , float64 */\n\t\t\tvar c /* c => 3, untyped float */ = \"foo\" /* c => , string */\n\t\t\t{\n\t\t\t\tvar c struct {\n\t\t\t\t\tc /* c => , string */ int\n\t\t\t\t}\n\t\t\t\t/* c => , struct{c int} */\n\t\t\t\t_ = c\n\t\t\t}\n\t\t\t_ = func(a, b, c int) /* c => , string */ {\n\t\t\t\t/* c => , int */\n\t\t\t}\n\t\t\t_ = c\n\t\t\ttype FT /* FT => , p.FT */ interface{}\n\t\t}\n\t\t" : stdgo.GoString), ("\n\t\tpackage p\n\t\t/* T => , p.T */\n\t\t" : stdgo.GoString), ("\n\t\tpackage p\n\t\timport \"io\"\n\t\ttype R = io.Reader\n\t\tfunc _() {\n\t\t\t/* interface{R}.Read => , func(_ interface{io.Reader}, p []byte) (n int, err error) */\n\t\t\t_ = func() {\n\t\t\t\t/* interface{io.Writer}.Write => , func(_ interface{io.Writer}, p []byte) (n int, err error) */\n\t\t\t\ttype io interface {} // must not shadow io in line above\n\t\t\t}\n\t\t\ttype R interface {} // must not shadow R in first line of this function body\n\t\t}\n\t\t" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _fset = stdgo.go.token.Token.newFileSet();
        var _files:stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>);
        for (_i => _src in _sources) {
            var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("p" : stdgo.GoString), stdgo.Go.toInterface(_src), (4u32 : stdgo.go.parser.Parser.Mode)), _file:stdgo.Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("could not parse file %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            _files = (_files.__append__(_file));
        };
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.go.importer.Importer.default_() } : stdgo.go.types.Types.Config);
        var __tmp__ = _conf.check(("p" : stdgo.GoString), _fset, _files, null), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        for (__80 => _file in _files) {
            for (__81 => _group in _file.comments) {
                for (__82 => T_comment_static_extension in _group.list) {
                    var _s:stdgo.GoString = T_comment_static_extension.text?.__copy__();
                    if (((_s.length >= (4 : stdgo.GoInt)) && ((_s.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString) == ("/*" : stdgo.GoString))) && ((_s.__slice__((_s.length) - (2 : stdgo.GoInt)) : stdgo.GoString) == ("*/" : stdgo.GoString))) {
                        var __tmp__ = _split((_s.__slice__((2 : stdgo.GoInt), (_s.length) - (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (", " : stdgo.GoString)), _str:stdgo.GoString = __tmp__._0, _typ:stdgo.GoString = __tmp__._1;
                        var __tmp__ = _split(_str?.__copy__(), ("=>" : stdgo.GoString)), _str:stdgo.GoString = __tmp__._0, _val:stdgo.GoString = __tmp__._1;
                        _testEval(_t, _fset, _pkg, T_comment_static_extension.pos(), _str?.__copy__(), (null : stdgo.go.types.Types.Type_), _typ?.__copy__(), _val?.__copy__());
                    };
                };
            };
        };
    }
/**
    // split splits string s at the first occurrence of s, trimming spaces.
**/
function _split(_s:stdgo.GoString, _sep:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var __tmp__ = stdgo.strings.Strings.cut(_s?.__copy__(), _sep?.__copy__()), _before:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, __64:Bool = __tmp__._2;
        return { _0 : stdgo.strings.Strings.trimSpace(_before?.__copy__())?.__copy__(), _1 : stdgo.strings.Strings.trimSpace(_after?.__copy__())?.__copy__() };
    }
function testCheckExpr(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("p" : stdgo.GoString), stdgo.Go.toInterface(("\npackage p\n\nimport \"fmt\"\n\nconst c = 3.0\ntype T []int\ntype S struct{ X int }\n\nfunc f(a int, s string) S {\n\t/* fmt.Println => func fmt.Println(a ...any) (n int, err error) */\n\t/* fmt.Stringer.String => func (fmt.Stringer).String() string */\n\tfmt.Println(\"calling f\")\n\n\tvar fmt struct{ Println int }\n\t/* fmt => var fmt struct{Println int} */\n\t/* fmt.Println => field Println int */\n\t/* f(1, \"\").X => field X int */\n\tfmt.Println = 1\n\n\t/* append => builtin append */\n\n\t/* new(S).X => field X int */\n\n\treturn S{}\n}" : stdgo.GoString)), (4u32 : stdgo.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.go.importer.Importer.default_() } : stdgo.go.types.Types.Config);
        var __tmp__ = _conf.check(("p" : stdgo.GoString), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), null), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _checkExpr:(stdgo.go.token.Token.Pos, stdgo.GoString) -> { var _0 : stdgo.go.types.Types.Object; var _1 : stdgo.Error; } = function(_pos:stdgo.go.token.Token.Pos, _str:stdgo.GoString):{ var _0 : Object; var _1 : stdgo.Error; } {
            var __tmp__ = stdgo.go.parser.Parser.parseExprFrom(_fset, ("eval" : stdgo.GoString), stdgo.Go.toInterface(_str), (0u32 : stdgo.go.parser.Parser.Mode)), _expr:stdgo.go.ast.Ast.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.go.types.Types.Object), _1 : _err };
            };
            var _info = (stdgo.Go.setRef(({ uses : ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>), selections : ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>, stdgo.Ref<stdgo.go.types.Types.Selection>>();
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>, stdgo.Ref<stdgo.go.types.Types.Selection>>) } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>);
            {
                var _err:stdgo.Error = checkExpr(_fset, _pkg, _pos, _expr, _info);
                if (_err != null) {
                    return { _0 : (null : stdgo.go.types.Types.Object), _1 : stdgo.fmt.Fmt.errorf(("CheckExpr(%q) failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_err)) };
                };
            };
            {
                final __type__ = _expr;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.Ident>))) {
                    var _expr:stdgo.Ref<stdgo.go.ast.Ast.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = (_info.uses != null && _info.uses.exists(_expr) ? { _0 : _info.uses[_expr], _1 : true } : { _0 : (null : stdgo.go.types.Types.Object), _1 : false }), _obj:stdgo.go.types.Types.Object = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            return { _0 : _obj, _1 : (null : stdgo.Error) };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>))) {
                    var _expr:stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = (_info.selections != null && _info.selections.exists(_expr) ? { _0 : _info.selections[_expr], _1 : true } : { _0 : (null : stdgo.Ref<stdgo.go.types.Types.Selection>), _1 : false }), _sel:stdgo.Ref<stdgo.go.types.Types.Selection> = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            return { _0 : _sel.obj(), _1 : (null : stdgo.Error) };
                        };
                    };
                    {
                        var __tmp__ = (_info.uses != null && _info.uses.exists(_expr.sel) ? { _0 : _info.uses[_expr.sel], _1 : true } : { _0 : (null : stdgo.go.types.Types.Object), _1 : false }), _obj:stdgo.go.types.Types.Object = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            return { _0 : _obj, _1 : (null : stdgo.Error) };
                        };
                    };
                };
            };
            return { _0 : (null : stdgo.go.types.Types.Object), _1 : stdgo.fmt.Fmt.errorf(("no object for %s" : stdgo.GoString), stdgo.Go.toInterface(_str)) };
        };
        for (__80 => _group in _f.comments) {
            for (__81 => T_comment_static_extension in _group.list) {
                var _s:stdgo.GoString = T_comment_static_extension.text?.__copy__();
                if (((_s.length >= (4 : stdgo.GoInt)) && stdgo.strings.Strings.hasPrefix(_s?.__copy__(), ("/*" : stdgo.GoString))) && stdgo.strings.Strings.hasSuffix(_s?.__copy__(), ("*/" : stdgo.GoString))) {
                    var _pos:stdgo.go.token.Token.Pos = T_comment_static_extension.pos();
                    var __tmp__ = _split((_s.__slice__((2 : stdgo.GoInt), (_s.length) - (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("=>" : stdgo.GoString)), _expr:stdgo.GoString = __tmp__._0, _wantObj:stdgo.GoString = __tmp__._1;
                    var __tmp__ = _checkExpr(_pos, _expr?.__copy__()), _obj:stdgo.go.types.Types.Object = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.errorf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(_pos))), stdgo.Go.toInterface(_err));
                        continue;
                    };
                    if ((_obj.string() : stdgo.GoString) != (_wantObj)) {
                        _t.errorf(("%s: checkExpr(%s) = %s, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(_pos))), stdgo.Go.toInterface(_expr), stdgo.Go.toInterface(_obj), stdgo.Go.toInterface(_wantObj));
                    };
                };
            };
        };
    }
function testExprString(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__64 => _test in _testExprs) {
            var __tmp__ = stdgo.go.parser.Parser.parseExpr(_test._src?.__copy__()), _x:stdgo.go.ast.Ast.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(_err));
                continue;
            };
            {
                var _got:stdgo.GoString = exprString(_x)?.__copy__();
                if (_got != (_test._str)) {
                    _t.errorf(("%s: got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._str));
                };
            };
        };
    }
/**
    // TestGenerate verifies that generated files in go/types match their types2
    // counterpart. If -write is set, this test actually writes the expected
    // content to go/types; otherwise, it just compares with the existing content.
**/
function testGenerate(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _write:Bool = _filesToWrite.value != (stdgo.Go.str());
        var _files:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        if ((_filesToWrite.value != stdgo.Go.str()) && (_filesToWrite.value != ("all" : stdgo.GoString))) {
            _files = stdgo.strings.Strings.split(_filesToWrite.value?.__copy__(), ("," : stdgo.GoString));
        } else {
            for (_file => _ in _filemap) {
                _files = (_files.__append__(_file?.__copy__()));
            };
        };
        for (__64 => _filename in _files) {
            _generate(_t, _filename?.__copy__(), _write);
        };
    }
function _generate(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _filename:stdgo.GoString, _write:Bool):Void {
        var _srcFilename:stdgo.GoString = stdgo.path.filepath.Filepath.fromSlash(stdgo.runtime.Runtime.goroot() + ("/src/cmd/compile/internal/types2/" : stdgo.GoString)?.__copy__() + _filename?.__copy__()?.__copy__())?.__copy__();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, _srcFilename?.__copy__(), (null : stdgo.AnyInterface), (4u32 : stdgo.go.parser.Parser.Mode)), _file:stdgo.Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _file.name.name = stdgo.strings.Strings.replaceAll(_file.name.name?.__copy__(), ("types2" : stdgo.GoString), ("types" : stdgo.GoString))?.__copy__();
        {
            var _action:stdgo.go.types_test.Types_test.T_action = (_filemap[_filename] ?? (null : stdgo.go.types_test.Types_test.T_action));
            if (_action != null) {
                _action(_file);
            };
        };
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _buf.writeString(("// Code generated by \"go test -run=Generate -write=all\"; DO NOT EDIT.\n\n" : stdgo.GoString));
        {
            var _err:stdgo.Error = stdgo.go.format.Format.node(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_file)));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _generatedContent = _buf.bytes();
        var _dstFilename:stdgo.GoString = stdgo.path.filepath.Filepath.fromSlash(stdgo.runtime.Runtime.goroot() + ("/src/go/types/" : stdgo.GoString)?.__copy__() + _filename?.__copy__()?.__copy__())?.__copy__();
        var __tmp__ = stdgo.os.Os.readFile(_dstFilename?.__copy__()), _onDiskContent:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("reading %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_err));
        };
        {
            var _d = stdgo.internal.diff.Diff.diff(_filename + (" (on disk)" : stdgo.GoString)?.__copy__()?.__copy__(), _onDiskContent, _filename + (" (generated)" : stdgo.GoString)?.__copy__()?.__copy__(), _generatedContent);
            if (_d != null) {
                if (_write) {
                    _t.logf(("applying change:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_d));
                    {
                        var _err:stdgo.Error = stdgo.os.Os.writeFile(_dstFilename?.__copy__(), _generatedContent, (420u32 : stdgo.io.fs.Fs.FileMode));
                        if (_err != null) {
                            _t.fatalf(("writing %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_err));
                        };
                    };
                } else {
                    _t.errorf(("generated file content does not match:\n%s" : stdgo.GoString), stdgo.Go.toInterface((_d : stdgo.GoString)));
                };
            };
        };
    }
/**
    // renameIdent renames an identifier.
    // Note: This doesn't change the use of the identifier in comments.
**/
function _renameIdent(_f:stdgo.Ref<stdgo.go.ast.Ast.File>, _from:stdgo.GoString, _to:stdgo.GoString):Void {
        stdgo.go.ast.Ast.inspect(stdgo.Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
            {
                final __type__ = _n;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.Ident>))) {
                    var _n:stdgo.Ref<stdgo.go.ast.Ast.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                    if (_n.name == (_from)) {
                        _n.name = _to?.__copy__();
                    };
                    return false;
                };
            };
            return true;
        });
    }
/**
    // renameImportPath renames an import path.
**/
function _renameImportPath(_f:stdgo.Ref<stdgo.go.ast.Ast.File>, _from:stdgo.GoString, _to:stdgo.GoString):Void {
        stdgo.go.ast.Ast.inspect(stdgo.Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
            {
                final __type__ = _n;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.ImportSpec>))) {
                    var _n:stdgo.Ref<stdgo.go.ast.Ast.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__.__underlying__().value;
                    if ((_n.path.kind == (9 : stdgo.go.token.Token.Token)) && (_n.path.value == _from)) {
                        _n.path.value = _to?.__copy__();
                        return false;
                    };
                };
            };
            return true;
        });
    }
/**
    // fixTokenPos changes imports of "cmd/compile/internal/syntax" to "go/token",
    // uses of syntax.Pos to token.Pos, and calls to x.IsKnown() to x.IsValid().
**/
function _fixTokenPos(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
        stdgo.go.ast.Ast.inspect(stdgo.Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
            {
                final __type__ = _n;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.ImportSpec>))) {
                    var _n:stdgo.Ref<stdgo.go.ast.Ast.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__.__underlying__().value;
                    if ((_n.path.kind == (9 : stdgo.go.token.Token.Token)) && (_n.path.value == ("\"cmd/compile/internal/syntax\"" : stdgo.GoString))) {
                        _n.path.value = ("\"go/token\"" : stdgo.GoString);
                        return false;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>))) {
                    var _n:stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n.x) : stdgo.Ref<stdgo.go.ast.Ast.Ident>)) : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : false };
                        }, _x = __tmp__._0, __64 = __tmp__._1;
                        if ((((_x != null) && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__)) && (_x.name == ("syntax" : stdgo.GoString))) && (_n.sel.name == ("Pos" : stdgo.GoString))) {
                            _x.name = ("token" : stdgo.GoString);
                            return false;
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>))) {
                    var _n:stdgo.Ref<stdgo.go.ast.Ast.CallExpr> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n.fun) : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>)) : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>), _1 : false };
                        }, _fun = __tmp__._0, __65 = __tmp__._1;
                        if ((((_fun != null) && ((_fun : Dynamic).__nil__ == null || !(_fun : Dynamic).__nil__)) && (_fun.sel.name == ("IsKnown" : stdgo.GoString))) && (_n.args.length == (0 : stdgo.GoInt))) {
                            _fun.sel.name = ("IsValid" : stdgo.GoString);
                            return false;
                        };
                    };
                };
            };
            return true;
        });
    }
/**
    // fixInferSig updates the Checker.infer signature to use a positioner instead of a token.Position
    // as first argument, renames the argument from "pos" to "posn", and updates a few internal uses of
    // "pos" to "posn" and "posn.Pos()" respectively.
**/
function _fixInferSig(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
        stdgo.go.ast.Ast.inspect(stdgo.Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
            {
                final __type__ = _n;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.FuncDecl>))) {
                    var _n:stdgo.Ref<stdgo.go.ast.Ast.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.FuncDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.FuncDecl>) : __type__.__underlying__().value;
                    if (((_n.name.name == ("infer" : stdgo.GoString)) || (_n.name.name == ("infer1" : stdgo.GoString))) || (_n.name.name == ("infer2" : stdgo.GoString))) {
                        var _par = _n.type.params.list[(0 : stdgo.GoInt)];
                        if ((_par.names.length == (1 : stdgo.GoInt)) && (_par.names[(0 : stdgo.GoInt)].name == ("pos" : stdgo.GoString))) {
                            _par.names[(0 : stdgo.GoInt)] = _newIdent(_par.names[(0 : stdgo.GoInt)].pos(), ("posn" : stdgo.GoString));
                            _par.type = stdgo.Go.asInterface(_newIdent(_par.type.pos(), ("positioner" : stdgo.GoString)));
                            return true;
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>))) {
                    var _n:stdgo.Ref<stdgo.go.ast.Ast.CallExpr> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n.fun) : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>)) : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>), _1 : false };
                        }, _selx = __tmp__._0, __64 = __tmp__._1;
                        if (_selx != null && ((_selx : Dynamic).__nil__ == null || !(_selx : Dynamic).__nil__)) {
                            {
                                final __value__ = _selx.sel.name;
                                if (__value__ == (("renameTParams" : stdgo.GoString))) {
                                    {
                                        var __tmp__ = try {
                                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n.args[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo.go.ast.Ast.Ident>)) : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : true };
                                        } catch(_) {
                                            { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : false };
                                        }, _ident = __tmp__._0, __65 = __tmp__._1;
                                        if (((_ident != null) && ((_ident : Dynamic).__nil__ == null || !(_ident : Dynamic).__nil__)) && (_ident.name == ("pos" : stdgo.GoString))) {
                                            var _pos:stdgo.go.token.Token.Pos = _n.args[(0 : stdgo.GoInt)].pos();
                                            var _fun = (stdgo.Go.setRef(({ x : stdgo.Go.asInterface(_newIdent(_pos, ("posn" : stdgo.GoString))), sel : _newIdent(_pos, ("Pos" : stdgo.GoString)) } : stdgo.go.ast.Ast.SelectorExpr)) : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>);
                                            var _arg = (stdgo.Go.setRef(({ fun : stdgo.Go.asInterface(_fun), lparen : _pos, args : (null : stdgo.Slice<stdgo.go.ast.Ast.Expr>), ellipsis : (0 : stdgo.go.token.Token.Pos), rparen : _pos } : stdgo.go.ast.Ast.CallExpr)) : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>);
                                            _n.args[(0 : stdgo.GoInt)] = stdgo.Go.asInterface(_arg);
                                            return false;
                                        };
                                    };
                                } else if (__value__ == (("errorf" : stdgo.GoString)) || __value__ == (("infer1" : stdgo.GoString)) || __value__ == (("infer2" : stdgo.GoString))) {
                                    {
                                        var __tmp__ = try {
                                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n.args[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo.go.ast.Ast.Ident>)) : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : true };
                                        } catch(_) {
                                            { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : false };
                                        }, _ident = __tmp__._0, __66 = __tmp__._1;
                                        if (((_ident != null) && ((_ident : Dynamic).__nil__ == null || !(_ident : Dynamic).__nil__)) && (_ident.name == ("pos" : stdgo.GoString))) {
                                            var _pos:stdgo.go.token.Token.Pos = _n.args[(0 : stdgo.GoInt)].pos();
                                            var _arg = _newIdent(_pos, ("posn" : stdgo.GoString));
                                            _n.args[(0 : stdgo.GoInt)] = stdgo.Go.asInterface(_arg);
                                            return false;
                                        };
                                    };
                                } else if (__value__ == (("allowVersion" : stdgo.GoString))) {
                                    {
                                        var __tmp__ = try {
                                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n.args[(1 : stdgo.GoInt)]) : stdgo.Ref<stdgo.go.ast.Ast.Ident>)) : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : true };
                                        } catch(_) {
                                            { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : false };
                                        }, _ident = __tmp__._0, __67 = __tmp__._1;
                                        if (((_ident != null) && ((_ident : Dynamic).__nil__ == null || !(_ident : Dynamic).__nil__)) && (_ident.name == ("pos" : stdgo.GoString))) {
                                            var _pos:stdgo.go.token.Token.Pos = _n.args[(1 : stdgo.GoInt)].pos();
                                            var _arg = _newIdent(_pos, ("posn" : stdgo.GoString));
                                            _n.args[(1 : stdgo.GoInt)] = stdgo.Go.asInterface(_arg);
                                            return false;
                                        };
                                    };
                                };
                            };
                        };
                    };
                };
            };
            return true;
        });
    }
/**
    // fixErrErrorfCall updates calls of the form err.errorf(obj, ...) to err.errorf(obj.Pos(), ...).
**/
function _fixErrErrorfCall(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
        stdgo.go.ast.Ast.inspect(stdgo.Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
            {
                final __type__ = _n;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>))) {
                    var _n:stdgo.Ref<stdgo.go.ast.Ast.CallExpr> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n.fun) : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>)) : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>), _1 : false };
                        }, _selx = __tmp__._0, __64 = __tmp__._1;
                        if (_selx != null && ((_selx : Dynamic).__nil__ == null || !(_selx : Dynamic).__nil__)) {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_selx.x) : stdgo.Ref<stdgo.go.ast.Ast.Ident>)) : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : false };
                                }, _ident = __tmp__._0, __65 = __tmp__._1;
                                if (((_ident != null) && ((_ident : Dynamic).__nil__ == null || !(_ident : Dynamic).__nil__)) && (_ident.name == ("err" : stdgo.GoString))) {
                                    {
                                        final __value__ = _selx.sel.name;
                                        if (__value__ == (("errorf" : stdgo.GoString))) {
                                            {
                                                var __tmp__ = try {
                                                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n.args[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo.go.ast.Ast.Ident>)) : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : true };
                                                } catch(_) {
                                                    { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : false };
                                                }, _ident = __tmp__._0, __66 = __tmp__._1;
                                                if (((_ident != null) && ((_ident : Dynamic).__nil__ == null || !(_ident : Dynamic).__nil__)) && (_ident.name == ("obj" : stdgo.GoString))) {
                                                    var _pos:stdgo.go.token.Token.Pos = _n.args[(0 : stdgo.GoInt)].pos();
                                                    var _fun = (stdgo.Go.setRef(({ x : stdgo.Go.asInterface(_ident), sel : _newIdent(_pos, ("Pos" : stdgo.GoString)) } : stdgo.go.ast.Ast.SelectorExpr)) : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>);
                                                    var _arg = (stdgo.Go.setRef(({ fun : stdgo.Go.asInterface(_fun), lparen : _pos, args : (null : stdgo.Slice<stdgo.go.ast.Ast.Expr>), ellipsis : (0 : stdgo.go.token.Token.Pos), rparen : _pos } : stdgo.go.ast.Ast.CallExpr)) : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>);
                                                    _n.args[(0 : stdgo.GoInt)] = stdgo.Go.asInterface(_arg);
                                                    return false;
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                        };
                    };
                };
            };
            return true;
        });
    }
/**
    // fixCheckErrorfCall updates calls of the form check.errorf(pos, ...) to check.errorf(atPos(pos), ...).
**/
function _fixCheckErrorfCall(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
        stdgo.go.ast.Ast.inspect(stdgo.Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
            {
                final __type__ = _n;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>))) {
                    var _n:stdgo.Ref<stdgo.go.ast.Ast.CallExpr> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n.fun) : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>)) : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>), _1 : false };
                        }, _selx = __tmp__._0, __64 = __tmp__._1;
                        if (_selx != null && ((_selx : Dynamic).__nil__ == null || !(_selx : Dynamic).__nil__)) {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_selx.x) : stdgo.Ref<stdgo.go.ast.Ast.Ident>)) : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : false };
                                }, _ident = __tmp__._0, __65 = __tmp__._1;
                                if (((_ident != null) && ((_ident : Dynamic).__nil__ == null || !(_ident : Dynamic).__nil__)) && (_ident.name == ("check" : stdgo.GoString))) {
                                    {
                                        final __value__ = _selx.sel.name;
                                        if (__value__ == (("errorf" : stdgo.GoString))) {
                                            {
                                                var __tmp__ = try {
                                                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n.args[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo.go.ast.Ast.Ident>)) : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : true };
                                                } catch(_) {
                                                    { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : false };
                                                }, _ident = __tmp__._0, __66 = __tmp__._1;
                                                if (((_ident != null) && ((_ident : Dynamic).__nil__ == null || !(_ident : Dynamic).__nil__)) && (_ident.name == ("pos" : stdgo.GoString))) {
                                                    var _pos:stdgo.go.token.Token.Pos = _n.args[(0 : stdgo.GoInt)].pos();
                                                    var _fun = _newIdent(_pos, ("atPos" : stdgo.GoString));
                                                    var _arg = (stdgo.Go.setRef(({ fun : stdgo.Go.asInterface(_fun), lparen : _pos, args : (new stdgo.Slice<stdgo.go.ast.Ast.Expr>(1, 1, stdgo.Go.asInterface(_ident)) : stdgo.Slice<stdgo.go.ast.Ast.Expr>), ellipsis : (0 : stdgo.go.token.Token.Pos), rparen : _pos } : stdgo.go.ast.Ast.CallExpr)) : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>);
                                                    _n.args[(0 : stdgo.GoInt)] = stdgo.Go.asInterface(_arg);
                                                    return false;
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                        };
                    };
                };
            };
            return true;
        });
    }
/**
    // fixTraceSel renames uses of x.Trace to x.trace, where x for any x with a Trace field.
**/
function _fixTraceSel(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
        stdgo.go.ast.Ast.inspect(stdgo.Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
            {
                final __type__ = _n;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>))) {
                    var _n:stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__.__underlying__().value;
                    if (_n.sel.name == (("Trace" : stdgo.GoString))) {
                        _n.sel.name = ("_Trace" : stdgo.GoString);
                        return false;
                    };
                };
            };
            return true;
        });
    }
/**
    // fixGlobalTypVarDecl changes the global Typ variable from an array to a slice
    // (in types2 we use an array for efficiency, in go/types it's a slice and we
    // cannot change that).
**/
function _fixGlobalTypVarDecl(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
        stdgo.go.ast.Ast.inspect(stdgo.Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
            {
                final __type__ = _n;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.ValueSpec>))) {
                    var _n:stdgo.Ref<stdgo.go.ast.Ast.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.ValueSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.ValueSpec>) : __type__.__underlying__().value;
                    if (((_n.names.length == (1 : stdgo.GoInt)) && (_n.names[(0 : stdgo.GoInt)].name == ("Typ" : stdgo.GoString))) && (_n.values.length == (1 : stdgo.GoInt))) {
                        (stdgo.Go.typeAssert((stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_n.values[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo.go.ast.Ast.CompositeLit>)) : stdgo.Ref<stdgo.go.ast.Ast.CompositeLit>).type) : stdgo.Ref<stdgo.go.ast.Ast.ArrayType>)) : stdgo.Ref<stdgo.go.ast.Ast.ArrayType>).len = (null : stdgo.go.ast.Ast.Expr);
                        return false;
                    };
                };
            };
            return true;
        });
    }
/**
    // fixSprintf adds an extra nil argument for the *token.FileSet parameter in sprintf calls.
**/
function _fixSprintf(_f:stdgo.Ref<stdgo.go.ast.Ast.File>):Void {
        stdgo.go.ast.Ast.inspect(stdgo.Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
            {
                final __type__ = _n;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>))) {
                    var _n:stdgo.Ref<stdgo.go.ast.Ast.CallExpr> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n.fun) : stdgo.Ref<stdgo.go.ast.Ast.Ident>)) : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : false };
                        }, _fun = __tmp__._0, __64 = __tmp__._1;
                        if ((((_fun != null) && ((_fun : Dynamic).__nil__ == null || !(_fun : Dynamic).__nil__)) && (_fun.name == ("sprintf" : stdgo.GoString))) && (_n.args.length >= (4 : stdgo.GoInt))) {
                            _n.args = _insert(_n.args, (1 : stdgo.GoInt), stdgo.Go.asInterface(_newIdent(_n.args[(1 : stdgo.GoInt)].pos(), ("nil" : stdgo.GoString))));
                            return false;
                        };
                    };
                };
            };
            return true;
        });
    }
/**
    // newIdent returns a new identifier with the given position and name.
**/
function _newIdent(_pos:stdgo.go.token.Token.Pos, _name:stdgo.GoString):stdgo.Ref<stdgo.go.ast.Ast.Ident> {
        var _id = stdgo.go.ast.Ast.newIdent(_name?.__copy__());
        _id.namePos = _pos;
        return _id;
    }
/**
    // insert inserts x at list[at] and moves the remaining elements up.
**/
function _insert(_list:stdgo.Slice<stdgo.go.ast.Ast.Expr>, _at:stdgo.GoInt, _x:stdgo.go.ast.Ast.Expr):stdgo.Slice<stdgo.go.ast.Ast.Expr> {
        _list = (_list.__append__((null : stdgo.go.ast.Ast.Expr)));
        stdgo.Go.copySlice((_list.__slice__(_at + (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.go.ast.Ast.Expr>), (_list.__slice__(_at) : stdgo.Slice<stdgo.go.ast.Ast.Expr>));
        _list[(_at : stdgo.GoInt)] = _x;
        return _list;
    }
function testHilbert(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _src = _program(h.value, _out.value?.__copy__());
        if (_out.value != (stdgo.Go.str())) {
            stdgo.os.Os.writeFile(_out.value?.__copy__(), _src, (438u32 : stdgo.io.fs.Fs.FileMode));
            return;
        };
        defPredeclaredTestFuncs();
        _mustTypecheck((_src : stdgo.GoString)?.__copy__(), null, null);
    }
function _program(_n:stdgo.GoInt, _out:stdgo.GoString):stdgo.Slice<stdgo.GoByte> {
        var _g:T_gen = ({} : stdgo.go.types_test.Types_test.T_gen);
        _g._p(("// Code generated by: go test -run=Hilbert -H=%d -out=%q. DO NOT EDIT.\n\n// +build ignore\n\n// This program tests arbitrary precision constant arithmetic\n// by generating the constant elements of a Hilbert matrix H,\n// its inverse I, and the product P = H*I. The product should\n// be the identity matrix.\npackage main\n\nfunc main() {\n\tif !ok {\n\t\tprintProduct()\n\t\treturn\n\t}\n\tprintln(\"PASS\")\n}\n\n" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_out));
        _g._hilbert(_n);
        _g._inverse(_n);
        _g._product(_n);
        _g._verify(_n);
        _g._printProduct(_n);
        _g._binomials(((2 : stdgo.GoInt) * _n) - (1 : stdgo.GoInt));
        _g._factorials(((2 : stdgo.GoInt) * _n) - (1 : stdgo.GoInt));
        return _g.bytes();
    }
function testInstantiateEquality(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _emptySignature = newSignatureType(null, (null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.TypeParam>>), null, null, false);
        var _tests = (new stdgo.Slice<T__struct_28>(
11,
11,
({ _src : ("package basictype; type T[P any] int" : stdgo.GoString), _name1 : ("T" : stdgo.GoString), _targs1 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _name2 : ("T" : stdgo.GoString), _targs2 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _wantEqual : true } : T__struct_28),
({ _src : ("package differenttypeargs; type T[P any] int" : stdgo.GoString), _name1 : ("T" : stdgo.GoString), _targs1 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _name2 : ("T" : stdgo.GoString), _targs2 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _wantEqual : false } : T__struct_28),
({ _src : ("package typeslice; type T[P any] int" : stdgo.GoString), _name1 : ("T" : stdgo.GoString), _targs1 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(newSlice(stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])))) : stdgo.Slice<stdgo.go.types.Types.Type_>), _name2 : ("T" : stdgo.GoString), _targs2 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(newSlice(stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])))) : stdgo.Slice<stdgo.go.types.Types.Type_>), _wantEqual : true } : T__struct_28),
({ _src : ("package equivalentinterfaces; type T[P any] int" : stdgo.GoString), _name1 : ("T" : stdgo.GoString), _targs1 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(newInterfaceType((new stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>(1, 1, newFunc(_nopos, null, ("M" : stdgo.GoString), _emptySignature)) : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>), (null : stdgo.Slice<stdgo.go.types.Types.Type_>)))) : stdgo.Slice<stdgo.go.types.Types.Type_>), _name2 : ("T" : stdgo.GoString), _targs2 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(newInterfaceType((null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>), (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(newInterfaceType((new stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>(1, 1, newFunc(_nopos, null, ("M" : stdgo.GoString), _emptySignature)) : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>), (null : stdgo.Slice<stdgo.go.types.Types.Type_>)))) : stdgo.Slice<stdgo.go.types.Types.Type_>)))) : stdgo.Slice<stdgo.go.types.Types.Type_>), _wantEqual : true } : T__struct_28),
({ _src : ("package equivalenttypesets; type T[P any] int" : stdgo.GoString), _name1 : ("T" : stdgo.GoString), _targs1 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(newInterfaceType((null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>), (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(newUnion((new stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Term>>(2, 2, newTerm(false, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])), newTerm(false, stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]))) : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Term>>)))) : stdgo.Slice<stdgo.go.types.Types.Type_>)))) : stdgo.Slice<stdgo.go.types.Types.Type_>), _name2 : ("T" : stdgo.GoString), _targs2 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(newInterfaceType((null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>), (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(newUnion((new stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Term>>(2, 2, newTerm(false, stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])), newTerm(false, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]))) : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Term>>)))) : stdgo.Slice<stdgo.go.types.Types.Type_>)))) : stdgo.Slice<stdgo.go.types.Types.Type_>), _wantEqual : true } : T__struct_28),
({ _src : ("package basicfunc; func F[P any]() {}" : stdgo.GoString), _name1 : ("F" : stdgo.GoString), _targs1 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _name2 : ("F" : stdgo.GoString), _targs2 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _wantEqual : true } : T__struct_28),
({ _src : ("package funcslice; func F[P any]() {}" : stdgo.GoString), _name1 : ("F" : stdgo.GoString), _targs1 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(newSlice(stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])))) : stdgo.Slice<stdgo.go.types.Types.Type_>), _name2 : ("F" : stdgo.GoString), _targs2 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(newSlice(stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])))) : stdgo.Slice<stdgo.go.types.Types.Type_>), _wantEqual : true } : T__struct_28),
({ _src : ("package funcwithparams; func F[P any](x string) float64 { return 0 }" : stdgo.GoString), _name1 : ("F" : stdgo.GoString), _targs1 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _name2 : ("F" : stdgo.GoString), _targs2 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _wantEqual : true } : T__struct_28),
({ _src : ("package differentfuncargs; func F[P any](x string) float64 { return 0 }" : stdgo.GoString), _name1 : ("F" : stdgo.GoString), _targs1 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _name2 : ("F" : stdgo.GoString), _targs2 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _wantEqual : false } : T__struct_28),
({ _src : ("package funcequality; func F1[P any](x int) {}; func F2[Q any](x int) {}" : stdgo.GoString), _name1 : ("F1" : stdgo.GoString), _targs1 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _name2 : ("F2" : stdgo.GoString), _targs2 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _wantEqual : false } : T__struct_28),
({ _src : ("package funcsymmetry; func F1[P any](x P) {}; func F2[Q any](x Q) {}" : stdgo.GoString), _name1 : ("F1" : stdgo.GoString), _targs1 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _name2 : ("F2" : stdgo.GoString), _targs2 : (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), _wantEqual : false } : T__struct_28)) : stdgo.Slice<T__struct_28>);
        for (__64 => _test in _tests) {
            var _pkg = _mustTypecheck(_test._src?.__copy__(), null, null);
            _t.run(_pkg.name()?.__copy__(), function(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
                var _ctxt = newContext();
                var t1:stdgo.go.types.Types.Type_ = _pkg.scope().lookup(_test._name1?.__copy__()).type();
                var __tmp__ = instantiate(_ctxt, t1, _test._targs1, false), _res1:stdgo.go.types.Types.Type_ = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                var t2:stdgo.go.types.Types.Type_ = _pkg.scope().lookup(_test._name2?.__copy__()).type();
                var __tmp__ = instantiate(_ctxt, t2, _test._targs2, false), _res2:stdgo.go.types.Types.Type_ = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                {
                    var _gotEqual:Bool = stdgo.Go.toInterface(_res1) == (stdgo.Go.toInterface(_res2));
                    if (_gotEqual != (_test._wantEqual)) {
                        _t.errorf(("%s == %s: %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_res1), stdgo.Go.toInterface(_res2), stdgo.Go.toInterface(_gotEqual), stdgo.Go.toInterface(_test._wantEqual));
                    };
                };
            });
        };
    }
function testInstantiateNonEquality(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _pkg1 = _mustTypecheck(("package p; type T[P any] int" : stdgo.GoString), null, null);
        var _pkg2 = _mustTypecheck(("package p; type T[P any] int" : stdgo.GoString), null, null);
        var t1 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_pkg1.scope().lookup(("T" : stdgo.GoString)).type()) : stdgo.Ref<Named>)) : stdgo.Ref<Named>);
        var t2 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_pkg2.scope().lookup(("T" : stdgo.GoString)).type()) : stdgo.Ref<Named>)) : stdgo.Ref<Named>);
        var _ctxt = newContext();
        var __tmp__ = instantiate(_ctxt, stdgo.Go.asInterface(t1), (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), false), _res1:stdgo.go.types.Types.Type_ = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = instantiate(_ctxt, stdgo.Go.asInterface(t2), (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>), false), _res2:stdgo.go.types.Types.Type_ = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (stdgo.Go.toInterface(_res1) == (stdgo.Go.toInterface(_res2))) {
            _t.errorf(("instance from pkg1 (%s) is pointer-equivalent to instance from pkg2 (%s)" : stdgo.GoString), stdgo.Go.toInterface(_res1), stdgo.Go.toInterface(_res2));
        };
        if (identical(_res1, _res2)) {
            _t.errorf(("instance from pkg1 (%s) is identical to instance from pkg2 (%s)" : stdgo.GoString), stdgo.Go.toInterface(_res1), stdgo.Go.toInterface(_res2));
        };
    }
function testMethodInstantiation(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _tests = (new stdgo.Slice<T__struct_29>(7, 7, ({ _decl : ("func (r T[P]) m() P" : stdgo.GoString), _want : ("func (T[int]).m() int" : stdgo.GoString) } : T__struct_29), ({ _decl : ("func (r T[P]) m(P)" : stdgo.GoString), _want : ("func (T[int]).m(int)" : stdgo.GoString) } : T__struct_29), ({ _decl : ("func (r *T[P]) m(P)" : stdgo.GoString), _want : ("func (*T[int]).m(int)" : stdgo.GoString) } : T__struct_29), ({ _decl : ("func (r T[P]) m() T[P]" : stdgo.GoString), _want : ("func (T[int]).m() T[int]" : stdgo.GoString) } : T__struct_29), ({ _decl : ("func (r T[P]) m(T[P])" : stdgo.GoString), _want : ("func (T[int]).m(T[int])" : stdgo.GoString) } : T__struct_29), ({ _decl : ("func (r T[P]) m(T[P], P, string)" : stdgo.GoString), _want : ("func (T[int]).m(T[int], int, string)" : stdgo.GoString) } : T__struct_29), ({ _decl : ("func (r T[P]) m(T[P], T[string], T[int])" : stdgo.GoString), _want : ("func (T[int]).m(T[int], T[string], T[int])" : stdgo.GoString) } : T__struct_29)) : stdgo.Slice<T__struct_29>);
        for (__64 => _test in _tests) {
            var _src:stdgo.GoString = ("package p\n\ntype T[P any] struct{}\n\nvar X T[int]\n\n" : stdgo.GoString) + _test._decl?.__copy__()?.__copy__();
            var _pkg = _mustTypecheck(_src?.__copy__(), null, null);
            var _typ = newPointer(_pkg.scope().lookup(("X" : stdgo.GoString)).type());
            var __tmp__ = lookupFieldOrMethod(stdgo.Go.asInterface(_typ), false, _pkg, ("m" : stdgo.GoString)), _obj:stdgo.go.types.Types.Object = __tmp__._0, __65:stdgo.Slice<stdgo.GoInt> = __tmp__._1, __66:Bool = __tmp__._2;
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<Func>)) : stdgo.Ref<Func>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo.go.types.Types.Func>), _1 : false };
            }, _m = __tmp__._0, __67 = __tmp__._1;
            if (_m == null || (_m : Dynamic).__nil__) {
                _t.fatalf(("LookupFieldOrMethod(%s, \"m\") = %v, want func m" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_typ)), stdgo.Go.toInterface(_obj));
            };
            {
                var _got:stdgo.GoString = objectString(stdgo.Go.asInterface(_m), relativeTo(_pkg))?.__copy__();
                if (_got != (_test._want)) {
                    _t.errorf(("instantiated %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
function testImmutableSignatures(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _pkg = _mustTypecheck(("package p\n\ntype T[P any] struct{}\n\nfunc (T[P]) m() {}\n\nvar _ T[int]\n" : stdgo.GoString), null, null);
        var _typ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_pkg.scope().lookup(("T" : stdgo.GoString)).type()) : stdgo.Ref<Named>)) : stdgo.Ref<Named>);
        var __tmp__ = lookupFieldOrMethod(stdgo.Go.asInterface(_typ), false, _pkg, ("m" : stdgo.GoString)), _obj:stdgo.go.types.Types.Object = __tmp__._0, __64:stdgo.Slice<stdgo.GoInt> = __tmp__._1, __65:Bool = __tmp__._2;
        if (_obj == null) {
            _t.fatalf(("LookupFieldOrMethod(%s, \"m\") = %v, want func m" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_typ)), stdgo.Go.toInterface(_obj));
        };
        var _want:stdgo.GoString = ("func (T[P]).m()" : stdgo.GoString);
        {
            var _got:stdgo.GoString = _stripAnnotations(objectString(_obj, relativeTo(_pkg))?.__copy__())?.__copy__();
            if (_got != (_want)) {
                _t.errorf(("instantiated %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
/**
    // Copied from errors.go.
**/
function _stripAnnotations(_s:stdgo.GoString):stdgo.GoString {
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        for (__64 => _r in _s) {
            if ((_r < (8320 : stdgo.GoInt32)) || ((8330 : stdgo.GoInt32) <= _r)) {
                _buf.writeRune(_r);
            };
        };
        if (_buf.len() < (_s.length)) {
            return (_buf.string() : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
function testIssue5770(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var __tmp__ = _typecheck(("package p; type S struct{T}" : stdgo.GoString), null, null), __64:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {};
        if ((_err == null) || !stdgo.strings.Strings.contains(_err.error()?.__copy__(), ("undefined: T" : stdgo.GoString))) {
            _t.errorf(("got: %v; want: %s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("undefined: T" : stdgo.GoString)));
        };
    }
function testIssue5849(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _src:stdgo.GoString = ("\npackage p\nvar (\n\ts uint\n\t_ = uint8(8)\n\t_ = uint16(16) << s\n\t_ = uint32(32 << s)\n\t_ = uint64(64 << s + s)\n\t_ = (interface{})(\"foo\")\n\t_ = (interface{})(nil)\n)" : stdgo.GoString);
        var _types = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>);
        _mustTypecheck(_src?.__copy__(), null, (stdgo.Go.setRef(({ types : _types } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>));
        for (_x => _tv in _types) {
            var _want:Type_ = (null : stdgo.go.types.Types.Type_);
            {
                final __type__ = _x;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.BasicLit>))) {
                    var _x:stdgo.Ref<stdgo.go.ast.Ast.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.BasicLit>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.BasicLit>) : __type__.__underlying__().value;
                    {
                        final __value__ = _x.value;
                        if (__value__ == (("8" : stdgo.GoString))) {
                            _want = stdgo.Go.asInterface(typ[((8 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]);
                        } else if (__value__ == (("16" : stdgo.GoString))) {
                            _want = stdgo.Go.asInterface(typ[((9 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]);
                        } else if (__value__ == (("32" : stdgo.GoString))) {
                            _want = stdgo.Go.asInterface(typ[((10 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]);
                        } else if (__value__ == (("64" : stdgo.GoString))) {
                            _want = stdgo.Go.asInterface(typ[((7 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]);
                        } else if (__value__ == (("\"foo\"" : stdgo.GoString))) {
                            _want = stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]);
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.go.ast.Ast.Ident>))) {
                    var _x:stdgo.Ref<stdgo.go.ast.Ast.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                    if (_x.name == (("nil" : stdgo.GoString))) {
                        _want = stdgo.Go.asInterface(typ[((25 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]);
                    };
                };
            };
            if ((_want != null) && !identical(_tv.type, _want)) {
                _t.errorf(("got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tv.type), stdgo.Go.toInterface(_want));
            };
        };
    }
function testIssue6413(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _src:stdgo.GoString = ("\npackage p\nfunc f() int {\n\tdefer f()\n\tgo f()\n\treturn 0\n}\n" : stdgo.GoString);
        var _types = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>);
        _mustTypecheck(_src?.__copy__(), null, (stdgo.Go.setRef(({ types : _types } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>));
        var _want = typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)];
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        for (_x => _tv in _types) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>)) : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>), _1 : false };
                }, __64 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    if (stdgo.Go.toInterface(_tv.type) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
                        _t.errorf(("%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(_x.pos()))), stdgo.Go.toInterface(_tv.type), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                    };
                    _n++;
                };
            };
        };
        if (_n != ((2 : stdgo.GoInt))) {
            _t.errorf(("got %d CallExprs; want 2" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
function testIssue7245(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _src:stdgo.GoString = ("\npackage p\nfunc (T) m() (res bool) { return }\ntype T struct{} // receiver type after method declaration\n" : stdgo.GoString);
        var _f = _mustParse(_fset, _src?.__copy__());
        var _conf:Config = ({} : stdgo.go.types.Types.Config);
        var _defs = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>);
        var __tmp__ = _conf.check(_f.name.name?.__copy__(), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), (stdgo.Go.setRef(({ defs : _defs } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>)), __64:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _m = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f.decls[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo.go.ast.Ast.FuncDecl>)) : stdgo.Ref<stdgo.go.ast.Ast.FuncDecl>);
        var _res1 = (stdgo.Go.typeAssert((stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface((_defs[_m.name] ?? (null : stdgo.go.types.Types.Object))) : stdgo.Ref<Func>)) : stdgo.Ref<Func>).type()) : stdgo.Ref<Signature>)) : stdgo.Ref<Signature>).results().at((0 : stdgo.GoInt));
        var _res2 = (stdgo.Go.typeAssert((stdgo.Go.toInterface((_defs[_m.type.results.list[(0 : stdgo.GoInt)].names[(0 : stdgo.GoInt)]] ?? (null : stdgo.go.types.Types.Object))) : stdgo.Ref<Var>)) : stdgo.Ref<Var>);
        if (_res1 != (_res2)) {
            _t.errorf(("got %s (%p) != %s (%p)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_res1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_res2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_res1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_res2)));
        };
    }
/**
    // This tests that uses of existing vars on the LHS of an assignment
    // are Uses, not Defs; and also that the (illegal) use of a non-var on
    // the LHS of an assignment is a Use nonetheless.
**/
function testIssue7827(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("\npackage p\nfunc _() {\n\tconst w = 1        // defs w\n        x, y := 2, 3       // defs x, y\n        w, x, z := 4, 5, 6 // uses w, x, defs z; error: cannot assign to w\n        _, _, _ = x, y, z  // uses x, y, z\n}\n" : stdgo.GoString));
        {};
        var _conf:stdgo.go.types.Types.Config = ({ error : function(_err:stdgo.Error):Void {
            _t.log(stdgo.Go.toInterface(_err));
        } } : stdgo.go.types.Types.Config);
        var _defs = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>);
        var _uses = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>);
        var __tmp__ = _conf.check(_f.name.name?.__copy__(), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), (stdgo.Go.setRef(({ defs : _defs, uses : _uses } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>)), __64:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var _s:stdgo.GoString = _err.error()?.__copy__();
            if (!stdgo.strings.Strings.hasSuffix(_s?.__copy__(), ("cannot assign to w" : stdgo.GoString))) {
                _t.errorf(("Check: unexpected error: %s" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
        var _facts:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (_id => _obj in _defs) {
            if (_obj != null) {
                var _fact:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("L%d defs %s" : stdgo.GoString), stdgo.Go.toInterface(_fset.position(_id.pos()).line), stdgo.Go.toInterface(_obj))?.__copy__();
                _facts = (_facts.__append__(_fact?.__copy__()));
            };
        };
        for (_id => _obj in _uses) {
            var _fact:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("L%d uses %s" : stdgo.GoString), stdgo.Go.toInterface(_fset.position(_id.pos()).line), stdgo.Go.toInterface(_obj))?.__copy__();
            _facts = (_facts.__append__(_fact?.__copy__()));
        };
        stdgo.sort.Sort.strings(_facts);
        var _got:stdgo.GoString = stdgo.strings.Strings.join(_facts, ("\n" : stdgo.GoString))?.__copy__();
        if (_got != (("L3 defs func p._()\nL4 defs const w untyped int\nL5 defs var x int\nL5 defs var y int\nL6 defs var z int\nL6 uses const w untyped int\nL6 uses var x int\nL7 uses var x int\nL7 uses var y int\nL7 uses var z int" : stdgo.GoString))) {
            _t.errorf(("Unexpected defs/uses\ngot:\n%s\nwant:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("L3 defs func p._()\nL4 defs const w untyped int\nL5 defs var x int\nL5 defs var y int\nL6 defs var z int\nL6 uses const w untyped int\nL6 uses var x int\nL7 uses var x int\nL7 uses var y int\nL7 uses var z int" : stdgo.GoString)));
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
function testIssue13898(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        {};
        {};
        {};
        var _f:(stdgo.GoString, stdgo.GoString) -> Void = function(_test:stdgo.GoString, _src:stdgo.GoString):Void {
            var _info = (stdgo.Go.setRef(({ uses : ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>);
            _mustTypecheck(_src?.__copy__(), null, _info);
            var _pkg:stdgo.Ref<Package> = (null : stdgo.Ref<stdgo.go.types.Types.Package>);
            var _count:stdgo.GoInt = (0 : stdgo.GoInt);
            for (_id => _obj in _info.uses) {
                if (_id.name == (("Pkg" : stdgo.GoString))) {
                    _pkg = _obj.pkg();
                    _count++;
                };
            };
            if (_count != ((1 : stdgo.GoInt))) {
                _t.fatalf(("%s: got %d entries named Pkg; want 1" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_count));
            };
            if (_pkg.name() != (("types" : stdgo.GoString))) {
                _t.fatalf(("%s: got %v; want package types" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(stdgo.Go.asInterface(_pkg)));
            };
        };
        _f(("src0" : stdgo.GoString), ("\npackage main\n\nimport \"go/types\"\n\nfunc main() {\n\tvar info types.Info\n\tfor _, obj := range info.Uses {\n\t\t_ = obj.Pkg()\n\t}\n}\n" : stdgo.GoString));
        _f(("src1" : stdgo.GoString), ("\npackage main\n\nimport (\n\t\"go/types\"\n\t_ \"go/importer\"\n)\n\nfunc main() {\n\tvar info types.Info\n\tfor _, obj := range info.Uses {\n\t\t_ = obj.Pkg()\n\t}\n}\n" : stdgo.GoString));
        _f(("src2" : stdgo.GoString), ("\npackage main\n\nimport (\n\t_ \"go/importer\"\n\t\"go/types\"\n)\n\nfunc main() {\n\tvar info types.Info\n\tfor _, obj := range info.Uses {\n\t\t_ = obj.Pkg()\n\t}\n}\n" : stdgo.GoString));
    }
function testIssue22525(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _got:stdgo.GoString = ("\n" : stdgo.GoString);
        var _conf:stdgo.go.types.Types.Config = ({ error : function(_err:stdgo.Error):Void {
            _got = _got + (_err.error() + ("\n" : stdgo.GoString)?.__copy__())?.__copy__();
        } } : stdgo.go.types.Types.Config);
        _typecheck(("package p; func f() { var a, b, c, d, e int }" : stdgo.GoString), (stdgo.Go.setRef(_conf) : stdgo.Ref<stdgo.go.types.Types.Config>), null);
        var _want:stdgo.GoString = ("\np:1:27: a declared and not used\np:1:30: b declared and not used\np:1:33: c declared and not used\np:1:36: d declared and not used\np:1:39: e declared and not used\n" : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("got: %swant: %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
function testIssue25627(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        for (__64 => _src in (new stdgo.Slice<stdgo.GoString>(7, 7, ("struct { x Missing }" : stdgo.GoString), ("struct { Missing }" : stdgo.GoString), ("struct { *Missing }" : stdgo.GoString), ("struct { unsafe.Pointer }" : stdgo.GoString), ("struct { P }" : stdgo.GoString), ("struct { *I }" : stdgo.GoString), ("struct { a int; b Missing; *Missing }" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) {
            var _f = _mustParse(_fset, ("package p; import \"unsafe\"; type P *struct{}; type I interface{}; type T " : stdgo.GoString) + _src?.__copy__()?.__copy__());
            var _cfg:stdgo.go.types.Types.Config = ({ error : function(_err:stdgo.Error):Void {}, importer : stdgo.go.importer.Importer.default_() } : stdgo.go.types.Types.Config);
            var _info = (stdgo.Go.setRef(({ types : ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>) } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>);
            var __tmp__ = _cfg.check(_f.name.name?.__copy__(), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), _info), __65:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : T_error)) : T_error), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo.go.types.Types.T_error), _1 : false };
                    }, __66 = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
            stdgo.go.ast.Ast.inspect(stdgo.Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo.go.ast.Ast.TypeSpec>)) : stdgo.Ref<stdgo.go.ast.Ast.TypeSpec>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.TypeSpec>), _1 : false };
                    }, _spec = __tmp__._0, __75 = __tmp__._1;
                    if (_spec != null && ((_spec : Dynamic).__nil__ == null || !(_spec : Dynamic).__nil__)) {
                        {
                            var __tmp__ = (_info.types != null && _info.types.exists(_spec.type) ? { _0 : _info.types[_spec.type], _1 : true } : { _0 : ({} : stdgo.go.types.Types.TypeAndValue), _1 : false }), _tv:stdgo.go.types.Types.TypeAndValue = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok && (_spec.name.name == ("T" : stdgo.GoString))) {
                                var _want:stdgo.GoInt = stdgo.strings.Strings.count(_src?.__copy__(), (";" : stdgo.GoString)) + (1 : stdgo.GoInt);
                                {
                                    var _got:stdgo.GoInt = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_tv.type) : stdgo.Ref<Struct>)) : stdgo.Ref<Struct>).numFields();
                                    if (_got != (_want)) {
                                        _t.errorf(("%s: got %d fields; want %d" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
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
function testIssue28005(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _sources = (new stdgo.GoArray<stdgo.GoString>(("package p; type A interface{ A() }" : stdgo.GoString), ("package p; type B interface{ B() }" : stdgo.GoString), ("package p; type X interface{ A; B }" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>);
        var _orig:stdgo.GoArray<stdgo.Ref<stdgo.go.ast.Ast.File>> = new stdgo.GoArray<stdgo.Ref<stdgo.go.ast.Ast.File>>(...[for (i in 0 ... 3) (null : stdgo.Ref<stdgo.go.ast.Ast.File>)]);
        for (_i => _src in _sources) {
            _orig[(_i : stdgo.GoInt)] = _mustParse(_fset, _src?.__copy__());
        };
        for (__64 => _perm in (new stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>(6, 6, (new stdgo.GoArray<stdgo.GoInt>((0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.GoArray<stdgo.GoInt>), (new stdgo.GoArray<stdgo.GoInt>((0 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoArray<stdgo.GoInt>), (new stdgo.GoArray<stdgo.GoInt>((1 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.GoArray<stdgo.GoInt>), (new stdgo.GoArray<stdgo.GoInt>((1 : stdgo.GoInt), (2 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.GoArray<stdgo.GoInt>), (new stdgo.GoArray<stdgo.GoInt>((2 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoArray<stdgo.GoInt>), (new stdgo.GoArray<stdgo.GoInt>((2 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.GoArray<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>)) {
            var _files = new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>((_sources.length : stdgo.GoInt).toBasic(), 0);
            for (_i in 0 ... _perm.length.toBasic()) {
                _files[(_i : stdgo.GoInt)] = _orig[(_perm[(_i : stdgo.GoInt)] : stdgo.GoInt)];
            };
            var _conf:Config = ({} : stdgo.go.types.Types.Config);
            var _info = (stdgo.Go.setRef(({ defs : ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>);
            var __tmp__ = _conf.check(stdgo.Go.str()?.__copy__(), _fset, _files, _info), __65:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _obj:Object = (null : stdgo.go.types.Types.Object);
            for (_name => _def in _info.defs) {
                if (_name.name == (("X" : stdgo.GoString))) {
                    _obj = _def;
                    break;
                };
            };
            if (_obj == null) {
                _t.fatal(stdgo.Go.toInterface(("object X not found" : stdgo.GoString)));
            };
            var _iface = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj.type().underlying()) : stdgo.Ref<Interface>)) : stdgo.Ref<Interface>);
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor(_i < _iface.numMethods(), _i++, {
                    var _m = _iface.method(_i);
                    var _recvName:stdgo.GoString = (stdgo.Go.typeAssert((stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.type()) : stdgo.Ref<Signature>)) : stdgo.Ref<Signature>).recv().type()) : stdgo.Ref<Named>)) : stdgo.Ref<Named>)._check._environment._decl._tdecl.name.obj().name()?.__copy__();
                    if (_recvName != (_m.name())) {
                        _t.errorf(("perm %v: got recv %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_perm), stdgo.Go.toInterface(_recvName), stdgo.Go.toInterface(_m.name()));
                    };
                });
            };
        };
    }
function testIssue28282(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _et:stdgo.go.types.Types.Type_ = universe.lookup(("error" : stdgo.GoString)).type();
        var _it = newInterfaceType((null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>), (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, _et) : stdgo.Slice<stdgo.go.types.Types.Type_>));
        _it.complete();
        var _want = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_et.underlying()) : stdgo.Ref<Interface>)) : stdgo.Ref<Interface>).method((0 : stdgo.GoInt));
        var _got = _it.method((0 : stdgo.GoInt));
        if (_got != (_want)) {
            _t.fatalf(("%s.Method(0): got %q (%p); want %q (%p)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_it)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
        };
        var __tmp__ = lookupFieldOrMethod(_et, false, null, ("Error" : stdgo.GoString)), _obj:stdgo.go.types.Types.Object = __tmp__._0, __96:stdgo.Slice<stdgo.GoInt> = __tmp__._1, __97:Bool = __tmp__._2;
        if (stdgo.Go.toInterface(_obj) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
            _t.fatalf(("%s.Lookup: got %q (%p); want %q (%p)" : stdgo.GoString), stdgo.Go.toInterface(_et), stdgo.Go.toInterface(_obj), stdgo.Go.toInterface(_obj), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
        };
        {
            var __tmp__ = lookupFieldOrMethod(stdgo.Go.asInterface(_it), false, null, ("Error" : stdgo.GoString));
            _obj = __tmp__._0;
        };
        if (stdgo.Go.toInterface(_obj) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
            _t.fatalf(("%s.Lookup: got %q (%p); want %q (%p)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_it)), stdgo.Go.toInterface(_obj), stdgo.Go.toInterface(_obj), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
        };
    }
function testIssue29029(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _f1 = _mustParse(_fset, ("package p; type A interface { M() }" : stdgo.GoString));
        var _f2 = _mustParse(_fset, ("package p; var B interface { A }" : stdgo.GoString));
        var _printInfo = function(_info:stdgo.Ref<Info>):stdgo.GoString {
            var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
            for (__64 => _obj in _info.defs) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<Func>)) : stdgo.Ref<Func>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo.go.types.Types.Func>), _1 : false };
                    }, _fn = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        stdgo.fmt.Fmt.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo.strings.Strings.Builder>)), stdgo.Go.toInterface(stdgo.Go.asInterface(_fn)));
                    };
                };
            };
            return (_buf.string() : stdgo.GoString)?.__copy__();
        };
        var _conf:Config = ({} : stdgo.go.types.Types.Config);
        var _info = (stdgo.Go.setRef(({ defs : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>);
        var _check = newChecker((stdgo.Go.setRef(_conf) : stdgo.Ref<stdgo.go.types.Types.Config>), _fset, newPackage(stdgo.Go.str()?.__copy__(), ("p" : stdgo.GoString)), _info);
        {
            var _err:stdgo.Error = _check.files((new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(2, 2, _f1, _f2) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _want:stdgo.GoString = _printInfo(_info)?.__copy__();
        _info = (stdgo.Go.setRef(({ defs : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>);
        _check = newChecker((stdgo.Go.setRef(_conf) : stdgo.Ref<stdgo.go.types.Types.Config>), _fset, newPackage(stdgo.Go.str()?.__copy__(), ("p" : stdgo.GoString)), _info);
        {
            var _err:stdgo.Error = _check.files((new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f1) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _check.files((new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f2) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _got:stdgo.GoString = _printInfo(_info)?.__copy__();
        if (_got != (_want)) {
            _t.errorf(("\ngot : %swant: %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
function testIssue34151(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        {};
        var _a = _mustTypecheck(("package a; type I interface{ M() }; type T struct { F interface { I } }" : stdgo.GoString), null, null);
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.Go.asInterface(({ _pkg : _a } : stdgo.go.types_test.Types_test.T_importHelper)) } : stdgo.go.types.Types.Config);
        _mustTypecheck(("package b; import \"a\"; type T struct { F interface { a.I } }; var _ = a.T(T{})" : stdgo.GoString), (stdgo.Go.setRef(_conf) : stdgo.Ref<stdgo.go.types.Types.Config>), null);
    }
/**
    // TestIssue34921 verifies that we don't update an imported type's underlying
    // type when resolving an underlying type. Specifically, when determining the
    // underlying type of b.T (which is the underlying type of a.T, which is int)
    // we must not set the underlying type of a.T again since that would lead to
    // a race condition if package b is imported elsewhere, in a package that is
    // concurrently type-checked.
**/
function testIssue34921(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r:stdgo.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_r != null) {
                            _t.error(_r);
                        };
                    };
                };
                a();
            });
            var _sources:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(2, 2, ("package a; type T int" : stdgo.GoString), ("package b; import \"a\"; type T a.T" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
            var _pkg:stdgo.Ref<Package> = (null : stdgo.Ref<stdgo.go.types.Types.Package>);
            for (__64 => _src in _sources) {
                var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.Go.asInterface(({ _pkg : _pkg } : stdgo.go.types_test.Types_test.T_importHelper)) } : stdgo.go.types.Types.Config);
                _pkg = _mustTypecheck(_src?.__copy__(), (stdgo.Go.setRef(_conf) : stdgo.Ref<stdgo.go.types.Types.Config>), null);
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testIssue43088(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _n1 = newTypeName(_nopos, null, ("T1" : stdgo.GoString), (null : stdgo.go.types.Types.Type_));
        var t1 = newNamed(_n1, (null : stdgo.go.types.Types.Type_), (null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>));
        var _n2 = newTypeName(_nopos, null, ("T2" : stdgo.GoString), (null : stdgo.go.types.Types.Type_));
        var t2 = newNamed(_n2, (null : stdgo.go.types.Types.Type_), (null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>));
        var _s1 = newStruct((new stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Var>>(1, 1, newField(_nopos, null, ("_" : stdgo.GoString), stdgo.Go.asInterface(t2), false)) : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Var>>), (null : stdgo.Slice<stdgo.GoString>));
        t1.setUnderlying(stdgo.Go.asInterface(_s1));
        var _s2 = newStruct((new stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Var>>(1, 1, newField(_nopos, null, ("_" : stdgo.GoString), stdgo.Go.asInterface(t2), false)) : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Var>>), (null : stdgo.Slice<stdgo.GoString>));
        var _s3 = newStruct((new stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Var>>(1, 1, newField(_nopos, null, ("_" : stdgo.GoString), stdgo.Go.asInterface(_s2), false)) : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Var>>), (null : stdgo.Slice<stdgo.GoString>));
        t2.setUnderlying(stdgo.Go.asInterface(_s3));
        comparable(stdgo.Go.asInterface(t1));
        comparable(stdgo.Go.asInterface(t2));
    }
function testIssue44515(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _typ:stdgo.go.types.Types.Type_ = unsafe.scope().lookup(("Pointer" : stdgo.GoString)).type();
        var _got:stdgo.GoString = typeString(_typ, null)?.__copy__();
        var _want:stdgo.GoString = ("unsafe.Pointer" : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        var _qf = function(_pkg:stdgo.Ref<Package>):stdgo.GoString {
            if (_pkg == (unsafe)) {
                return ("foo" : stdgo.GoString);
            };
            return stdgo.Go.str()?.__copy__();
        };
        _got = typeString(_typ, _qf)?.__copy__();
        _want = ("foo.Pointer" : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
function testIssue43124(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        {};
        var _a = _mustTypecheck(("package a; import \"text/template\"; func F(template.Template) {}; func G(int) {}" : stdgo.GoString), null, null);
        var _imp:stdgo.go.types_test.Types_test.T_importHelper = ({ _pkg : _a, _fallback : stdgo.go.importer.Importer.default_() } : stdgo.go.types_test.Types_test.T_importHelper);
        var _withImporter = function(_cfg:stdgo.Ref<Config>):Void {
            _cfg.importer = stdgo.Go.asInterface(_imp);
        };
        _testFiles(_t, (new stdgo.Slice<stdgo.GoString>(1, 1, ("b.go" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(1, 1, (("\npackage b\n\nimport (\n\t\"a\"\n\t\"html/template\"\n)\n\nfunc _() {\n\t// Packages should be fully qualified when there is ambiguity within the\n\t// error string itself.\n\ta.F(template /* ERRORx \"cannot use.*html/template.* as .*text/template\" */ .Template{})\n}\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>), false, _withImporter);
        _testFiles(_t, (new stdgo.Slice<stdgo.GoString>(1, 1, ("c.go" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(1, 1, (("\npackage c\n\nimport (\n\t\"a\"\n\t\"fmt\"\n\t\"html/template\"\n)\n\n// go.dev/issue/46905: make sure template is not the first package qualified.\nvar _ fmt.Stringer = 1 // ERRORx \"cannot use 1.*as fmt\\\\.Stringer\"\n\n// Packages should be fully qualified when there is ambiguity in reachable\n// packages. In this case both a (and for that matter html/template) import\n// text/template.\nfunc _() { a.G(template /* ERRORx \"cannot use .*html/template.*Template\" */ .Template{}) }\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>), false, _withImporter);
        _testFiles(_t, (new stdgo.Slice<stdgo.GoString>(1, 1, ("t.go" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(1, 1, (("\npackage template\n\nimport \"text/template\"\n\ntype T int\n\n// Verify that the current package name also causes disambiguation.\nvar _ T = template /* ERRORx \"cannot use.*text/template.* as T value\" */.Template{}\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>), false, _withImporter);
    }
function testIssue50646(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _anyType:stdgo.go.types.Types.Type_ = universe.lookup(("any" : stdgo.GoString)).type();
        var _comparableType:stdgo.go.types.Types.Type_ = universe.lookup(("comparable" : stdgo.GoString)).type();
        if (!comparable(_anyType)) {
            _t.error(stdgo.Go.toInterface(("any is not a comparable type" : stdgo.GoString)));
        };
        if (!comparable(_comparableType)) {
            _t.error(stdgo.Go.toInterface(("comparable is not a comparable type" : stdgo.GoString)));
        };
        if (implements_(_anyType, (stdgo.Go.typeAssert((stdgo.Go.toInterface(_comparableType.underlying()) : stdgo.Ref<Interface>)) : stdgo.Ref<Interface>))) {
            _t.error(stdgo.Go.toInterface(("any implements comparable" : stdgo.GoString)));
        };
        if (!implements_(_comparableType, (stdgo.Go.typeAssert((stdgo.Go.toInterface(_anyType) : stdgo.Ref<Interface>)) : stdgo.Ref<Interface>))) {
            _t.error(stdgo.Go.toInterface(("comparable does not implement any" : stdgo.GoString)));
        };
        if (assignableTo(_anyType, _comparableType)) {
            _t.error(stdgo.Go.toInterface(("any assignable to comparable" : stdgo.GoString)));
        };
        if (!assignableTo(_comparableType, _anyType)) {
            _t.error(stdgo.Go.toInterface(("comparable not assignable to any" : stdgo.GoString)));
        };
    }
function testIssue55030(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _makeSig:stdgo.go.types.Types.Type_ -> Void = function(_typ:Type_):Void {
            var _par = newVar(_nopos, null, stdgo.Go.str()?.__copy__(), _typ);
            var _params = newTuple(_par);
            newSignatureType(null, (null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.TypeParam>>), _params, null, true);
        };
        _makeSig(stdgo.Go.asInterface(newSlice(stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]))));
        _makeSig(stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]));
        {
            var p = newTypeName(_nopos, null, ("P" : stdgo.GoString), (null : stdgo.go.types.Types.Type_));
            _makeSig(stdgo.Go.asInterface(newTypeParam(p, stdgo.Go.asInterface(newInterfaceType((null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>), (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])) : stdgo.Slice<stdgo.go.types.Types.Type_>))))));
        };
        {
            var p = newTypeName(_nopos, null, ("P" : stdgo.GoString), (null : stdgo.go.types.Types.Type_));
            _makeSig(stdgo.Go.asInterface(newTypeParam(p, stdgo.Go.asInterface(newInterfaceType((null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>), (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(newSlice(stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])))) : stdgo.Slice<stdgo.go.types.Types.Type_>))))));
        };
        {
            var _t1 = newTerm(true, stdgo.Go.asInterface(typ[((17 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]));
            var _t2 = newTerm(false, stdgo.Go.asInterface(newSlice(stdgo.Go.asInterface(typ[((8 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)]))));
            var _u = newUnion((new stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Term>>(2, 2, _t1, _t2) : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Term>>));
            var p = newTypeName(_nopos, null, ("P" : stdgo.GoString), (null : stdgo.go.types.Types.Type_));
            _makeSig(stdgo.Go.asInterface(newTypeParam(p, stdgo.Go.asInterface(newInterfaceType((null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>), (new stdgo.Slice<stdgo.go.types.Types.Type_>(1, 1, stdgo.Go.asInterface(_u)) : stdgo.Slice<stdgo.go.types.Types.Type_>))))));
        };
    }
function testIssue51093(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _tests:stdgo.Slice<T__struct_30> = (new stdgo.Slice<T__struct_30>(
10,
10,
({ _typ : ("bool" : stdgo.GoString), _val : ("false" : stdgo.GoString) } : T__struct_30),
({ _typ : ("int" : stdgo.GoString), _val : ("-1" : stdgo.GoString) } : T__struct_30),
({ _typ : ("uint" : stdgo.GoString), _val : ("1.0" : stdgo.GoString) } : T__struct_30),
({ _typ : ("rune" : stdgo.GoString), _val : ("\'a\'" : stdgo.GoString) } : T__struct_30),
({ _typ : ("float64" : stdgo.GoString), _val : ("3.5" : stdgo.GoString) } : T__struct_30),
({ _typ : ("complex64" : stdgo.GoString), _val : ("1.25" : stdgo.GoString) } : T__struct_30),
({ _typ : ("string" : stdgo.GoString), _val : ("\"foo\"" : stdgo.GoString) } : T__struct_30),
({ _typ : ("~byte" : stdgo.GoString), _val : ("1" : stdgo.GoString) } : T__struct_30),
({ _typ : ("~int | ~float64 | complex128" : stdgo.GoString), _val : ("1" : stdgo.GoString) } : T__struct_30),
({ _typ : ("~uint64 | ~rune" : stdgo.GoString), _val : ("\'X\'" : stdgo.GoString) } : T__struct_30)) : stdgo.Slice<T__struct_30>);
        for (__64 => _test in _tests) {
            var _src:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("package p; func _[P %s]() { _ = P(%s) }" : stdgo.GoString), stdgo.Go.toInterface(_test._typ), stdgo.Go.toInterface(_test._val))?.__copy__();
            var _types = ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>);
            _mustTypecheck(_src?.__copy__(), null, (stdgo.Go.setRef(({ types : _types } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>));
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            for (_x => _tv in _types) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>)) : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.CallExpr>), _1 : false };
                    }, _x = __tmp__._0, __65 = __tmp__._1;
                    if (_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__)) {
                        _n++;
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_tv.type) : stdgo.Ref<TypeParam>)) : stdgo.Ref<TypeParam>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo.go.types.Types.TypeParam>), _1 : false };
                        }, _tpar = __tmp__._0, __66 = __tmp__._1;
                        if (_tpar == null || (_tpar : Dynamic).__nil__) {
                            _t.fatalf(("%s: got type %s, want type parameter" : stdgo.GoString), stdgo.Go.toInterface(exprString(stdgo.Go.asInterface(_x))), stdgo.Go.toInterface(_tv.type));
                        };
                        {
                            var _name:stdgo.GoString = _tpar._check._environment._decl._tdecl.name.obj().name()?.__copy__();
                            if (_name != (("P" : stdgo.GoString))) {
                                _t.fatalf(("%s: got type parameter name %s, want P" : stdgo.GoString), stdgo.Go.toInterface(exprString(stdgo.Go.asInterface(_x))), stdgo.Go.toInterface(_name));
                            };
                        };
                        if (_tv.value != null) {
                            _t.errorf(("%s: got constant value %s (%s), want no constant" : stdgo.GoString), stdgo.Go.toInterface(exprString(stdgo.Go.asInterface(_x))), stdgo.Go.toInterface(_tv.value), stdgo.Go.toInterface((_tv.value.string() : stdgo.GoString)));
                        };
                    };
                };
            };
            if (_n != ((1 : stdgo.GoInt))) {
                _t.fatalf(("%s: got %d CallExpr nodes; want 1" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface((1 : stdgo.GoInt)));
            };
        };
    }
function testIssue54258(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_31>(6, 6, ({ main : ("package main\nimport \"b\"\ntype I0 interface {\n\tM0(w struct{ f string })\n}\nvar _ I0 = b.S{}\n" : stdgo.GoString), _b : ("package b\ntype S struct{}\nfunc (S) M0(struct{ f string }) {}\n" : stdgo.GoString), _want : ("6:12: cannot use b[.]S{} [(]value of type b[.]S[)] as I0 value in variable declaration: b[.]S does not implement I0 [(]wrong type for method M0[)]\n.*have M0[(]struct{f string /[*] package b [*]/ }[)]\n.*want M0[(]struct{f string /[*] package main [*]/ }[)]" : stdgo.GoString) } : T__struct_31), ({ main : ("package main\nimport \"b\"\ntype I1 interface {\n\tM1(struct{ string })\n}\nvar _ I1 = b.S{}\n" : stdgo.GoString), _b : ("package b\ntype S struct{}\nfunc (S) M1(struct{ string }) {}\n" : stdgo.GoString), _want : ("6:12: cannot use b[.]S{} [(]value of type b[.]S[)] as I1 value in variable declaration: b[.]S does not implement I1 [(]wrong type for method M1[)]\n.*have M1[(]struct{string /[*] package b [*]/ }[)]\n.*want M1[(]struct{string /[*] package main [*]/ }[)]" : stdgo.GoString) } : T__struct_31), ({ main : ("package main\nimport \"b\"\ntype I2 interface {\n\tM2(y struct{ f struct{ f string } })\n}\nvar _ I2 = b.S{}\n" : stdgo.GoString), _b : ("package b\ntype S struct{}\nfunc (S) M2(struct{ f struct{ f string } }) {}\n" : stdgo.GoString), _want : ("6:12: cannot use b[.]S{} [(]value of type b[.]S[)] as I2 value in variable declaration: b[.]S does not implement I2 [(]wrong type for method M2[)]\n.*have M2[(]struct{f struct{f string} /[*] package b [*]/ }[)]\n.*want M2[(]struct{f struct{f string} /[*] package main [*]/ }[)]" : stdgo.GoString) } : T__struct_31), ({ main : ("package main\nimport \"b\"\ntype I3 interface {\n\tM3(z struct{ F struct{ f string } })\n}\nvar _ I3 = b.S{}\n" : stdgo.GoString), _b : ("package b\ntype S struct{}\nfunc (S) M3(struct{ F struct{ f string } }) {}\n" : stdgo.GoString), _want : ("6:12: cannot use b[.]S{} [(]value of type b[.]S[)] as I3 value in variable declaration: b[.]S does not implement I3 [(]wrong type for method M3[)]\n.*have M3[(]struct{F struct{f string /[*] package b [*]/ }}[)]\n.*want M3[(]struct{F struct{f string /[*] package main [*]/ }}[)]" : stdgo.GoString) } : T__struct_31), ({ main : ("package main\nimport \"b\"\ntype I4 interface {\n\tM4(_ struct { *string })\n}\nvar _ I4 = b.S{}\n" : stdgo.GoString), _b : ("package b\ntype S struct{}\nfunc (S) M4(struct { *string }) {}\n" : stdgo.GoString), _want : ("6:12: cannot use b[.]S{} [(]value of type b[.]S[)] as I4 value in variable declaration: b[.]S does not implement I4 [(]wrong type for method M4[)]\n.*have M4[(]struct{[*]string /[*] package b [*]/ }[)]\n.*want M4[(]struct{[*]string /[*] package main [*]/ }[)]" : stdgo.GoString) } : T__struct_31), ({ main : ("package main\nimport \"b\"\ntype t struct{ A int }\ntype I5 interface {\n\tM5(_ struct {b.S;t})\n}\nvar _ I5 = b.S{}\n" : stdgo.GoString), _b : ("package b\ntype S struct{}\ntype t struct{ A int }\nfunc (S) M5(struct {S;t}) {}\n" : stdgo.GoString), _want : ("7:12: cannot use b[.]S{} [(]value of type b[.]S[)] as I5 value in variable declaration: b[.]S does not implement I5 [(]wrong type for method M5[)]\n.*have M5[(]struct{b[.]S; b[.]t}[)]\n.*want M5[(]struct{b[.]S; t}[)]" : stdgo.GoString) } : T__struct_31)) : stdgo.Slice<T__struct_31>);
        var _fset = stdgo.go.token.Token.newFileSet();
        var _test:(stdgo.GoString, stdgo.GoString, stdgo.GoString) -> Void = function(main:stdgo.GoString, _b:stdgo.GoString, _want:stdgo.GoString):Void {
            var _re = stdgo.regexp.Regexp.mustCompile(_want?.__copy__());
            var _bpkg = _mustTypecheck(_b?.__copy__(), null, null);
            var _mast = _mustParse(_fset, main?.__copy__());
            var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.Go.asInterface(({ _pkg : _bpkg } : stdgo.go.types_test.Types_test.T_importHelper)) } : stdgo.go.types.Types.Config);
            var __tmp__ = _conf.check(_mast.name.name?.__copy__(), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _mast) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), null), __64:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("Expected failure, but it did not" : stdgo.GoString)));
            } else {
                var _got:stdgo.GoString = _err.error()?.__copy__();
                if (!_re.matchString(_got?.__copy__())) {
                    _t.errorf(("Wanted match for\n\t%s\n but got\n\t%s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                } else if (stdgo.testing.Testing.verbose()) {
                    _t.logf(("Saw expected\n\t%s" : stdgo.GoString), stdgo.Go.toInterface(_err.error()));
                };
            };
        };
        for (__64 => _t in _tests) {
            _test(_t.main?.__copy__(), _t._b?.__copy__(), _t._want?.__copy__());
        };
    }
function testIssue59944(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveCGO(stdgo.Go.asInterface(_t));
        {};
        {};
        _testFiles(_t, (new stdgo.Slice<stdgo.GoString>(2, 2, ("p.go" : stdgo.GoString), ("_cgo_gotypes.go" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(2, 2, (("\npackage p\n\n/*\nstruct layout {\n\tint field;\n};\n*/\nimport \"C\"\n\ntype Layout = C.struct_layout\n\nfunc (l *Layout) Binding() {}\n\nfunc _() {\n\t_ = (*Layout).Binding\n}\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("\n// Code generated by cmd/cgo; DO NOT EDIT.\n\npackage p\n\nimport \"unsafe\"\n\nimport \"syscall\"\n\nimport _cgopackage \"runtime/cgo\"\n\ntype _ _cgopackage.Incomplete\nvar _ syscall.Errno\nfunc _Cgo_ptr(ptr unsafe.Pointer) unsafe.Pointer { return ptr }\n\n//go:linkname _Cgo_always_false runtime.cgoAlwaysFalse\nvar _Cgo_always_false bool\n//go:linkname _Cgo_use runtime.cgoUse\nfunc _Cgo_use(interface{})\ntype _Ctype_int int32\n\ntype _Ctype_struct_layout struct {\n\tfield _Ctype_int\n}\n\ntype _Ctype_void [0]byte\n\n//go:linkname _cgo_runtime_cgocall runtime.cgocall\nfunc _cgo_runtime_cgocall(unsafe.Pointer, uintptr) int32\n\n//go:linkname _cgoCheckPointer runtime.cgoCheckPointer\nfunc _cgoCheckPointer(interface{}, interface{})\n\n//go:linkname _cgoCheckResult runtime.cgoCheckResult\nfunc _cgoCheckResult(interface{})\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>), false, function(_cfg:stdgo.Ref<Config>):Void {
            _boolFieldAddr(_cfg, ("go115UsesCgo" : stdgo.GoString)).value = true;
        });
    }
function testIssue61931(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, _pkgName(("\npackage p\n\nfunc A(func(any), ...any) {}\nfunc B[T any](T)          {}\n\nfunc _() {\n\tA(B, nil // syntax error: missing \',\' before newline in argument list\n}\n" : stdgo.GoString))?.__copy__(), stdgo.Go.toInterface(("\npackage p\n\nfunc A(func(any), ...any) {}\nfunc B[T any](T)          {}\n\nfunc _() {\n\tA(B, nil // syntax error: missing \',\' before newline in argument list\n}\n" : stdgo.GoString)), (0u32 : stdgo.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("expected syntax error" : stdgo.GoString)));
        };
        var _conf:Config = ({} : stdgo.go.types.Types.Config);
        _conf.check(_f.name.name?.__copy__(), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), null);
    }
/**
    // BenchmarkLookupFieldOrMethod measures types.LookupFieldOrMethod performance.
    // LookupFieldOrMethod is a performance hotspot for both type-checking and
    // external API calls.
**/
function benchmarkLookupFieldOrMethod(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _path:stdgo.GoString = stdgo.path.filepath.Filepath.join(stdgo.runtime.Runtime.goroot()?.__copy__(), ("src" : stdgo.GoString), ("net" : stdgo.GoString), ("http" : stdgo.GoString))?.__copy__();
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = _pkgFiles(_fset, _path?.__copy__()), _files:stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _b.fatal(stdgo.Go.toInterface(_err));
        };
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.go.importer.Importer.default_() } : stdgo.go.types.Types.Config);
        var __tmp__ = _conf.check(("http" : stdgo.GoString), _fset, _files, null), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _b.fatal(stdgo.Go.toInterface(_err));
        };
        var _scope = _pkg.scope();
        var _names = _scope.names();
        var _lookup:() -> Void = function():Void {
            for (__80 => _name in _names) {
                var _typ:stdgo.go.types.Types.Type_ = _scope.lookup(_name?.__copy__()).type();
                lookupFieldOrMethod(_typ, true, _pkg, ("m" : stdgo.GoString));
            };
        };
        _lookup();
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _lookup();
            });
        };
    }
function testMain(_m:stdgo.Ref<stdgo.testing.Testing.M>):Void {
        stdgo.go.build.Build.default_.goroot = stdgo.internal.testenv.Testenv.goroot((null : stdgo.testing.Testing.TB))?.__copy__();
        Sys.exit(_m.run());
    }
/**
    
    
    
**/
@:structInit class T_testNewMethodSet_41___localname___method {
    public var _name : stdgo.GoString = "";
    public var _index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _indirect : Bool = false;
    public function new(?_name:stdgo.GoString, ?_index:stdgo.Slice<stdgo.GoInt>, ?_indirect:Bool) {
        if (_name != null) this._name = _name;
        if (_index != null) this._index = _index;
        if (_indirect != null) this._indirect = _indirect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testNewMethodSet_41___localname___method(_name, _index, _indirect);
    }
}
function testNewMethodSet(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _tests = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>);
            @:mergeBlock {
                x.set(("var a T; type T struct{}; func (T) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), false) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a *T; type T struct{}; func (T) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a T; type T struct{}; func (*T) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(0, 0) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a *T; type T struct{}; func (*T) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a T[int]; type T[P any] struct{}; func (T[P]) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), false) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a *T[int]; type T[P any] struct{}; func (T[P]) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a T[int]; type T[P any] struct{}; func (*T[P]) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(0, 0) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a *T[int]; type T[P any] struct{}; func (*T[P]) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a T; type T interface{ f() }" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a T1; type ( T1 T2; T2 interface{ f() } )" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a T1; type ( T1 interface{ T2 }; T2 interface{ f() } )" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a T[int]; type T[P any] interface{ f() }" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a T1[int]; type ( T1[P any] T2[P]; T2[P any] interface{ f() } )" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a T1[int]; type ( T1[P any] interface{ T2[P] }; T2[P any] interface{ f() } )" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a struct{ E }; type E interface{ f() }" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(2, 2, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a *struct{ E }; type E interface{ f() }" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(2, 2, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a struct{ E }; type E struct{}; func (E) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(2, 2, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), false) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a struct{ *E }; type E struct{}; func (E) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(2, 2, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a struct{ E }; type E struct{}; func (*E) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(0, 0) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a struct{ *E }; type E struct{}; func (*E) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(2, 2, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a struct{ E[int] }; type E[P any] interface{ f() }" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(2, 2, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a *struct{ E[int] }; type E[P any] interface{ f() }" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(2, 2, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a struct{ E[int] }; type E[P any] struct{}; func (E[P]) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(2, 2, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), false) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a struct{ *E[int] }; type E[P any] struct{}; func (E[P]) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(2, 2, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a struct{ E[int] }; type E[P any] struct{}; func (*E[P]) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(0, 0) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a struct{ *E[int] }; type E[P any] struct{}; func (*E[P]) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(2, 2, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a struct{ E1; *E2 }; type ( E1 interface{ f() }; E2 struct{ f int })" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(0, 0) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a struct{ E1; *E2 }; type ( E1 struct{ f int }; E2 struct{} ); func (E2) f() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(0, 0) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a T[int]; type ( T[P any] struct { *N[P] }; N[P any] struct { *T[P] } ); func (N[P]) m() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("m" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(2, 2, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("var a T[int]; type ( T[P any] struct { *N[P] }; N[P any] struct { *T[P] } ); func (T[P]) m() {}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("m" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), false) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>>);
        var _tParamTests = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>);
            @:mergeBlock {
                x.set(("type C interface{ f() }; func g[T C](a T){}" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
                x.set(("type C interface{ f() }; func g[T C]() { var a T; _ = a }" : stdgo.GoString), (new stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>(1, 1, (new stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method(("f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), true) : stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method)) : stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.go.types_test.Types_test.T_testNewMethodSet_41___localname___method>>);
        var _check = function(_src:stdgo.GoString, _methods:stdgo.Slice<T_testNewMethodSet_41___localname___method>, _generic:Bool):Void {
            var _pkg = _mustTypecheck(("package p;" : stdgo.GoString) + _src?.__copy__()?.__copy__(), null, null);
            var _scope = _pkg.scope();
            if (_generic) {
                var _fn = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_pkg.scope().lookup(("g" : stdgo.GoString))) : stdgo.Ref<Func>)) : stdgo.Ref<Func>);
                _scope = _fn.scope();
            };
            var _obj:stdgo.go.types.Types.Object = _scope.lookup(("a" : stdgo.GoString));
            if (_obj == null) {
                _t.errorf(("%s: incorrect test case - no object a" : stdgo.GoString), stdgo.Go.toInterface(_src));
                return;
            };
            var _ms = newMethodSet(_obj.type());
            {
                var __0:stdgo.GoInt = _ms.len(), __1:stdgo.GoInt = (_methods.length), _want:stdgo.GoInt = __1, _got:stdgo.GoInt = __0;
                if (_got != (_want)) {
                    _t.errorf(("%s: got %d methods, want %d" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    return;
                };
            };
            for (_i => _m in _methods) {
                var _sel = _ms.at(_i);
                {
                    var __0:stdgo.GoString = _sel.obj().name()?.__copy__(), __1:stdgo.GoString = _m._name?.__copy__(), _want:stdgo.GoString = __1, _got:stdgo.GoString = __0;
                    if (_got != (_want)) {
                        _t.errorf(("%s [method %d]: got name = %q at, want %q" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
                {
                    var __0 = _sel.index(), __1 = _m._index, _want = __1, _got = __0;
                    if (!_sameSlice(_got, _want)) {
                        _t.errorf(("%s [method %d]: got index = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
                {
                    var __0:Bool = _sel.indirect(), __1:Bool = _m._indirect, _want:Bool = __1, _got:Bool = __0;
                    if (_got != (_want)) {
                        _t.errorf(("%s [method %d]: got indirect = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
        for (_src => _methods in _tests) {
            _check(_src?.__copy__(), _methods, false);
        };
        for (_src => _methods in _tParamTests) {
            _check(_src?.__copy__(), _methods, true);
        };
    }
/**
    // Test for go.dev/issue/52715
**/
function testNewMethodSet_RecursiveGeneric(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("foo.go" : stdgo.GoString), stdgo.Go.toInterface(("\npackage pkg\n\ntype Tree[T any] struct {\n\t*Node[T]\n}\n\ntype Node[T any] struct {\n\t*Tree[T]\n}\n\ntype Instance = *Tree[int]\n" : stdgo.GoString)), (0u32 : stdgo.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _pkg = newPackage(("pkg" : stdgo.GoString), _f.name.name?.__copy__());
        {
            var _err:stdgo.Error = newChecker(null, _fset, _pkg, null).files((new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>));
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
        };
        var t:stdgo.go.types.Types.Type_ = _pkg.scope().lookup(("Instance" : stdgo.GoString)).type();
        newMethodSet(t);
    }
function testIssue60634(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("p.go" : stdgo.GoString), stdgo.Go.toInterface(("\npackage p\ntype T *int\nfunc (T) m() {} // expected error: invalid receiver type\n" : stdgo.GoString)), (0u32 : stdgo.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _conf:Config = ({} : stdgo.go.types.Types.Config);
        var __tmp__ = _conf.check(("p" : stdgo.GoString), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), null), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err == null) || !stdgo.strings.Strings.contains(_err.error()?.__copy__(), ("invalid receiver type" : stdgo.GoString))) {
            _t.fatalf(("missing or unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var t:stdgo.go.types.Types.Type_ = _pkg.scope().lookup(("T" : stdgo.GoString)).type();
        var _name:stdgo.GoString = ("m" : stdgo.GoString);
        for (__80 => _recv in (new stdgo.Slice<stdgo.go.types.Types.Type_>(2, 2, t, stdgo.Go.asInterface(newPointer(t))) : stdgo.Slice<stdgo.go.types.Types.Type_>)) {
            var __tmp__ = lookupFieldOrMethod(_recv, false, _pkg, _name?.__copy__()), _obj1:stdgo.go.types.Types.Object = __tmp__._0, __81:stdgo.Slice<stdgo.GoInt> = __tmp__._1, __82:Bool = __tmp__._2;
            var _mset = newMethodSet(_recv);
            if ((_obj1 != null) != ((_mset.len() == (1 : stdgo.GoInt)))) {
                _t.fatalf(("lookup(%v.%s): got obj = %v, mset = %v" : stdgo.GoString), stdgo.Go.toInterface(_recv), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_obj1), stdgo.Go.toInterface(stdgo.Go.asInterface(_mset)));
            };
            if (_obj1 != null) {
                var _obj2:stdgo.go.types.Types.Object = _mset.at((0 : stdgo.GoInt)).obj();
                if (stdgo.Go.toInterface(_obj1) != (stdgo.Go.toInterface(_obj2))) {
                    _t.fatalf(("%v != %v" : stdgo.GoString), stdgo.Go.toInterface(_obj1), stdgo.Go.toInterface(_obj2));
                };
            };
        };
    }
function _checkMono(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _body:stdgo.GoString):stdgo.Error {
        var _src:stdgo.GoString = ("package x; import `unsafe`; var _ unsafe.Pointer;\n" : stdgo.GoString) + _body?.__copy__()?.__copy__();
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        var _conf:stdgo.go.types.Types.Config = ({ error : function(_err:stdgo.Error):Void {
            stdgo.fmt.Fmt.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo.strings.Strings.Builder>)), stdgo.Go.toInterface(_err));
        }, importer : stdgo.go.importer.Importer.default_() } : stdgo.go.types.Types.Config);
        _typecheck(_src?.__copy__(), (stdgo.Go.setRef(_conf) : stdgo.Ref<stdgo.go.types.Types.Config>), null);
        if (_buf.len() == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        return stdgo.errors.Errors.new_(stdgo.strings.Strings.trimRight((_buf.string() : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString))?.__copy__());
    }
function testMonoGood(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (_i => _good in _goods) {
            {
                var _err:stdgo.Error = _checkMono(_t, _good?.__copy__());
                if (_err != null) {
                    _t.errorf(("%d: unexpected failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function testMonoBad(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (_i => _bad in _bads) {
            {
                var _err:stdgo.Error = _checkMono(_t, _bad?.__copy__());
                if (_err == null) {
                    _t.errorf(("%d: unexpected success" : stdgo.GoString), stdgo.Go.toInterface(_i));
                } else {
                    _t.log(stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function benchmarkNamed(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {};
        var _pkg = _mustTypecheck(("\npackage p\n\ntype T struct {\n\tP int\n}\n\nfunc (T) M(int) {}\nfunc (T) N() (i int) { return }\n\ntype G[P any] struct {\n\tF P\n}\n\nfunc (G[P]) M(P) {}\nfunc (G[P]) N() (p P) { return }\n\ntype Inst = G[int]\n\t" : stdgo.GoString), null, null);
        var __0:stdgo.go.types.Types.Type_ = _pkg.scope().lookup(("T" : stdgo.GoString)).type(), __1:stdgo.go.types.Types.Type_ = _pkg.scope().lookup(("G" : stdgo.GoString)).type(), __2:stdgo.go.types.Types.Type_ = _pkg.scope().lookup(("Inst" : stdgo.GoString)).type(), __3:stdgo.go.types.Types.Type_ = _mustInstantiate(stdgo.Go.asInterface(_b), g, stdgo.Go.asInterface(typ[((2 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])), userInst:stdgo.go.types.Types.Type_ = __3, srcInst:stdgo.go.types.Types.Type_ = __2, g:stdgo.go.types.Types.Type_ = __1, t:stdgo.go.types.Types.Type_ = __0;
        var _tests = (new stdgo.Slice<T__struct_32>(4, 4, ({ _name : ("nongeneric" : stdgo.GoString), _typ : t } : T__struct_32), ({ _name : ("generic" : stdgo.GoString), _typ : g } : T__struct_32), ({ _name : ("src instance" : stdgo.GoString), _typ : srcInst } : T__struct_32), ({ _name : ("user instance" : stdgo.GoString), _typ : userInst } : T__struct_32)) : stdgo.Slice<T__struct_32>);
        _b.run(("Underlying" : stdgo.GoString), function(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
            for (__72 => _test in _tests) {
                _b.run(_test._name?.__copy__(), function(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
                    _test._typ.underlying();
                    _b.resetTimer();
                    {
                        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor(_i < _b.n, _i++, {
                            _test._typ.underlying();
                        });
                    };
                });
            };
        });
        _b.run(("NewMethodSet" : stdgo.GoString), function(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
            for (__80 => _test in _tests) {
                _b.run(_test._name?.__copy__(), function(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
                    newMethodSet(_test._typ);
                    _b.resetTimer();
                    {
                        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor(_i < _b.n, _i++, {
                            newMethodSet(_test._typ);
                        });
                    };
                });
            };
        });
    }
function _mustInstantiate(_tb:stdgo.testing.Testing.TB, _orig:Type_, _targs:haxe.Rest<Type_>):Type_ {
        var _targs = new stdgo.Slice<Type_>(_targs.length, 0, ..._targs);
        var __tmp__ = instantiate(null, _orig, _targs, true), _inst:stdgo.go.types.Types.Type_ = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _tb.fatal(stdgo.Go.toInterface(_err));
        };
        return _inst;
    }
/**
    // Test that types do not expand infinitely, as in go.dev/issue/52715.
**/
function testFiniteTypeExpansion(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var _f = _mustParse(_fset, ("\npackage p\n\ntype Tree[T any] struct {\n\t*Node[T]\n}\n\nfunc (*Tree[R]) N(r R) R { return r }\n\ntype Node[T any] struct {\n\t*Tree[T]\n}\n\nfunc (Node[Q]) M(Q) {}\n\ntype Inst = *Tree[int]\n" : stdgo.GoString));
        var _pkg = newPackage(("p" : stdgo.GoString), _f.name.name?.__copy__());
        {
            var _err:stdgo.Error = newChecker(null, _fset, _pkg, null).files((new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _f) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _firstFieldType = function(_n:stdgo.Ref<Named>):stdgo.Ref<Named> {
            return (stdgo.Go.typeAssert((stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_n.underlying()) : stdgo.Ref<Struct>)) : stdgo.Ref<Struct>).field((0 : stdgo.GoInt)).type()) : stdgo.Ref<Pointer_>)) : stdgo.Ref<Pointer_>).elem()) : stdgo.Ref<Named>)) : stdgo.Ref<Named>);
        };
        var inst = (stdgo.Go.typeAssert((stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_pkg.scope().lookup(("Inst" : stdgo.GoString)).type()) : stdgo.Ref<Pointer_>)) : stdgo.Ref<Pointer_>).elem()) : stdgo.Ref<Named>)) : stdgo.Ref<Named>);
        var node = _firstFieldType(inst);
        var tree = _firstFieldType(node);
        if (!identical(stdgo.Go.asInterface(inst), stdgo.Go.asInterface(tree))) {
            _t.fatalf(("Not a cycle: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(tree)), stdgo.Go.toInterface(stdgo.Go.asInterface(inst)));
        };
        if (inst != (tree)) {
            _t.errorf(("Duplicate instances in cycle: %s (%p) -> %s (%p) -> %s (%p)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(inst)), stdgo.Go.toInterface(stdgo.Go.asInterface(inst)), stdgo.Go.toInterface(stdgo.Go.asInterface(node)), stdgo.Go.toInterface(stdgo.Go.asInterface(node)), stdgo.Go.toInterface(stdgo.Go.asInterface(tree)), stdgo.Go.toInterface(stdgo.Go.asInterface(tree)));
        };
    }
function testIsAlias(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _check = function(_obj:stdgo.Ref<TypeName>, _want:Bool):Void {
            {
                var _got:Bool = _obj.isAlias();
                if (_got != (_want)) {
                    _t.errorf(("%v: got IsAlias = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_obj)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
        _check((stdgo.Go.typeAssert((stdgo.Go.toInterface(unsafe.scope().lookup(("Pointer" : stdgo.GoString))) : stdgo.Ref<TypeName>)) : stdgo.Ref<TypeName>), false);
        for (__64 => _name in universe.names()) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(universe.lookup(_name?.__copy__())) : stdgo.Ref<TypeName>)) : stdgo.Ref<TypeName>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo.go.types.Types.TypeName>), _1 : false };
                }, _obj = __tmp__._0, __65 = __tmp__._1;
                if (_obj != null && ((_obj : Dynamic).__nil__ == null || !(_obj : Dynamic).__nil__)) {
                    _check(_obj, ((_name == ("any" : stdgo.GoString)) || (_name == ("byte" : stdgo.GoString))) || (_name == ("rune" : stdgo.GoString)));
                };
            };
        };
        var _pkg = newPackage(("p" : stdgo.GoString), ("p" : stdgo.GoString));
        var _t1 = newTypeName(_nopos, _pkg, ("t1" : stdgo.GoString), (null : stdgo.go.types.Types.Type_));
        var _n1 = newNamed(_t1, stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.go.types.Types.Struct)) : stdgo.Ref<stdgo.go.types.Types.Struct>)), (null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>));
        var _t5 = newTypeName(_nopos, _pkg, ("t5" : stdgo.GoString), (null : stdgo.go.types.Types.Type_));
        newTypeParam(_t5, (null : stdgo.go.types.Types.Type_));
        for (__66 => _test in (new stdgo.Slice<T__struct_33>(
10,
10,
({ _name : newTypeName(_nopos, null, ("t0" : stdgo.GoString), (null : stdgo.go.types.Types.Type_)), _alias : false } : T__struct_33),
({ _name : newTypeName(_nopos, _pkg, ("t0" : stdgo.GoString), (null : stdgo.go.types.Types.Type_)), _alias : false } : T__struct_33),
({ _name : _t1, _alias : false } : T__struct_33),
({ _name : newTypeName(_nopos, null, ("t2" : stdgo.GoString), stdgo.Go.asInterface(newInterfaceType((null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Func>>), (null : stdgo.Slice<stdgo.go.types.Types.Type_>)))), _alias : true } : T__struct_33),
({ _name : newTypeName(_nopos, _pkg, ("t3" : stdgo.GoString), stdgo.Go.asInterface(_n1)), _alias : true } : T__struct_33),
({ _name : newTypeName(_nopos, null, ("t4" : stdgo.GoString), stdgo.Go.asInterface(typ[((5 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])), _alias : true } : T__struct_33),
({ _name : newTypeName(_nopos, null, ("int32" : stdgo.GoString), stdgo.Go.asInterface(typ[((5 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])), _alias : false } : T__struct_33),
({ _name : newTypeName(_nopos, _pkg, ("int32" : stdgo.GoString), stdgo.Go.asInterface(typ[((5 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])), _alias : true } : T__struct_33),
({ _name : newTypeName(_nopos, null, ("rune" : stdgo.GoString), stdgo.Go.asInterface(typ[((5 : stdgo.go.types.Types.BasicKind) : stdgo.GoInt)])), _alias : true } : T__struct_33),
({ _name : _t5, _alias : false } : T__struct_33)) : stdgo.Slice<T__struct_33>)) {
            _check(_test._name, _test._alias);
        };
    }
/**
    // TestEmbeddedMethod checks that an embedded method is represented by
    // the same Func Object as the original method. See also go.dev/issue/34421.
**/
function testEmbeddedMethod(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _pkg = _mustTypecheck(("package p; type I interface { error }" : stdgo.GoString), null, null);
        var _eface:stdgo.go.types.Types.Object = universe.lookup(("error" : stdgo.GoString));
        var __tmp__ = lookupFieldOrMethod(_eface.type(), false, null, ("Error" : stdgo.GoString)), _orig:stdgo.go.types.Types.Object = __tmp__._0, __64:stdgo.Slice<stdgo.GoInt> = __tmp__._1, __65:Bool = __tmp__._2;
        if (_orig == null) {
            _t.fatalf(("original error.Error not found" : stdgo.GoString));
        };
        var _iface:stdgo.go.types.Types.Object = _pkg.scope().lookup(("I" : stdgo.GoString));
        var __tmp__ = lookupFieldOrMethod(_iface.type(), false, null, ("Error" : stdgo.GoString)), _embed:stdgo.go.types.Types.Object = __tmp__._0, __74:stdgo.Slice<stdgo.GoInt> = __tmp__._1, __75:Bool = __tmp__._2;
        if (_embed == null) {
            _t.fatalf(("embedded error.Error not found" : stdgo.GoString));
        };
        if (stdgo.Go.toInterface(_orig) != (stdgo.Go.toInterface(_embed))) {
            _t.fatalf(("%s (%p) != %s (%p)" : stdgo.GoString), stdgo.Go.toInterface(_orig), stdgo.Go.toInterface(_orig), stdgo.Go.toInterface(_embed), stdgo.Go.toInterface(_embed));
        };
    }
function testObjectString(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        for (__64 => _test in _testObjects) {
            var _src:stdgo.GoString = ("package p; " : stdgo.GoString) + _test._src?.__copy__()?.__copy__();
            var __tmp__ = _typecheck(_src?.__copy__(), null, null), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_err));
                continue;
            };
            var _names = stdgo.strings.Strings.split(_test._obj?.__copy__(), ("." : stdgo.GoString));
            if ((_names.length != (1 : stdgo.GoInt)) && (_names.length != (2 : stdgo.GoInt))) {
                _t.errorf(("%s: invalid object path %s" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(_test._obj));
                continue;
            };
            var __tmp__ = _pkg.scope().lookupParent(_names[(0 : stdgo.GoInt)]?.__copy__(), _nopos), __81:stdgo.Ref<stdgo.go.types.Types.Scope> = __tmp__._0, _obj:stdgo.go.types.Types.Object = __tmp__._1;
            if (_obj == null) {
                _t.errorf(("%s: %s not found" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(_names[(0 : stdgo.GoInt)]));
                continue;
            };
            if ((_names.length) == ((2 : stdgo.GoInt))) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj.type()) : T__interface_0)) : T__interface_0), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.go.types_test.Types_test.T__interface_0), _1 : false };
                    }, _typ = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _obj = _lookupTypeParamObj(_typ.typeParams(), _names[(1 : stdgo.GoInt)]?.__copy__());
                        if (_obj == null) {
                            _t.errorf(("%s: %s not found" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(_test._obj));
                            continue;
                        };
                    } else {
                        _t.errorf(("%s: %s has no type parameters" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(_names[(0 : stdgo.GoInt)]));
                        continue;
                    };
                };
            };
            {
                var _got:stdgo.GoString = (_obj.string() : stdgo.GoString)?.__copy__();
                if (_got != (_test._want)) {
                    _t.errorf(("%s: got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
function _lookupTypeParamObj(_list:stdgo.Ref<TypeParamList>, _name:stdgo.GoString):Object {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _list.len(), _i++, {
                var _tpar = _list.at(_i);
                if (_tpar._check._environment._decl._tdecl.name.obj().name() == (_name)) {
                    return stdgo.Go.asInterface(_tpar._check._environment._decl._tdecl.name.obj());
                };
            });
        };
        return (null : stdgo.go.types.Types.Object);
    }
function testResolveIdents(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        var _sources = (new stdgo.Slice<stdgo.GoString>(5, 5, ("\n\t\tpackage p\n\t\timport \"fmt\"\n\t\timport \"math\"\n\t\tconst pi = math.Pi\n\t\tfunc sin(x float64) float64 {\n\t\t\treturn math.Sin(x)\n\t\t}\n\t\tvar Println = fmt.Println\n\t\t" : stdgo.GoString), ("\n\t\tpackage p\n\t\timport \"fmt\"\n\t\ttype errorStringer struct { fmt.Stringer; error }\n\t\tfunc f() string {\n\t\t\t_ = \"foo\"\n\t\t\treturn fmt.Sprintf(\"%d\", g())\n\t\t}\n\t\tfunc g() (x int) { return }\n\t\t" : stdgo.GoString), ("\n\t\tpackage p\n\t\timport . \"go/parser\"\n\t\timport \"sync\"\n\t\tfunc h() Mode { return ImportsOnly }\n\t\tvar _, x int = 1, 2\n\t\tfunc init() {}\n\t\ttype T struct{ *sync.Mutex; a, b, c int}\n\t\ttype I interface{ m() }\n\t\tvar _ = T{a: 1, b: 2, c: 3}\n\t\tfunc (_ T) m() {}\n\t\tfunc (T) _() {}\n\t\tvar i I\n\t\tvar _ = i.m\n\t\tfunc _(s []int) { for i, x := range s { _, _ = i, x } }\n\t\tfunc _(x interface{}) {\n\t\t\tswitch x := x.(type) {\n\t\t\tcase int:\n\t\t\t\t_ = x\n\t\t\t}\n\t\t\tswitch {} // implicit \'true\' tag\n\t\t}\n\t\t" : stdgo.GoString), ("\n\t\tpackage p\n\t\ttype S struct{}\n\t\tfunc (T) _() {}\n\t\tfunc (T) _() {}\n\t\t" : stdgo.GoString), ("\n\t\tpackage p\n\t\tfunc _() {\n\t\tL0:\n\t\tL1:\n\t\t\tgoto L0\n\t\t\tfor {\n\t\t\t\tgoto L1\n\t\t\t}\n\t\t\tif true {\n\t\t\t\tgoto L2\n\t\t\t}\n\t\tL2:\n\t\t}\n\t\t" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _pkgnames = (new stdgo.Slice<stdgo.GoString>(2, 2, ("fmt" : stdgo.GoString), ("math" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _fset = stdgo.go.token.Token.newFileSet();
        var _files:stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>);
        for (__64 => _src in _sources) {
            _files = (_files.__append__(_mustParse(_fset, _src?.__copy__())));
        };
        var _importer = (stdgo.Go.setRef(({} : stdgo.go.types_test.Types_test.T_resolveTestImporter)) : stdgo.Ref<stdgo.go.types_test.Types_test.T_resolveTestImporter>);
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.Go.asInterface(_importer) } : stdgo.go.types.Types.Config);
        var _uses = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>);
        var _defs = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>);
        var __tmp__ = _conf.check(("testResolveIdents" : stdgo.GoString), _fset, _files, (stdgo.Go.setRef(({ defs : _defs, uses : _uses } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>)), __65:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        for (__74 => _name in _pkgnames) {
            if (!(_importer._imported[_name] ?? false)) {
                _t.errorf(("package %s not imported" : stdgo.GoString), stdgo.Go.toInterface(_name));
            };
        };
        for (__83 => _f in _files) {
            stdgo.go.ast.Ast.inspect(stdgo.Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>)) : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>), _1 : false };
                    }, _s = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s.x) : stdgo.Ref<stdgo.go.ast.Ast.Ident>)) : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : false };
                            }, _x = __tmp__._0, _ok = __tmp__._1;
                            if (_ok) {
                                var _obj:stdgo.go.types.Types.Object = (_uses[_x] ?? (null : stdgo.go.types.Types.Object));
                                if (_obj == null) {
                                    _t.errorf(("%s: unresolved qualified identifier %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(_x.pos()))), stdgo.Go.toInterface(_x.name));
                                    return false;
                                };
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<PkgName>)) : stdgo.Ref<PkgName>), _1 : true };
                                    } catch(_) {
                                        { _0 : (null : stdgo.Ref<stdgo.go.types.Types.PkgName>), _1 : false };
                                    }, __100 = __tmp__._0, _ok = __tmp__._1;
                                    if (_ok && ((_uses[_s.sel] ?? (null : stdgo.go.types.Types.Object)) == null)) {
                                        _t.errorf(("%s: unresolved selector %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(_s.sel.pos()))), stdgo.Go.toInterface(_s.sel.name));
                                        return false;
                                    };
                                };
                                return false;
                            };
                        };
                        return true;
                    };
                };
                return true;
            });
        };
        for (_id => _obj in _uses) {
            if (_obj == null) {
                _t.errorf(("%s: Uses[%s] == nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(_id.pos()))), stdgo.Go.toInterface(_id.name));
            };
        };
        var _both:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__100 => _f in _files) {
            stdgo.go.ast.Ast.inspect(stdgo.Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo.go.ast.Ast.Ident>)) : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.Ident>), _1 : false };
                    }, _x = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        var _objects:stdgo.GoInt = (0 : stdgo.GoInt);
                        {
                            var __tmp__ = (_uses != null && _uses.exists(_x) ? { _0 : _uses[_x], _1 : true } : { _0 : (null : stdgo.go.types.Types.Object), _1 : false }), __101:stdgo.go.types.Types.Object = __tmp__._0, _found:Bool = __tmp__._1;
                            if (_found) {
                                _objects = _objects | ((1 : stdgo.GoInt));
                                if (_uses != null) _uses.remove(_x);
                            };
                        };
                        {
                            var __tmp__ = (_defs != null && _defs.exists(_x) ? { _0 : _defs[_x], _1 : true } : { _0 : (null : stdgo.go.types.Types.Object), _1 : false }), __102:stdgo.go.types.Types.Object = __tmp__._0, _found:Bool = __tmp__._1;
                            if (_found) {
                                _objects = _objects | ((2 : stdgo.GoInt));
                                if (_defs != null) _defs.remove(_x);
                            };
                        };
                        if (_objects == ((0 : stdgo.GoInt))) {
                            _t.errorf(("%s: unresolved identifier %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(_x.pos()))), stdgo.Go.toInterface(_x.name));
                        } else if (_objects == ((3 : stdgo.GoInt))) {
                            _both = (_both.__append__(_x.name?.__copy__()));
                        };
                        return false;
                    };
                };
                return true;
            });
        };
        stdgo.sort.Sort.strings(_both);
        {
            var __0:stdgo.GoString = stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(_both))?.__copy__(), __1:stdgo.GoString = ("[Mutex Stringer error]" : stdgo.GoString), _want:stdgo.GoString = __1, _got:stdgo.GoString = __0;
            if (_got != (_want)) {
                _t.errorf(("simultaneous uses/defs = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        for (_x => _ in _uses) {
            _t.errorf(("%s: identifier %s not present in source" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(_x.pos()))), stdgo.Go.toInterface(_x.name));
        };
        for (_x => _ in _defs) {
            _t.errorf(("%s: identifier %s not present in source" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(_x.pos()))), stdgo.Go.toInterface(_x.name));
        };
    }
function testSelf(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = _pkgFiles(_fset, ("." : stdgo.GoString)), _files:stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.go.importer.Importer.default_() } : stdgo.go.types.Types.Config);
        {
            var __tmp__ = _conf.check(("go/types" : stdgo.GoString), _fset, _files, null);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
function benchmarkCheck(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_b));
        for (__64 => _p in (new stdgo.Slice<stdgo.GoString>(5, 5, ("net/http" : stdgo.GoString), ("go/parser" : stdgo.GoString), ("go/constant" : stdgo.GoString), ("runtime" : stdgo.GoString), stdgo.path.filepath.Filepath.join(("go" : stdgo.GoString), ("internal" : stdgo.GoString), ("gcimporter" : stdgo.GoString))?.__copy__()) : stdgo.Slice<stdgo.GoString>)) {
            _b.run(stdgo.path.Path.base(_p?.__copy__())?.__copy__(), function(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
                var _path:stdgo.GoString = stdgo.path.filepath.Filepath.join((".." : stdgo.GoString), (".." : stdgo.GoString), _p?.__copy__())?.__copy__();
                for (__73 => _ignoreFuncBodies in (new stdgo.Slice<Bool>(2, 2, false, true) : stdgo.Slice<Bool>)) {
                    var _name:stdgo.GoString = ("funcbodies" : stdgo.GoString);
                    if (_ignoreFuncBodies) {
                        _name = ("nofuncbodies" : stdgo.GoString);
                    };
                    _b.run(_name?.__copy__(), function(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
                        _b.run(("info" : stdgo.GoString), function(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
                            _runbench(_b, _path?.__copy__(), _ignoreFuncBodies, true);
                        });
                        _b.run(("noinfo" : stdgo.GoString), function(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
                            _runbench(_b, _path?.__copy__(), _ignoreFuncBodies, false);
                        });
                    });
                };
            });
        };
    }
function _runbench(_b:stdgo.Ref<stdgo.testing.Testing.B>, _path:stdgo.GoString, _ignoreFuncBodies:Bool, _writeInfo:Bool):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = _pkgFiles(_fset, _path?.__copy__()), _files:stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _b.fatal(stdgo.Go.toInterface(_err));
        };
        var _lines:stdgo.GoInt = (0 : stdgo.GoInt);
        _fset.iterate(function(_f:stdgo.Ref<stdgo.go.token.Token.File>):Bool {
            _lines = _lines + (_f.lineCount());
            return true;
        });
        _b.resetTimer();
        var _start:stdgo.time.Time.Time = stdgo.time.Time.now()?.__copy__();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                var _conf:stdgo.go.types.Types.Config = ({ ignoreFuncBodies : _ignoreFuncBodies, importer : stdgo.go.importer.Importer.default_() } : stdgo.go.types.Types.Config);
                var _info:stdgo.Ref<Info> = (null : stdgo.Ref<stdgo.go.types.Types.Info>);
                if (_writeInfo) {
                    _info = (stdgo.Go.setRef(({ types : ({
                        final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
                        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                        x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
                        @:mergeBlock {};
                        cast x;
                    } : stdgo.GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>), defs : ({
                        final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                        @:mergeBlock {};
                        cast x;
                    } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>), uses : ({
                        final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
                        @:mergeBlock {};
                        cast x;
                    } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>), implicits : ({
                        final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Node, stdgo.go.types.Types.Object>();
                        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Node", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                        x.__defaultValue__ = () -> (null : stdgo.go.types.Types.Object);
                        @:mergeBlock {};
                        cast x;
                    } : stdgo.GoMap<stdgo.go.ast.Ast.Node, stdgo.go.types.Types.Object>), selections : ({
                        final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>, stdgo.Ref<stdgo.go.types.Types.Selection>>();
                        @:mergeBlock {};
                        cast x;
                    } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.SelectorExpr>, stdgo.Ref<stdgo.go.types.Types.Selection>>), scopes : ({
                        final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Node, stdgo.Ref<stdgo.go.types.Types.Scope>>();
                        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Node", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo.go.types.Types.Scope>);
                        @:mergeBlock {};
                        cast x;
                    } : stdgo.GoMap<stdgo.go.ast.Ast.Node, stdgo.Ref<stdgo.go.types.Types.Scope>>) } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>);
                };
                {
                    var __tmp__ = _conf.check(_path?.__copy__(), _fset, _files, _info), __96:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
        _b.stopTimer();
        _b.reportMetric(((_lines : stdgo.GoFloat64) * (_b.n : stdgo.GoFloat64)) / stdgo.time.Time.since(_start?.__copy__()).seconds(), ("lines/s" : stdgo.GoString));
    }
function _pkgFiles(_fset:stdgo.Ref<stdgo.go.token.Token.FileSet>, _path:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>; var _1 : stdgo.Error; } {
        var __tmp__ = _pkgFilenames(_path?.__copy__(), true), _filenames:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), _1 : _err };
        };
        var _files:stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>);
        for (__64 => _filename in _filenames) {
            var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, _filename?.__copy__(), (null : stdgo.AnyInterface), (0u32 : stdgo.go.parser.Parser.Mode)), _file:stdgo.Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), _1 : _err };
            };
            _files = (_files.__append__(_file));
        };
        return { _0 : _files, _1 : (null : stdgo.Error) };
    }
/**
    // findStructType typechecks src and returns the first struct type encountered.
**/
function _findStructType(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _src:stdgo.GoString):stdgo.Ref<stdgo.go.types.Types.Struct> {
        return _findStructTypeConfig(_t, _src?.__copy__(), (stdgo.Go.setRef((new stdgo.go.types.Types.Config() : stdgo.go.types.Types.Config)) : stdgo.Ref<stdgo.go.types.Types.Config>));
    }
function _findStructTypeConfig(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _src:stdgo.GoString, _conf:stdgo.Ref<stdgo.go.types.Types.Config>):stdgo.Ref<stdgo.go.types.Types.Struct> {
        var _types_ = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>);
        _mustTypecheck(_src?.__copy__(), null, (stdgo.Go.setRef(({ types : _types_ } : stdgo.go.types.Types.Info)) : stdgo.Ref<stdgo.go.types.Types.Info>));
        for (__64 => _tv in _types_) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_tv.type) : stdgo.Ref<stdgo.go.types.Types.Struct>)) : stdgo.Ref<stdgo.go.types.Types.Struct>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo.go.types.Types.Struct>), _1 : false };
                }, _ts = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return _ts;
                };
            };
        };
        _t.fatalf(("failed to find a struct type in src:\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_src));
        return null;
    }
/**
    // go.dev/issue/16316
**/
function testMultipleSizeUse(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _ts = _findStructType(_t, ("\npackage main\n\ntype S struct {\n    i int\n    b bool\n    s string\n    n int\n}\n" : stdgo.GoString));
        var _sizes:stdgo.go.types.Types.StdSizes = ({ wordSize : (4i64 : stdgo.GoInt64), maxAlign : (4i64 : stdgo.GoInt64) } : stdgo.go.types.Types.StdSizes);
        {
            var _got:stdgo.GoInt64 = _sizes.sizeof(stdgo.Go.asInterface(_ts));
            if (_got != ((20i64 : stdgo.GoInt64))) {
                _t.errorf(("Sizeof(%v) with WordSize 4 = %d want 20" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ts)), stdgo.Go.toInterface(_got));
            };
        };
        _sizes = ({ wordSize : (8i64 : stdgo.GoInt64), maxAlign : (8i64 : stdgo.GoInt64) } : stdgo.go.types.Types.StdSizes);
        {
            var _got:stdgo.GoInt64 = _sizes.sizeof(stdgo.Go.asInterface(_ts));
            if (_got != ((40i64 : stdgo.GoInt64))) {
                _t.errorf(("Sizeof(%v) with WordSize 8 = %d want 40" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ts)), stdgo.Go.toInterface(_got));
            };
        };
    }
/**
    // go.dev/issue/16464
**/
function testAlignofNaclSlice(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _ts = _findStructType(_t, ("\npackage main\n\nvar s struct {\n\tx *int\n\ty []byte\n}\n" : stdgo.GoString));
        var _sizes = (stdgo.Go.setRef(({ wordSize : (4i64 : stdgo.GoInt64), maxAlign : (8i64 : stdgo.GoInt64) } : stdgo.go.types.Types.StdSizes)) : stdgo.Ref<stdgo.go.types.Types.StdSizes>);
        var _fields:stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Var>> = (null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Var>>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _ts.numFields(), _i++, {
                _fields = (_fields.__append__(_ts.field(_i)));
            });
        };
        var _offsets = _sizes.offsetsof(_fields);
        if ((_offsets[(0 : stdgo.GoInt)] != (0i64 : stdgo.GoInt64)) || (_offsets[(1 : stdgo.GoInt)] != (4i64 : stdgo.GoInt64))) {
            _t.errorf(("OffsetsOf(%v) = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ts)), stdgo.Go.toInterface(_offsets), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(2, 2, (0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
        };
    }
function testIssue16902(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _info:stdgo.go.types.Types.Info = ({ types : ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ({} : stdgo.go.types.Types.TypeAndValue);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.go.ast.Ast.Expr, stdgo.go.types.Types.TypeAndValue>) } : stdgo.go.types.Types.Info);
        var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.go.importer.Importer.default_(), sizes : stdgo.Go.asInterface((stdgo.Go.setRef(({ wordSize : (8i64 : stdgo.GoInt64), maxAlign : (8i64 : stdgo.GoInt64) } : stdgo.go.types.Types.StdSizes)) : stdgo.Ref<stdgo.go.types.Types.StdSizes>)) } : stdgo.go.types.Types.Config);
        _mustTypecheck(("\npackage a\n\nimport \"unsafe\"\n\nconst _ = unsafe.Offsetof(struct{ x int64 }{}.x)\n" : stdgo.GoString), (stdgo.Go.setRef(_conf) : stdgo.Ref<stdgo.go.types.Types.Config>), (stdgo.Go.setRef(_info) : stdgo.Ref<stdgo.go.types.Types.Info>));
        for (__64 => _tv in _info.types) {
            _conf.sizes.sizeof(_tv.type);
            _conf.sizes.alignof_(_tv.type);
        };
    }
/**
    // go.dev/issue/53884.
**/
function testAtomicAlign(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        {};
        var _want = (new stdgo.Slice<stdgo.GoInt64>(3, 3, (0i64 : stdgo.GoInt64), (8i64 : stdgo.GoInt64), (16i64 : stdgo.GoInt64)) : stdgo.Slice<stdgo.GoInt64>);
        for (__64 => _arch in (new stdgo.Slice<stdgo.GoString>(2, 2, ("386" : stdgo.GoString), ("amd64" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) {
            _t.run(_arch?.__copy__(), function(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
                var _conf:stdgo.go.types.Types.Config = ({ importer : stdgo.go.importer.Importer.default_(), sizes : stdgo.go.types.Types.sizesFor(("gc" : stdgo.GoString), _arch?.__copy__()) } : stdgo.go.types.Types.Config);
                var _ts = _findStructTypeConfig(_t, ("\npackage main\n\nimport \"sync/atomic\"\n\nvar s struct {\n\tx int32\n\ty atomic.Int64\n\tz int64\n}\n" : stdgo.GoString), (stdgo.Go.setRef(_conf) : stdgo.Ref<stdgo.go.types.Types.Config>));
                var _fields:stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Var>> = (null : stdgo.Slice<stdgo.Ref<stdgo.go.types.Types.Var>>);
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_i < _ts.numFields(), _i++, {
                        _fields = (_fields.__append__(_ts.field(_i)));
                    });
                };
                var _offsets = _conf.sizes.offsetsof(_fields);
                if (((_offsets[(0 : stdgo.GoInt)] != _want[(0 : stdgo.GoInt)]) || (_offsets[(1 : stdgo.GoInt)] != _want[(1 : stdgo.GoInt)])) || (_offsets[(2 : stdgo.GoInt)] != _want[(2 : stdgo.GoInt)])) {
                    _t.errorf(("OffsetsOf(%v) = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ts)), stdgo.Go.toInterface(_offsets), stdgo.Go.toInterface(_want));
                };
            });
        };
    }
function testStdlib(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping in short mode" : stdgo.GoString)));
        };
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        var _dirFiles = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>);
        var _root:stdgo.GoString = stdgo.path.filepath.Filepath.join(stdgo.internal.testenv.Testenv.goroot(stdgo.Go.asInterface(_t))?.__copy__(), ("src" : stdgo.GoString))?.__copy__();
        _walkPkgDirs(_root?.__copy__(), function(_dir:stdgo.GoString, _filenames:stdgo.Slice<stdgo.GoString>):Void {
            _dirFiles[_dir] = _filenames;
        }, _t.error);
        var _c = (stdgo.Go.setRef(({ _dirFiles : _dirFiles, _pkgs : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo.go.types_test.Types_test.T_futurePackage>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo.go.types_test.Types_test.T_futurePackage>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.go.types_test.Types_test.T_futurePackage>>) } : stdgo.go.types_test.Types_test.T_stdlibChecker)) : stdgo.Ref<stdgo.go.types_test.Types_test.T_stdlibChecker>);
        var _start:stdgo.time.Time.Time = stdgo.time.Time.now()?.__copy__();
        var _cpulimit = new stdgo.Chan<T__struct_34>((stdgo.runtime.Runtime.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt).toBasic(), () -> ({  } : T__struct_34));
        var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        for (_dir => _ in _dirFiles) {
            var _dir:stdgo.GoString = _dir?.__copy__();
            _cpulimit.__send__(({  } : T__struct_34));
            _wg.add((1 : stdgo.GoInt));
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                _wg.done();
                                _cpulimit.__get__();
                            };
                            a();
                        });
                        var __tmp__ = _c._getDirPackage(_dir?.__copy__()), __84:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.errorf(("error checking %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            });
        };
        _wg.wait_();
        if (stdgo.testing.Testing.verbose()) {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_dirFiles.length)), stdgo.Go.toInterface(("packages typechecked in" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo.time.Time.since(_start?.__copy__()))));
        };
    }
/**
    // firstComment returns the contents of the first non-empty comment in
    // the given file, "skip", or the empty string. No matter the present
    // comments, if any of them contains a build tag, the result is always
    // "skip". Only comments before the "package" token and within the first
    // 4K of the file are considered.
**/
function _firstComment(_filename:stdgo.GoString):stdgo.GoString {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo.os.Os.open(_filename?.__copy__()), _f:stdgo.Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo.Go.str()?.__copy__();
            };
            __deferstack__.unshift(() -> _f.close());
            var _src:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)]);
            var __tmp__ = _f.read((_src.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, __64:stdgo.Error = __tmp__._1;
            var _first:stdgo.GoString = ("" : stdgo.GoString);
            var _s:stdgo.go.scanner.Scanner.Scanner = ({} : stdgo.go.scanner.Scanner.Scanner);
            _s.init(_fset.addFile(stdgo.Go.str()?.__copy__(), _fset.base(), _n), (_src.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), null, (1u32 : stdgo.go.scanner.Scanner.Mode));
            while (true) {
                var __tmp__ = _s.scan(), __81:stdgo.go.token.Token.Pos = __tmp__._0, _tok:stdgo.go.token.Token.Token = __tmp__._1, _lit:stdgo.GoString = __tmp__._2;
                {
                    final __value__ = _tok;
                    if (__value__ == ((2 : stdgo.go.token.Token.Token))) {
                        if (_lit[(1 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8))) {
                            _lit = (_lit.__slice__(0, (_lit.length) - (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        };
                        var _contents:stdgo.GoString = stdgo.strings.Strings.trimSpace((_lit.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())?.__copy__();
                        if (stdgo.strings.Strings.hasPrefix(_contents?.__copy__(), ("+build " : stdgo.GoString))) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return ("skip" : stdgo.GoString);
                            };
                        };
                        if (_first == (stdgo.Go.str())) {
                            _first = _contents?.__copy__();
                        };
                    } else if (__value__ == ((78 : stdgo.go.token.Token.Token)) || __value__ == ((1 : stdgo.go.token.Token.Token))) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _first?.__copy__();
                        };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return ("" : stdgo.GoString);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return ("" : stdgo.GoString);
        };
    }
function _testTestDir(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _path:stdgo.GoString, _ignore:haxe.Rest<stdgo.GoString>):Void {
        var _ignore = new stdgo.Slice<stdgo.GoString>(_ignore.length, 0, ..._ignore);
        var __tmp__ = stdgo.os.Os.readDir(_path?.__copy__()), _files:stdgo.Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            {
                var __tmp__ = stdgo.os.Os.stat(stdgo.path.filepath.Filepath.join(stdgo.internal.testenv.Testenv.goroot(stdgo.Go.asInterface(_t))?.__copy__(), ("test" : stdgo.GoString))?.__copy__()), __64:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.os.Os.isNotExist(_err)) {
                    {
                        var __tmp__ = stdgo.os.Os.stat(stdgo.path.filepath.Filepath.join(stdgo.internal.testenv.Testenv.goroot(stdgo.Go.asInterface(_t))?.__copy__(), ("VERSION" : stdgo.GoString))?.__copy__()), __65:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            _t.skipf(("skipping: GOROOT/test not present" : stdgo.GoString));
                        };
                    };
                };
            };
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _excluded = ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>);
        for (__82 => _filename in _ignore) {
            _excluded[_filename] = true;
        };
        var _fset = stdgo.go.token.Token.newFileSet();
        for (__83 => _f in _files) {
            if ((_f.isDir() || !stdgo.strings.Strings.hasSuffix(_f.name()?.__copy__(), (".go" : stdgo.GoString))) || (_excluded[_f.name()] ?? false)) {
                continue;
            };
            var _expectErrors:Bool = false;
            var _filename:stdgo.GoString = stdgo.path.filepath.Filepath.join(_path?.__copy__(), _f.name()?.__copy__())?.__copy__();
            var _goVersion:stdgo.GoString = stdgo.Go.str()?.__copy__();
            {
                var _comment:stdgo.GoString = _firstComment(_filename?.__copy__())?.__copy__();
                if (_comment != (stdgo.Go.str())) {
                    var _fields = stdgo.strings.Strings.fields(_comment?.__copy__());
                    {
                        var __continue__ = false;
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _fields[(0 : stdgo.GoInt)];
                                if (__value__ == (("skip" : stdgo.GoString)) || __value__ == (("compiledir" : stdgo.GoString))) {
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (("errorcheck" : stdgo.GoString))) {
                                    _expectErrors = true;
                                    for (__84 => _arg in (_fields.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                                        if (((_arg == ("-0" : stdgo.GoString)) || (_arg == ("-+" : stdgo.GoString))) || (_arg == ("-std" : stdgo.GoString))) {
                                            _expectErrors = false;
                                            break;
                                        };
                                        {};
                                        if (stdgo.strings.Strings.hasPrefix(_arg?.__copy__(), ("-lang=" : stdgo.GoString))) {
                                            _goVersion = (_arg.__slice__((("-lang=" : stdgo.GoString).length)) : stdgo.GoString)?.__copy__();
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
            var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, _filename?.__copy__(), (null : stdgo.AnyInterface), (0u32 : stdgo.go.parser.Parser.Mode)), _file:stdgo.Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                var _conf:stdgo.go.types.Types.Config = ({ goVersion : _goVersion?.__copy__(), importer : _stdLibImporter } : stdgo.go.types.Types.Config);
                {
                    var __tmp__ = _conf.check(_filename?.__copy__(), _fset, (new stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>(1, 1, _file) : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>), null);
                    _err = __tmp__._1;
                };
            };
            if (_expectErrors) {
                if (_err == null) {
                    _t.errorf(("expected errors but found none in %s" : stdgo.GoString), stdgo.Go.toInterface(_filename));
                };
            } else {
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function testStdTest(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        if (stdgo.testing.Testing.short() && (stdgo.internal.testenv.Testenv.builder() == stdgo.Go.str())) {
            _t.skip(stdgo.Go.toInterface(("skipping in short mode" : stdgo.GoString)));
        };
        _testTestDir(_t, stdgo.path.filepath.Filepath.join(stdgo.internal.testenv.Testenv.goroot(stdgo.Go.asInterface(_t))?.__copy__(), ("test" : stdgo.GoString))?.__copy__(), ("cmplxdivide.go" : stdgo.GoString), ("directive.go" : stdgo.GoString), ("directive2.go" : stdgo.GoString), ("embedfunc.go" : stdgo.GoString), ("embedvers.go" : stdgo.GoString), ("linkname2.go" : stdgo.GoString), ("linkname3.go" : stdgo.GoString));
    }
function testStdFixed(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        if (stdgo.testing.Testing.short() && (stdgo.internal.testenv.Testenv.builder() == stdgo.Go.str())) {
            _t.skip(stdgo.Go.toInterface(("skipping in short mode" : stdgo.GoString)));
        };
        _testTestDir(_t,
stdgo.path.filepath.Filepath.join(stdgo.internal.testenv.Testenv.goroot(stdgo.Go.asInterface(_t))?.__copy__(), ("test" : stdgo.GoString), ("fixedbugs" : stdgo.GoString))?.__copy__(),
("bug248.go" : stdgo.GoString),
("bug302.go" : stdgo.GoString),
("bug369.go" : stdgo.GoString),
("issue6889.go" : stdgo.GoString),
("issue11362.go" : stdgo.GoString),
("issue16369.go" : stdgo.GoString),
("issue18459.go" : stdgo.GoString),
("issue18882.go" : stdgo.GoString),
("issue20529.go" : stdgo.GoString),
("issue22200.go" : stdgo.GoString),
("issue22200b.go" : stdgo.GoString),
("issue25507.go" : stdgo.GoString),
("issue20780.go" : stdgo.GoString),
("bug251.go" : stdgo.GoString),
("issue42058a.go" : stdgo.GoString),
("issue42058b.go" : stdgo.GoString),
("issue48097.go" : stdgo.GoString),
("issue48230.go" : stdgo.GoString),
("issue49767.go" : stdgo.GoString),
("issue49814.go" : stdgo.GoString),
("issue56103.go" : stdgo.GoString),
("bug514.go" : stdgo.GoString),
("issue40954.go" : stdgo.GoString),
("issue42032.go" : stdgo.GoString),
("issue42076.go" : stdgo.GoString),
("issue46903.go" : stdgo.GoString),
("issue51733.go" : stdgo.GoString),
("notinheap2.go" : stdgo.GoString),
("notinheap3.go" : stdgo.GoString));
    }
function testStdKen(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        _testTestDir(_t, stdgo.path.filepath.Filepath.join(stdgo.internal.testenv.Testenv.goroot(stdgo.Go.asInterface(_t))?.__copy__(), ("test" : stdgo.GoString), ("ken" : stdgo.GoString))?.__copy__());
    }
/**
    // typecheckFiles typechecks the given package files.
**/
function _typecheckFiles(_path:stdgo.GoString, _filenames:stdgo.Slice<stdgo.GoString>, _importer:Importer):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } {
        var _fset = stdgo.go.token.Token.newFileSet();
        var _files:stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo.go.ast.Ast.File>>);
        for (__64 => _filename in _filenames) {
            var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, _filename?.__copy__(), (null : stdgo.AnyInterface), (32u32 : stdgo.go.parser.Parser.Mode)), _file:stdgo.Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            _files = (_files.__append__(_file));
        };
        if (stdgo.testing.Testing.verbose()) {
            _printPackageMu.lock();
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("package" : stdgo.GoString)), stdgo.Go.toInterface(_files[(0 : stdgo.GoInt)].name.name));
            for (__65 => _filename in _filenames) {
                stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("\t" : stdgo.GoString)), stdgo.Go.toInterface(_filename));
            };
            _printPackageMu.unlock();
        };
        var _errs:stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
        var _conf:stdgo.go.types.Types.Config = ({ error : function(_err:stdgo.Error):Void {
            _errs = (_errs.__append__(_err));
        }, importer : _importer } : stdgo.go.types.Types.Config);
        var _info:stdgo.go.types.Types.Info = ({ uses : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo.go.ast.Ast.Ident>, stdgo.go.types.Types.Object>) } : stdgo.go.types.Types.Info);
        var __tmp__ = _conf.check(_path?.__copy__(), _fset, _files, (stdgo.Go.setRef(_info) : stdgo.Ref<stdgo.go.types.Types.Info>)), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, __66:stdgo.Error = __tmp__._1;
        var _err:stdgo.Error = stdgo.errors.Errors.join(..._errs.__toArray__());
        if (_err != null) {
            return { _0 : _pkg, _1 : _err };
        };
        var _errorError = (stdgo.Go.typeAssert((stdgo.Go.toInterface(universe.lookup(("error" : stdgo.GoString)).type().underlying()) : stdgo.Ref<Interface>)) : stdgo.Ref<Interface>).explicitMethod((0 : stdgo.GoInt));
        for (_id => _obj in _info.uses) {
            var _predeclared:Bool = (stdgo.Go.toInterface(_obj) == stdgo.Go.toInterface(universe.lookup(_obj.name()?.__copy__()))) || (stdgo.Go.toInterface(_obj) == stdgo.Go.toInterface(stdgo.Go.asInterface(_errorError)));
            if (_predeclared == ((_obj.pkg() != null && ((_obj.pkg() : Dynamic).__nil__ == null || !(_obj.pkg() : Dynamic).__nil__)))) {
                var _posn:stdgo.go.token.Token.Position = _fset.position(_id.pos())?.__copy__();
                if (_predeclared) {
                    return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("%s: predeclared object with package: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_posn)), stdgo.Go.toInterface(_obj)) };
                } else {
                    return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("%s: user-defined object without package: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_posn)), stdgo.Go.toInterface(_obj)) };
                };
            };
        };
        return { _0 : _pkg, _1 : (null : stdgo.Error) };
    }
/**
    // pkgFilenames returns the list of package filenames for the given directory.
**/
function _pkgFilenames(_dir:stdgo.GoString, _includeTest:Bool):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _ctxt:stdgo.go.build.Build.Context = stdgo.go.build.Build.default_?.__copy__();
        _ctxt.cgoEnabled = false;
        var __tmp__ = _ctxt.importDir(_dir?.__copy__(), (0u32 : stdgo.go.build.Build.ImportMode)), _pkg:stdgo.Ref<stdgo.go.build.Build.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo.go.build.Build.NoGoError>)) : stdgo.Ref<stdgo.go.build.Build.NoGoError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo.go.build.Build.NoGoError>), _1 : false };
                }, __64 = __tmp__._0, _nogo = __tmp__._1;
                if (_nogo) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
                };
            };
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        if ((_excluded[_pkg.importPath] ?? false)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var _filenames:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__65 => _name in _pkg.goFiles) {
            _filenames = (_filenames.__append__(stdgo.path.filepath.Filepath.join(_pkg.dir?.__copy__(), _name?.__copy__())?.__copy__()));
        };
        if (_includeTest) {
            for (__66 => _name in _pkg.testGoFiles) {
                _filenames = (_filenames.__append__(stdgo.path.filepath.Filepath.join(_pkg.dir?.__copy__(), _name?.__copy__())?.__copy__()));
            };
        };
        return { _0 : _filenames, _1 : (null : stdgo.Error) };
    }
function _walkPkgDirs(_dir:stdgo.GoString, _pkgh:(_dir:stdgo.GoString, _filenames:stdgo.Slice<stdgo.GoString>) -> Void, _errh:(_args:haxe.Rest<stdgo.AnyInterface>) -> Void):Void {
        var _w:stdgo.go.types_test.Types_test.T_walker = (new stdgo.go.types_test.Types_test.T_walker(_pkgh, _errh) : stdgo.go.types_test.Types_test.T_walker);
        _w._walk(_dir?.__copy__());
    }
/**
    // dup returns a testEntry where both src and str are the same.
**/
function _dup(_s:stdgo.GoString):T_testEntry {
        return (new stdgo.go.types_test.Types_test.T_testEntry(_s?.__copy__(), _s?.__copy__()) : stdgo.go.types_test.Types_test.T_testEntry);
    }
function testTypeString(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        var _tests:stdgo.Slice<T_testEntry> = (null : stdgo.Slice<stdgo.go.types_test.Types_test.T_testEntry>);
        _tests = (_tests.__append__(..._independentTestTypes.__toArray__()));
        _tests = (_tests.__append__(..._dependentTestTypes.__toArray__()));
        for (__64 => _test in _tests) {
            var _src:stdgo.GoString = ("package p; import \"io\"; type _ io.Writer; type T " : stdgo.GoString) + _test._src?.__copy__()?.__copy__();
            var __tmp__ = _typecheck(_src?.__copy__(), null, null), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_err));
                continue;
            };
            var _obj:stdgo.go.types.Types.Object = _pkg.scope().lookup(("T" : stdgo.GoString));
            if (_obj == null) {
                _t.errorf(("%s: T not found" : stdgo.GoString), stdgo.Go.toInterface(_test._src));
                continue;
            };
            var _typ:stdgo.go.types.Types.Type_ = _obj.type().underlying();
            {
                var _got:stdgo.GoString = (_typ.string() : stdgo.GoString)?.__copy__();
                if (_got != (_test._str)) {
                    _t.errorf(("%s: got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._str));
                };
            };
        };
    }
function testQualifiedTypeString(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _p = _mustTypecheck(("package p; type T int" : stdgo.GoString), null, null);
        var _q = _mustTypecheck(("package q" : stdgo.GoString), null, null);
        var _pT:stdgo.go.types.Types.Type_ = _p.scope().lookup(("T" : stdgo.GoString)).type();
        for (__64 => _test in (new stdgo.Slice<T__struct_35>(6, 6, ({ _typ : (null : stdgo.go.types.Types.Type_), _this : null, _want : ("<nil>" : stdgo.GoString) } : T__struct_35), ({ _typ : _pT, _this : null, _want : ("p.T" : stdgo.GoString) } : T__struct_35), ({ _typ : _pT, _this : _p, _want : ("T" : stdgo.GoString) } : T__struct_35), ({ _typ : _pT, _this : _q, _want : ("p.T" : stdgo.GoString) } : T__struct_35), ({ _typ : stdgo.Go.asInterface(newPointer(_pT)), _this : _p, _want : ("*T" : stdgo.GoString) } : T__struct_35), ({ _typ : stdgo.Go.asInterface(newPointer(_pT)), _this : _q, _want : ("*p.T" : stdgo.GoString) } : T__struct_35)) : stdgo.Slice<T__struct_35>)) {
            var _qualifier = function(_pkg:stdgo.Ref<Package>):stdgo.GoString {
                if (_pkg != (_test._this)) {
                    return _pkg.name()?.__copy__();
                };
                return stdgo.Go.str()?.__copy__();
            };
            {
                var _got:stdgo.GoString = typeString(_test._typ, _qualifier)?.__copy__();
                if (_got != (_test._want)) {
                    _t.errorf(("TypeString(%s, %s) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._this)), stdgo.Go.toInterface(_test._typ), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
class T_gen_asInterface {
    @:keep
    public dynamic function _factorials(_n:stdgo.GoInt):Void __self__.value._factorials(_n);
    @:keep
    public dynamic function _binomials(_n:stdgo.GoInt):Void __self__.value._binomials(_n);
    @:keep
    public dynamic function _printProduct(_n:stdgo.GoInt):Void __self__.value._printProduct(_n);
    @:keep
    public dynamic function _verify(_n:stdgo.GoInt):Void __self__.value._verify(_n);
    @:keep
    public dynamic function _product(_n:stdgo.GoInt):Void __self__.value._product(_n);
    @:keep
    public dynamic function _inverse(_n:stdgo.GoInt):Void __self__.value._inverse(_n);
    @:keep
    public dynamic function _hilbert(_n:stdgo.GoInt):Void __self__.value._hilbert(_n);
    @:keep
    public dynamic function _p(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._p(_format, ..._args);
    @:embedded
    public dynamic function _tryGrowByReslice(_offset:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__.value._tryGrowByReslice(_offset);
    @:embedded
    public dynamic function _readSlice(__0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._readSlice(__0);
    @:embedded
    public dynamic function _grow(_offset:stdgo.GoInt):stdgo.GoInt return __self__.value._grow(_offset);
    @:embedded
    public dynamic function _empty():Bool return __self__.value._empty();
    @:embedded
    public dynamic function writeTo(__0:stdgo.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(__0);
    @:embedded
    public dynamic function writeString(__0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(__0);
    @:embedded
    public dynamic function writeRune(_new:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeRune(_new);
    @:embedded
    public dynamic function writeByte(__0:stdgo.GoUInt8):stdgo.Error return __self__.value.writeByte(__0);
    @:embedded
    public dynamic function write(_content:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_content);
    @:embedded
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    @:embedded
    public dynamic function unreadByte():stdgo.Error return __self__.value.unreadByte();
    @:embedded
    public dynamic function truncate(_offset:stdgo.GoInt):Void __self__.value.truncate(_offset);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function reset():Void __self__.value.reset();
    @:embedded
    public dynamic function readString(__0:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.readString(__0);
    @:embedded
    public dynamic function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    @:embedded
    public dynamic function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    @:embedded
    public dynamic function readBytes(__0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readBytes(__0);
    @:embedded
    public dynamic function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return __self__.value.readByte();
    @:embedded
    public dynamic function read(_content:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_content);
    @:embedded
    public dynamic function next(_offset:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.value.next(_offset);
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:embedded
    public dynamic function grow(_offset:stdgo.GoInt):Void __self__.value.grow(_offset);
    @:embedded
    public dynamic function cap():stdgo.GoInt return __self__.value.cap();
    @:embedded
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:embedded
    public dynamic function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return __self__.value.availableBuffer();
    @:embedded
    public dynamic function available():stdgo.GoInt return __self__.value.available();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_gen>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T_gen_asInterface) class T_gen_static_extension {
    @:keep
    static public function _factorials( _g:stdgo.Ref<T_gen>, _n:stdgo.GoInt):Void {
        @:recv var _g:stdgo.Ref<T_gen> = _g;
        _g._p(("// Factorials\nconst (\n\tf0 = 1\n\tf1 = 1\n" : stdgo.GoString));
        {
            var _i:stdgo.GoInt = (2 : stdgo.GoInt);
            stdgo.Go.cfor(_i <= _n, _i++, {
                _g._p(("\tf%d = f%d * %d\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i - (1 : stdgo.GoInt)), stdgo.Go.toInterface(_i));
            });
        };
        _g._p((")\n\n" : stdgo.GoString));
    }
    @:keep
    static public function _binomials( _g:stdgo.Ref<T_gen>, _n:stdgo.GoInt):Void {
        @:recv var _g:stdgo.Ref<T_gen> = _g;
        _g._p(("// Binomials\nconst (\n" : stdgo.GoString));
        {
            var _j:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_j <= _n, _j++, {
                if (_j > (0 : stdgo.GoInt)) {
                    _g._p(("\n" : stdgo.GoString));
                };
                {
                    var _k:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_k <= _j, _k++, {
                        _g._p(("\tb%d_%d = f%d / (f%d*f%d)\n" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j - _k));
                    });
                };
            });
        };
        _g._p((")\n\n" : stdgo.GoString));
    }
    @:keep
    static public function _printProduct( _g:stdgo.Ref<T_gen>, _n:stdgo.GoInt):Void {
        @:recv var _g:stdgo.Ref<T_gen> = _g;
        _g._p(("func printProduct() {\n" : stdgo.GoString));
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                _g._p(("\tprintln(" : stdgo.GoString));
                {
                    var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_j < _n, _j++, {
                        if (_j > (0 : stdgo.GoInt)) {
                            _g._p((", " : stdgo.GoString));
                        };
                        _g._p(("p%d_%d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
                    });
                };
                _g._p((")\n" : stdgo.GoString));
            });
        };
        _g._p(("}\n\n" : stdgo.GoString));
    }
    @:keep
    static public function _verify( _g:stdgo.Ref<T_gen>, _n:stdgo.GoInt):Void {
        @:recv var _g:stdgo.Ref<T_gen> = _g;
        _g._p(("// Verify that product is the identity matrix\nconst ok =\n" : stdgo.GoString));
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                {
                    var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_j < _n, _j++, {
                        if (_j == ((0 : stdgo.GoInt))) {
                            _g._p(("\t" : stdgo.GoString));
                        } else {
                            _g._p((" && " : stdgo.GoString));
                        };
                        var _v:stdgo.GoInt = (0 : stdgo.GoInt);
                        if (_i == (_j)) {
                            _v = (1 : stdgo.GoInt);
                        };
                        _g._p(("p%d_%d == %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_v));
                    });
                };
                _g._p((" &&\n" : stdgo.GoString));
            });
        };
        _g._p(("\ttrue\n\n" : stdgo.GoString));
        if (_out.value == (stdgo.Go.str())) {
            _g._p(("const _ = assert(ok)\n\n" : stdgo.GoString));
        };
    }
    @:keep
    static public function _product( _g:stdgo.Ref<T_gen>, _n:stdgo.GoInt):Void {
        @:recv var _g:stdgo.Ref<T_gen> = _g;
        _g._p(("// Product matrix\nconst (\n" : stdgo.GoString));
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                {
                    var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_j < _n, _j++, {
                        _g._p(("\tp%d_%d = " : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
                        {
                            var _k:stdgo.GoInt = (0 : stdgo.GoInt);
                            stdgo.Go.cfor(_k < _n, _k++, {
                                if (_k > (0 : stdgo.GoInt)) {
                                    _g._p((" + " : stdgo.GoString));
                                };
                                _g._p(("h%d_%d*i%d_%d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j));
                            });
                        };
                        _g._p(("\n" : stdgo.GoString));
                    });
                };
                _g._p(("\n" : stdgo.GoString));
            });
        };
        _g._p((")\n\n" : stdgo.GoString));
    }
    @:keep
    static public function _inverse( _g:stdgo.Ref<T_gen>, _n:stdgo.GoInt):Void {
        @:recv var _g:stdgo.Ref<T_gen> = _g;
        _g._p(("// Inverse Hilbert matrix\nconst (\n" : stdgo.GoString));
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                {
                    var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_j < _n, _j++, {
                        var _s:stdgo.GoString = ("+" : stdgo.GoString);
                        if ((_i + _j) & (1 : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                            _s = ("-" : stdgo.GoString);
                        };
                        _g._p(("\ti%d_%d = %s%d * b%d_%d * b%d_%d * b%d_%d * b%d_%d\n" : stdgo.GoString),
stdgo.Go.toInterface(_i),
stdgo.Go.toInterface(_j),
stdgo.Go.toInterface(_s),
stdgo.Go.toInterface((_i + _j) + (1 : stdgo.GoInt)),
stdgo.Go.toInterface(_n + _i),
stdgo.Go.toInterface((_n - _j) - (1 : stdgo.GoInt)),
stdgo.Go.toInterface(_n + _j),
stdgo.Go.toInterface((_n - _i) - (1 : stdgo.GoInt)),
stdgo.Go.toInterface(_i + _j),
stdgo.Go.toInterface(_i),
stdgo.Go.toInterface(_i + _j),
stdgo.Go.toInterface(_i));
                    });
                };
                _g._p(("\n" : stdgo.GoString));
            });
        };
        _g._p((")\n\n" : stdgo.GoString));
    }
    @:keep
    static public function _hilbert( _g:stdgo.Ref<T_gen>, _n:stdgo.GoInt):Void {
        @:recv var _g:stdgo.Ref<T_gen> = _g;
        _g._p(("// Hilbert matrix, n = %d\nconst (\n" : stdgo.GoString), stdgo.Go.toInterface(_n));
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                _g._p(("\t" : stdgo.GoString));
                {
                    var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_j < _n, _j++, {
                        if (_j > (0 : stdgo.GoInt)) {
                            _g._p((", " : stdgo.GoString));
                        };
                        _g._p(("h%d_%d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
                    });
                };
                if (_i == ((0 : stdgo.GoInt))) {
                    _g._p((" = " : stdgo.GoString));
                    {
                        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor(_j < _n, _j++, {
                            if (_j > (0 : stdgo.GoInt)) {
                                _g._p((", " : stdgo.GoString));
                            };
                            _g._p(("1.0/(iota + %d)" : stdgo.GoString), stdgo.Go.toInterface(_j + (1 : stdgo.GoInt)));
                        });
                    };
                };
                _g._p(("\n" : stdgo.GoString));
            });
        };
        _g._p((")\n\n" : stdgo.GoString));
    }
    @:keep
    static public function _p( _g:stdgo.Ref<T_gen>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _g:stdgo.Ref<T_gen> = _g;
        stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_g.buffer) : stdgo.Ref<stdgo.bytes.Bytes.Buffer>)), _format?.__copy__(), ..._args.__toArray__());
    }
    @:embedded
    public static function _tryGrowByReslice( __self__:T_gen, _offset:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__._tryGrowByReslice(_offset);
    @:embedded
    public static function _readSlice( __self__:T_gen, __0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__._readSlice(__0);
    @:embedded
    public static function _grow( __self__:T_gen, _offset:stdgo.GoInt):stdgo.GoInt return __self__._grow(_offset);
    @:embedded
    public static function _empty( __self__:T_gen):Bool return __self__._empty();
    @:embedded
    public static function writeTo( __self__:T_gen, __0:stdgo.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.writeTo(__0);
    @:embedded
    public static function writeString( __self__:T_gen, __0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeRune( __self__:T_gen, _new:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeRune(_new);
    @:embedded
    public static function writeByte( __self__:T_gen, __0:stdgo.GoUInt8):stdgo.Error return __self__.writeByte(__0);
    @:embedded
    public static function write( __self__:T_gen, _content:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_content);
    @:embedded
    public static function unreadRune( __self__:T_gen):stdgo.Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:T_gen):stdgo.Error return __self__.unreadByte();
    @:embedded
    public static function truncate( __self__:T_gen, _offset:stdgo.GoInt) __self__.truncate(_offset);
    @:embedded
    public static function string( __self__:T_gen):stdgo.GoString return __self__.string();
    @:embedded
    public static function reset( __self__:T_gen) __self__.reset();
    @:embedded
    public static function readString( __self__:T_gen, __0:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.readString(__0);
    @:embedded
    public static function readRune( __self__:T_gen):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.readRune();
    @:embedded
    public static function readFrom( __self__:T_gen, _r:stdgo.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.readFrom(_r);
    @:embedded
    public static function readBytes( __self__:T_gen, __0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.readBytes(__0);
    @:embedded
    public static function readByte( __self__:T_gen):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return __self__.readByte();
    @:embedded
    public static function read( __self__:T_gen, _content:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_content);
    @:embedded
    public static function next( __self__:T_gen, _offset:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.next(_offset);
    @:embedded
    public static function len( __self__:T_gen):stdgo.GoInt return __self__.len();
    @:embedded
    public static function grow( __self__:T_gen, _offset:stdgo.GoInt) __self__.grow(_offset);
    @:embedded
    public static function cap( __self__:T_gen):stdgo.GoInt return __self__.cap();
    @:embedded
    public static function bytes( __self__:T_gen):stdgo.Slice<stdgo.GoUInt8> return __self__.bytes();
    @:embedded
    public static function availableBuffer( __self__:T_gen):stdgo.Slice<stdgo.GoUInt8> return __self__.availableBuffer();
    @:embedded
    public static function available( __self__:T_gen):stdgo.GoInt return __self__.available();
}
class T_importHelper_asInterface {
    @:keep
    public dynamic function import_(_path:stdgo.GoString):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } return __self__.value.import_(_path);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_importHelper>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T_importHelper_asInterface) class T_importHelper_static_extension {
    @:keep
    static public function import_( _h:T_importHelper, _path:stdgo.GoString):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } {
        @:recv var _h:T_importHelper = _h?.__copy__();
        if (_path == (_h._pkg.path())) {
            return { _0 : _h._pkg, _1 : (null : stdgo.Error) };
        };
        if (_h._fallback == null) {
            return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("got package path %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_h._pkg.path())) };
        };
        return _h._fallback.import_(_path?.__copy__());
    }
}
class T_resolveTestImporter_asInterface {
    @:keep
    public dynamic function importFrom(_path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:ImportMode):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } return __self__.value.importFrom(_path, _srcDir, _mode);
    @:keep
    public dynamic function import_(_0:stdgo.GoString):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } return __self__.value.import_(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_resolveTestImporter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T_resolveTestImporter_asInterface) class T_resolveTestImporter_static_extension {
    @:keep
    static public function importFrom( _imp:stdgo.Ref<T_resolveTestImporter>, _path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:ImportMode):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } {
        @:recv var _imp:stdgo.Ref<T_resolveTestImporter> = _imp;
        if (_mode != ((0 : stdgo.go.types.Types.ImportMode))) {
            throw stdgo.Go.toInterface(("mode must be 0" : stdgo.GoString));
        };
        if (_imp._importer == null) {
            _imp._importer = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo.go.importer.Importer.default_()) : ImporterFrom)) : ImporterFrom);
            _imp._imported = ({
                final x = new stdgo.GoMap.GoStringMap<Bool>();
                x.__defaultValue__ = () -> false;
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.GoString, Bool>);
        };
        var __tmp__ = _imp._importer.importFrom(_path?.__copy__(), _srcDir?.__copy__(), _mode), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        _imp._imported[_path] = true;
        return { _0 : _pkg, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function import_( _imp:stdgo.Ref<T_resolveTestImporter>, _0:stdgo.GoString):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } {
        @:recv var _imp:stdgo.Ref<T_resolveTestImporter> = _imp;
        throw stdgo.Go.toInterface(("should not be called" : stdgo.GoString));
    }
}
class T_stdlibChecker_asInterface {
    /**
        // getDirPackage gets the package defined in dir from the future cache.
        //
        // If this is the first goroutine requesting the package, getDirPackage
        // type-checks.
    **/
    @:keep
    public dynamic function _getDirPackage(_dir:stdgo.GoString):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } return __self__.value._getDirPackage(_dir);
    @:keep
    public dynamic function importFrom(_path:stdgo.GoString, _dir:stdgo.GoString, __64:ImportMode):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } return __self__.value.importFrom(_path, _dir, __64);
    @:keep
    public dynamic function import_(_path:stdgo.GoString):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } return __self__.value.import_(_path);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_stdlibChecker>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T_stdlibChecker_asInterface) class T_stdlibChecker_static_extension {
    /**
        // getDirPackage gets the package defined in dir from the future cache.
        //
        // If this is the first goroutine requesting the package, getDirPackage
        // type-checks.
    **/
    @:keep
    static public function _getDirPackage( _c:stdgo.Ref<T_stdlibChecker>, _dir:stdgo.GoString):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<T_stdlibChecker> = _c;
        _c._mu.lock();
        var __tmp__ = (_c._pkgs != null && _c._pkgs.exists(_dir?.__copy__()) ? { _0 : _c._pkgs[_dir?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo.go.types_test.Types_test.T_futurePackage>), _1 : false }), _fut:stdgo.Ref<stdgo.go.types_test.Types_test.T_futurePackage> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _fut = (stdgo.Go.setRef(({ _done : new stdgo.Chan<T__struct_34>(0, () -> ({  } : T__struct_34)) } : stdgo.go.types_test.Types_test.T_futurePackage)) : stdgo.Ref<stdgo.go.types_test.Types_test.T_futurePackage>);
            _c._pkgs[_dir] = _fut;
            var __tmp__ = (_c._dirFiles != null && _c._dirFiles.exists(_dir?.__copy__()) ? { _0 : _c._dirFiles[_dir?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _files:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
            _c._mu.unlock();
            if (!_ok) {
                _fut._err = stdgo.fmt.Fmt.errorf(("no files for %s" : stdgo.GoString), stdgo.Go.toInterface(_dir));
            } else {
                {
                    var __tmp__ = _typecheckFiles(_dir?.__copy__(), _files, stdgo.Go.asInterface(_c));
                    _fut._pkg = __tmp__._0;
                    _fut._err = __tmp__._1;
                };
            };
            if (_fut._done != null) _fut._done.__close__();
        } else {
            _c._mu.unlock();
            _fut._done.__get__();
        };
        return { _0 : _fut._pkg, _1 : _fut._err };
    }
    @:keep
    static public function importFrom( _c:stdgo.Ref<T_stdlibChecker>, _path:stdgo.GoString, _dir:stdgo.GoString, __64:ImportMode):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<T_stdlibChecker> = _c;
        if (_path == (("unsafe" : stdgo.GoString))) {
            return { _0 : unsafe, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo.go.build.Build.default_.import_(_path?.__copy__(), _dir?.__copy__(), (1u32 : stdgo.go.build.Build.ImportMode)), _p:stdgo.Ref<stdgo.go.build.Build.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = _c._getDirPackage(_p.dir?.__copy__()), _pkg:stdgo.Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_pkg != null && ((_pkg : Dynamic).__nil__ == null || !(_pkg : Dynamic).__nil__)) {
            return { _0 : _pkg, _1 : (null : stdgo.Error) };
        };
        return { _0 : null, _1 : _err };
    }
    @:keep
    static public function import_( _c:stdgo.Ref<T_stdlibChecker>, _path:stdgo.GoString):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<T_stdlibChecker> = _c;
        throw stdgo.Go.toInterface(("unimplemented: use ImportFrom" : stdgo.GoString));
    }
}
class T_walker_asInterface {
    @:keep
    public dynamic function _walk(_dir:stdgo.GoString):Void __self__.value._walk(_dir);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_walker>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T_walker_asInterface) class T_walker_static_extension {
    @:keep
    static public function _walk( _w:stdgo.Ref<T_walker>, _dir:stdgo.GoString):Void {
        @:recv var _w:stdgo.Ref<T_walker> = _w;
        var __tmp__ = stdgo.os.Os.readDir(_dir?.__copy__()), _files:stdgo.Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _w._errh(stdgo.Go.toInterface(_err));
            return;
        };
        var __tmp__ = _pkgFilenames(_dir?.__copy__(), false), _pkgFiles:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _w._errh(stdgo.Go.toInterface(_err));
            return;
        };
        if (_pkgFiles != null) {
            _w._pkgh(_dir?.__copy__(), _pkgFiles);
        };
        for (__64 => _f in _files) {
            if (_f.isDir() && (_f.name() != ("testdata" : stdgo.GoString))) {
                _w._walk(stdgo.path.filepath.Filepath.join(_dir?.__copy__(), _f.name()?.__copy__())?.__copy__());
            };
        };
    }
}
class T_testImporter_asInterface {
    @:keep
    public dynamic function import_(_path:stdgo.GoString):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } return __self__.value.import_(_path);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testImporter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.types_test.Types_test.T_testImporter_asInterface) class T_testImporter_static_extension {
    @:keep
    static public function import_( _m:T_testImporter, _path:stdgo.GoString):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } {
        @:recv var _m:T_testImporter = _m;
        {
            var _pkg = (_m[_path] ?? (null : stdgo.Ref<stdgo.go.types.Types.Package>));
            if (_pkg != null && ((_pkg : Dynamic).__nil__ == null || !(_pkg : Dynamic).__nil__)) {
                return { _0 : _pkg, _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("package %q not found" : stdgo.GoString), stdgo.Go.toInterface(_path)) };
    }
}
