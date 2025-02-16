package interop

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

func Any(i any) any

type InterfaceType interface {
	Run(s string)
}

func Interface(i InterfaceType) InterfaceType {
	i.Run("Go")
	return i
}

func Error(err error) error {
	return err
}
