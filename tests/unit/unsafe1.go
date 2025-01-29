package main

import "unsafe"

func main() {
	v := value{}
	v.getBytes()
	v.getIface()
}

// DoNotCompare can be embedded in a struct to prevent comparability.
type DoNotCompare [0]func()

type value struct {
	DoNotCompare // 0B

	// typ stores the type of the value as a pointer to the Go type.
	typ unsafe.Pointer // 8B

	// ptr stores the data pointer for a String, Bytes, or interface value.
	ptr unsafe.Pointer // 8B

	// num stores a Bool, Int32, Int64, Uint32, Uint64, Float32, Float64, or
	// Enum value as a raw uint64.
	//
	// It is also used to store the length of a String or Bytes value;
	// the capacity is ignored.
	num uint64 // 8B
}

type ifaceHeader struct {
	Type unsafe.Pointer
	Data unsafe.Pointer
}

type sliceHeader struct {
	Data unsafe.Pointer
	Len  int
	Cap  int
}

func (v value) getBytes() (x []byte) {
	*(*sliceHeader)(unsafe.Pointer(&x)) = sliceHeader{Data: v.ptr, Len: int(v.num), Cap: int(v.num)}
	return x
}

func (v value) getIface() (x any) {
	*(*ifaceHeader)(unsafe.Pointer(&x)) = ifaceHeader{Type: v.typ, Data: v.ptr}
	return x
}
