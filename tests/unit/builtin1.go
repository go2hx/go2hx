package main

func main() {

	// type ComplexType
	complexValue := complex(10, 11)
	// type FloatType
	float := 0.2
	// type IntegerType
	integer := 10
	// type Type
	// type Type1
	// type any
	anyValue := any(nil)
	// type bool
	boolValue := false
	// type byte
	byteValue := byte(0)
	// type comparable
	_ = anyValue == anyValue
	// type complex128
	complex128Value := complex128(complexValue)
	// type complex64
	complex64Value := complex64(complexValue)
	// type error
	errorValue := error(nil)
	// type float32
	float32Value := float32(float)
	// type float64
	float64Value := float64(float)
	// type int
	intValue := int(integer)
	// type int16
	int16Value := int16(integer)
	// type int32
	int32Value := int32(integer)
	// type int64
	int64Value := int64(integer)
	// type int8
	int8Value := int8(integer)
	// type rune
	runeValue := rune(integer)
	// type string
	stringValue := string("")
	// type uint
	uintValue := uint(integer)
	// type uint16
	uint16Value := uint16(integer)
	// type uint32
	uint32Value := uint32(integer)
	// type uint64
	uint64Value := uint64(integer)
	// type uint8
	uint8Value := uint8(integer)
	// type uintptr
	uintptrValue := uintptr(integer)

	// Constants
	_ = true
	_ = false
	const (
		iotaConst = iota
		iotaConst2
	)
	if iotaConst != 0 || iotaConst2 != 1 {
		panic("incorrect iota")
	}
	// Variables
	var sliceValue []int = nil
	_ = sliceValue
	var mapValue = map[string]int{}
	var arrayValue [2]int
	var chanValue = make(chan int)
	// func append(slice []Type, elems ...Type) []Type
	sliceValue = append(sliceValue, 10)
	// func cap(v Type) int
	integer = cap(sliceValue)
	integer = cap(arrayValue)
	integer = cap(chanValue)
	// func clear[T ~[]Type | ~map[Type]Type1](t T)
	clear(mapValue)
	// func close(c chan<- Type)
	close(chanValue)
	// func complex(r, i FloatType) ComplexType
	complexValue = complex(10.2, 3.2)
	// func copy(dst, src []Type) int
	integer = copy(sliceValue, sliceValue)
	// func delete(m map[Type]Type1, key Type)
	delete(mapValue, "test")
	// func imag(c ComplexType) FloatType
	float = imag(complexValue)
	// func len(v Type) int
	integer = len(sliceValue)
	integer = len(arrayValue)
	integer = len(mapValue)
	integer = len(chanValue)
	// func make(t Type, size ...IntegerType) Type
	sliceValue = make([]int, 9, 10)
	mapValue = make(map[string]int, 10)
	chanValue = make(chan int, 10)
	// func max[T cmp.Ordered](x T, y ...T) T
	float32Value = max(float32Value, float32Value+1)
	uint8Value = max(uint8Value, uint8Value+1)
	// func min[T cmp.Ordered](x T, y ...T) T
	float32Value = min(float32Value, float32Value-1)
	uintptrValue = min(uintptrValue, uintptrValue-1)
	// func new(Type) *Type
	var structValuePointer *structType = new(structType)
	// func panic(v any)
	panicFunc()
	// func print(args ...Type)
	print(uint8Value, uint16Value, uint32Value, uint64Value, intValue)
	// func println(args ...Type)
	println(int8Value, int16Value, int32Value, int64Value, uintValue)
	// func real(c ComplexType) FloatType
	float64Value = real(complex128Value)
	float32Value = real(complex64Value)
	// func recover() any
	anyValue = recover()

	// declared and not used
	_ = structValuePointer
	_ = errorValue
	_ = runeValue
	_ = boolValue
	_ = byteValue
	_ = float64Value
	_ = stringValue
	// this value of X is never used
	_ = anyValue
	_ = float32Value
	_ = uintptrValue
	_ = integer
}

func panicFunc() {
	defer func() {
		recover()
	}()
	panic("test")
}

type structType struct{}
