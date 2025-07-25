package interop

import (
	_ "github.com/go2hx/go4hx/tests/interop/a"
	_ "github.com/go2hx/go4hx/tests/interop/go-colorful"
)

func Map(m map[int]int) map[int]int {
	return m
}

type StructKey struct{ i int }

func ReturnMapStructKey() map[StructKey]int {
	return map[StructKey]int{{0}: 1}
}

func Float32(f float32) float32 {
	return f
}

func Any(i any) any {
	return i
}

type InterfaceType interface {
	Run(s struct{ S []string })
}

// This is an interface function
func Interface(i InterfaceType) InterfaceType {
	i.Run(struct{ S []string }{S: []string{"Go"}})
	return i
}

// This is an error function
func Error(err error) error {
	return err
}

func InterfaceByteOrder(i byteOrder) byteOrder {
	i.AppendUint16([]byte{0, 1, 2}, 3)
	return i
}

type byteOrder interface {
	AppendByteOrder
}

// This is a comment
type AppendByteOrder interface {
	// Test is this still shows up
	AppendUint16([]byte, uint16) []byte
}

var unexported = 0
