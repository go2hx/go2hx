package main

func main() {
	var ptrSeen map[any]struct{}
	ptr := struct {
		ptr interface{} // always an unsafe.Pointer, but avoids a dependency on package unsafe
		len int
	}{nil, 0}
	defer delete(ptrSeen, ptr)
}
